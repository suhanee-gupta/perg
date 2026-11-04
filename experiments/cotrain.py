"""Phase 8: robust training of Remover B against a pool of finders, with EXP3 choosing the opponent.

    python -m experiments.cotrain [--iters 15] [--episodes 8] [--gamma 0.2] [--name remover_exp3]

EXP3 keeps a weight per finder and samples the next opponent in proportion to it (plus gamma
exploration); a finder's weight grows when B does badly against it (open sources left, scaled to
[0, 1]). Snapshots of B are added to `runs/remover/` every few iterations as the B pool.

Limitation (this session): Finder A is not trained, so this is the B half of co-training. The A half
plugs into the same loop once a finder trainer exists: train A against an EXP3 mixture over the
B snapshots, then B against A's snapshots, alternating.
"""
from __future__ import annotations

import argparse
import json
import math
import random

import torch

from experiments.common import RUNS, device, load_graph, split_orgs
from experiments.train_remediator import FINDERS, train
from iampe.agents.gnn import RemediatorPolicy
from iampe.env.game import GameConfig


class EXP3:
    def __init__(self, arms: list, gamma: float = 0.2, seed: int = 0):
        self.arms, self.gamma = list(arms), gamma
        self.logw = [0.0] * len(arms)
        self.rng = random.Random(seed)
        self.last_p = None

    def probs(self) -> list[float]:
        m = max(self.logw)
        w = [math.exp(x - m) for x in self.logw]
        z = sum(w)
        k = len(w)
        return [(1 - self.gamma) * x / z + self.gamma / k for x in w]

    def pick(self, _rng=None):
        p = self.probs()
        i = self.rng.choices(range(len(self.arms)), weights=p)[0]
        self.last_p = p
        return self.arms[i]

    def observe(self, arm, logs) -> None:
        """Reward for the opponent-picker = how badly B did (mean open sources per round, in [0, 1])."""
        i = self.arms.index(arm)
        n = max(1, max(l.open_before for l in logs))
        x = sum(l.open_after for l in logs) / (len(logs) * n)
        p = (self.last_p or self.probs())[i]
        self.logw[i] += self.gamma * (x / p) / len(self.arms)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=15)
    ap.add_argument("--episodes", type=int, default=8)
    # disjoint from the held-out finders used in evaluate.py (random, bfs:p10, greedy:p10)
    ap.add_argument("--finders", nargs="+", default=FINDERS + ["bfs:p20", "greedy:p20"])
    ap.add_argument("--gamma", type=float, default=0.2)
    ap.add_argument("--mu", type=float, default=0.3)
    ap.add_argument("--rounds", type=int, default=5)
    ap.add_argument("--budget", type=float, default=1)
    ap.add_argument("--bc", type=int, default=400)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--name", default="remover_exp3")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = [load_graph(o) for o in split_orgs("train")]
    cfg = GameConfig(K=a.rounds, mu=a.mu, cut_budget=a.budget)
    (RUNS / "remover").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "remover" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    bandit = EXP3(a.finders, a.gamma, a.seed)
    policy = RemediatorPolicy().to(device(a.device))
    train(policy, graphs, cfg, a.finders, a.iters, a.episodes, 3e-4, a.seed, a.name, log, a.bc,
          pick=bandit.pick, observe=bandit.observe)
    log("final opponent probabilities: " + ", ".join(f"{f}={p:.2f}" for f, p in zip(a.finders, bandit.probs())))


if __name__ == "__main__":
    main()
