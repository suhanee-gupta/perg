"""Phase 7: train Remover B (GATv2 edge scorer + PPO on r_B) in the standard game, warm-started by
imitating FullB's cuts restricted to the edges B has seen.

    python -m experiments.train_remediator [--iters 20] [--episodes 8] [--finders bfs greedy bandit:...]
                                           [--orgs ...] [--eval-orgs ...] [--lam 1] [--bc 400]
                                           [--b-reward full|seen] [--w-const] [--device auto] [--name remover]

Standard game (standard_config): no edge budget, w(e) normalised by the number of users and roles,
r_B(k) = (sources newly closed) - (sources still open) - lam * sum w(e) of the round's cuts.
B trains against a pool of fixed finders (one sampled per episode). Model selection: mean total r_B
(higher is better) on --eval-orgs (default: the training configs) against the same pool.
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
from iampe.env.game import GameConfig, standard_config

FINDERS = ["bfs", "greedy", "bandit:models/linucb.npz"]


def open_rounds(logs) -> float:
    return sum(l["open_after"] for l in logs)


def evaluate(remover, graphs, cfg, finders, seeds=(100, 101)) -> dict:
    """Means over graphs, finders and seeds: total r_B, open-source-rounds, collateral (sum of w)."""
    runs = [play(G, make_finder(f, sd), remover, cfg, sd) for G in graphs for f in finders for sd in seeds]
    n = len(runs)
    return {"r_B": sum(l["r_B"] for r in runs for l in r) / n, "open": sum(open_rounds(r) for r in runs) / n,
            "collateral": sum(l["cut_cost"] for r in runs for l in r) / n}


def fmt(m: dict) -> str:
    return f"r_B {m['r_B']:.2f} open-source-rounds {m['open']:.2f} collateral {m['collateral']:.3f}"


def train(policy, graphs, cfg: GameConfig, finders, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, log=print, bc: int = 0, pick=None, observe=None, eval_graphs=None) -> RemediatorPolicy:
    """`finders`: specs or agents to train against. `pick(rng)` (optional) chooses one per episode and
    `observe(finder, logs)` receives its outcome (co-training passes an EXP3 sampler); default is
    uniform sampling."""
    rng = random.Random(seed)
    opt = torch.optim.Adam(policy.parameters(), lr=lr)
    out = RUNS / "remover"
    out.mkdir(parents=True, exist_ok=True)
    eval_graphs = eval_graphs or graphs
    as_agent = (lambda f: make_finder(f, rng.randrange(1 << 30)) if isinstance(f, str) else f)
    pick = pick or (lambda r: rng.choice(finders))
    if bc:
        pairs = []
        while len(pairs) < bc:
            pairs += remover_bc_pairs(rng.choice(graphs), cfg, as_agent(rng.choice(finders)), random.Random(rng.random()))
        log(f"bc: {len(pairs)} pairs, loss {bc_update(policy, opt, pairs, epochs=5, rng=rng):.3f}")
    eval_specs = [f for f in finders if isinstance(f, str)] or ["bfs"]
    best = evaluate(GNNRemover(policy, greedy=True), eval_graphs, cfg, eval_specs)
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: {fmt(best)}")
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
        m = evaluate(GNNRemover(policy, greedy=True), eval_graphs, cfg, eval_specs)
        if m["r_B"] >= best["r_B"]:
            best = m
            torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
        log(f"iter {it}: return {ret / episodes:.2f} loss {stats.get('loss', 0):.3f} steps {len(steps)} "
            f"{fmt(m)} (best r_B {best['r_B']:.2f}) {time.time() - t0:.1f}s")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def game_config(a) -> GameConfig:
    return standard_config(K=a.rounds, Q=a.Q, decline_p=a.decline, lam=a.lam, b_reward=a.b_reward,
                           w_const=a.w_const)


def add_game_args(ap) -> None:
    ap.add_argument("--rounds", type=int, default=5)
    ap.add_argument("--Q", type=int, default=20)
    ap.add_argument("--decline", type=float, default=0.1)
    ap.add_argument("--lam", type=float, default=1.0)
    ap.add_argument("--b-reward", default="full", choices=["full", "seen"])
    ap.add_argument("--w-const", action="store_true")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=20)
    ap.add_argument("--episodes", type=int, default=8)
    ap.add_argument("--finders", nargs="+", default=FINDERS)
    ap.add_argument("--orgs", nargs="+", default=None, help="training configs (default: the train split)")
    ap.add_argument("--eval-orgs", nargs="+", default=None, help="model selection configs (default: --orgs)")
    add_game_args(ap)
    ap.add_argument("--bc", type=int, default=400)
    ap.add_argument("--lr", type=float, default=3e-4)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--init", default=None)
    ap.add_argument("--name", default="remover")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = [load_graph(o) for o in a.orgs or split_orgs("train")]
    eval_graphs = [load_graph(o) for o in a.eval_orgs] if a.eval_orgs else None
    cfg = game_config(a)
    (RUNS / "remover").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "remover" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    policy = RemediatorPolicy().to(device(a.device))
    if a.init:
        policy.load_state_dict(torch.load(a.init, map_location="cpu"))
    train(policy, graphs, cfg, a.finders, a.iters, a.episodes, a.lr, a.seed, a.name, log,
          0 if a.init else a.bc, eval_graphs=eval_graphs)


if __name__ == "__main__":
    main()
