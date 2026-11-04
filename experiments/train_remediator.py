"""Phase 7: train Remover B (GATv2 edge scorer + PPO on r_B), optionally warm-started by imitating
FullB's cuts restricted to seen edges.

    python -m experiments.train_remediator --iters 20 --episodes 6 [--finder greedy|ckpt:...] [--bc 300]
                                           [--b-reward full|seen] [--w-const]

Saves runs/remover/<name>.pt and <name>.best.pt (best mean open pairs left on the train split).
"""
from __future__ import annotations

import argparse
import json
import random
import time

import torch

from experiments.common import RUNS, load_graph, make_finder, play, split_orgs
from iampe.agents.gnn import GNNRemover, RemediatorPolicy
from iampe.agents.ppo import bc_update, ppo_update
from iampe.agents.rollout import remover_bc_pairs, remover_episode
from iampe.env.game import GameConfig


def evaluate(policy, graphs, cfg, finder_spec="greedy") -> float:
    """Mean open pairs after the last round (lower is better)."""
    vals = []
    for G in graphs:
        for sd in (100, 101):
            logs = play(G, make_finder(finder_spec, sd), GNNRemover(policy, greedy=True), cfg, sd)
            vals.append(logs[-1]["open_after"])
    return sum(vals) / len(vals)


def train(policy, graphs, cfg: GameConfig, finder_spec: str, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, log=print, bc: int = 0, opponents=None) -> RemediatorPolicy:
    rng = random.Random(seed)
    opt = torch.optim.Adam(policy.parameters(), lr=lr)
    out = RUNS / "remover"
    out.mkdir(parents=True, exist_ok=True)
    if bc:
        pairs = []
        while len(pairs) < bc:
            pairs += remover_bc_pairs(rng.choice(graphs), cfg, make_finder(finder_spec), random.Random(rng.random()))
        log(f"bc: {len(pairs)} pairs, loss {bc_update(policy, opt, pairs, epochs=5, rng=rng):.3f}")
    best = evaluate(policy, graphs, cfg, finder_spec)
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: train open-after {best:.3f}")
    for it in range(1, iters + 1):
        t0, steps, ret = time.time(), [], 0.0
        for _ in range(episodes):
            A = rng.choice(opponents) if opponents else make_finder(finder_spec, rng.randrange(1 << 30))
            rec, logs = remover_episode(rng.choice(graphs), cfg, policy, A, random.Random(rng.random()))
            steps += rec
            ret += sum(l.r_B for l in logs)
        stats = ppo_update(policy, opt, steps, rng=rng)
        f = evaluate(policy, graphs, cfg, finder_spec)
        if f <= best:
            best = f
            torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
        log(f"iter {it}: return {ret / episodes:.2f} loss {stats.get('loss', 0):.3f} steps {len(steps)} "
            f"train open-after {f:.3f} (best {best:.3f}) {time.time() - t0:.1f}s")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=20)
    ap.add_argument("--episodes", type=int, default=6)
    ap.add_argument("--Q", type=int, default=25)
    ap.add_argument("--rounds", type=int, default=4)
    ap.add_argument("--budget", type=float, default=1)
    ap.add_argument("--finder", default="greedy")
    ap.add_argument("--bc", type=int, default=0)
    ap.add_argument("--b-reward", default="full", choices=["full", "seen"])
    ap.add_argument("--w-const", action="store_true")
    ap.add_argument("--lr", type=float, default=3e-4)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--name", default="remover")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = [load_graph(o) for o in split_orgs("train")]
    cfg = GameConfig(Q=a.Q, K=a.rounds, cut_budget=a.budget, b_reward=a.b_reward, w_const=a.w_const)
    (RUNS / "remover").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "remover" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    train(RemediatorPolicy(), graphs, cfg, a.finder, a.iters, a.episodes, a.lr, a.seed, a.name, log, a.bc)


if __name__ == "__main__":
    main()
