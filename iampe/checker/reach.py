"""Whitebox reachability on the permission graph (Phase 3): R(G) = {s in S : s reaches admin}.

One reverse BFS from admin over live edges answers every source at once, O(V + E); removing edges
and recomputing is just another BFS over the same adjacency with a bigger removed set.
"""
from __future__ import annotations

from collections import deque

import networkx as nx

from iampe.graph.build import ADMIN

Edge = tuple[str, str, str]   # (u, v, key)


class LiveGraph:
    """The full graph G plus a set of removed edges; G_k = G - removed."""

    def __init__(self, G: nx.MultiDiGraph, removed: set[Edge] | None = None):
        self.G = G
        self.removed: set[Edge] = set(removed or ())
        self._pred: dict[str, list[Edge]] = {}
        self._succ: dict[str, list[Edge]] = {}
        for u, v, k in G.edges(keys=True):
            self._pred.setdefault(v, []).append((u, v, k))
            self._succ.setdefault(u, []).append((u, v, k))

    def copy(self) -> "LiveGraph":
        c = LiveGraph.__new__(LiveGraph)
        c.G, c.removed, c._pred, c._succ = self.G, set(self.removed), self._pred, self._succ
        return c

    def remove(self, edges) -> None:
        self.removed.update(edges)

    def live(self, e: Edge) -> bool:
        return e not in self.removed

    def out_edges(self, u: str) -> list[Edge]:
        return [e for e in self._succ.get(u, ()) if e not in self.removed]

    def can_reach_admin(self) -> set[str]:
        seen, q = {ADMIN}, deque([ADMIN])
        while q:
            v = q.popleft()
            for e in self._pred.get(v, ()):
                if e[0] not in seen and e not in self.removed:
                    seen.add(e[0])
                    q.append(e[0])
        return seen

    def open_pairs(self, S) -> set[str]:
        r = self.can_reach_admin()
        return {s for s in S if s in r}

    def shortest_proof(self, s: str, allowed: set[Edge] | None = None) -> list[Edge] | None:
        """Shortest live path s -> admin (restricted to `allowed` edges if given)."""
        prev, q = {s: None}, deque([s])
        while q:
            u = q.popleft()
            if u == ADMIN:
                path = []
                while prev[u] is not None:
                    path.append(prev[u])
                    u = prev[u][0]
                return path[::-1]
            for e in self._succ.get(u, ()):
                if e in self.removed or (allowed is not None and e not in allowed):
                    continue
                if e[1] not in prev:
                    prev[e[1]] = e
                    q.append(e[1])
        return None


def reachable_pairs(G: nx.MultiDiGraph, S, removed: set[Edge] = frozenset()) -> set[str]:
    return LiveGraph(G, removed).open_pairs(S)
