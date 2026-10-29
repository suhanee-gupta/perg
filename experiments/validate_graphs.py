"""Phase 2/3 check: build the permission graph for each config and compare it with the labels.

    python -m experiments.validate_graphs [org ...]        # default: all 14 configs

Uses only the fast graph checker (no team relax), so it is safe on the large configs.
"""
from __future__ import annotations

import json
import sys
import time

import env
from iampe.checker.mincut import min_cut
from iampe.checker.validate import check
from iampe.data.index import ROOT, list_configs, load_labels
from iampe.graph.build import build_graph, sources


def run(org: str) -> dict:
    ref = next(r for r in list_configs() if r.org == org)
    t0 = time.time()
    e = env.load_config(org)
    G = build_graph(e)
    t_build = time.time() - t0
    res = check(G, load_labels(ref))
    S = sources(G)
    t0 = time.time()
    cost, cut = min_cut(G, S)
    row = {"org": org, "nodes": G.number_of_nodes(), "edges": G.number_of_edges(), "build_s": round(t_build, 1),
           "sources": len(S), "open": len(set(S) & set(_reach(G))), "mincut_cost": cost, "mincut_edges": len(cut),
           "mincut_s": round(time.time() - t0, 1), **res}
    return row


def _reach(G):
    from iampe.checker.reach import LiveGraph
    return LiveGraph(G).can_reach_admin()


def main(orgs):
    rows, bad = [], 0
    for org in orgs:
        r = run(org)
        rows.append(r)
        bad += not r["ok"]
        print(f"{'OK ' if r['ok'] else 'BAD'} {org:16} V={r['nodes']:<6} E={r['edges']:<7} build={r['build_s']}s "
              f"has_pe={r['has_pe']!s:5} found={r['found']!s:5} open={r['open']}/{r['sources']} "
              f"mincut={r['mincut_cost']:g} ({r['mincut_edges']} edges, {r['mincut_s']}s)", flush=True)
        for x in r["hop_errors"] + r["start_errors"]:
            print("     ", x, flush=True)
    out = ROOT / "runs" / "validate_graphs.json"
    out.parent.mkdir(exist_ok=True)
    out.write_text(json.dumps(rows, indent=1, default=str))
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:] or [r.org for r in list_configs()]))
