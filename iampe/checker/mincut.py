"""Cuts that separate S from admin (Phase 3): exact min-cut and a budgeted ILP (IAMPERE-style bound).

Both work on the relevant subgraph only (forward-reachable from S and backward-reachable from
admin), which keeps them small even on the large configs.
"""
from __future__ import annotations

from collections import deque

import networkx as nx
import pulp

from iampe.checker.reach import Edge
from iampe.graph.build import ADMIN

SUPER = "__S__"


def relevant_edges(G: nx.MultiDiGraph, S, removed=frozenset(), allowed: set[Edge] | None = None) -> list[Edge]:
    """Live edges on some S -> admin path (restricted to `allowed` if given)."""
    def ok(e):
        return e not in removed and (allowed is None or e in allowed)
    fwd, q = set(S) & set(G.nodes), deque(set(S) & set(G.nodes))
    while q:
        u = q.popleft()
        for e in G.out_edges(u, keys=True):
            if ok(e) and e[1] not in fwd:
                fwd.add(e[1])
                q.append(e[1])
    if ADMIN not in fwd:
        return []
    bwd, q = {ADMIN}, deque([ADMIN])
    while q:
        v = q.popleft()
        for e in G.in_edges(v, keys=True):
            if ok(e) and e[0] in fwd and e[0] not in bwd:
                bwd.add(e[0])
                q.append(e[0])
    return [e for e in G.edges(keys=True) if ok(e) and e[0] in bwd and e[1] in bwd]


def _w(G, e, weight):
    d = G.edges[e]
    if not d.get("cuttable", True):
        return float("inf")
    return 1.0 if weight is None else float(d.get(weight, 1.0))


def min_cut(G: nx.MultiDiGraph, S, weight: str | None = "w", removed=frozenset(),
            allowed: set[Edge] | None = None) -> tuple[float, list[Edge]]:
    """Exact minimum-weight edge cut separating every s in S from admin. Returns (cost, edges)."""
    edges = relevant_edges(G, S, removed, allowed)
    if not edges:
        return 0.0, []
    D = nx.DiGraph()
    group: dict[tuple[str, str], list[Edge]] = {}
    for e in edges:
        group.setdefault(e[:2], []).append(e)
    for (u, v), es in group.items():
        D.add_edge(u, v, capacity=sum(_w(G, e, weight) for e in es))
    for s in S:
        if s in D:
            D.add_edge(SUPER, s, capacity=float("inf"))
    value, (side, _) = nx.minimum_cut(D, SUPER, ADMIN)
    cut = [e for (u, v), es in group.items() if u in side and v not in side for e in es]
    return value, cut


def _cut_ilp(G: nx.MultiDiGraph, S, cost, budget: float | None, penalty: float, removed, allowed,
             time_limit: float) -> list[Edge]:
    """Shared ILP. d_v = 1 if v can still reach admin; d_admin = 1; every live edge u->v gives
    d_u >= d_v - x_e (x_e = 1 if cut; uncuttable edges and edges outside `allowed` have x_e = 0).
    Minimise sum d_s + penalty * sum cost(e) x_e, optionally with sum cost(e) x_e <= budget."""
    edges = relevant_edges(G, S, removed)
    if not edges:
        return []
    nodes = {n for e in edges for n in e[:2]}
    srcs = [s for s in S if s in nodes]
    cuttable = [e for e in edges if (allowed is None or e in allowed) and cost(e) < float("inf")]
    prob = pulp.LpProblem("cut", pulp.LpMinimize)
    idx = {n: i for i, n in enumerate(sorted(nodes))}
    src_set = set(srcs)
    def _var(name, low, up, cat):
        if hasattr(prob, "add_variable"):
            return prob.add_variable(name, low, up, cat)
        return pulp.LpVariable(name, lowBound=low, upBound=up, cat=cat)
    d = {n: _var(f"d{idx[n]}", 0, 1, "Binary" if n in src_set else "Continuous") for n in nodes}
    x = {e: _var(f"x{i}", 0, 1, "Binary") for i, e in enumerate(cuttable)}
    prob += pulp.lpSum(d[s] for s in srcs) + penalty * pulp.lpSum(cost(e) * x[e] for e in cuttable)
    prob += d[ADMIN] == 1
    for e in edges:
        u, v = e[0], e[1]
        prob += (d[u] >= d[v] - x[e]) if e in x else (d[u] >= d[v])
    if budget is not None:
        prob += pulp.lpSum(cost(e) * x[e] for e in cuttable) <= budget
    solver = pulp.HiGHS(msg=False, timeLimit=time_limit)
    if not solver.available():
        solver = pulp.PULP_CBC_CMD(msg=False, timeLimit=time_limit)
    prob.solve(solver)
    return [e for e in cuttable if (x[e].value() or 0) > 0.5]


def budgeted_cut(G: nx.MultiDiGraph, S, budget: float, weight: str | None = "w", removed=frozenset(),
                 allowed: set[Edge] | None = None, time_limit: float = 30.0) -> list[Edge]:
    """Edges with total weight <= budget minimising the number of sources still open."""
    return _cut_ilp(G, S, lambda e: _w(G, e, weight), budget, 0.0, removed, allowed, time_limit)


def tradeoff_cut(G: nx.MultiDiGraph, S, cost, penalty: float, removed=frozenset(),
                 allowed: set[Edge] | None = None, time_limit: float = 30.0) -> list[Edge]:
    """No budget: edges minimising (sources still open) + penalty * (sum of cost(e) over cut edges).
    `cost(e)` gives an edge's collateral (inf = uncuttable). Remover B's baselines use it with
    penalty = lam / (1 + b_close_reward), which maximises one round of r_B."""
    return _cut_ilp(G, S, cost, None, penalty, removed, allowed, time_limit)


def cut_cost(G: nx.MultiDiGraph, edges, weight: str | None = "w") -> float:
    return sum(_w(G, e, weight) for e in edges)
