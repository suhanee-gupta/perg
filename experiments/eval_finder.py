"""Finder A evaluation (single round, no B).

  self-stopping   each finder decides when to END (or the game's cost rule stops it), per mu:
                  FNR and queries actually used
  fixed budget    END disabled, exactly Q queries (equal-query comparison; Q=100 is TAC-comparable)

    python -m experiments.eval_finder [--split test] [--finders bfs greedy bfs:p10 bandit:models/linucb.npz]
                                      [--mus 0.005 0.02 0.05 0.1] [--budgets 10 20 40 100]
"""
from __future__ import annotations

import argparse
import json

from experiments.common import RUNS, fnr, load_graph, make_finder, split_orgs

DEFAULT = ["random", "bfs", "greedy", "bfs:p10", "greedy:p10", "bandit:models/linucb.npz", "oracle"]


def mean(rows, key):
    rows = [r for r in rows if r["open"]]
    return sum(r[key] for r in rows) / max(1, len(rows))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--finders", nargs="+", default=DEFAULT)
    ap.add_argument("--split", default="test")
    ap.add_argument("--mus", nargs="+", type=float, default=[0.005, 0.02, 0.05, 0.1])
    ap.add_argument("--budgets", nargs="+", type=int, default=[10, 20, 40, 100])
    ap.add_argument("--seeds", type=int, default=3)
    ap.add_argument("--out", default=None)
    a = ap.parse_args()
    seeds = tuple(range(a.seeds))
    graphs = {o: load_graph(o) for o in split_orgs(a.split)}
    rows = []
    for spec in a.finders:
        for mu in a.mus:
            for org, G in graphs.items():
                rows.append(fnr(G, make_finder(spec), mu=mu, seeds=seeds) | {"org": org, "finder": spec, "mode": "self", "mu": mu})
        for Q in a.budgets:
            for org, G in graphs.items():
                rows.append(fnr(G, make_finder(spec, allow_end=False), mu=1e-6, Q=Q, seeds=seeds)
                            | {"org": org, "finder": spec, "mode": "fixed", "Q": Q})
    w = max(len(f) for f in a.finders)
    print(f"split={a.split} ({', '.join(graphs)})\n\nself-stopping: FNR / queries used, per mu")
    print(" " * w + "".join(f"   mu={mu:<13}" for mu in a.mus))
    for spec in a.finders:
        cells = [[r for r in rows if r["finder"] == spec and r["mode"] == "self" and r["mu"] == mu] for mu in a.mus]
        print(f"{spec:{w}}" + "".join(f"   {mean(c, 'fnr'):.2f} / {mean(c, 'queries'):6.1f}  " for c in cells))
    print("\nfixed budget: FNR at exactly Q queries (END disabled)")
    print(" " * w + "".join(f"   Q={Q:<5}" for Q in a.budgets))
    for spec in a.finders:
        cells = [[r for r in rows if r["finder"] == spec and r["mode"] == "fixed" and r["Q"] == Q] for Q in a.budgets]
        print(f"{spec:{w}}" + "".join(f"   {mean(c, 'fnr'):.2f}   " for c in cells))
    out = a.out or RUNS / f"eval_finder_{a.split}.json"
    RUNS.mkdir(exist_ok=True)
    open(out, "w").write(json.dumps(rows, indent=1))


if __name__ == "__main__":
    main()
