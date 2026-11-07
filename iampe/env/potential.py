"""Shaping potential for training Finder A (adapted from Greybox-TAC's potential).

Greybox-TAC: Phi = -(planted witness queries not yet confirmed), read from the task's planted plan,
used only in training, Phi(terminal) = 0, so the shaping F = gamma * Phi(s') - Phi(s) leaves the best
policy unchanged (Ng et al. 1999).

Ours, with many sources and no single planted plan: Phi = -(sum over the truly open sources A has
not proven this round of the fewest not-yet-revealed live edges on any path from the source to
admin). It is computed on the hidden graph by a 0-1 BFS backwards from admin (revealed edges cost 0,
unrevealed ones 1), so it reads hidden state and is for training only. Revealing an edge on a
shortest remaining path raises Phi by 1 for every source that path serves; proving a source drops
it from the sum.
"""
from __future__ import annotations

from collections import deque

from iampe.graph.build import ADMIN


def unrevealed_distance(game) -> dict[str, int]:
    """Node -> fewest unrevealed live edges on a path to admin (nodes that cannot reach admin are absent)."""
    G, lg, revealed = game.G, game.lg, game.revealed
    dist, dq = {ADMIN: 0}, deque([ADMIN])
    while dq:
        v = dq.popleft()
        dv = dist[v]
        for u, _, k in G.in_edges(v, keys=True):
            e = (u, v, k)
            if not lg.live(e):
                continue
            c = 0 if e in revealed else 1
            if dv + c < dist.get(u, 1 << 30):
                dist[u] = dv + c
                (dq.appendleft if c == 0 else dq.append)(u)
    return dist


def potential(game) -> float:
    todo = game.open_now() - game.proven
    if not todo:
        return 0.0
    dist = unrevealed_distance(game)
    return -float(sum(dist.get(s, 0) for s in todo))
