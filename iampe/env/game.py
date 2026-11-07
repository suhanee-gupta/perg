"""Two-player greybox remediation game (Phase 4).

Hidden full graph G_k. Each round k:
  A phase   Finder A queries until it ends its turn. query(u) reveals u's live out-edges. A source s is
            proven (reported) as soon as A's revealed live edges contain a path s -> admin; the
            path is the proof. Reporting is automatic (assumption: a rational A always reports a
            proof it holds), so A's only decisions are which node to query and when to stop.
  B phase   Remover B sees the union of proof paths reported so far (all rounds) and w(e), and cuts
            seen live cuttable edges within the round's cut budget (count or weight).
  G_{k+1} = G_k - C_k. If reveal_cuts_to_A, cut edges also disappear from A's view.
Query cost: the t-th query of a round (t = 0, 1, ...) costs mu * cost_growth**t (cost_growth = 1:
constant cost, the default; > 1: the exponential-cost ablation). A's turn ends when it chooses END,
when nothing is left to query, when the optional safety cap Q is hit, or when the round's query cost
reaches the most A could still gain (the number of unproven sources): beyond that no query can pay off.
Rewards:
  r_A(k) = #sources proven in round k - sum of query costs in round k
  r_B(k) = -|R(G_{k+1})| - lam * sum_{e in C_k} w(e)       R on the full graph (b_reward="full")
                                                           or on the seen edges (b_reward="seen")
S = every source that truly reaches admin, plus random closed non-admin users/roles up to max_sources
(assumption: keeps every game non-trivial; A is told S but not which are open).

The current design is `standard_config()` (adapted from Greybox-TAC; see docs/STATUS.md):
  A  a fixed budget of Q queries per round, each costing 1 (mu=1, cost_rule off), no END, a query
     declined with probability decline_p (the decline is fixed per node for the whole game, it still
     costs, reveals nothing, and the node cannot be asked again), and the round ends early once every
     open source is proven (Greybox-TAC ends an episode on detection). A has memory (a_memory): it
     never re-queries a node it has asked about in any earlier round (it sees B's cuts, so a re-query
     cannot reveal anything new), and at the start of each round it re-reports the proofs that survive
     the cuts, since it already holds them.
  B  no edge budget (budget_mode="none"); w(e) normalised by the number of users and roles (w_norm);
     r_B(k) = b_close_reward * (sources newly closed in round k) - |R(G_{k+1})| - lam * sum w(e).
"""
from __future__ import annotations

import random
from collections import deque
from dataclasses import dataclass, field

import networkx as nx

from iampe.checker.reach import Edge, LiveGraph
from iampe.graph.build import ADMIN, sources


@dataclass
class GameConfig:
    Q: int | None = None         # optional safety cap on queries per round (None = only the cost rule)
    K: int = 4                   # rounds
    lam: float = 0.05            # B: weight of cut cost
    mu: float = 0.02             # A: cost per query
    cost_growth: float = 1.0     # query t costs mu * cost_growth**t (1 = constant)
    cut_budget: float = 2        # per round, in edges (count) or summed w(e) (weight)
    budget_mode: str = "count"   # "count" | "weight"
    max_sources: int = 20
    source_kinds: tuple = ("User", "Role")   # which non-admin principals can be sources
    reveal_cuts_to_A: bool = True
    b_reward: str = "full"       # "full" | "seen"
    w_const: bool = False        # ablation: treat every w(e) as 1
    seed: int = 0
    cost_rule: bool = True       # end A's turn once the next query cannot pay off (off = fixed budget Q)
    decline_p: float = 0.0       # chance a query is declined (fixed per node per game; still costs)
    end_when_all_proven: bool = False   # end A's turn once every truly open source is proven
    b_close_reward: float = 0.0  # B: reward per source newly closed in a round
    w_norm: bool = False         # divide w(e) by the number of users and roles in the account
    a_memory: bool = False       # no re-queries across rounds; surviving proofs re-reported at round start


def standard_config(**overrides) -> GameConfig:
    """The agreed design (docs/STATUS.md). Overrides replace single fields, e.g. K=1 for A alone."""
    base = dict(Q=20, K=5, mu=1.0, cost_rule=False, decline_p=0.1, end_when_all_proven=True, a_memory=True,
                budget_mode="none", cut_budget=float("inf"), w_norm=True, b_close_reward=1.0, lam=1.0)
    return GameConfig(**(base | overrides))


@dataclass
class RoundLog:
    k: int
    queries: int
    query_cost: float
    proven: list[str]
    new_routes: int              # proofs that use an edge B had not seen before
    cut: list[Edge]
    cut_cost: float
    open_before: int
    open_after: int
    r_A: float
    r_B: float
    closed: int = 0              # sources newly closed this round (on the reward's basis)


