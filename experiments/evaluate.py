"""Phase 9: evaluation tables in the standard game, written to --out (default docs/results.md) and printed.

    python -m experiments.evaluate [--finders bfs greedy ckpt:runs/finder/finder.best.pt ...]
                                   [--removers random minseen adminfirst full ckpt:runs/remover/remover.best.pt ...]
                                   [--heldout random oracle] [--splits train test] [--large]
                                   [--synth-test data/synth_test] [--seeds 10] [--matrix] [game options]

What is reported, and why:
  * Finder A: FNR at fixed budgets Q (single round, no B) = missed open sources / open sources, pooled
    over configs and seeds, with the raw counts and a 95% bootstrap CI over (config, seed) games. The
    test split has only 2 configs (11 open sources), so without the counts and the CI a difference of
    one source looks like a result. "unprovable floor" is the exact share of open sources no finder
    can prove in these games (every path needs a declined query): the best any finder can reach.
    The oracle reads the hidden graph; it is a strong reference, not a guaranteed bound for small Q.
  * Remover B: mean total r_B over the K rounds, open sources summed over rounds ("open-source-rounds"),
    collateral (sum of normalised w over cut edges) and edges cut, each with a 95% bootstrap CI over
    (config, finder, seed) games; every remover faces the same finders, configs and seeds. Held-out
    finders (random and the oracle) are never in a training pool. Per round: open sources after B's
    cut and new routes (proofs using an edge B had not seen), to show whether A finds ways around cuts.
  * --matrix: total r_B of every finder against every remover (the co-training pools head to head).
  * --synth-test: held-out synthetic graphs (experiments/gen_synth.py with a seed not used in training),
    the only test set large enough to separate finders that differ by a few percent.
Declines depend only on the game seed and the query, so all agents face the same declines per seed.
"""
from __future__ import annotations

import argparse
import json
import random
from datetime import date

from experiments.common import (RUNS, add_game_args, fnr, game_kwargs, load_graph, make_finder, make_remover,
                                play, split_orgs)
from experiments.train_finder import synth_graphs
from iampe.data.index import ROOT
from iampe.env.game import standard_config
from iampe.graph.io import graph_path

REMOVERS = ["random", "minseen", "adminfirst", "full"]
FINDERS = ["bfs", "greedy"]
HELDOUT = ["random", "oracle"]
METRICS = ("r_B", "open", "collateral", "cuts")


def short(spec: str) -> str:
    if "/" not in spec:
        return spec
    return spec.split("/")[-1].removesuffix(".best.pt").removesuffix(".pt").removesuffix(".npz")


def bootstrap(units: list, stat, n: int = 2000, seed: int = 0) -> tuple[float, float]:
    """95% percentile bootstrap CI of stat(units) over resampled units."""
    if len(units) < 2:
        v = stat(units)
        return v, v
    rng = random.Random(seed)
    vals = sorted(stat([rng.choice(units) for _ in units]) for _ in range(n))
    return vals[int(0.025 * n)], vals[int(0.975 * n) - 1]


def _mean(xs) -> float:
    return sum(xs) / max(1, len(xs))


def finder_cell(rows: list[dict]) -> dict:
    """rows: one fnr() result per (config, seed). Pooled FNR, its CI, counts and the floor."""
    rows = [r for r in rows if r["open"]]
    pooled = (lambda rs: sum(r["missed"] for r in rs) / max(1, sum(r["open"] for r in rs)))
    lo, hi = bootstrap(rows, pooled)
    return {"fnr": pooled(rows), "lo": lo, "hi": hi, "missed": sum(r["missed"] for r in rows),
            "open": sum(r["open"] for r in rows), "unprovable": sum(r["unprovable"] for r in rows),
            "queries": _mean([r["queries"] for r in rows])}


def remover_runs(graphs, rem, finders, cfg, seeds) -> list[list[dict]]:
    return [play(G, make_finder(f, sd), make_remover(rem, sd), cfg, sd) for G in graphs for f in finders for sd in seeds]


