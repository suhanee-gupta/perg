"""Shaping potential for training Finder A (adapted from Greybox-TAC's potential), and the hidden-graph
distance it shares with the whitebox oracle finder.

Greybox-TAC: Phi = -(planted witness queries not yet confirmed), read from the task's planted plan,
used only in training, Phi(terminal) = 0, so the shaping F = gamma * Phi(s') - Phi(s) leaves the best
policy unchanged (Ng et al. 1999).

Ours, with many sources and no single planted plan: Phi = -(sum over the truly open sources A has
not proven this round of the fewest queries still needed on any path from the source to admin). It is
computed on the hidden graph by a 0-1 BFS backwards from admin, so it reads hidden state and is for
training (and the oracle) only. Edge costs:
  * 0: a live edge A has already revealed; in edge mode also a hub's out-edge (public once the hub
    is reached);
  * 1: a live edge one query can still reveal (node mode: its tail can be queried; edge mode: that
    question can be asked);
  * impassable: the query that would reveal it was declined (node mode: its tail node; edge mode:
    that question), since a declined query is declined for the whole game.
In node mode one query reveals all of a node's out-edges, so the per-edge count is exact along a single
simple path (its tails are distinct).
"""
from __future__ import annotations

from collections import deque

from iampe.graph.build import ADMIN, HUB


def _edge_cost(game, e) -> int | None:
    """0, 1, or None (impassable) for a live edge e, as described above."""
    if e in game.revealed:
        return 0
    if game.qs is not None:
        if e[0].startswith(HUB):
            return 0
        if e in game.declined or not game.qs.allowed(e):
            return None
        return 1
    return None if e[0] in game.declined else 1


def unrevealed_distance(game) -> dict[str, int]:
    """Node -> fewest queries still needed on a live path to admin (nodes that cannot reach admin with
    the queries still possible are absent)."""
    G, lg = game.G, game.lg
    dist, dq = {ADMIN: 0}, deque([ADMIN])
    while dq:
        v = dq.popleft()
        dv = dist[v]
        for u, _, k in G.in_edges(v, keys=True):
            e = (u, v, k)
            if not lg.live(e):
                continue
            c = _edge_cost(game, e)
            if c is None:
                continue
            if dv + c < dist.get(u, 1 << 30):
                dist[u] = dv + c
                (dq.appendleft if c == 0 else dq.append)(u)
    return dist


def next_step(game, s: str):
    """The first edge still needing a query on a cheapest remaining path from s to admin (a forward 0-1
    BFS with the costs above), or None if s cannot reach admin with the queries still possible."""
    best, prev, dq = {s: 0}, {s: None}, deque([s])
    while dq:
        u = dq.popleft()
        if u == ADMIN:
            break
        for e in game.lg.out_edges(u):
            c = _edge_cost(game, e)
            if c is None:
                continue
            if best[u] + c < best.get(e[1], 1 << 30):
                best[e[1]], prev[e[1]] = best[u] + c, e
                (dq.appendleft if c == 0 else dq.append)(e[1])
    if ADMIN not in prev:
        return None
    path, v = [], ADMIN
    while prev[v] is not None:
        path.append(prev[v])
        v = prev[v][0]
    return next((e for e in reversed(path) if _edge_cost(game, e) == 1), None)


UNPROVABLE = 10      # Phi term of an open source no remaining query can prove (above any real distance)


def potential(game) -> float:
    """Phi. An open source that declines have cut off counts as UNPROVABLE questions still needed, so a
    decline that blocks a source lowers Phi (it is a loss), never raises it as progress would."""
    todo = game.open_now() - game.proven
    if not todo:
        return 0.0
    dist = unrevealed_distance(game)
    return -float(sum(min(dist.get(s, UNPROVABLE), UNPROVABLE) for s in todo))


def provable_sources(game) -> set[str]:
    """Open sources some finder could still prove this round with unlimited queries, given this game's
    declines (read with `game.would_decline`, i.e. ahead of time). Evaluation only: the open sources
    outside this set are missed by every finder, so they are an exact floor on FNR."""
    def passable(e) -> bool:
        if e in game.revealed:
            return True
        if game.qs is not None:
            return e[0].startswith(HUB) or not game.would_decline(e)
        return not game.would_decline(e[0])
    reach, dq = {ADMIN}, deque([ADMIN])
    while dq:
        v = dq.popleft()
        for u, _, k in game.G.in_edges(v, keys=True):
            e = (u, v, k)
            if u not in reach and game.lg.live(e) and passable(e):
                reach.add(u)
                dq.append(u)
    return game.open_now() & reach