@dataclass
class AObs:
    sources: list[str]
    queried: set[str]
    revealed: dict[Edge, dict]   # revealed live edges -> attrs
    proven: set[str]             # proven this round
    budget_left: float           # most A could still gain minus what it has spent this round
    known: set[str]              # nodes A can name (sources + endpoints of revealed edges)


@dataclass
class BObs:
    seen: dict[Edge, dict]       # seen live edges -> attrs (incl. w)
    proven_ever: set[str]
    proofs: list[list[Edge]]     # proofs reported this round
    budget: float
    budget_mode: str


class Game:
    def __init__(self, G: nx.MultiDiGraph, cfg: GameConfig, rng: random.Random | None = None):
        self.G, self.cfg = G, cfg
        self.rng = rng or random.Random(cfg.seed)
        self.n_principals = max(1, sum(d.get("kind") in ("User", "Role") for _, d in G.nodes(data=True)))
        self.reset()

    # ---------------------------------------------------------------- setup
    def reset(self) -> None:
        self.lg = LiveGraph(self.G)
        all_src = sources(self.G, kinds=tuple(self.cfg.source_kinds))
        reach = self.lg.can_reach_admin()
        opened = [s for s in all_src if s in reach]
        closed = [s for s in all_src if s not in reach]
        n_fill = max(0, self.cfg.max_sources - len(opened))
        S = opened + self.rng.sample(closed, min(n_fill, len(closed)))
        self.rng.shuffle(S)
        u = self.G.graph["untrusted"]
        self.S = [u] + [s for s in S if s != u]
        self.k = 0
        self.queried_ever: set[str] = set()
        self.revealed: set[Edge] = set()
        self.seen: set[Edge] = set()
        self.proven_ever: set[str] = set()
        self.log: list[RoundLog] = []
        self.declined: set[str] = set()
        self._decline: dict[str, bool] = {}
        self._drng = random.Random(self.rng.random()) if self.cfg.decline_p > 0 else None
        self._start_round()

    def _start_round(self) -> None:
        self.queries = 0
        self.query_cost = 0.0
        self.last_cost = 0.0
        self.queried: set[str] = set()
        self.proven: set[str] = set()
        self.proofs: list[list[Edge]] = []
        self.a_done = False
        self._open_now: set[str] | None = None
        if self.cfg.a_memory and self.revealed:
            self._auto_report()                       # proofs A still holds after B's cuts

    def open_now(self) -> set[str]:
        """Sources that truly reach admin this round (hidden; the graph is fixed during A's turn)."""
        if self._open_now is None:
            self._open_now = self.lg.open_pairs(self.S)
        return self._open_now

    def w(self, e: Edge) -> float:
        d = self.G.edges[e]
        if not d.get("cuttable", True):
            return float("inf")
        w = 1.0 if self.cfg.w_const else float(d["w"])
        return w / self.n_principals if self.cfg.w_norm else w

    @property
    def done(self) -> bool:
        return self.k >= self.cfg.K

    # ---------------------------------------------------------------- A side
    def known_nodes(self) -> set[str]:
        return set(self.S) | {e[1] for e in self.revealed}

    def a_observe(self) -> AObs:
        rev = {e: self.G.edges[e] for e in self.revealed}
        return AObs(list(self.S), set(self.queried), rev, set(self.proven), self.budget_left(),
                    self.known_nodes())

    def next_cost(self) -> float:
        return self.cfg.mu * self.cfg.cost_growth ** self.queries

    def budget_left(self) -> float:
        return (len(self.S) - len(self.proven)) - self.query_cost

    def a_can_query(self) -> bool:
        """A may query again: turn not ended, budget Q not spent, something to query, and (with the cost
        rule) the next query can still pay off, and (with end_when_all_proven) some open source is unproven."""
        if self.a_done or (self.cfg.Q is not None and self.queries >= self.cfg.Q):
            return False
        if self.cfg.cost_rule and self.next_cost() > self.budget_left():
            return False
        if self.cfg.end_when_all_proven and self.open_now() <= self.proven:
            return False
        return bool(self.query_candidates())

    def revealed_attrs(self) -> dict[Edge, dict]:
        return {e: self.G.edges[e] for e in self.revealed}

    def query_candidates(self) -> list[str]:
        asked = self.queried_ever if self.cfg.a_memory else self.queried
        return sorted(n for n in self.known_nodes() if n not in asked and n != ADMIN and n not in self.declined)

    def a_query(self, u: str) -> int:
        """Reveal u's live out-edges; return how many sources became proven (cost in self.last_cost)."""
        assert self.a_can_query(), "A phase is over"
        if u not in self.known_nodes():
            raise ValueError(f"{u} is not known to A")
        self.last_cost = self.next_cost()
        self.query_cost += self.last_cost
        self.queries += 1
        self.queried.add(u)
        self.queried_ever.add(u)
        if self._drng is not None:
            if u not in self._decline:
                self._decline[u] = self._drng.random() < self.cfg.decline_p
            if self._decline[u]:
                self.declined.add(u)
                if not self.a_can_query():
                    self.a_done = True
                return 0
        self.revealed.update(self.lg.out_edges(u))
        n = self._auto_report()
        if not self.a_can_query():
            self.a_done = True
        return n

    def a_end(self) -> None:
        self.a_done = True

    def _proof(self, s: str) -> list[Edge] | None:
        prev, q = {s: None}, deque([s])
        adj: dict[str, list[Edge]] = {}
        for e in self.revealed:
            if self.lg.live(e):
                adj.setdefault(e[0], []).append(e)
        while q:
            u = q.popleft()
            if u == ADMIN:
                path = []
                while prev[u] is not None:
                    path.append(prev[u])
                    u = prev[u][0]
                return path[::-1]
            for e in adj.get(u, ()):
                if e[1] not in prev:
                    prev[e[1]] = e
                    q.append(e[1])
        return None

    def _auto_report(self) -> int:
        pred: dict[str, list[str]] = {}
        for e in self.revealed:
            if self.lg.live(e):
                pred.setdefault(e[1], []).append(e[0])
        reach, q = {ADMIN}, deque([ADMIN])
        while q:
            for u in pred.get(q.popleft(), ()):
                if u not in reach:
                    reach.add(u)
                    q.append(u)
        n = 0
        for s in self.S:
            if s in self.proven or s not in reach:
                continue
            p = self._proof(s)
            if p is not None:
                self.proven.add(s)
                self.proven_ever.add(s)
                self.proofs.append(p)
                n += 1
        return n

    # ---------------------------------------------------------------- B side
    def b_observe(self) -> BObs:
        seen = {e: self.G.edges[e] for e in self.seen | {e for p in self.proofs for e in p} if self.lg.live(e)}
        budget = float("inf") if self.cfg.budget_mode == "none" else self.cfg.cut_budget
        return BObs(seen, set(self.proven_ever), [list(p) for p in self.proofs], budget, self.cfg.budget_mode)

    def cut_cost(self, edges) -> float:
        """What the edges use of the round's budget: 1 each ("count") or their w(e) ("weight", "none")."""
        return sum(1.0 if self.cfg.budget_mode == "count" else self.w(e) for e in edges)

    def _open_on_basis(self) -> int:
        """Open sources on the reward's basis: the full hidden graph, or only the seen live edges."""
        if self.cfg.b_reward != "seen":
            return len(self.lg.open_pairs(self.S))
        if not self.seen:
            return 0
        live = [e for e in self.seen if self.lg.live(e)]
        return len(LiveGraph(self.G.edge_subgraph(live).copy()).open_pairs(self.S)) if live else 0

    def b_cut(self, edges: list[Edge], unrestricted: bool = False) -> RoundLog:
        """Apply B's cuts, close the round, and return its log (with both rewards).
        `unrestricted` lets a cheating ceiling (FullB) cut edges it has not seen."""
        assert self.a_done or not self.a_can_query()
        obs = self.b_observe()
        edges = [e for e in dict.fromkeys(edges) if (unrestricted or e in obs.seen) and self.lg.live(e)
                 and self.w(e) < float("inf")]
        if self.cfg.budget_mode != "none" and self.cut_cost(edges) > self.cfg.cut_budget + 1e-9:
            raise ValueError("cut exceeds the round budget")
        new_routes = sum(any(e not in self.seen for e in p) for p in self.proofs)
        self.seen.update(e for p in self.proofs for e in p)
        open_before = len(self.lg.open_pairs(self.S))
        basis_before = self._open_on_basis()
        self.lg.remove(edges)
        if self.cfg.reveal_cuts_to_A:
            self.revealed -= set(edges)
        open_after = self._open_on_basis()
        closed = max(0, basis_before - open_after)    # cuts only remove edges: a closed source stays closed
        cost = sum(self.w(e) for e in edges)
        r_A = len(self.proven) - self.query_cost
        r_B = self.cfg.b_close_reward * closed - open_after - self.cfg.lam * cost
        log = RoundLog(self.k, self.queries, self.query_cost, sorted(self.proven), new_routes, edges, cost,
                       open_before, len(self.lg.open_pairs(self.S)), r_A, r_B, closed)
        self.log.append(log)
        self.k += 1
        self._start_round()
        return log

    # ---------------------------------------------------------------- full game
    def play(self, A, B) -> list[RoundLog]:
        """A: .reset(game) optional, .act(game) -> node or None (end). B: .cut(game) -> [edges]."""
        for agent in (A, B):
            if hasattr(agent, "reset"):
                agent.reset(self)
        while not self.done:
            while self.a_can_query():
                u = A.act(self)
                if u is None:
                    self.a_end()
                else:
                    self.a_query(u)
            self.a_done = True
            self.b_cut(B.cut(self), unrestricted=getattr(B, "cheats", False))
        return self.log
