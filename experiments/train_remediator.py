"""Phase 7: train Remover B (GATv2 edge scorer + PPO on r_B), warm-started by imitating FullB's cuts
restricted to the edges B has seen.

    python -m experiments.train_remediator [--iters 20] [--episodes 8] [--finders bfs greedy bandit:...]
                                           [--mu 0.3] [--budget 1] [--bc 400] [--b-reward full|seen]
                                           [--w-const] [--device auto] [--name remover]

B trains against a pool of fixed finders (one sampled per episode). Model selection: total open
sources summed over all rounds (lower is better), on the train split against the same pool.
Saves runs/remover/<name>.pt and <name>.best.pt.
"""
from __future__ import annotations

import argparse
import json
import random
import time

import torch

from experiments.common import RUNS, device, load_graph, make_finder, play, split_orgs
from iampe.agents.gnn import GNNRemover, RemediatorPolicy
from iampe.agents.ppo import bc_update, ppo_update
from iampe.agents.rollout import remover_bc_pairs, remover_episode
from iampe.env.game import GameConfig

FINDERS = ["bfs", "greedy", "bandit:models/linucb.npz"]


def open_rounds(logs) -> float:
    return sum(l["open_after"] for l in logs)


def evaluate(remover, graphs, cfg, finders, seeds=(100, 101)) -> float:
    """Mean over graphs, finders and seeds of open sources summed over rounds."""
    vals = [open_rounds(play(G, make_finder(f, sd), remover, cfg, sd)) for G in graphs for f in finders for sd in seeds]
    return sum(vals) / len(vals)


def train(policy, graphs, cfg: GameConfig, finders, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, log=print, bc: int = 0, pick=None, observe=None) -> RemediatorPolicy:
    """`finders`: specs or agents to train against. `pick(rng)` (optional) chooses one per episode and
    `observe(finder, logs, game_sources)` receives its outcome (co-training passes an EXP3 sampler);
    default is uniform sampling."""
    rng = random.Random(seed)
    opt = torch.optim.Adam(policy.parameters(), lr=lr)
    out = RUNS / "remover"
    out.mkdir(parents=True, exist_ok=True)
    as_agent = (lambda f: make_finder(f, rng.randrange(1 << 30)) if isinstance(f, str) else f)
    pick = pick or (lambda r: rng.choice(finders))
    if bc:
        pairs = []
        while len(pairs) < bc:
            pairs += remover_bc_pairs(rng.choice(graphs), cfg, as_agent(rng.choice(finders)), random.Random(rng.random()))
        log(f"bc: {len(pairs)} pairs, loss {bc_update(policy, opt, pairs, epochs=5, rng=rng):.3f}")
    eval_specs = [f for f in finders if isinstance(f, str)] or ["bfs"]
    best = evaluate(GNNRemover(policy, greedy=True), graphs, cfg, eval_specs)
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: open-source-rounds {best:.3f}")
    for it in range(1, iters + 1):
        t0, steps, ret = time.time(), [], 0.0
        for _ in range(episodes):
            f = pick(rng)
            rec, logs = remover_episode(rng.choice(graphs), cfg, policy, as_agent(f), random.Random(rng.random()))
            if observe:
                observe(f, logs)
            steps += rec
            ret += sum(l.r_B for l in logs)
        stats = ppo_update(policy, opt, steps, rng=rng)
        f = evaluate(GNNRemover(policy, greedy=True), graphs, cfg, eval_specs)
        if f <= best:
            best = f
            torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
        log(f"iter {it}: return {ret / episodes:.2f} loss {stats.get('loss', 0):.3f} steps {len(steps)} "
            f"open-source-rounds {f:.3f} (best {best:.3f}) {time.time() - t0:.1f}s")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=20)
    ap.add_argument("--episodes", type=int, default=8)
    ap.add_argument("--finders", nargs="+", default=FINDERS)
    ap.add_argument("--mu", type=float, default=0.3)
    ap.add_argument("--rounds", type=int, default=5)
    ap.add_argument("--budget", type=float, default=1)
    ap.add_argument("--bc", type=int, default=400)
    ap.add_argument("--b-reward", default="full", choices=["full", "seen"])
    ap.add_argument("--w-const", action="store_true")
    ap.add_argument("--lr", type=float, default=3e-4)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--name", default="remover")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = [load_graph(o) for o in split_orgs("train")]
    cfg = GameConfig(K=a.rounds, mu=a.mu, cut_budget=a.budget, b_reward=a.b_reward, w_const=a.w_const)
    (RUNS / "remover").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "remover" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    policy = RemediatorPolicy().to(device(a.device))
    train(policy, graphs, cfg, a.finders, a.iters, a.episodes, a.lr, a.seed, a.name, log, a.bc)


if __name__ == "__main__":
    main()
