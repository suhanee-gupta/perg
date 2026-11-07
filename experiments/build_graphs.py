"""The heavy step: Terraform -> converted config -> permission graph -> data/graphs/<org>.json.

    python -m experiments.build_graphs                     # train + test + bench (laptop-safe)
    python -m experiments.build_graphs arimer-1bmoea --allow-large
    python -m experiments.build_graphs --deferred --allow-large   # the six large configs (bigger machine)

Each graph is checked against its labels before it is written; data/graphs/index.json records the
result. Configs whose Terraform is larger than --max-mb are skipped unless --allow-large: parsing
them needs minutes and up to ~1.5 GB of RAM (mermer), which is what made the laptop struggle.
"""
from __future__ import annotations

import argparse
import json
import sys
import time

import env
from iampe.checker.reach import LiveGraph
from iampe.checker.validate import check
from iampe.data.index import GRAPH_DIR, get_config, load_labels, splits
from iampe.graph.build import build_graph, sources
from iampe.graph.io import save_graph


def tf_mb(path) -> float:
    return sum(f.stat().st_size for f in path.glob("*.tf")) / 1e6


def build_one(org: str) -> dict:
    ref = get_config(org)
    t0 = time.time()
    G = build_graph(env.load_config(org))
    res = check(G, load_labels(ref))
    S = sources(G)
    row = {"org": org, "dataset": ref.dataset, "ok": res["ok"], "has_pe": res["has_pe"], "found": res["found"],
           "nodes": G.number_of_nodes(), "edges": G.number_of_edges(), "sources": len(S),
           "open": len(LiveGraph(G).open_pairs(S)), "seconds": round(time.time() - t0, 1),
           "errors": [list(map(str, x)) for x in res["hop_errors"] + res["start_errors"]]}
    save_graph(G, org, {"validation": {k: row[k] for k in ("ok", "has_pe", "found", "errors")}})
    return row


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("orgs", nargs="*")
    ap.add_argument("--deferred", action="store_true", help="build the large deferred configs")
    ap.add_argument("--allow-large", action="store_true")
    ap.add_argument("--max-mb", type=float, default=3.0, help="skip Terraform larger than this (MB)")
    a = ap.parse_args()
    s = splits()
    orgs = a.orgs or (s["deferred"] if a.deferred else s["train"] + s["test"] + s["bench"])
    idx_path = GRAPH_DIR / "index.json"
    index = json.loads(idx_path.read_text()) if idx_path.exists() else {}
    bad = 0
    for org in orgs:
        mb = tf_mb(get_config(org).path)
        if mb > a.max_mb and not a.allow_large:
            print(f"SKIP {org:16} Terraform is {mb:.1f} MB > {a.max_mb} MB (deferred; pass --allow-large)", flush=True)
            continue
        r = build_one(org)
        index[org] = r
        bad += not r["ok"]
        print(f"{'OK ' if r['ok'] else 'BAD'} {org:16} V={r['nodes']:<6} E={r['edges']:<6} open={r['open']}/{r['sources']} "
              f"has_pe={r['has_pe']!s:5} found={r['found']!s:5} {r['seconds']}s", flush=True)
        for e in r["errors"]:
            print("      ", e, flush=True)
        GRAPH_DIR.mkdir(parents=True, exist_ok=True)
        idx_path.write_text(json.dumps(index, indent=1, sort_keys=True))
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
