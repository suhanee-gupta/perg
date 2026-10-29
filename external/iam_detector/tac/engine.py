"""TAC-WB engine: relaxation over permission flows with locked edges (SPEC.md §12.4).

Facts:
    Has(e, p)      entity e holds permission p
    Enabled(f)     flow f (src -> sink) is open

Rules:
    R1 propagate   Enabled(src->sink) and Has(src, p)          => Has(sink, p)
    R2 unlock      Has(u, op) for ANY op of a locked flow f        => Enabled(f)   (require "any", TAC)
                   Has(u, op_i) for EVERY op of a locked flow f    => Enabled(f)   (require "all", extension)

Every fact keeps (a) all of its derivations, for Step 2's path enumeration, and
(b) its best plan: the set of locked flows that one derivation tree needs opened.
A plan's cost is the sum of those flows' category weights, so a prerequisite
shared by two branches is counted once.
"""

from __future__ import annotations

import heapq
import itertools
from collections import defaultdict
from dataclasses import dataclass, field
from typing import NamedTuple, Union

from .. import weight_oracle
from ..types import PECategory
from .model import ADMIN, ANY_POLICY_ID, ANY_POLICY_TYPE, Perm, TacConfig
from .templates import Template, load_templates


@dataclass(frozen=True)
class Flow:
    """A flow src -> sink. `template is None` means it is enabled from the start."""

    id: str
    src: str
    sink: str
    template: Template | None = None
    ops: tuple[Perm, ...] = ()

    @property
    def locked(self) -> bool:
        return self.template is not None

    @property
    def category(self) -> PECategory | None:
        return self.template.category if self.template else None

    @property
    def require(self) -> str:
        return self.template.require if self.template else "any"

    @property
    def weight(self) -> float:
        return weight_oracle.weight_for(self.template.category) if self.template else 0.0

    @property
    def label(self) -> str:
        return " + ".join(str(p) for p in self.ops)


@dataclass(frozen=True)
class WitnessStep:
    """One witness step: open `flow` using `used` (one op for "any", every op for "all")."""

    flow: Flow
    used: tuple[Perm, ...]

    @property
    def label(self) -> str:
        return " + ".join(str(p) for p in self.used)


class Has(NamedTuple):
    entity: str
    perm: Perm


class Enabled(NamedTuple):
    flow: str


Fact = Union[Has, Enabled]


class Derivation(NamedTuple):
    rule: str  # "init" | "propagate" | "unlock"
    premises: tuple  # tuple[Fact, ...]


class ReplayError(Exception):
    """A witness step whose premises did not hold, or a witness that misses the target."""


@dataclass
class Result:
    config: TacConfig
    flows: dict[str, Flow]
    found: bool
    cost: float | None
    witness: list[WitnessStep]
    plans: dict = field(default_factory=dict)  # Fact -> frozenset[flow id]
    derivations: dict = field(default_factory=dict)  # Fact -> set[Derivation]
    rounds: int = 0
    pruned: int = 0

    @property
    def facts(self) -> set:
        return set(self.plans)

    def cost_of(self, fact: Fact) -> float:
        return sum(self.flows[f].weight for f in self.plans[fact])

    def holdings(self) -> dict[str, set[Perm]]:
        """entity id -> permissions held at the fixed point (excluding the built-in AnyPolicy)."""
        held: dict[str, set[Perm]] = {e: set() for e in self.config.entities}
        for fact in self.plans:
            if isinstance(fact, Has) and fact.entity != ANY_POLICY_ID:
                held[fact.entity].add(fact.perm)
        return held

    def enabled_flows(self) -> list[Flow]:
        return [self.flows[f.flow] for f in self.plans if isinstance(f, Enabled)]


def entity_types(config: TacConfig) -> dict[str, str]:
    types = {e.id: e.type for e in config.entities.values()}
    types[ANY_POLICY_ID] = ANY_POLICY_TYPE
    return types


def relevant_actions(templates: list[Template], target: Perm) -> set[str]:
    """Permission-space pruning (TAC §4.1.2): the actions anything can ever depend on."""
    actions = {op.action for t in templates for op in t.ops}
    actions.add(target.action)
    return actions


def _resolve(on: str, src: str, sink: str) -> str:
    return src if on == "src" else sink if on == "sink" else "*"


