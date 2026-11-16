"""Finder A baselines (Phase 5a). Each agent: act(game) -> a query, or None to end the round.

A query is a node in node mode and a question (u, v, key) in edge mode (iampe/env/game.py). Every
baseline here plays both modes:
  random  node mode: a random candidate node; edge mode: a random frontier actor, then a random
          question about it (uniform over its unasked questions).
  bfs     breadth-first from the sources (untrusted first). Edge mode: the nearest frontier actor,
          then its questions in a fixed public order: admin first, then hubs, then entities, by key.
  greedy  node mode: best-first on hop distance plus priors on node kind and revealing rule. Edge mode:
          the question with the highest expected payoff: public prior P(edge exists) for its (actor kind,
          template, target kind), estimated on the training split (iampe/env/query_space.py:
          edge_prior), times 1 if the target already reaches admin over revealed edges, else 0.1.
  oracle  whitebox reference (reads the hidden graph): the next query on a cheapest remaining path of
          an unproven open source, avoiding declined queries.
"""
from __future__ import annotations

import heapq
import random

from iampe.env.potential import next_step, unrevealed_distance
from iampe.graph.build import ADMIN, HUB

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
        if not c:
            return None
        u = self.rng.choice(c)
        if game.qs is None:
            return u
        groups = [(key, ts) for key, _, ts in game.qs.groups(u) if ts]
        for _ in range(64):                          # rejection sampling, uniform over u's questions
            key, ts = self.rng.choices(groups, weights=[len(ts) for _, ts in groups])[0]
            v = self.rng.choice(ts)
            if v != u and (u, v, key) not in game.asked_ever:
                return (u, v, key)
        v, key = self.rng.choice(game.options(u))   # nearly everything asked: sample the rest exactly
        return (u, v, key)


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
        unt = game.G.graph["untrusted"]
        u = min(cand, key=lambda n: (n != unt, dist[n], n))
        if game.qs is None:
            return u
        for key, tgt, ts in sorted(game.qs.groups(u), key=lambda g: (_target_rank(g[1]), g[0])):
            for v in ts:
                if v != u and (u, v, key) not in game.asked_ever:
                    return (u, v, key)
        return None


class GreedyFinder(_Patience):
    """Best-first: hop distance from S plus priors on node kind and on the revealing rule's category;
    sources already proven this round are skipped."""

    def __init__(self, patience: int | None = None, prior: dict | None = None):
        self.patience, self.prior = patience, prior

    def act(self, game):
        if game.qs is not None:
            return self._act_edge(game)
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

    def _act_edge(self, game):
        """Expected payoff first: prior P(edge exists) x (1 if the target already reaches admin over A's
        revealed edges, the admin sink included, else 0.1: such an edge proves nothing yet). Ties: nearer
        actor, then key. Within a group the target is an unasked one that reaches admin if any, else one A
        cannot reach yet, with the fewest FALSE answers into it, then by id."""
        if self.prior is None:
            raise ValueError("greedy in edge mode needs the public prior (make_finder builds it)")
        dist = _dist_from_sources(game)
        reach = set(dist)
        to_admin = _reaches_admin(game)
        false_in: dict[str, int] = {}
        for q, ok in game.answers.items():
            if not ok:
                false_in[q[1]] = false_in.get(q[1], 0) + 1
        best = None
        for u in game.query_candidates():
            ku = game.G.nodes[u].get("kind")
            for key, tgt, ts in game.qs.groups(u):
                p = self.prior.get((ku, key, tgt), 0.0)
                if best is not None and (-p, dist.get(u, 9), key, u) >= best[0]:
                    continue                          # cannot beat the best even with value 1
                vs = [v for v in ts if v != u and (u, v, key) not in game.asked_ever]
                if not vs:
                    continue
                v = min(vs, key=lambda v: (v not in to_admin, v in reach, false_in.get(v, 0), v))
                rank = (-p * (1.0 if v in to_admin else 0.1), dist.get(u, 9), key, u)
                if best is None or rank < best[0]:
                    best = (rank, (u, v, key))
        return best[1] if best else None


def _reaches_admin(game) -> set[str]:
    """Nodes with a path to admin over A's revealed live edges (admin included)."""
    pred: dict[str, list[str]] = {}
    for e in game.revealed:
        if game.lg.live(e):
            pred.setdefault(e[1], []).append(e[0])
    seen, stack = {ADMIN}, [ADMIN]
    while stack:
        for u in pred.get(stack.pop(), ()):
            if u not in seen:
                seen.add(u)
                stack.append(u)
    return seen


class OracleFinder:
    """Whitebox reference (reads the hidden graph): among the open sources not proven yet, take the one
    with the fewest queries still needed (ties: order in S) and ask the next query on a cheapest
    remaining path, routing around declined queries (iampe/env/potential.py). It does not know future
    declines, so it is a strong reference, not a guaranteed lower bound on FNR. Returns None (end the
    turn) only when no open source can still be proven."""

    def act(self, game):
        dist = unrevealed_distance(game)
        todo = [s for s in game.S if s in game.open_now() and s not in game.proven and dist.get(s, 0) > 0]
        for s in sorted(todo, key=lambda s: dist[s]):
            e = next_step(game, s)
            if e is not None:
                return e if game.qs is not None else e[0]
        return None


def _target_rank(tgt: str) -> int:
    """Public question order for BFS: admin, then hubs, then entities."""
    return 0 if tgt == ADMIN else 1 if tgt.startswith(HUB) else 2


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