def remover_cell(runs: list[list[dict]]) -> dict:
    per = [{"r_B": sum(l["r_B"] for l in r), "open": sum(l["open_after"] for l in r),
            "collateral": sum(l["cut_cost"] for l in r), "cuts": sum(len(l["cut"]) for l in r)} for r in runs]
    out = {}
    for m in METRICS:
        out[m] = _mean([p[m] for p in per])
        out[m + "_ci"] = bootstrap(per, lambda ps, m=m: _mean([p[m] for p in ps]))
    K = max(len(r) for r in runs)
    out["open_by_round"] = [_mean([r[k]["open_after"] for r in runs if k < len(r)]) for k in range(K)]
    out["new_routes_by_round"] = [_mean([r[k]["new_routes"] for r in runs if k < len(r)]) for k in range(K)]
    return out


def _ci(c: dict, m: str, fmt: str) -> str:
    lo, hi = c[m + "_ci"]
    return f"{c[m]:{fmt}} [{lo:{fmt}}, {hi:{fmt}}]"


def md_remover(title, tab, removers) -> list[str]:
    lines = [f"### {title}", "",
             "| remover | total r_B [95% CI] | open-source-rounds [95% CI] | collateral | edges cut | open after round k | new routes in round k |",
             "|---|---|---|---|---|---|---|"]
    for r in removers:
        c = tab[r]
        lines.append(f"| {short(r)} | {_ci(c, 'r_B', '.2f')} | {_ci(c, 'open', '.2f')} | {c['collateral']:.3f} | "
                     f"{c['cuts']:.2f} | {' / '.join(f'{x:.2f}' for x in c['open_by_round'])} | "
                     f"{' / '.join(f'{x:.2f}' for x in c['new_routes_by_round'])} |")
    return lines + [""]


