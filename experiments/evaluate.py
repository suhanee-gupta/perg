"""Phase 9: evaluation tables in the standard game, written to --out (default docs/results.md) and printed.

    python -m experiments.evaluate [--finders bfs greedy ckpt:runs/finder/finder.best.pt ...]
                                   [--removers random minseen adminfirst full ckpt:runs/remover/remover.best.pt ...]
                                   [--heldout random oracle] [--splits test] [--large]
                                   [--synth-test data/synth_test] [--seeds 10] [--matrix] [game options]

What is reported, and why:
  * Finder A: FNR at fixed budgets Q (single round, no B) = missed open sources / open sources, pooled
    over configs and seeds, with the raw counts and a 95% bootstrap CI that resamples whole configs. The
    test split has 10 configs (46 open sources), so without the counts and the CI a difference of a
    few sources looks like a result. "unprovable floor" is the exact share of open sources no finder
    can prove in these games (every path needs a declined query): the best any finder can reach.
    The oracle reads the hidden graph; it is a strong reference, not a guaranteed bound for small Q.
  * Remover B: mean total r_B over the K rounds, open sources summed over rounds ("open-source-rounds"),
    collateral (sum of normalised w over cut edges) and edges cut, with 95% CIs; every remover faces
    the same finders, configs and seeds. Tables are split into pool finders (some compared B trained
    against them) and held-out finders (none did). Per round: open sources after B's cut, sources A
    re-found (proved before, proof cut by B, proved again: a route around the fix) and sources found
    for the first time.
  * --matrix: total r_B of every finder against every remover (the co-training pools head to head).
  * --synth-test: held-out synthetic graphs (experiments/gen_synth.py with a seed not used in training),
    the only test set large enough to separate finders that differ by a few percent.
95% CIs are percentile bootstraps that resample whole configs (games on one config are correlated).
Declines depend only on the game seed and the query, so all agents face the same declines per seed.
Every game is played once per call (the matrix reuses the tables' games).
"""
from __future__ import annotations

import argparse
import json
import multiprocessing as mp
import os
import random
from datetime import date
from pathlib import Path

import torch

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


def bootstrap(units: list, stat, n: int = 2000, seed: int = 0, cluster=None) -> tuple[float, float]:
    """95% percentile bootstrap CI of stat(units). With `cluster` (unit -> key), whole clusters are
    resampled: games on the same graph are correlated, so resampling them one by one would make the
    interval too narrow (with the 2 test configs it is honestly wide)."""
    groups = {}
    for u in units:
        groups.setdefault(cluster(u) if cluster else id(u), []).append(u)
    keys = list(groups)
    if len(keys) < 2:
        v = stat(units)
        return v, v
    rng = random.Random(seed)
    vals = sorted(stat([u for _ in keys for u in groups[rng.choice(keys)]]) for _ in range(n))
    return vals[int(0.025 * n)], vals[int(0.975 * n) - 1]


def _mean(xs) -> float:
    return sum(xs) / max(1, len(xs))


def finder_cell(rows: list[dict]) -> dict:
    """rows: one fnr() result per (config, seed), with the config in "g". Pooled FNR, its CI (configs
    resampled), counts and the floor."""
    rows = [r for r in rows if r["open"]]
    pooled = (lambda rs: sum(r["missed"] for r in rs) / max(1, sum(r["open"] for r in rs)))
    lo, hi = bootstrap(rows, pooled, cluster=lambda r: r["g"])
    return {"fnr": pooled(rows), "lo": lo, "hi": hi, "missed": sum(r["missed"] for r in rows),
            "open": sum(r["open"] for r in rows), "unprovable": sum(r["unprovable"] for r in rows),
            "queries": _mean([r["queries"] for r in rows])}


# Games are independent and CPU-bound (Python game logic), so they run in a process pool. Graphs live in
# _GRAPHS, filled before the pool forks, and tasks name them, so no graph is pickled per task. Every game
# process uses one torch thread (also without a pool), so results do not depend on --workers.
_GRAPHS: dict = {}
_POOL = None
_GAMES: dict = {}                                  # (finder, remover, graph, seed) -> logs, run once


def _init_worker():
    torch.set_num_threads(1)


def _fnr_task(t):
    f, g, sd, kw = t
    return fnr(_GRAPHS[g], make_finder(f), seeds=(sd,), **kw) | {"g": g}


def _play_task(t):
    f, r, g, sd, cfg = t
    return play(_GRAPHS[g], make_finder(f, sd), make_remover(r, sd), cfg, sd)


