"""Shared helpers for the experiment scripts: graphs, agents by name, metrics."""
from __future__ import annotations

import json
import random
from pathlib import Path

import torch

from iampe.agents.finder_heuristic import BFSFinder, GreedyFinder, OracleFinder, RandomFinder
from iampe.agents.gnn import FinderPolicy, GNNFinder, GNNRemover, RemediatorPolicy
from iampe.agents.remediator_baselines import FullB, MinSeenB, NoB, RandomB
from iampe.data.index import ROOT, splits
from iampe.env.game import Game, GameConfig
from iampe.graph.io import load_graph  # noqa: F401  (graphs come from data/graphs/, built by build_graphs.py)

RUNS = ROOT / "runs"
torch.set_num_threads(4)          # keep CPU use modest


def split_orgs(name: str) -> list[str]:
    return splits()[name]


def load_policy(kind: str, path: str | Path):
    pol = FinderPolicy() if kind == "finder" else RemediatorPolicy()
    pol.load_state_dict(torch.load(path, map_location="cpu"))
    pol.eval()
    return pol


def make_finder(spec: str, seed: int = 0):
    if spec.startswith("ckpt:"):
        return GNNFinder(load_policy("finder", spec[5:]), greedy=True)
    return {"random": lambda: RandomFinder(seed), "bfs": BFSFinder, "greedy": GreedyFinder,
            "oracle": OracleFinder}[spec]()


def make_remover(spec: str, seed: int = 0):
    if spec.startswith("ckpt:"):
        return GNNRemover(load_policy("remover", spec[5:]), greedy=True)
    return {"none": NoB, "random": lambda: RandomB(seed), "minseen": MinSeenB, "full": FullB}[spec]()


def fnr(G, finder, Q: int, seeds=(0, 1, 2), max_sources: int = 20) -> dict:
    """Single round, no B: share of truly open sources A fails to prove within Q queries."""
    missed = total = used = 0
    for sd in seeds:
        g = Game(G, GameConfig(Q=Q, K=1, max_sources=max_sources, seed=sd), random.Random(sd))
        opened = g.lg.open_pairs(g.S)
        while not g.a_done and g.queries < Q:
            u = finder.act(g)
            if u is None:
                break
            g.a_query(u)
        missed += len(opened - g.proven)
        total += len(opened)
        used += g.queries
    return {"fnr": missed / total if total else 0.0, "open": total, "queries": used / len(seeds)}


def play(G, finder, remover, cfg: GameConfig, seed: int) -> list[dict]:
    g = Game(G, cfg, random.Random(seed))
    return [log.__dict__ | {"cut": [list(e) for e in log.cut]} for log in g.play(finder, remover)]


def write_jsonl(path: Path, rows) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in rows:
            f.write(json.dumps(r, default=str) + "\n")
