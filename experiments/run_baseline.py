"""Phase 6: A vs each B for K rounds; per-round open pairs, cut cost, r_A, r_B, new routes.

    python -m experiments.run_baseline [--finder greedy|bandit:...|ckpt:...] [--removers random minseen full]
                                       [--split train test] [--rounds 5] [--mu 0.3] [--budget 1] [--name baseline]

Writes runs/<name>/metrics.jsonl and runs/<name>/curves.png.
"""
from __future__ import annotations

import argparse
from collections import defaultdict

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt  # noqa: E402

from experiments.common import RUNS, load_graph, make_finder, make_remover, play, split_orgs, write_jsonl  # noqa: E402
from iampe.env.game import GameConfig  # noqa: E402


def run(finder: str, removers: list[str], orgs: list[str], cfg: GameConfig, seeds, name: str) -> list[dict]:
    rows = []
    for org in orgs:
        G = load_graph(org)
        for rem in removers:
            for sd in seeds:
                for log in play(G, make_finder(finder, sd), make_remover(rem, sd), cfg, sd):
                    rows.append({"org": org, "finder": finder, "remover": rem, "seed": sd} | log)
    write_jsonl(RUNS / name / "metrics.jsonl", rows)
    plot(rows, removers, cfg.K, RUNS / name / "curves.png")
    return rows


def summarize(rows, removers, K):
    agg = defaultdict(lambda: defaultdict(list))
    for r in rows:
        for key in ("open_after", "cut_cost", "r_A", "r_B", "new_routes"):
            agg[(r["remover"], key)][r["k"]].append(r[key])
    return {(rem, key): [sum(agg[(rem, key)][k]) / max(1, len(agg[(rem, key)][k])) for k in range(K)]
            for rem in removers for key in ("open_after", "cut_cost", "r_A", "r_B", "new_routes")}


def plot(rows, removers, K, path):
    s = summarize(rows, removers, K)
    fig, axes = plt.subplots(1, 4, figsize=(16, 3.5))
    for ax, key, title in zip(axes, ("open_after", "new_routes", "r_A", "r_B"),
                              ("open pairs after cut", "A's new routes", "r_A", "r_B")):
        for rem in removers:
            ax.plot(range(K), s[(rem, key)], marker="o", label=rem)
        ax.set_title(title)
        ax.set_xlabel("round k")
    axes[0].legend()
    fig.tight_layout()
    fig.savefig(path, dpi=110)
    plt.close(fig)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--finder", default="greedy")
    ap.add_argument("--removers", nargs="+", default=["none", "random", "minseen", "full"])
    ap.add_argument("--split", nargs="+", default=["train"])
    ap.add_argument("--rounds", type=int, default=5)
    ap.add_argument("--Q", type=int, default=0, help="safety cap on queries per round (0 = none)")
    ap.add_argument("--mu", type=float, default=0.3)
    ap.add_argument("--budget", type=float, default=1)
    ap.add_argument("--seeds", type=int, default=3)
    ap.add_argument("--name", default="baseline")
    a = ap.parse_args()
    cfg = GameConfig(Q=a.Q or None, K=a.rounds, mu=a.mu, cut_budget=a.budget)
    orgs = [o for sp in a.split for o in split_orgs(sp)]
    rows = run(a.finder, a.removers, orgs, cfg, range(a.seeds), a.name)
    s = summarize(rows, a.removers, a.rounds)
    for rem in a.removers:
        print(f"{rem:12} open/round {['%.2f' % v for v in s[(rem, 'open_after')]]}  "
              f"new routes {['%.2f' % v for v in s[(rem, 'new_routes')]]}  cut cost {sum(s[(rem, 'cut_cost')]):.1f}")
    print(f"wrote {RUNS / a.name}")


if __name__ == "__main__":
    main()