def run_tasks(fn, tasks: list) -> list:
    if _POOL is None:
        return [fn(t) for t in tasks]
    return _POOL.map(fn, tasks, chunksize=max(1, len(tasks) // (8 * _POOL._processes)))


def remover_runs(graphs, rem, finders, cfg, seeds) -> list[tuple[str, list[dict]]]:
    """(graph, logs) of one K-round game per (graph, finder, seed); each game is played once per run of
    this script, so the matrix reuses the games of the remover tables."""
    keys = [(f, rem, g, sd) for g in graphs for f in finders for sd in seeds]
    todo = [k for k in dict.fromkeys(keys) if k not in _GAMES]
    for k, logs in zip(todo, run_tasks(_play_task, [k + (cfg,) for k in todo])):
        _GAMES[k] = logs
    return [(k[2], _GAMES[k]) for k in keys]


def _later_finds(logs) -> tuple[list[int], list[int]]:
    """Per round k: sources A proved with round k's queries that it had proved before and lost to a cut
    (re-found: a route around B's fix), and sources it proved for the first time."""
    before: set = set()
    refound, first = [], []
    for l in logs:
        by_query = set(l["proven"]) - set(l["reported_at_start"])
        refound.append(len(by_query & before))
        first.append(len(by_query - before))
        before |= set(l["proven"])
    return refound, first


def remover_cell(runs: list[tuple[str, list[dict]]]) -> dict:
    per = []
    for g, r in runs:
        refound, first = _later_finds(r)
        per.append({"g": g, "r_B": sum(l["r_B"] for l in r), "open": sum(l["open_after"] for l in r),
                    "collateral": sum(l["cut_cost"] for l in r), "cuts": sum(len(l["cut"]) for l in r),
                    "refound": sum(refound), "rounds": r, "refound_k": refound, "first_k": first})
    out = {}
    for m in METRICS + ("refound",):
        out[m] = _mean([p[m] for p in per])
        out[m + "_ci"] = bootstrap(per, lambda ps, m=m: _mean([p[m] for p in ps]), cluster=lambda p: p["g"])
    K = max(len(p["rounds"]) for p in per)
    by_round = lambda f: [_mean([f(p, k) for p in per if k < len(p["rounds"])]) for k in range(K)]
    out["open_by_round"] = by_round(lambda p, k: p["rounds"][k]["open_after"])
    out["refound_by_round"] = by_round(lambda p, k: p["refound_k"][k])
    out["first_found_by_round"] = by_round(lambda p, k: p["first_k"][k])
    return out


def _ci(c: dict, m: str, fmt: str) -> str:
    lo, hi = c[m + "_ci"]
    return f"{c[m]:{fmt}} [{lo:{fmt}}, {hi:{fmt}}]"


def md_remover(title, tab, removers) -> list[str]:
    lines = [f"### {title}", "",
             "| remover | total r_B [95% CI] | open-source-rounds [95% CI] | collateral | edges cut "
             "| open after round k | re-found in round k | first found in round k |",
             "|---|---|---|---|---|---|---|---|"]
    for r in removers:
        c = tab[r]
        lines.append(f"| {short(r)} | {_ci(c, 'r_B', '.2f')} | {_ci(c, 'open', '.2f')} | {c['collateral']:.3f} | "
                     f"{c['cuts']:.2f} | {_seq(c['open_by_round'])} | {_seq(c['refound_by_round'])} | "
                     f"{_seq(c['first_found_by_round'])} |")
    return lines + [""]


def _seq(xs) -> str:
    return " / ".join(f"{x:.2f}" for x in xs)


def usable(spec: str, cfg) -> bool:
    """The LinUCB finder only chooses nodes (node mode)."""
    return not (spec.startswith("bandit") and cfg.query_mode == "edge")


def main():
    global _POOL
    ap = argparse.ArgumentParser()
    ap.add_argument("--removers", nargs="+", default=REMOVERS)
    ap.add_argument("--finders", nargs="+", default=FINDERS,
                    help="finders some compared B trained against (its pools); B tables are split by this")
    ap.add_argument("--heldout", nargs="*", default=HELDOUT,
                    help="finders no compared B trained against (none: give the flag alone)")
    ap.add_argument("--splits", nargs="*", default=["test"], choices=["train", "val", "test", "bench"],
                    help="real splits (none: give the flag alone); val is used for model selection, so test is the verdict")
    ap.add_argument("--large", action="store_true", help="also the large configs (5k+ nodes; those with a built graph)")
    ap.add_argument("--large-removers", nargs="+", default=None, help="removers on the large configs (default: --removers)")
    ap.add_argument("--synth-test", default=None, help="held-out synthetic graphs as an extra test group")
    ap.add_argument("--synth-limit", type=int, default=0, help="use only the first N synthetic test graphs")
    add_game_args(ap)
    ap.add_argument("--seeds", type=int, default=10)
    ap.add_argument("--fnr-budgets", nargs="+", type=int, default=[20, 40, 80])
    ap.add_argument("--matrix", action="store_true", help="also every finder against every remover")
    ap.add_argument("--no-finder-table", action="store_true", help="skip the single-round finder table")
    ap.add_argument("--no-removers", action="store_true", help="skip the remover tables")
    ap.add_argument("--title", default="Results")
    ap.add_argument("--workers", type=int, default=os.cpu_count() or 1, help="parallel game processes (1 = none)")
    ap.add_argument("--out", default=str(ROOT / "docs" / "results.md"))
    a = ap.parse_args()
    kw = game_kwargs(a)
    cfg = standard_config(**kw)
    finders = [f for f in a.finders if usable(f, cfg)]
    heldout = [f for f in a.heldout if usable(f, cfg)]
    allf = finders + [h for h in heldout if h not in finders]
    seeds = tuple(range(a.seeds))
    md = [f"# {a.title}", "",
          f"Generated by `python -m experiments.evaluate` on {date.today()}. Game: query_mode={cfg.query_mode} "
          f"(visible share {cfg.visible_p:g}), Q={cfg.Q} queries per round (no END, {cfg.decline_p:.0%} of queries "
          f"declined), K={cfg.K} rounds; B: b_sees={cfg.b_sees}, "
          + (f"cut budget {cfg.cut_budget:g} edges, " if cfg.budget_mode != "none" else "no edge budget, ")
          + f"r_B = sources newly closed - sources still open - {cfg.lam:g} x collateral (sum of w(e) normalised "
          f"by the account's users and roles). {a.seeds} seeds per (config, finder); 95% CIs are percentile "
          f"bootstraps resampling whole configs.", ""]
    groups = []                                    # (name, graph names, removers)
    for sp in a.splits:
        for o in split_orgs(sp):
            _GRAPHS[o] = load_graph(o)
        groups.append((sp, split_orgs(sp), a.removers))
    if a.large:
        big = [o for o in split_orgs("large") if graph_path(o).exists()]
        for o in big:
            _GRAPHS[o] = load_graph(o)
        groups.append(("large", big, a.large_removers or a.removers))
    if a.synth_test:
        names = []
        for G in synth_graphs(a.synth_test, a.synth_limit):
            _GRAPHS[G.graph["name"]] = G
            names.append(G.graph["name"])
        groups.append(("synth-test", names, a.removers))
    _init_worker()                                 # one torch thread, with or without a pool
    if a.workers > 1:                              # fork after the graphs are loaded: workers share them
        _POOL = mp.get_context("fork").Pool(a.workers, initializer=_init_worker)
    rows: dict = {"config": kw, "seeds": a.seeds, "finder": {}, "remover": {}, "matrix": {}}

    if not a.no_finder_table:
        md += ["## Finder A: FNR at a fixed budget (single round, no B)", "",
               "FNR [95% CI] (missed / open sources). The floor row is the exact best any finder can do.", "",
               "| finder | group | " + " | ".join(f"Q={q}" for q in a.fnr_budgets) + " |",
               "|---|---|" + "---|" * len(a.fnr_budgets)]
        floors = {}
        for f in allf:
            for name, graphs, _ in groups:
                cells = []
                for q in a.fnr_budgets:
                    res = run_tasks(_fnr_task, [(f, g, sd, kw | {"K": 1, "Q": q}) for g in graphs for sd in seeds])
                    c = finder_cell(res)                   # one row per game
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
            for label, fs in (("pool finders (some compared B trained against them)", finders),
                              ("held-out finders (no compared B trained against them)", heldout)):
                if not fs:
                    continue
                tab = {r: remover_cell(remover_runs(graphs, r, fs, cfg, seeds)) for r in removers}
                rows["remover"][f"{name}/{label}"] = tab
                md += md_remover(f"{name} ({len(graphs)} configs), {label} = {', '.join(map(short, fs))}", tab, removers)
                print(f"removers on {name}, {label} done", flush=True)

    if a.matrix:
        md += ["## Head to head: each finder (rows) against each remover (columns)", "",
               "Cell: total r_B [95% CI] / open-source-rounds / sources re-found after a fix (A proved them, B's "
               "cut removed the proof, A proved them again with later queries). Higher r_B and fewer open "
               "sources are better for B; re-finds show A getting around B's fixes.", ""]
        for name, graphs, removers in groups:
            md += [f"### {name}", "", "| finder | " + " | ".join(map(short, removers)) + " |",
                   "|---|" + "---|" * len(removers)]
            for f in allf:
                cells = []
                for r in removers:
                    c = remover_cell(remover_runs(graphs, r, [f], cfg, seeds))
                    rows["matrix"][f"{name}/{short(f)}/{short(r)}"] = c
                    cells.append(f"{_ci(c, 'r_B', '.2f')} / {c['open']:.2f} / {c['refound']:.2f}")
                md.append(f"| {short(f)} | " + " | ".join(cells) + " |")
            md.append("")
            print(f"matrix on {name} done", flush=True)
    if _POOL is not None:
        _POOL.close()
    RUNS.mkdir(exist_ok=True)
    out = Path(a.out)
    (RUNS / f"{out.stem}.json").write_text(json.dumps(rows, indent=1, default=str))
    out.write_text("\n".join(md))
    print("\n".join(md))


if __name__ == "__main__":
    main()
