"""Finder A baselines (Phase 5a). Each agent: act(game) -> node to query, or None to end the round."""
from __future__ import annotations

import heapq
import random

from iampe.graph.build import ADMIN

# how promising a node is to expand, by kind (lower = earlier): roles and compute carry new permissions
_KIND_PRIOR = {"User": 1.0, "Role": 0.0, "Service": 0.2, "Group": 0.5, "Hub": 0.8}
# how promising an edge is, by TAC category of the rule that revealed it
_CAT_PRIOR = {"PermissionRequest": 0.0, "CredentialTakeover": 0.2, "PermissionDelegation": 0.3,
              "CodeExecution": 0.4, "PermissionInheritance": 0.5, "Admin": 0.0}


class RandomFinder:
    def __init__(self, seed: int = 0):
        self.rng = random.Random(seed)

    def act(self, game):
        c = game.query_candidates()
        return self.rng.choice(c) if c else None


class _Patience:
    """END after `patience` queries in a row that proved nothing and revealed no new role, compute
    or admin node (None = never END; the game's cost rule still ends the turn)."""

    patience: int | None = None

    def reset(self, game):
        self._seen, self._idle, self._last = set(), 0, (0, 0)

    def _stop(self, game) -> bool:
        if self.patience is None:
            return False
        if not hasattr(self, "_seen"):
            self.reset(game)
        if game.queries == 0:
            self.reset(game)
        new = {v for (_, v, _) in game.revealed
               if game.G.nodes[v].get("kind") in ("Role", "Service", "Admin", "Hub")} - self._seen
        progress = len(game.proven) > self._last[0] or bool(new)
        self._seen |= new
        self._idle = 0 if progress else self._idle + (game.queries > self._last[1])
        self._last = (len(game.proven), game.queries)
        return self._idle >= self.patience


class BFSFinder(_Patience):
    """Query sources (untrusted first), then revealed nodes in breadth-first order from S."""

    def __init__(self, patience: int | None = None):
        self.patience = patience

    def act(self, game):
        if self._stop(game):
            return None
        dist = _dist_from_sources(game)
        cand = [n for n in game.query_candidates() if n in dist]
        if not cand:
            return None
        u = game.G.graph["untrusted"]
        return min(cand, key=lambda n: (n != u, dist[n], n))


class GreedyFinder(_Patience):
    """Best-first: hop distance from S plus priors on node kind and on the revealing rule's category;
    sources already proven this round are skipped."""

    def __init__(self, patience: int | None = None):
        self.patience = patience

    def act(self, game):
        if self._stop(game):
            return None
        dist = _dist_from_sources(game, skip=game.proven)
        best, score = None, None
        via = {}
        for (u, v, k), d in game.revealed_attrs().items():
            via[v] = min(via.get(v, 9.0), _CAT_PRIOR.get(d.get("category"), 0.5))
        for n in game.query_candidates():
            if n not in dist:
                continue
            s = dist[n] + _KIND_PRIOR.get(game.G.nodes[n].get("kind"), 1.0) + via.get(n, 0.0)
            if n == game.G.graph["untrusted"]:
                s -= 10
            if score is None or s < score:
                best, score = n, s
        return best


class OracleFinder:
    """Cheating whitebox finder (for imitation warm starts): walks true shortest live paths of
    still-unproven open sources and queries the first unqueried node on them."""

    def act(self, game):
        for s in game.S:
            if s in game.proven:
                continue
            p = game.lg.shortest_proof(s)
            if p is None:
                continue
            for e in p:
                if e[0] not in game.queried:
                    return e[0] if e[0] in game.known_nodes() else None
        return None


def _dist_from_sources(game, skip=()):
    """Hop distance over A's revealed live edges from the (not yet proven) sources."""
    adj: dict[str, list[str]] = {}
    for e in game.revealed:
        if game.lg.live(e):
            adj.setdefault(e[0], []).append(e[1])
    start = [s for s in game.S if s not in skip] or list(game.S)
    dist = {s: 0 for s in start}
    heap = [(0, s) for s in start]
    while heap:
        d, u = heapq.heappop(heap)
        if d > dist.get(u, 1e9):
            continue
        for v in adj.get(u, ()):
            if v != ADMIN and d + 1 < dist.get(v, 1e9):
                dist[v] = d + 1
                heapq.heappush(heap, (d + 1, v))
    return dist
