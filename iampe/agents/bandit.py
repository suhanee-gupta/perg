"""Contextual-bandit Finder A (Step 2): LinUCB over candidate-node features.

Each candidate node to query is an arm described by features A can see (kind, source flags, the rule
category of the edges that revealed it, hop distance from the unproven sources, revealed in-degree,
spent budget). The reward of a query is what it immediately yields:
    new proofs + beta * (new role / compute / admin / hub nodes revealed)
so the model learns which kinds of nodes are worth opening. One linear model is shared across all
configs; it keeps learning online inside a game, starting from the trained state each game.
Stopping: END once no candidate's optimistic value (theta.x + alpha * sqrt(x' A^-1 x)) exceeds the
cost of the next query.
"""
from __future__ import annotations

import math
from pathlib import Path

import numpy as np

from iampe.agents.finder_heuristic import _dist_from_sources
from iampe.env.features import CATS, KINDS

_GAIN_KINDS = ("Role", "Service", "Admin", "Hub")
DIM = len(KINDS) + len(CATS) + 7


def node_features(game, dist: dict, via: dict, indeg: dict, n: str) -> np.ndarray:
    k = game.G.nodes[n].get("kind")
    x = np.zeros(DIM)
    x[KINDS.index(k) if k in KINDS else 0] = 1.0
    for c in via.get(n, ()):
        x[len(KINDS) + CATS.index(c)] = 1.0
    o = len(KINDS) + len(CATS)
    x[o] = float(n in game.S)
    x[o + 1] = float(n == game.G.graph["untrusted"])
    x[o + 2] = min(dist.get(n, 9), 9) / 9
    x[o + 3] = math.log1p(indeg.get(n, 0)) / 3
    x[o + 4] = game.query_cost / max(1, len(game.S))
    x[o + 5] = len(game.proven) / max(1, len(game.S))
    x[o + 6] = 1.0                                    # bias
    return x


class LinUCB:
    def __init__(self, dim: int = DIM, alpha: float = 0.5, lam: float = 1.0):
        self.alpha = alpha
        self.A_inv = np.eye(dim) / lam
        self.b = np.zeros(dim)

    @property
    def theta(self) -> np.ndarray:
        return self.A_inv @ self.b

    def scores(self, X: np.ndarray, optimistic: bool = True) -> np.ndarray:
        mean = X @ self.theta
        if not optimistic:
            return mean
        bonus = np.sqrt(np.einsum("ij,jk,ik->i", X, self.A_inv, X).clip(min=0))
        return mean + self.alpha * bonus

    def update(self, x: np.ndarray, r: float) -> None:
        Ax = self.A_inv @ x                           # Sherman-Morrison rank-1 update of A^-1
        self.A_inv -= np.outer(Ax, Ax) / (1.0 + x @ Ax)
        self.b += r * x

    def copy(self) -> "LinUCB":
        c = LinUCB.__new__(LinUCB)
        c.alpha, c.A_inv, c.b = self.alpha, self.A_inv.copy(), self.b.copy()
        return c

    def save(self, path) -> None:
        Path(path).parent.mkdir(parents=True, exist_ok=True)
        np.savez(path, A_inv=self.A_inv, b=self.b, alpha=self.alpha)

    @classmethod
    def load(cls, path) -> "LinUCB":
        d = np.load(path)
        m = cls(dim=d["b"].shape[0], alpha=float(d["alpha"]))
        m.A_inv, m.b = d["A_inv"], d["b"]
        return m


class BanditFinder:
    """act(game) -> node or None. `learn=True` updates `model` in place (training); otherwise each
    game starts from a copy of the trained model and only that copy learns online."""

    def __init__(self, model: LinUCB | None = None, beta: float = 0.2, allow_end: bool = True,
                 learn: bool = False):
        self.base = model or LinUCB()
        self.beta, self.allow_end, self.learn = beta, allow_end, learn
        self.model = self.base
        self._pending = None

    def reset(self, game) -> None:
        self.model = self.base if self.learn else self.base.copy()
        self._pending = None

    def _credit(self, game) -> None:
        """Reward the previous query now that its effects are visible."""
        if self._pending is None:
            return
        x, n_proven, gain_nodes = self._pending
        new_gain = {v for (_, v, _) in game.revealed if game.G.nodes[v].get("kind") in _GAIN_KINDS}
        r = (len(game.proven) - n_proven) + self.beta * len(new_gain - gain_nodes)
        self.model.update(x, r)
        self._pending = None

    def act(self, game):
        if self._pending is not None and game.queries == 0:
            self._pending = None                      # a new round started: drop the stale query
        self._credit(game)
        cands = game.query_candidates()
        if not cands:
            return None
        dist = _dist_from_sources(game, skip=game.proven)
        via, indeg = {}, {}
        for (u, v, k), d in game.revealed_attrs().items():
            if game.lg.live((u, v, k)):
                if d.get("category") in CATS:
                    via.setdefault(v, set()).add(d["category"])
                indeg[v] = indeg.get(v, 0) + 1
        X = np.stack([node_features(game, dist, via, indeg, n) for n in cands])
        s = self.model.scores(X)
        i = int(np.argmax(s))
        if self.allow_end and s[i] < game.next_cost():
            return None
        gain_nodes = {v for (_, v, _) in game.revealed if game.G.nodes[v].get("kind") in _GAIN_KINDS}
        self._pending = (X[i], len(game.proven), gain_nodes)
        return cands[i]

    def finish(self, game) -> None:
        """Credit the last query of a game (call after the A phase ends)."""
        self._credit(game)