def instantiate_flows(config: TacConfig, templates: list[Template]) -> tuple[list[Flow], list[Flow]]:
    """Returns (initially enabled flows, locked candidate flows)."""
    initial = [Flow(f"rel:{src}->{dst}", src, dst) for src, dst in dict.fromkeys(config.relations)]
    open_pairs = set(dict.fromkeys(config.relations))
    types = entity_types(config)
    u = config.untrusted

    candidates: list[Flow] = []
    for t in templates:
        srcs = [e for e, ty in types.items() if ty in t.src_types]
        if t.sink == "actor":
            sinks = [u] if types[u] in t.sink_types else []
        else:
            sinks = [e for e, ty in types.items() if ty in t.sink_types]
        for src in srcs:
            for sink in sinks:
                if src == sink or (src, sink) in open_pairs:
                    continue
                ops = tuple(Perm(op.action, _resolve(op.on, src, sink)) for op in t.ops)
                candidates.append(Flow(f"{t.id}:{src}->{sink}", src, sink, t, ops))
    return initial, candidates


def relax(config: TacConfig, templates: list[Template] | None = None) -> Result:
    if templates is None:
        templates = load_templates()
    initial, candidates = instantiate_flows(config, templates)
    flows = {f.id: f for f in itertools.chain(initial, candidates)}
    keep = relevant_actions(templates, config.target)
    u = config.untrusted

    plans: dict = {}
    derivations: dict = defaultdict(set)

    def plan_key(plan: frozenset) -> tuple:
        return (sum(flows[f].weight for f in plan), len(plan), sorted(plan))

    def offer(fact: Fact, derivation: Derivation, plan: frozenset) -> bool:
        derivations[fact].add(derivation)
        old = plans.get(fact)
        if old is None or plan_key(plan) < plan_key(old):
            plans[fact] = plan
            return True
        return False

    init = Derivation("init", ())
    pruned = 0
    for entity, perms in config.assignments.items():
        for p in perms:
            if p.action == "*" or p.action in keep:
                offer(Has(entity, p), init, frozenset())
            else:
                pruned += 1
    offer(Has(ANY_POLICY_ID, ADMIN), init, frozenset())
    for f in initial:
        offer(Enabled(f.id), init, frozenset())

    rounds = 0
    while True:
        rounds += 1
        changed = False
        held_by: dict[str, list[Has]] = defaultdict(list)
        enabled: list[Enabled] = []
        for fact in sorted(plans, key=repr):
            if isinstance(fact, Has):
                held_by[fact.entity].append(fact)
            else:
                enabled.append(fact)

        # R1: propagate along every open flow.
        for ef in enabled:
            flow = flows[ef.flow]
            for hf in held_by[flow.src]:
                changed |= offer(Has(flow.sink, hf.perm), Derivation("propagate", (ef, hf)),
                                 plans[ef] | plans[hf])

        # R2: unlock. Each op can be met by any held permission covering it.
        for flow in candidates:
            choices = [[h for h in held_by[u] if h.perm.covers(req)] for req in flow.ops]
            if flow.require == "all":
                combos = itertools.product(*choices) if all(choices) else ()
            else:
                combos = ((h,) for options in choices for h in options)
            for combo in combos:
                plan = frozenset({flow.id}).union(*(plans[h] for h in combo))
                changed |= offer(Enabled(flow.id), Derivation("unlock", tuple(combo)), plan)

        if not changed:
            break

    goals = [f for f in plans if isinstance(f, Has) and f.entity == u and f.perm.covers(config.target)]
    result = Result(config, flows, found=bool(goals), cost=None, witness=[],
                    plans=plans, derivations=dict(derivations), rounds=rounds, pruned=pruned)
    if goals:
        best = min(goals, key=lambda g: plan_key(plans[g]))
        result.cost = result.cost_of(best)
        result.witness = order_plan(config, flows, plans[best])
    return result


def _closure(holdings: dict[str, set[Perm]], edges: list[tuple[str, str]]) -> None:
    """Propagates permissions along `edges` in place until nothing changes."""
    changed = True
    while changed:
        changed = False
        for src, dst in edges:
            missing = holdings[src] - holdings[dst]
            if missing:
                holdings[dst] |= missing
                changed = True


def _initial_holdings(config: TacConfig) -> dict[str, set[Perm]]:
    holdings: dict[str, set[Perm]] = defaultdict(set)
    for entity, perms in config.assignments.items():
        holdings[entity].update(perms)
    holdings[ANY_POLICY_ID].add(ADMIN)
    return holdings


def _covered(held: set[Perm], required: Perm) -> bool:
    return any(p.covers(required) for p in held)


def _usable(flow: Flow, held: set[Perm]) -> tuple[Perm, ...] | None:
    """The ops `held` lets the actor use to open `flow`, or None if it cannot."""
    covered = [req for req in flow.ops if _covered(held, req)]
    if flow.require == "all":
        return flow.ops if len(covered) == len(flow.ops) else None
    return (covered[0],) if covered else None


