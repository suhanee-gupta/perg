"""Generate synthetic graphs for pretraining Finder A (iampe/data/synth.py; adapted from Greybox-TAC).

    python -m experiments.gen_synth --n 2000 --out data/synth [--seed 0]

Edge-type frequencies come from the real train split only (never the test or large configs). Each
graph is written as <out>/synth-<seed>.json; <out>/index.json lists node counts for the size curriculum.
Light: about 2000 graphs of ~14-320 nodes; run it where the training runs.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from experiments.common import load_graph, split_orgs
from iampe.data.index import ROOT
from iampe.data.synth import edge_table, gen_graph
from iampe.graph.io import save_graph_file


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=2000)
    ap.add_argument("--out", default=str(ROOT / "data" / "synth"))
    ap.add_argument("--seed", type=int, default=0)
    a = ap.parse_args()
    table = edge_table([load_graph(o) for o in split_orgs("train")])
    out = Path(a.out)
    index = {}
    for i in range(a.n):
        G = gen_graph(a.seed * 1_000_000 + i, table)
        save_graph_file(G, out / f"{G.graph['name']}.json")
        index[G.graph["name"]] = {"nodes": G.number_of_nodes(), "edges": G.number_of_edges(),
                                  "planted": len(G.graph["planted"])}
        if (i + 1) % 200 == 0:
            print(f"{i + 1}/{a.n}", flush=True)
    (out / "index.json").write_text(json.dumps(index, indent=1))
    print(f"wrote {a.n} graphs to {out}")


if __name__ == "__main__":
    main()
