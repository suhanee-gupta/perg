"""Episode runners that turn games into PPO steps / BC pairs for A or B (Phases 5c, 7, 8)."""
from __future__ import annotations

import random

from iampe.agents.finder_heuristic import OracleFinder
from iampe.agents.gnn import GNNFinder, GNNRemover
from iampe.agents.remediator_baselines import FullB, MinSeenB
from iampe.env.features import finder_graph, remover_graph
from iampe.env.game import Game


def _a_phase(game, A, rec: list | None):
    """Run A's phase. If rec is given (A is learning), credit each query with proven - its cost."""
    while game.a_can_query():
        n0 = len(rec) if rec is not None else 0
        u = A.act(game)
        stepped = rec is not None and len(rec) > n0
        if u is None:
            game.a_end()
        else:
            n = game.a_query(u)
            if stepped:
                rec[-1]["r"] += n - game.last_cost
    game.a_done = True


def finder_episode(G, cfg, policy, B, rng: random.Random) -> tuple[list[dict], list]:
    """A learns; B is a fixed opponent. Returns (steps, round logs)."""
    game = Game(G, cfg, rng)
    rec: list[dict] = []
    A = GNNFinder(policy, record=rec)
    while not game.done:
        _a_phase(game, A, rec)
        game.b_cut(B.cut(game), unrestricted=getattr(B, "cheats", False))
    if rec:
        rec[-1]["done"] = True
    return rec, game.log


def remover_episode(G, cfg, policy, A, rng: random.Random) -> tuple[list[dict], list]:
    """B learns; A is a fixed opponent. B's round reward r_B goes on its last decision that round."""
    game = Game(G, cfg, rng)
    rec: list[dict] = []
    B = GNNRemover(policy, record=rec)
    if hasattr(A, "reset"):
        A.reset(game)
    while not game.done:
        _a_phase(game, A, None)
        n0 = len(rec)
        log = game.b_cut(B.cut(game))
        if len(rec) > n0:
            rec[-1]["r"] += log.r_B
    if rec:
        rec[-1]["done"] = True
    return rec, game.log


def finder_bc_pairs(G, cfg, rng: random.Random) -> list[tuple]:
    """(observation, oracle action index) pairs from single-round oracle play."""
    game = Game(G, cfg, rng)
    oracle, pairs = OracleFinder(), []
    while game.a_can_query():
        data, cands = finder_graph(game)
        if not cands:
            break
        u = oracle.act(game)
        pairs.append((data, cands.index(u) if u in cands else len(cands)))
        if u is None or u not in cands:
            break
        game.a_query(u)
    return pairs


def remover_bc_pairs(G, cfg, A, rng: random.Random) -> list[tuple]:
    """(observation, teacher edge index or STOP) pairs; teacher = FullB's cut restricted to seen edges,
    falling back to MinSeenB when FullB cuts nothing B has seen."""
    game = Game(G, cfg, rng)
    pairs = []
    while not game.done:
        _a_phase(game, A, None)
        seen = set(game.b_observe().seen)
        target = [e for e in FullB().cut(game) if e in seen] or MinSeenB().cut(game)
        chosen, spent = [], 0.0
        for e in target + [None]:
            data, cands = remover_graph(game, spent, set(chosen))
            if not cands:
                break
            if e is None or e not in cands:
                pairs.append((data, len(cands)))
                break
            pairs.append((data, cands.index(e)))
            chosen.append(e)
            spent += game.cut_cost([e])
        game.b_cut(chosen)
    return pairs
