"""Permission graphs on disk: data/graphs/<org>.json (networkx node-link JSON).

This file is the hand-off point: everything after it (game, agents, training, evaluation) reads
graphs from here and never converts Terraform itself. experiments/build_graphs.py writes them.
"""
from __future__ import annotations

import json
from pathlib import Path

import networkx as nx

from iampe.data.index import GRAPH_DIR

FORMAT_VERSION = 1


def graph_path(org: str) -> Path:
    return GRAPH_DIR / f"{org}.json"


def save_graph(G: nx.MultiDiGraph, org: str, extra: dict | None = None) -> Path:
    return save_graph_file(G, graph_path(org), extra)


def save_graph_file(G: nx.MultiDiGraph, p: Path, extra: dict | None = None) -> Path:
    data = nx.node_link_data(G, edges="edges")
    data["graph"] = dict(G.graph) | {"format": FORMAT_VERSION} | (extra or {})
    p = Path(p)
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(json.dumps(data, default=str))
    return p


def load_graph(org: str, w_mode: str = "shared") -> nx.MultiDiGraph:
    p = graph_path(org)
    if not p.exists():
        raise FileNotFoundError(f"no graph for {org} at {p}; build it with "
                                f"`python -m experiments.build_graphs {org}` (see docs/HANDOFF.md)")
    return load_graph_file(p, w_mode)


def load_graph_file(p: Path, w_mode: str = "shared") -> nx.MultiDiGraph:
    """Load a graph file from any path (e.g. a synthetic one under data/synth/)."""
    data = json.loads(Path(p).read_text())
    G = nx.node_link_graph(data, directed=True, multigraph=True, edges="edges")
    for _, _, k, d in G.edges(keys=True, data=True):
        if isinstance(d.get("policies"), list):
            d["policies"] = tuple(d["policies"])
        if w_mode == "const" and d.get("cuttable", True):
            d["w"] = 1.0
    G.graph["w_mode"] = w_mode
    return G
