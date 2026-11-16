"""Episode runners that turn games into PPO steps / BC pairs for A or B (Phases 5c, 7, 8)."""
from __future__ import annotations

import random

from iampe.agents.finder_heuristic import OracleFinder
from iampe.agents.gnn import GNNFinder, GNNRemover
from iampe.agents.remediator_baselines import FullB, MinSeenB
from iampe.env.features import finder_graph, finder_options, remover_graph
from iampe.env.game import Game
from iampe.env.potential import potential


def _a_phase(game, A, rec: list | None, shaping: bool = False):
    """Run A's phase. If rec is given (A is learning), credit each query with proven - its cost, and
    (with shaping) store the potential of the state the decision was made in."""
    while game.a_can_query():
        n0 = len(rec) if rec is not None else 0
        phi = potential(game) if shaping and rec is not None else 0.0
        u = A.act(game)
        stepped = rec is not None and len(rec) > n0
        if stepped:
            rec[-1]["phi"] = phi
        if u is None:
            game.a_end()
        else:
            n = game.a_query(u)
            if stepped:
                rec[-1]["r"] += n - game.last_cost
    game.a_done = True


def finder_episode(G, cfg, policy, B, rng: random.Random, shaping: bool = True,
                   gamma: float = 1.0) -> tuple[list[dict], list]:
    """A learns; B is a fixed opponent. Returns (steps, round logs).

    Step reward: proofs - query cost (+ gamma * Phi(next decision) - Phi(this decision) with shaping;
    Phi = 0 after the last decision of the game, as in Greybox-TAC, so the best policy is unchanged).
    B's cuts between rounds are part of the transition, so they are inside the shaping term."""
    game = Game(G, cfg, rng)
    rec: list[dict] = []
    A = GNNFinder(policy, record=rec)
    if hasattr(B, "reset"):
        B.reset(game)
    while not game.done:
        _a_phase(game, A, rec, shaping)
        game.b_cut(B.cut(game), unrestricted=getattr(B, "cheats", False))
    if shaping:
        for i, s in enumerate(rec):
            nxt = rec[i + 1]["phi"] if i + 1 < len(rec) else 0.0
            s["r"] += gamma * nxt - s["phi"]
    if rec:
        rec[-1]["done"] = True
    return rec, game.log


def remover_episode(G, cfg, policy, A, rng: random.Random, baseline=None) -> tuple[list[dict], list]:
    """B learns; A is a fixed opponent. B's round reward r_B / |S| goes on its last decision that
    round (scaled so returns are comparable across configs with different numbers of sources).

    With a `baseline` remover (e.g. MinSeenB), the training reward is r_B minus the r_B the baseline's
    cut would have earned in the same state (Game.preview_cut). Within a round the baseline's term does
    not depend on B's cut, and most of the luck (how many sources A happened to find, which no cut can
    change) cancels out, which lowers the gradient's variance. Across rounds it is not exact: B's earlier
    cuts change later states and so the later baseline terms, so this is an option to compare against
    the plain reward, not a guaranteed-unbiased one."""
    game = Game(G, cfg, rng)
    rec: list[dict] = []
    B = GNNRemover(policy, record=rec)
    if hasattr(A, "reset"):
        A.reset(game)
    while not game.done:
        _a_phase(game, A, None)
        ref = game.preview_cut(game.legal_cuts(baseline.cut(game)))[3] if baseline is not None else 0.0
        n0 = len(rec)
        log = game.b_cut(B.cut(game))
        if len(rec) > n0:
            rec[-1]["r"] += (log.r_B - ref) / max(1, len(game.S))
    if rec:
        rec[-1]["done"] = True
    return rec, game.log


def _label(game, data, cands, q):
    """The teacher's query q as an action on this observation: the candidate index (node mode), or
    (actor index, question index) with the actor's questions stored on `data` (edge mode); None if the
    teacher's query is not a legal candidate."""
    if game.qs is None:
        return cands.index(q) if q in cands else None
    u, v, key = q
    if u not in cands:
        return None
    opts, data.opt_v, data.opt_k = finder_options(game, data, u)
    del data.node_ids
    return (cands.index(u), opts.index((v, key))) if (v, key) in opts else None


def finder_bc_pairs(G, cfg, rng: random.Random, teacher=None, policy=None, beta: float = 1.0) -> list[tuple]:
    """(observation, teacher action) pairs from one single-round game; the teacher defaults to the oracle.
    With a `policy` and beta < 1 this is DAgger: every state is labelled by the teacher, but the query
    actually played is the teacher's with probability beta and the policy's otherwise, so the policy
    learns to recover from its own mistakes. Collection stops when the teacher has nothing useful to ask
    (no END label: END is not an action in the standard game)."""
    game = Game(G, cfg, rng)
    teacher = teacher or OracleFinder()
    learner = GNNFinder(policy) if policy is not None else None
    if hasattr(teacher, "reset"):
        teacher.reset(game)
    pairs = []
    while game.a_can_query():
        data, cands = finder_graph(game)
        if not cands:
            break
        q = teacher.act(game)
        y = None if q is None else _label(game, data, cands, q)
        if y is None:
            break
        pairs.append((data, y))
        if learner is not None and rng.random() >= beta:
            q = learner.act(game)
            if q is None:
                break
        game.a_query(q)
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
