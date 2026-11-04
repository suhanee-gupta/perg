"""Phase 5 metric: A's false-negative rate at query budget Q (single round, no B).

    python -m experiments.eval_finder [--finders bfs greedy random ckpt:runs/finder/best.pt]
                                      [--split train|test|large] [--budgets 2 5 10 25 50]
"""
from __future__ import annotations

import argparse
import json

from experiments.common import RUNS, fnr, load_graph, make_finder, split_orgs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--finders", nargs="+", default=["random", "bfs", "greedy", "oracle"])
    ap.add_argument("--split", default="test")
    ap.add_argument("--budgets", nargs="+", type=int, default=[2, 5, 10, 25, 50])
    ap.add_argument("--out", default=None)
    a = ap.parse_args()
    rows = []
    for org in split_orgs(a.split):
        G = load_graph(org)
        for spec in a.finders:
            for Q in a.budgets:
                r = fnr(G, make_finder(spec), Q) | {"org": org, "finder": spec, "Q": Q}
                rows.append(r)
                print(f"{org:16} {spec:28} Q={Q:<4} FNR={r['fnr']:.2f} (open={r['open']}, used={r['queries']:.1f})",
                      flush=True)
    print("\nmean FNR by finder and budget:")
    for spec in a.finders:
        cells = []
        for Q in a.budgets:
            rs = [r for r in rows if r["finder"] == spec and r["Q"] == Q and r["open"]]
            cells.append(f"Q={Q}:{sum(r['fnr'] for r in rs) / max(1, len(rs)):.2f}")
        print(f"  {spec:28} " + "  ".join(cells))
    out = a.out or RUNS / f"eval_finder_{a.split}.json"
    RUNS.mkdir(exist_ok=True)
    open(out, "w").write(json.dumps(rows, indent=1))


if __name__ == "__main__":
    main()
