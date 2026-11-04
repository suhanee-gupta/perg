"""Step 2: train the LinUCB Finder A on the train split (single rounds, no B).

    python -m experiments.train_bandit [--episodes 300] [--mu 0.02] [--alpha 0.5] [--beta 0.2]

The reward model does not depend on mu (mu only sets when the finder ENDs), so one model serves
every mu. Saves runs/bandit/linucb.npz (the evaluated copy is committed as models/linucb.npz).
"""
from __future__ import annotations

import argparse
import random

from experiments.common import RUNS, fnr, load_graph, split_orgs
from iampe.agents.bandit import BanditFinder, LinUCB
from iampe.env.game import Game, GameConfig


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--episodes", type=int, default=300)
    ap.add_argument("--mu", type=float, default=0.02)
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
        g = Game(graphs[rng.choice(orgs)], GameConfig(K=1, mu=a.mu), random.Random(rng.random()))
        finder.reset(g)
        while g.a_can_query():
            g.a_query(finder.act(g))
        finder.finish(g)
        if ep % 50 == 0:
            evalf = BanditFinder(model, beta=a.beta)
            rows = [fnr(G, evalf, mu=a.mu, seeds=(100, 101)) for G in graphs.values()]
            rows = [r for r in rows if r["open"]]
            print(f"episode {ep}: train FNR {sum(r['fnr'] for r in rows) / len(rows):.3f} "
                  f"queries {sum(r['queries'] for r in rows) / len(rows):.1f}", flush=True)
    model.save(a.out)
    print("theta:", " ".join(f"{t:+.2f}" for t in model.theta))
    print(f"saved {a.out}")


if __name__ == "__main__":
    main()
