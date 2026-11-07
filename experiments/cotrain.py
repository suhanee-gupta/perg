"""Phase 8: co-training A and B in the standard game, PSRO-style pools with EXP3 opponent choice.

    python -m experiments.cotrain --init-finder runs/finder/finder.best.pt --init-remover runs/remover/remover.best.pt
                                  [--gens 4] [--iters 10] [--episodes 8] [--gamma 0.2] [--name cotrain]

Each generation:
  1. A trains against the B pool (baselines min-seen and admin-first, plus every B snapshot so far);
     EXP3 picks the opponent and favours the remover A currently does worst against
     (EXP3 reward = share of open sources A failed to prove, averaged over rounds).
  2. B trains against the A pool (BFS, Greedy, the bandit, plus every A snapshot so far); EXP3 favours
     the finder B currently does worst against (share of sources left open, averaged over rounds).
  3. The new A and B are added to the pools as snapshots runs/cotrain/<name>_A<g>.pt / _B<g>.pt.
The pools never contain the held-out finders used in evaluate.py (random, oracle).
"""
from __future__ import annotations

import argparse
import json
import math
import random
import shutil

import torch

from experiments.common import RUNS, device, load_graph, split_orgs
from experiments.train_finder import train as train_a
from experiments.train_remediator import FINDERS, add_game_args, game_config
from experiments.train_remediator import train as train_b
from iampe.agents.gnn import FinderPolicy, RemediatorPolicy

REMOVERS = ["minseen", "adminfirst"]


class EXP3:
    def __init__(self, arms: list, gamma: float = 0.2, seed: int = 0, reward=None):
        self.arms, self.gamma = list(arms), gamma
        self.logw = [0.0] * len(arms)
        self.rng = random.Random(seed)
        self.last_p = None
        self.reward = reward or b_failure

    def add(self, arm) -> None:
        """New arm (a snapshot) starts at the current best weight, so it gets tried."""
        self.arms.append(arm)
        self.logw.append(max(self.logw))

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
        i = self.arms.index(arm)
        x = self.reward(logs)
        p = (self.last_p or self.probs())[i]
        self.logw[i] += self.gamma * (x / p) / len(self.arms)


def b_failure(logs) -> float:
    """How badly B did: mean open sources per round, scaled to [0, 1]."""
    n = max(1, max(l.open_before for l in logs))
    return sum(l.open_after for l in logs) / (len(logs) * n)


def a_failure(logs) -> float:
    """How badly A did: share of the round's open sources it did not prove, averaged over rounds."""
    vals = [max(0, l.open_before - len(l.proven)) / l.open_before for l in logs if l.open_before]
    return sum(vals) / len(vals) if vals else 0.0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--init-finder", required=True)
    ap.add_argument("--init-remover", required=True)
    ap.add_argument("--gens", type=int, default=4)
    ap.add_argument("--iters", type=int, default=10)
    ap.add_argument("--episodes", type=int, default=8)
    ap.add_argument("--gamma", type=float, default=0.2, help="EXP3 exploration")
    ap.add_argument("--orgs", nargs="+", default=None)
    add_game_args(ap)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--name", default="cotrain")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = sorted([load_graph(o) for o in a.orgs or split_orgs("train")], key=lambda G: G.number_of_nodes())
    cfg = game_config(a)
    out = RUNS / "cotrain"
    out.mkdir(parents=True, exist_ok=True)
    logf = open(out / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)))
    dev = device(a.device)
    pa, pb = FinderPolicy().to(dev), RemediatorPolicy().to(dev)
    pa.load_state_dict(torch.load(a.init_finder, map_location="cpu"))
    pb.load_state_dict(torch.load(a.init_remover, map_location="cpu"))
    b_pool = EXP3(REMOVERS + [f"ckpt:{a.init_remover}"], a.gamma, a.seed, reward=a_failure)
    a_pool = EXP3(FINDERS + [f"ckpt:{a.init_finder}"], a.gamma, a.seed + 1, reward=b_failure)
    for g in range(1, a.gens + 1):
        log(f"== generation {g}: A vs {b_pool.arms}")
        train_a(pa, graphs, cfg, b_pool.arms, a.iters, a.episodes, 1e-4, a.seed + g, f"{a.name}_A", graphs,
                log, pick=b_pool.pick, observe=b_pool.observe)
        snap_a = out / f"{a.name}_A{g}.pt"
        shutil.copy(RUNS / "finder" / f"{a.name}_A.best.pt", snap_a)
        pa.load_state_dict(torch.load(snap_a, map_location="cpu"))
        a_pool.add(f"ckpt:{snap_a}")
        log(f"== generation {g}: B vs {a_pool.arms}")
        train_b(pb, graphs, cfg, a_pool.arms, a.iters, a.episodes, 3e-4, a.seed + g, f"{a.name}_B", log,
                pick=a_pool.pick, observe=a_pool.observe)
        snap_b = out / f"{a.name}_B{g}.pt"
        shutil.copy(RUNS / "remover" / f"{a.name}_B.best.pt", snap_b)
        pb.load_state_dict(torch.load(snap_b, map_location="cpu"))
        b_pool.add(f"ckpt:{snap_b}")
        log("opponent probabilities for A: " + ", ".join(f"{x}={p:.2f}" for x, p in zip(b_pool.arms, b_pool.probs())))
        log("opponent probabilities for B: " + ", ".join(f"{x}={p:.2f}" for x, p in zip(a_pool.arms, a_pool.probs())))


if __name__ == "__main__":
    main()