def order_plan(config: TacConfig, flows: dict[str, Flow], plan: frozenset) -> list[WitnessStep]:
    """Orders a plan's locked flows so each step's prerequisites come first."""
    holdings = _initial_holdings(config)
    edges = list(config.relations)
    _closure(holdings, edges)
    remaining = sorted(plan)
    ordered: list[WitnessStep] = []
    while remaining:
        u_held = holdings[config.untrusted]
        step = next((WitnessStep(flows[fid], used) for fid in remaining
                     if (used := _usable(flows[fid], u_held)) is not None), None)
        if step is None:
            raise RuntimeError(f"plan cannot be ordered; stuck on {remaining}")
        remaining.remove(step.flow.id)
        ordered.append(step)
        edges.append((step.flow.src, step.flow.sink))
        _closure(holdings, edges)
    return ordered


def enumerate_paths(config: TacConfig, result: Result,
                    limit: int = 8, max_steps: int = 10,
                    max_expansions: int = 40000) -> list[list[WitnessStep]]:
    """All distinct escalation routes to the target, cheapest first (Step 2).

    A cost-ordered forward search over sets of locked flows. From a partial plan it computes the
    untrusted entity's holdings, and — while the target is not yet covered — branches on each
    locked flow that is *usable now* (its required ops are already held). A plan that covers the
    target is recorded as a route and never extended further, so the search stops at escalation
    and never wanders into the flows that only open once the attacker is already admin.

    Routes are reduced to minimal sets (a plan that merely adds steps to a cheaper recorded route
    is dropped) and ranked by total category weight. ``max_steps`` and ``max_expansions`` bound
    the search; the result is a ranked set of routes, not a guaranteed-exhaustive enumeration.
    """
    flows = result.flows
    candidates = [f for f in flows.values() if f.locked]
    u = config.untrusted
    base_edges = list(dict.fromkeys(config.relations))

    def holdings_for(plan: frozenset) -> dict[str, set[Perm]]:
        held = _initial_holdings(config)
        _closure(held, base_edges + [(flows[fid].src, flows[fid].sink) for fid in plan])
        return held

    def cost(plan: frozenset) -> float:
        return sum(flows[fid].weight for fid in plan)

    heap: list = []
    counter = itertools.count()
    start = frozenset()
    heapq.heappush(heap, (0.0, next(counter), start))
    seen: set[frozenset] = {start}
    routes: list[frozenset] = []
    expansions = 0

    while heap and len(routes) < limit and expansions < max_expansions:
        c, _, plan = heapq.heappop(heap)
        expansions += 1
        held = holdings_for(plan)
        if _covered(held[u], config.target):
            if not any(r <= plan for r in routes):  # keep only minimal routes
                routes.append(plan)
            continue  # a completed route is never extended
        if len(plan) >= max_steps:
            continue
        for flow in candidates:
            if flow.id in plan or _usable(flow, held[u]) is None:
                continue
            nxt = plan | {flow.id}
            if nxt not in seen:
                seen.add(nxt)
                heapq.heappush(heap, (cost(nxt), next(counter), nxt))

    routes.sort(key=lambda p: (cost(p), len(p), sorted(p)))
    return [order_plan(config, flows, plan) for plan in routes]


def replay_witness(config: TacConfig, witness: list[WitnessStep]) -> None:
    """Re-executes `witness` from the raw config (unpruned) and checks that every step's
    premises hold when it is taken and that the target holds at the end. Raises ReplayError."""
    types = entity_types(config)
    u = config.untrusted
    holdings = _initial_holdings(config)
    edges = list(config.relations)
    _closure(holdings, edges)
    for i, ws in enumerate(witness, 1):
        step = ws.flow
        t = step.template
        if t is None:
            raise ReplayError(f"step {i} ({step.id}) is not a locked flow")
        if types.get(step.src) not in t.src_types or types.get(step.sink) not in t.sink_types:
            raise ReplayError(f"step {i} ({step.id}): entity types do not fit template '{t.id}'")
        if t.sink == "actor" and step.sink != u:
            raise ReplayError(f"step {i} ({step.id}): actor-only flow must end at '{u}'")
        expected = tuple(Perm(op.action, _resolve(op.on, step.src, step.sink)) for op in t.ops)
        if step.ops != expected:
            raise ReplayError(f"step {i} ({step.id}): ops do not match template '{t.id}'")
        if not ws.used or not set(ws.used) <= set(step.ops):
            raise ReplayError(f"step {i} ({step.id}): used ops are not ops of the flow")
        if t.require == "all" and set(ws.used) != set(step.ops):
            raise ReplayError(f"step {i} ({step.id}): template '{t.id}' needs every op")
        for req in ws.used:
            if not _covered(holdings[u], req):
                raise ReplayError(f"step {i} ({step.id}): '{u}' does not hold {req} at this point")
        edges.append((step.src, step.sink))
        _closure(holdings, edges)
    if not _covered(holdings[u], config.target):
        raise ReplayError(f"after {len(witness)} step(s) '{u}' still lacks {config.target}")
