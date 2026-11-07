"""Finder A evaluation (single round, no B) in the standard game: FNR at a fixed budget Q.

    python -m experiments.eval_finder [--split test] [--finders bfs greedy ckpt:runs/finder/finder.best.pt]
                                      [--budgets 10 20 40] [--decline 0.1] [--seeds 3]

FNR = share of truly open sources the finder fails to prove within Q queries (mean over configs
that have open sources); also the queries actually used (the round ends early once every open
source is proven).
"""
from __future__ import annotations

import argparse
import json

from experiments.common import RUNS, fnr, load_graph, make_finder, split_orgs

DEFAULT = ["random", "bfs", "greedy", "bandit:models/linucb.npz", "oracle"]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--finders", nargs="+", default=DEFAULT)
    ap.add_argument("--split", nargs="+", default=["test"])
    ap.add_argument("--budgets", nargs="+", type=int, default=[10, 20, 40])
    ap.add_argument("--decline", type=float, default=0.1)
    ap.add_argument("--seeds", type=int, default=3)
    ap.add_argument("--out", default=None)
    a = ap.parse_args()
    seeds = tuple(range(a.seeds))
    graphs = {o: load_graph(o) for sp in a.split for o in split_orgs(sp)}
    rows = []
    for spec in a.finders:
        for Q in a.budgets:
            for org, G in graphs.items():
                rows.append(fnr(G, make_finder(spec), seeds=seeds, Q=Q, decline_p=a.decline)
                            | {"org": org, "finder": spec, "Q": Q})
    w = max(len(f) for f in a.finders)
    print(f"split={'+'.join(a.split)} ({', '.join(graphs)}), decline {a.decline}\n\nFNR / queries used at budget Q")
    print(" " * w + "".join(f"   Q={Q:<12}" for Q in a.budgets))
    for spec in a.finders:
        cells = []
        for Q in a.budgets:
            rs = [r for r in rows if r["finder"] == spec and r["Q"] == Q]
            op = [r for r in rs if r["open"]]
            cells.append(f"   {sum(r['fnr'] for r in op) / max(1, len(op)):.2f} / {sum(r['queries'] for r in rs) / len(rs):5.1f}  ")
        print(f"{spec:{w}}" + "".join(cells))
    out = a.out or RUNS / f"eval_finder_{'+'.join(a.split)}.json"
    RUNS.mkdir(exist_ok=True)
    open(out, "w").write(json.dumps(rows, indent=1))


if __name__ == "__main__":
    main()
