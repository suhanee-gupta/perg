"""Check the Terraform -> TAC converter against the dataset labels using the team's whitebox checker.

WARNING: the team's relax() keeps every derivation and needs GBs of RAM above ~500 entities (it crashed
the laptop). This script refuses configs with more than 100 entities; use experiments.validate_graphs.

For each config:  converted reachability of the untrusted entity == labels.ground_truth.has_pe,
and every planted path / dead end in the injection plan is reachable from its start entity.

    python -m experiments.validate_tac [org ...]          # default: all but the two large configs
"""
from __future__ import annotations

import sys
import time

import env
from iampe.data.index import list_configs, load_labels, splits


def validate(org: str) -> dict:
    labels = load_labels(next(r for r in list_configs() if r.org == org))
    t0 = time.time()
    e = env.load_config(org)
    if len(e.entity_types) > 100:
        raise SystemExit(f"{org}: {len(e.entity_types)} entities > 100; team relax() would need GBs of RAM")
    t_conv = time.time() - t0
    row = {"org": org, "entities": len(e.entity_types), "convert_s": round(t_conv, 1),
           "has_pe": labels["ground_truth"]["has_pe"]}
    t0 = time.time()
    res = e.reachable()
    row.update(found=res.found, relax_s=round(time.time() - t0, 1), ok=res.found == row["has_pe"],
               witness=[s.label for s in res.witness])
    misses = []
    for kind in ("planted", "dead_ends"):
        for p in labels["injection_plan"][kind]:
            if p["reaches_admin"] and p["start"] in e.entity_types and not e.is_reachable(p["start"]):
                misses.append((kind, p["start"], [h["prim"] for h in p["hops"]]))
            elif p["start"] not in e.entity_types:
                misses.append((kind, p["start"], "start entity missing"))
    row["path_misses"] = misses
    row["warnings"] = e.warnings
    return row


def main(orgs: list[str]) -> int:
    bad = 0
    for org in orgs:
        r = validate(org)
        bad += (not r["ok"]) + len(r["path_misses"])
        print(f"{'OK ' if r['ok'] and not r['path_misses'] else 'BAD'} {org:16} n={r['entities']:<5} "
              f"has_pe={r['has_pe']!s:5} found={r['found']!s:5} relax={r['relax_s']}s  witness={r['witness']}",
              flush=True)
        for m in r["path_misses"]:
            print("     miss:", m, flush=True)
        if r["warnings"]:
            print("     warnings:", r["warnings"], flush=True)
    return 1 if bad else 0


if __name__ == "__main__":
    args = sys.argv[1:] or splits()["bench"] + ["dyntri-100q3n", "kalum-100q3l", "mavsol-zq0ao", "linost-zq0as"]
    sys.exit(main(args))
