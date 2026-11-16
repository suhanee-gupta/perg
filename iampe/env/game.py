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
  A  edge mode (yes/no questions), half of the hidden edges visible from the start (visible_p=0.5), a
     fixed budget of Q=40 queries per round, each costing 1 (mu=1, cost_rule off), no END, a query
     declined with probability decline_p (fixed per query for the whole game and independent of the
     order of queries; it still costs, reveals nothing, and cannot be asked again), and the round ends
     early once every open source is proven (Greybox-TAC ends an episode on detection). A has memory
     (a_memory): it never asks again what it asked in an earlier round (it sees B's cuts, so the answer
     cannot have changed otherwise), and at the start of each round it re-reports the proofs that
     survive the cuts, since it already holds them.
  B  sees every edge A revealed (b_sees="revealed"); no edge budget (budget_mode="none"); w(e)
     normalised by the number of users and roles (w_norm);
     r_B(k) = b_close_reward * (sources newly closed in round k) - |R(G_{k+1})| - lam * sum w(e).

Query modes (query_mode):
  "node"  query(u) reveals all of u's live out-edges (the original design).
  "edge"  TAC-style yes/no: query((u, v, key)) asks "does the live edge u -[key]-> v exist?" and the
          answer is TRUE (the edge is revealed), FALSE, or UNKNOWN (declined; fixed per question for the
          whole game). Entity ids and kinds are public; u must be on A's frontier (a source, or a node
          A's confirmed live edges reach from a source); (v, key) must be in u's public query space
          (iampe/env/query_space.py). Confirming an edge into a hub also reveals the hub's public,
          uncuttable out-edges. With a_memory, a question asked in any earlier round is never asked
          again (answers only change by B's cuts, which A sees).
visible_p: share of the hidden edges A knows from the start; they count as already asked. This is our
own knob, not TAC's: TAC-GB (arXiv 2304.14540, Sec. 7) shows a random subset of entities and confirms no
permission at the start, which corresponds to visible_p = 0 with every entity public.
b_sees: what B observes: "proofs" (edges on reported proofs, the original design) or "revealed"
(every live edge A has revealed, so B can cut routes A explored but has not proven yet).
"""
from __future__ import annotations

import random
from collections import deque
from dataclasses import dataclass, field

import networkx as nx

from iampe.checker.reach import Edge, LiveGraph
from iampe.env.query_space import QuerySpace
from iampe.graph.build import ADMIN, HUB, sources


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
    query_mode: str = "node"     # "node" (reveal u's out-edges) | "edge" (yes/no on one edge, TAC-style)
    visible_p: float = 0.0       # share of hidden edges known from the start (our knob; TAC-GB: 0)
    b_sees: str = "proofs"       # B observes "proofs" (proof edges) | "revealed" (all of A's live edges)

    def __post_init__(self):
        if self.query_mode not in ("node", "edge"):
            raise ValueError(f"query_mode must be 'node' or 'edge', not {self.query_mode!r}")
        if self.b_sees not in ("proofs", "revealed"):
            raise ValueError(f"b_sees must be 'proofs' or 'revealed', not {self.b_sees!r}")
        if not 0.0 <= self.visible_p <= 1.0:
            raise ValueError("visible_p must be in [0, 1]")
        if self.query_mode == "edge" and not self.a_memory:
            # an answer only changes when B cuts the edge, which A sees: re-asking is pure waste
            raise ValueError("query_mode='edge' needs a_memory=True")


def standard_config(**overrides) -> GameConfig:
    """The agreed design (docs/STATUS.md). Overrides replace single fields, e.g. K=1 for A alone.
    query_mode="node" selects the old node-mode game as a whole: nothing visible and B sees proofs only,
    unless visible_p / b_sees are given explicitly (so node-mode numbers stay comparable with old runs)."""
    base = dict(Q=40, K=5, mu=1.0, cost_rule=False, decline_p=0.1, end_when_all_proven=True, a_memory=True,
                budget_mode="none", cut_budget=float("inf"), w_norm=True, b_close_reward=1.0, lam=1.0,
                query_mode="edge", visible_p=0.5, b_sees="revealed")
    if overrides.get("query_mode") == "node":
        base |= dict(visible_p=0.0, b_sees="proofs")
    return GameConfig(**(base | {k: v for k, v in overrides.items() if v is not None}))


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
    reproven: int = 0            # proofs reported at round start without a query: in round 0 from visible
                                 # edges, later the proofs that survived B's cuts
    reported_at_start: list = field(default_factory=list)   # which sources those were


@dataclass
class AObs:
    sources: list[str]
    queried: set[str]            # node mode: nodes queried this round (empty in edge mode)
    revealed: dict[Edge, dict]   # revealed live edges -> attrs
    proven: set[str]             # proven this round
    budget_left: float           # most A could still gain minus what it has spent this round
    known: set[str]              # nodes A can name (node mode: sources + endpoints of revealed edges;
                                 # edge mode: every entity, plus revealed hub endpoints)


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
        self.declined: set = set()                    # nodes (node mode) or questions (edge mode)
        # declines are a fixed property of each query in this game, independent of the order queries are
        # made in, so every finder faces the same declines in the same game (common random numbers)
        self._dseed = self.rng.random() if self.cfg.decline_p > 0 else None
        # edge mode: questions asked in any round, their answers (True/False; declined ones are absent),
        # and how many questions each actor has used up (for its remaining query space)
        self.qs = QuerySpace(self.G) if self.cfg.query_mode == "edge" else None
        self.asked_ever: set[Edge] = set()
        self.answers: dict[Edge, bool] = {}
        self._asked_from: dict[str, int] = {}
        if self.cfg.visible_p > 0:
            self._reveal_visible()
        self._start_round()

    def _reveal_visible(self) -> None:
        """Each hidden non-hub edge is public from the start with probability visible_p."""
        vrng = random.Random(self.rng.random())
        for e in sorted(self.G.edges(keys=True)):
            if e[0].startswith(HUB) or vrng.random() >= self.cfg.visible_p:
                continue
            self._confirm(e)
            if self.qs is not None:
                self._mark_asked(e)
                self.answers[e] = True

    def _start_round(self) -> None:
        self.queries = 0
        self.query_cost = 0.0
        self.last_cost = 0.0
        self.queried: set[str] = set()
        self.proven: set[str] = set()
        self.proofs: list[list[Edge]] = []
        self.a_done = False
        self._open_now: set[str] | None = None
        if self.revealed and (self.cfg.a_memory or self.k == 0):
            self._auto_report()                       # proofs A still holds after B's cuts (or visible ones)
        self.reported_at_start = sorted(self.proven)

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
        """Nodes A can name: node mode, sources and endpoints of what it revealed; edge mode, every
        entity (public, as TAC's visible entities) plus the endpoints of what it revealed (hubs)."""
        ends = {e[0] for e in self.revealed} | {e[1] for e in self.revealed}
        if self.qs is not None:
            return set(self.G.nodes) | ends
        return set(self.S) | self.queried_ever | ends

    def frontier(self) -> list[str]:
        """Edge mode: actors A could stand on (sources, and nodes its confirmed live edges reach from
        a source) that still have questions left, sorted."""
        adj: dict[str, list[str]] = {}
        for e in self.revealed:
            if self.lg.live(e):
                adj.setdefault(e[0], []).append(e[1])
        seen, q = set(self.S), deque(self.S)
        while q:
            for v in adj.get(q.popleft(), ()):
                if v not in seen:
                    seen.add(v)
                    q.append(v)
        return sorted(u for u in seen if u != ADMIN and self.remaining(u) > 0)

    def remaining(self, u: str) -> int:
        """Edge mode: questions about u's out-edges never asked."""
        return self.qs.size(u) - self._asked_from.get(u, 0)

    def options(self, u: str) -> list[tuple[str, str]]:
        """Edge mode: u's unasked questions as (v, key), in the query space's order."""
        return [(v, key) for key, _, ts in self.qs.groups(u) for v in ts
                if v != u and (u, v, key) not in self.asked_ever]

    def _mark_asked(self, q: Edge) -> None:
        if q not in self.asked_ever:
            self.asked_ever.add(q)
            self._asked_from[q[0]] = self._asked_from.get(q[0], 0) + 1

    def _confirm(self, e: Edge) -> None:
        """Reveal a live edge; an edge into a hub also reveals the hub's public out-edges."""
        self.revealed.add(e)
        if e[1].startswith(HUB):
            self.revealed.update(self.lg.out_edges(e[1]))

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
        """Node mode: nodes A may query. Edge mode: frontier actors with questions left (A then picks
        one of `options(u)`)."""
        if self.qs is not None:
            return self.frontier()
        asked = self.queried_ever if self.cfg.a_memory else self.queried
        return sorted(n for n in self.known_nodes() if n not in asked and n != ADMIN and n not in self.declined)

    def would_decline(self, q) -> bool:
        """Is query q (a node or a question) declined in this game? A deterministic function of the game's
        decline seed and q, so it does not depend on which queries came before."""
        if self._dseed is None:
            return False
        q = q if isinstance(q, str) else tuple(q)    # a list and a tuple name the same question
        return random.Random(f"{self._dseed!r}|{q!r}").random() < self.cfg.decline_p

    def _declines(self, q) -> bool:
        if self.would_decline(q):
            self.declined.add(q)
            return True
        return False

    def a_query(self, q) -> int:
        """Node mode: q = u, reveal u's live out-edges. Edge mode: q = (u, v, key), reveal that edge if it
        exists and is live. Returns how many sources became proven (cost in self.last_cost)."""
        assert self.a_can_query(), "A phase is over"
        if self.qs is not None:
            q = tuple(q)
            u, v, key = q
            if u not in self.frontier():
                raise ValueError(f"{u} is not on A's frontier")
            if q in self.asked_ever or not self.qs.allowed(q):
                raise ValueError(f"{q} was already asked or is outside {u}'s query space")
        elif q not in self.known_nodes():
            raise ValueError(f"{q} is not known to A")
        self.last_cost = self.next_cost()
        self.query_cost += self.last_cost
        self.queries += 1
        if self.qs is not None:
            self._mark_asked(q)
        else:
            self.queried.add(q)
            self.queried_ever.add(q)
        n = 0
        if not self._declines(q):
            if self.qs is None:
                self.revealed.update(self.lg.out_edges(q))
            else:
                ok = self.G.has_edge(u, v, key) and self.lg.live(q)
                self.answers[q] = ok
                if ok:
                    self._confirm(q)
            n = self._auto_report()
        if not self.a_can_query():
            self.a_done = True
        return n

    def a_end(self) -> None:
        self.a_done = True

    def _proof(self, s: str) -> list[Edge] | None:
        prev, q = {s: None}, deque([s])
        adj: dict[str, list[Edge]] = {}
        for e in sorted(self.revealed):               # sorted: which shortest proof is found must not
            if self.lg.live(e):                       # depend on Python's per-process set order
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
    def _b_new_view(self) -> set[Edge]:
        """What B learns this round: the reported proofs, plus (b_sees="revealed") every edge A revealed."""
        view = {e for p in self.proofs for e in p}
        if self.cfg.b_sees == "revealed":
            view |= self.revealed
        return view

    def b_observe(self) -> BObs:
        seen = {e: self.G.edges[e] for e in sorted(self.seen | self._b_new_view()) if self.lg.live(e)}
        budget = float("inf") if self.cfg.budget_mode == "none" else self.cfg.cut_budget
        return BObs(seen, set(self.proven_ever), [list(p) for p in self.proofs], budget, self.cfg.budget_mode)

    def cut_cost(self, edges) -> float:
        """What the edges use of the round's budget: 1 each ("count") or their w(e) ("weight", "none")."""
        return sum(1.0 if self.cfg.budget_mode == "count" else self.w(e) for e in edges)

    def _open_on_basis(self, lg: LiveGraph, seen: set[Edge]) -> int:
        """Open sources on the reward's basis: the full hidden graph, or only the seen live edges."""
        if self.cfg.b_reward != "seen":
            return len(lg.open_pairs(self.S))
        live = [e for e in seen if lg.live(e)]
        return len(LiveGraph(self.G.edge_subgraph(live).copy()).open_pairs(self.S)) if live else 0

    def legal_cuts(self, edges, unrestricted: bool = False) -> list[Edge]:
        """The edges B may cut this round: seen (unless `unrestricted`), live, cuttable, deduplicated."""
        seen = self.b_observe().seen
        return [e for e in dict.fromkeys(edges) if (unrestricted or e in seen) and self.lg.live(e)
                and self.w(e) < float("inf")]

    def preview_cut(self, edges: list[Edge]) -> tuple[int, int, float, float]:
        """(closed, open after on the reward's basis, collateral, r_B) of cutting `edges` (already legal)
        now, without changing the game. Training uses it to score a baseline's cut on the same state."""
        seen = self.seen | self._b_new_view()
        before = self._open_on_basis(self.lg, seen)
        lg = self.lg.copy()
        lg.remove(edges)
        after = self._open_on_basis(lg, seen)
        closed = max(0, before - after)               # cuts only remove edges: a closed source stays closed
        cost = sum(self.w(e) for e in edges)
        return closed, after, cost, self.cfg.b_close_reward * closed - after - self.cfg.lam * cost

    def b_cut(self, edges: list[Edge], unrestricted: bool = False) -> RoundLog:
        """Apply B's cuts, close the round, and return its log (with both rewards).
        `unrestricted` lets a cheating ceiling (FullB) cut edges it has not seen."""
        assert self.a_done or not self.a_can_query()
        edges = self.legal_cuts(edges, unrestricted)
        if self.cfg.budget_mode != "none" and self.cut_cost(edges) > self.cfg.cut_budget + 1e-9:
            raise ValueError("cut exceeds the round budget")
        closed, _, cost, r_B = self.preview_cut(edges)
        new_routes = sum(any(e not in self.seen for e in p) for p in self.proofs)
        self.seen.update(self._b_new_view())
        open_before = len(self.lg.open_pairs(self.S))
        self.lg.remove(edges)
        if self.cfg.reveal_cuts_to_A:
            self.revealed -= set(edges)
        r_A = len(self.proven) - self.query_cost
        log = RoundLog(self.k, self.queries, self.query_cost, sorted(self.proven), new_routes, edges, cost,
                       open_before, len(self.lg.open_pairs(self.S)), r_A, r_B, closed,
                       len(self.reported_at_start), list(self.reported_at_start))
        self.log.append(log)
        self.k += 1
        self._start_round()
        return log

    # ---------------------------------------------------------------- full game
    def play(self, A, B) -> list[RoundLog]:
        """A: .reset(game) optional, .act(game) -> a query (node mode: a node; edge mode: (u, v, key)) or
        None (end). B: .cut(game) -> [edges]."""
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
