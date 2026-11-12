"""Observations -> torch_geometric graphs for the GNN policies.

Finder graph: A's known nodes + revealed live edges. Candidates = unqueried known nodes, then END.
Remover graph: seen live edges (all proofs so far). Candidates = cuttable seen edges that still fit
the remaining budget, then STOP.
"""
from __future__ import annotations

import math
from collections import deque

import torch
from torch_geometric.data import Data

from iampe.graph.build import ADMIN

KINDS = ["User", "Group", "Role", "Service", "Admin", "Hub"]
CATS = ["CredentialTakeover", "PermissionRequest", "CodeExecution", "PermissionInheritance",
        "PermissionDelegation", "Admin"]
NODE_DIM_A = len(KINDS) + 7
GLOB_A = 3
NODE_DIM_B = len(KINDS) + 4
EDGE_DIM = len(CATS) + 3


def _onehot(i: int, n: int) -> list[float]:
    v = [0.0] * n
    if 0 <= i < n:
        v[i] = 1.0
    return v


def _kind(G, n) -> int:
    k = G.nodes[n].get("kind") if n in G else None
    return KINDS.index(k) if k in KINDS else 0


def _logw(w: float) -> float:
    return math.log1p(min(w, 1e3)) / math.log1p(1e3)


def _edge_feat(d: dict, extra: list[float]) -> list[float]:
    c = d.get("category")
    return _onehot(CATS.index(c) if c in CATS else -1, len(CATS)) + [_logw(float(d.get("w", 1.0)))] + extra


def _hops(nodes, edges, start) -> dict:
    adj = {}
    for u, v in edges:
        adj.setdefault(u, []).append(v)
    dist, q = {s: 0 for s in start}, deque(start)
    while q:
        u = q.popleft()
        for v in adj.get(u, ()):
            if v not in dist:
                dist[v] = dist[u] + 1
                q.append(v)
    return dist


def finder_graph(game) -> tuple[Data, list[str]]:
    """Returns (data, candidate node ids); data.cand indexes candidate nodes, END is implicit last."""
    G = game.G
    revealed = [e for e in game.revealed if game.lg.live(e)]
    nodes = sorted(game.known_nodes() | {e[0] for e in revealed} | {e[1] for e in revealed} | {ADMIN})
    idx = {n: i for i, n in enumerate(nodes)}
    outdeg, indeg = {}, {}
    for u, v, _ in revealed:
        outdeg[u] = outdeg.get(u, 0) + 1
        indeg[v] = indeg.get(v, 0) + 1
    dist = _hops(nodes, [(u, v) for u, v, _ in revealed], [s for s in game.S if s not in game.proven] or game.S)
    S = set(game.S)
    x = [_onehot(_kind(G, n), len(KINDS)) +
         [float(n in S), float(n in game.queried), float(n in game.proven),
          math.log1p(outdeg.get(n, 0)) / 4, math.log1p(indeg.get(n, 0)) / 4, min(dist.get(n, 9), 9) / 9,
          float(n in game.declined)]
         for n in nodes]
    ei = [[idx[u], idx[v]] for u, v, _ in revealed]
    ea = [_edge_feat(G.edges[e], [0.0, 0.0]) for e in revealed]
    cands = game.query_candidates()
    data = Data(x=torch.tensor(x, dtype=torch.float32),
                edge_index=torch.tensor(ei, dtype=torch.long).t().reshape(2, -1),
                edge_attr=torch.tensor(ea, dtype=torch.float32).reshape(-1, EDGE_DIM),
                cand=torch.tensor([idx[c] for c in cands], dtype=torch.long),
                glob=torch.tensor([[game.query_cost / max(1, len(game.S)), len(game.proven) / max(1, len(game.S)),
                                    _budget_used(game)]], dtype=torch.float32))
    return data, cands


def _budget_used(game) -> float:
    """Share of the round's query budget Q already used (0 without a budget)."""
    return game.queries / game.cfg.Q if game.cfg.Q else 0.0


def remover_graph(game, spent: float, chosen: set) -> tuple[Data, list]:
    """B's view after picking `chosen` this round (cost `spent`). Returns (data, candidate edges)."""
    G = game.G
    obs = game.b_observe()
    seen = [e for e in obs.seen]
    nodes = sorted({n for e in seen for n in e[:2]} | {ADMIN})
    idx = {n: i for i, n in enumerate(nodes)}
    proven = obs.proven_ever
    dist = _hops(nodes, [(u, v) for u, v, _ in seen], [s for s in game.S if s in proven])
    x = [_onehot(_kind(G, n), len(KINDS)) +
         [float(n in proven), float(n in game.S), min(dist.get(n, 9), 9) / 9, float(n == ADMIN)] for n in nodes]
    times = {}
    for p in obs.proofs:
        for e in p:
            times[e] = times.get(e, 0) + 1
    left = obs.budget - spent
    # w comes from the game (1 under the w_const ablation), not straight from the graph
    ea = [_edge_feat(G.edges[e] | {"w": game.w(e)}, [min(times.get(e, 0), 5) / 5, float(e in chosen)]) for e in seen]
    cands = [e for e in seen if e not in chosen and game.w(e) < float("inf")
             and game.cut_cost([e]) <= left + 1e-9]
    pos = {e: i for i, e in enumerate(seen)}
    data = Data(x=torch.tensor(x, dtype=torch.float32).reshape(-1, NODE_DIM_B),
                edge_index=torch.tensor([[idx[u], idx[v]] for u, v, _ in seen], dtype=torch.long).t().reshape(2, -1),
                edge_attr=torch.tensor(ea, dtype=torch.float32).reshape(-1, EDGE_DIM),
                cand=torch.tensor([pos[e] for e in cands], dtype=torch.long),
                glob=torch.tensor([[spent / obs.budget if obs.budget < float("inf") else min(spent, 1.0),
                                    len(proven) / max(1, len(game.S))]],
                                  dtype=torch.float32))
    return data, cands