def usable(spec: str, cfg) -> bool:
    """The LinUCB finder only chooses nodes (node mode)."""
    return not (spec.startswith("bandit") and cfg.query_mode == "edge")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--removers", nargs="+", default=REMOVERS)
    ap.add_argument("--finders", nargs="+", default=FINDERS, help="the training finders (B's pools)")
    ap.add_argument("--heldout", nargs="+", default=HELDOUT)
    ap.add_argument("--splits", nargs="+", default=["train", "test"])
    ap.add_argument("--large", action="store_true", help="also the deferred (large) configs; slow (mermer)")
    ap.add_argument("--large-removers", nargs="+", default=None, help="removers on the large configs (default: --removers)")
    ap.add_argument("--synth-test", default=None, help="held-out synthetic graphs as an extra test group")
    ap.add_argument("--synth-limit", type=int, default=0, help="use only the first N synthetic test graphs")
    add_game_args(ap)
    ap.add_argument("--seeds", type=int, default=10)
    ap.add_argument("--fnr-budgets", nargs="+", type=int, default=[20, 40, 80])
    ap.add_argument("--matrix", action="store_true", help="also every finder against every remover")
    ap.add_argument("--no-removers", action="store_true", help="only the finder table")
    ap.add_argument("--out", default=str(ROOT / "docs" / "results.md"))
    a = ap.parse_args()
    kw = game_kwargs(a)
    cfg = standard_config(**kw)
    finders = [f for f in a.finders if usable(f, cfg)]
    heldout = [f for f in a.heldout if usable(f, cfg)]
    seeds = tuple(range(a.seeds))
    md = ["# Results", "",
          f"Generated by `python -m experiments.evaluate` on {date.today()}. Game: query_mode={cfg.query_mode} "
          f"(visible share {cfg.visible_p:g}), Q={cfg.Q} queries per round (no END, {cfg.decline_p:.0%} of queries "
          f"declined), K={cfg.K} rounds; B: b_sees={cfg.b_sees}, "
          + (f"cut budget {cfg.cut_budget:g} edges, " if cfg.budget_mode != "none" else "no edge budget, ")
          + f"r_B = sources newly closed - sources still open - {cfg.lam:g} x collateral (sum of w(e) normalised "
          f"by the account's users and roles). {a.seeds} seeds per (config, finder); 95% CIs are percentile "
          f"bootstraps over games.", ""]
    groups = [(sp, {o: load_graph(o) for o in split_orgs(sp)}, a.removers) for sp in a.splits]
    if a.large:
        big = [o for o in split_orgs("deferred") if graph_path(o).exists()]
        groups.append(("large", {o: load_graph(o) for o in big}, a.large_removers or a.removers))
    if a.synth_test:
        gs = synth_graphs(a.synth_test, a.synth_limit)
        groups.append(("synth-test", {G.graph["name"]: G for G in gs}, a.removers))
    rows: dict = {"config": kw, "seeds": a.seeds, "finder": {}, "remover": {}, "matrix": {}}

    md += ["## Finder A: FNR at a fixed budget (single round, no B)", "",
           "FNR [95% CI] (missed / open sources). The floor row is the exact best any finder can do.", "",
           "| finder | group | " + " | ".join(f"Q={q}" for q in a.fnr_budgets) + " |",
           "|---|---|" + "---|" * len(a.fnr_budgets)]
    floors = {}
    for f in finders + [h for h in heldout if h not in finders]:
        for name, graphs, _ in groups:
            cells = []
            for q in a.fnr_budgets:
                res = [fnr(G, make_finder(f), seeds=(sd,), **(kw | {"K": 1, "Q": q}))      # one row per game
                       for G in graphs.values() for sd in seeds]
                c = finder_cell(res)
                rows["finder"][f"{short(f)}/{name}/Q={q}"] = c
                floors[(name, q)] = (c["unprovable"], c["open"])
                cells.append(f"{c['fnr']:.2f} [{c['lo']:.2f}, {c['hi']:.2f}] ({c['missed']}/{c['open']})")
            md.append(f"| {short(f)} | {name} | " + " | ".join(cells) + " |")
            print(f"finder {short(f)} on {name} done", flush=True)
    for name, _, _ in groups:
        md.append(f"| unprovable floor | {name} | " + " | ".join(
            f"{floors[(name, q)][0] / max(1, floors[(name, q)][1]):.2f} ({floors[(name, q)][0]}/{floors[(name, q)][1]})"
            for q in a.fnr_budgets) + " |")
    md.append("")

    if not a.no_removers:
        md += ["## Remover B", ""]
        for name, graphs, removers in groups:
            for label, fs in (("training finders", finders), ("held-out finders", heldout)):
                tab = {r: remover_cell(remover_runs(graphs.values(), r, fs, cfg, seeds)) for r in removers}
                rows["remover"][f"{name}/{label}"] = tab
                md += md_remover(f"{name} ({len(graphs)} configs), {label} = {', '.join(map(short, fs))}", tab, removers)
                print(f"removers on {name}, {label} done", flush=True)

    if a.matrix:
        md += ["## Head to head: total r_B of each remover (columns) against each finder (rows)", ""]
        allf = finders + [h for h in heldout if h not in finders]
        for name, graphs, removers in groups:
            md += [f"### {name}", "", "| finder | " + " | ".join(map(short, removers)) + " |",
                   "|---|" + "---|" * len(removers)]
            for f in allf:
                cells = []
                for r in removers:
                    c = remover_cell(remover_runs(graphs.values(), r, [f], cfg, seeds))
                    rows["matrix"][f"{name}/{short(f)}/{short(r)}"] = c["r_B"]
                    cells.append(f"{c['r_B']:.2f}")
                md.append(f"| {short(f)} | " + " | ".join(cells) + " |")
            md.append("")
    RUNS.mkdir(exist_ok=True)
    (RUNS / "evaluate.json").write_text(json.dumps(rows, indent=1, default=str))
    open(a.out, "w").write("\n".join(md))
    print("\n".join(md))


if __name__ == "__main__":
    main()
