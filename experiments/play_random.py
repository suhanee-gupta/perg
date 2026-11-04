"""Phase 4 check: random A + random B play full K-round games on every train config.

    python -m experiments.play_random [--rounds K] [--queries Q]
"""
from __future__ import annotations

import argparse

from experiments.common import load_graph, make_finder, make_remover, play, split_orgs
from iampe.env.game import GameConfig


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=4)
    ap.add_argument("--queries", type=int, default=20)
    a = ap.parse_args()
    cfg = GameConfig(Q=a.queries, K=a.rounds)
    for org in split_orgs("train"):
        G = load_graph(org)
        logs = play(G, make_finder("random"), make_remover("random"), cfg, seed=0)
        print(f"{org:16} " + "  ".join(f"k{l['k']}: open {l['open_before']}->{l['open_after']} "
                                        f"proven {len(l['proven'])} rA {l['r_A']:.2f} rB {l['r_B']:.2f}" for l in logs))


if __name__ == "__main__":
    main()
