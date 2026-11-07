"""Step 2: train the LinUCB Finder A on the train split (single rounds, no B).

    python -m experiments.train_bandit [--episodes 300] [--Q 20] [--alpha 0.5] [--beta 0.2]

Plays the standard game (fixed budget Q, declines; standard_config). The bandit only chooses which
node to query: the budget ends its turn. Saves runs/bandit/linucb.npz. The committed
models/linucb.npz was trained under the earlier cost-per-query game; the two features that changed
meaning (spent cost and proofs as a share of S) are equal for every candidate, so they do not change
which node it picks.
"""
from __future__ import annotations

import argparse
import random

from experiments.common import RUNS, fnr, load_graph, split_orgs
from iampe.agents.bandit import BanditFinder, LinUCB
from iampe.env.game import Game, standard_config


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--episodes", type=int, default=300)
    ap.add_argument("--Q", type=int, default=20)
    ap.add_argument("--alpha", type=float, default=0.5)
    ap.add_argument("--beta", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--out", default=str(RUNS / "bandit" / "linucb.npz"))
    a = ap.parse_args()
    rng = random.Random(a.seed)
    orgs = split_orgs("train")
    graphs = {o: load_graph(o) for o in orgs}
    model = LinUCB(alpha=a.alpha)
    finder = BanditFinder(model, beta=a.beta, learn=True, allow_end=False)   # explore fully while training
    for ep in range(1, a.episodes + 1):
        g = Game(graphs[rng.choice(orgs)], standard_config(K=1, Q=a.Q), random.Random(rng.random()))
        finder.reset(g)
        while g.a_can_query():
            g.a_query(finder.act(g))
        finder.finish(g)
        if ep % 50 == 0:
            evalf = BanditFinder(model, beta=a.beta, allow_end=False)
            rows = [fnr(G, evalf, seeds=(100, 101), Q=a.Q) for G in graphs.values()]
            rows = [r for r in rows if r["open"]]
            print(f"episode {ep}: train FNR {sum(r['fnr'] for r in rows) / len(rows):.3f} "
                  f"queries {sum(r['queries'] for r in rows) / len(rows):.1f}", flush=True)
    model.save(a.out)
    print("theta:", " ".join(f"{t:+.2f}" for t in model.theta))
    print(f"saved {a.out}")


if __name__ == "__main__":
    main()
