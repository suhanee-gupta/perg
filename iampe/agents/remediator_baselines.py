"""Remover B baselines (Phase 6). Each agent: cut(game) -> list of edges within the round budget."""
from __future__ import annotations

import random

from iampe.checker.mincut import budgeted_cut


def _weight(game):
    return None if game.cfg.budget_mode == "count" else ("w" if not game.cfg.w_const else None)


def _fit(game, edges):
    """Greedy prefix of `edges` that fits the budget."""
    out, spent = [], 0.0
    for e in edges:
        c = game.cut_cost([e])
        if spent + c <= game.cfg.cut_budget + 1e-9:
            out.append(e)
            spent += c
    return out


def _cuttable_seen(game):
    obs = game.b_observe()
    return [e for e in obs.seen if game.w(e) < float("inf")]


class NoB:
    def cut(self, game):
        return []


class RandomB:
    def __init__(self, seed: int = 0):
        self.rng = random.Random(seed)

    def cut(self, game):
        es = _cuttable_seen(game)
        self.rng.shuffle(es)
        return _fit(game, es)


class MinSeenB:
    """Budgeted min-cut (ILP) on the seen subgraph: separate the proven sources using seen edges only."""

    def cut(self, game):
        obs = game.b_observe()
        if not obs.seen:
            return []
        seen = set(obs.seen)
        G = game.G.edge_subgraph(seen)
        S = [s for s in game.S if s in obs.proven_ever and s in G]
        return _fit(game, budgeted_cut(G, S, game.cfg.cut_budget, _weight(game), removed=game.lg.removed,
                                       allowed=seen))


class FullB:
    """Ceiling: budgeted ILP on the full graph with all of S (cheats by seeing G); may cut unseen edges."""

    cheats = True

    def cut(self, game):
        return budgeted_cut(game.G, game.S, game.cfg.cut_budget, _weight(game), removed=game.lg.removed)


class AdminFirstB:
    """Hand-written rule: cut seen edges into admin first (most-used by reported proofs first), then
    other seen edges by how many proofs use them. A check on what learned B actually learned."""

    def cut(self, game):
        from iampe.graph.build import ADMIN
        obs = game.b_observe()
        uses = {}
        for p in obs.proofs + [[e] for e in obs.seen]:
            for e in p:
                uses[e] = uses.get(e, 0) + 1
        es = sorted(_cuttable_seen(game), key=lambda e: (e[1] != ADMIN, -uses.get(e, 0), e))
        return _fit(game, es)
