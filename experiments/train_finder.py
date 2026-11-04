"""Phase 5c: train Finder A (GATv2 + PPO), optionally warm-started by imitating the oracle finder.

    python -m experiments.train_finder --iters 30 --episodes 8 --Q 10 [--bc 200] [--opponent minseen --rounds 3]

Saves runs/finder/<name>.pt (last) and <name>.best.pt (best mean FNR on the train split at Q).
"""
from __future__ import annotations

import argparse
import json
import random
import time

import torch

from experiments.common import RUNS, fnr, load_graph, make_remover, split_orgs
from iampe.agents.gnn import FinderPolicy, GNNFinder
from iampe.agents.ppo import bc_update, ppo_update
from iampe.agents.rollout import finder_bc_pairs, finder_episode
from iampe.env.game import GameConfig


def evaluate(policy, graphs, Q) -> float:
    vals = [fnr(G, GNNFinder(policy, greedy=True), Q, seeds=(100, 101)) for G in graphs]
    vals = [v["fnr"] for v in vals if v["open"]]
    return sum(vals) / max(1, len(vals))


def train(policy, graphs, cfg: GameConfig, opponent: str, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, log=print, bc: int = 0, opponents=None) -> FinderPolicy:
    rng = random.Random(seed)
    opt = torch.optim.Adam(policy.parameters(), lr=lr)
    out = RUNS / "finder"
    out.mkdir(parents=True, exist_ok=True)
    if bc:
        pairs = []
        while len(pairs) < bc:
            pairs += finder_bc_pairs(rng.choice(graphs), GameConfig(Q=cfg.Q, K=1, max_sources=cfg.max_sources),
                                     random.Random(rng.random()))
        log(f"bc: {len(pairs)} pairs, loss {bc_update(policy, opt, pairs, epochs=5, rng=rng):.3f}")
    best = evaluate(policy, graphs, cfg.Q)
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: train FNR@{cfg.Q} {best:.3f}")
    for it in range(1, iters + 1):
        t0, steps, ret = time.time(), [], 0.0
        for _ in range(episodes):
            B = rng.choice(opponents) if opponents else make_remover(opponent, rng.randrange(1 << 30))
            rec, logs = finder_episode(rng.choice(graphs), cfg, policy, B, random.Random(rng.random()))
            steps += rec
            ret += sum(l.r_A for l in logs)
        stats = ppo_update(policy, opt, steps, rng=rng)
        f = evaluate(policy, graphs, cfg.Q)
        if f <= best:
            best = f
            torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
        log(f"iter {it}: return {ret / episodes:.2f} loss {stats.get('loss', 0):.3f} steps {len(steps)} "
            f"train FNR@{cfg.Q} {f:.3f} (best {best:.3f}) {time.time() - t0:.1f}s")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=20)
    ap.add_argument("--episodes", type=int, default=8)
    ap.add_argument("--Q", type=int, default=10)
    ap.add_argument("--rounds", type=int, default=1)
    ap.add_argument("--opponent", default="none")
    ap.add_argument("--bc", type=int, default=0, help="oracle imitation pairs before PPO (0 = off)")
    ap.add_argument("--lr", type=float, default=3e-4)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--name", default="finder")
    ap.add_argument("--init", default=None)
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = [load_graph(o) for o in split_orgs("train")]
    policy = FinderPolicy()
    if a.init:
        policy.load_state_dict(torch.load(a.init))
    logf = open(RUNS / "finder" / f"{a.name}.log", "w") if (RUNS / "finder").mkdir(parents=True, exist_ok=True) is None else None

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    train(policy, graphs, GameConfig(Q=a.Q, K=a.rounds), a.opponent, a.iters, a.episodes, a.lr, a.seed, a.name, log, a.bc)


if __name__ == "__main__":
    main()
