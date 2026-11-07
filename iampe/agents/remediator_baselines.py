"""Remover B baselines (Phase 6). Each agent: cut(game) -> list of edges within the round budget.

Without a budget (budget_mode="none", the standard config), min-seen and the full-graph ceiling solve
the round's trade-off instead: r_B(k) = c * closed - open_after - lam * sum w, with closed =
open_before - open_after, is maximised by minimising open_after + lam / (1 + c) * sum w."""
from __future__ import annotations

import random

from iampe.checker.mincut import budgeted_cut, tradeoff_cut
from iampe.graph.build import ADMIN


def _weight(game):
    return None if game.cfg.budget_mode == "count" else ("w" if not game.cfg.w_const else None)


def _penalty(game) -> float:
    return game.cfg.lam / (1.0 + game.cfg.b_close_reward)


def _fit(game, edges):
    """Greedy prefix of `edges` that fits the budget (all of them without a budget)."""
    if game.cfg.budget_mode == "none":
        return list(edges)
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
        if game.cfg.budget_mode == "none":          # no budget: a random number of random seen edges
            es = es[:self.rng.randint(0, len(es))]
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
        if game.cfg.budget_mode == "none":
            return tradeoff_cut(G, S, game.w, _penalty(game), removed=game.lg.removed, allowed=seen)
        return _fit(game, budgeted_cut(G, S, game.cfg.cut_budget, _weight(game), removed=game.lg.removed,
                                       allowed=seen))


class FullB:
    """Ceiling: budgeted ILP on the full graph with all of S (cheats by seeing G); may cut unseen edges."""

    cheats = True

    def cut(self, game):
        if game.cfg.budget_mode == "none":
            return tradeoff_cut(game.G, game.S, game.w, _penalty(game), removed=game.lg.removed)
        return budgeted_cut(game.G, game.S, game.cfg.cut_budget, _weight(game), removed=game.lg.removed)


class AdminFirstB:
    """Hand-written rule: cut seen edges into admin first (most-used by reported proofs first), then
    other seen edges by how many proofs use them. Without a budget it cuts every seen edge into admin
    (into the admin node or into an admin principal) and nothing else. A check on what learned B learned."""

    def cut(self, game):
        obs = game.b_observe()
        if game.cfg.budget_mode == "none":
            G = game.G
            return [e for e in _cuttable_seen(game) if e[1] == ADMIN or G.nodes[e[1]].get("is_admin")]
        uses = {}
        for p in obs.proofs + [[e] for e in obs.seen]:
            for e in p:
                uses[e] = uses.get(e, 0) + 1
        es = sorted(_cuttable_seen(game), key=lambda e: (e[1] != ADMIN, -uses.get(e, 0), e))
        return _fit(game, es)
