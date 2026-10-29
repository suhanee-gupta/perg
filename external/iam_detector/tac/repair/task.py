"""RepairTask: the engine-independent data the repair stage works on (SPEC §14.3).

`build_task` is the ONLY place that reads engine internals. It turns a TacConfig into:

    entities   the entities that can reach the untrusted entity through any flow
    atoms      the permission strings that can matter (cover the target or some template op)
    flows      relation flows (enabled) and instantiated template flows (locked)
    a0         what each entity holds BEFORE the attacker acts (closure over relations)
    may        an over-approximation of what each entity could ever hold (prunes the encoding)

Repair operations (the soft constraints) are tuples:

    ("revoke", entity, atom_index)    remove a held atom from an entity (semantic: may be inherited)
    ("cut", flow_id)                  disable a relation flow ("rel:src->dst")
"""

from __future__ import annotations

from collections import defaultdict
from dataclasses import dataclass, field
from typing import Iterable

from ..engine import instantiate_flows
from ..model import ADMIN, ANY_POLICY_ID, Perm, TacConfig
from ..templates import Template, load_templates

Op = tuple  # ("revoke", entity, atom_idx) | ("cut", flow_id)


@dataclass(frozen=True)
class TFlow:
    id: str
    src: str
    sink: str
    locked: bool
    require: str = "any"                      # "any" | "all" (locked flows only)
    ops: tuple[tuple[int, ...], ...] = ()     # per template op: atom indices that cover it
    cut_of: str | None = None                 # shadow flow: exists only once this relation is cut
    template: str | None = None
    label: str = ""


@dataclass
class RepairTask:
    u: str
    atoms: list[Perm]
    entities: list[str]
    flows: list[TFlow]
    a0: dict[str, frozenset[int]]
    may: dict[str, frozenset[int]]
    target_cover: tuple[int, ...]
    frozen: frozenset[tuple[str, int]] = frozenset()
    names: dict[str, str] = field(default_factory=dict)

    # ---- views -------------------------------------------------------------------------
    @property
    def relation_flows(self) -> list[TFlow]:
        return [f for f in self.flows if not f.locked]

    @property
    def locked_flows(self) -> list[TFlow]:
        return [f for f in self.flows if f.locked]

    def flow(self, flow_id: str) -> TFlow:
        return next(f for f in self.flows if f.id == flow_id)

    def revoke_ops(self) -> list[Op]:
        return [("revoke", e, p) for e in self.entities for p in sorted(self.a0[e])
                if (e, p) not in self.frozen]

    def cut_ops(self) -> list[Op]:
        return [("cut", f.id) for f in self.relation_flows]

    def all_ops(self) -> list[Op]:
        return self.revoke_ops() + self.cut_ops()

    # ---- patch helpers ----------------------------------------------------------------
    def split(self, patch: Iterable[Op]) -> tuple[set[tuple[str, int]], set[str]]:
        revoked = {(o[1], o[2]) for o in patch if o[0] == "revoke"}
        cut = {o[1] for o in patch if o[0] == "cut"}
        return revoked, cut

    def state_after(self, patch: Iterable[Op]) -> dict[str, set[int]]:
        """The repaired step-0 state A*: held atoms minus revoked ones."""
        revoked, _ = self.split(patch)
        star = {e: set(self.a0[e]) for e in self.entities}
        for e, p in revoked:
            star[e].discard(p)
        return star

    def consistent(self, patch: Iterable[Op]) -> bool:
        """A repaired state must itself be a fixed point: a kept flow cannot hide an atom its
        source still holds (encoding clause C0b)."""
        patch = list(patch)
        star = self.state_after(patch)
        _, cut = self.split(patch)
        for f in self.relation_flows:
            if f.id in cut:
                continue
            if not star[f.src] <= star[f.sink]:
                return False
        return True

    def describe(self, op: Op) -> str:
        if op[0] == "revoke":
            return f"revoke {self.atoms[op[2]]} from {op[1]}"
        f = self.flow(op[1])
        return f"cut relation {f.src} -> {f.sink}"

    def name(self, entity: str) -> str:
        return self.names.get(entity, entity)


def _closure(holdings: dict[str, set], edges: list[tuple[str, str]]) -> None:
    changed = True
    while changed:
        changed = False
        for src, dst in edges:
            missing = holdings[src] - holdings[dst]
            if missing:
                holdings[dst] |= missing
                changed = True


def build_task(config: TacConfig, templates: list[Template] | None = None,
               protect_target: bool = True) -> RepairTask:
    templates = templates if templates is not None else load_templates()
    u = config.untrusted
    target = config.target

    initial, _ = instantiate_flows(config, templates)
    # Re-instantiate with no relations so pairs the engine skipped (because a relation already
    # opens them) come back as "shadow" flows: they become real attack moves once that relation
    # is cut. This is what keeps a "cut" repair honest.
    stripped = TacConfig(u, target, config.entities, config.assignments, [])
    _, everything = instantiate_flows(stripped, templates)
    rel_by_pair = {(f.src, f.sink): f.id for f in initial}

    # What every entity holds before the attacker acts.
    direct: dict[str, set[Perm]] = defaultdict(set)
    for entity, perms in config.assignments.items():
        direct[entity].update(perms)
    direct[ANY_POLICY_ID].add(ADMIN)
    _closure(direct, [(f.src, f.sink) for f in initial])

    # Entities that can reach u through any flow, enabled or locked.
    rev: dict[str, set[str]] = defaultdict(set)
    for f in initial:
        rev[f.sink].add(f.src)
    for f in everything:
        rev[f.sink].add(f.src)
    reach = {u}
    stack = [u]
    while stack:
        x = stack.pop()
        for s in rev[x]:
            if s not in reach:
                reach.add(s)
                stack.append(s)

    locked_raw = [f for f in everything if f.sink in reach]
    rel_raw = [f for f in initial if f.sink in reach]

    # Atoms that can matter: those covering the target or some op of a surviving flow.
    all_ops = [op for f in locked_raw for op in f.ops]
    atoms_all = {p for e in reach for p in direct[e]}
    atoms = sorted((q for q in atoms_all
                    if q.covers(target) or any(q.covers(op) for op in all_ops)), key=str)
    index = {q: i for i, q in enumerate(atoms)}
    cover_cache: dict[Perm, tuple[int, ...]] = {}

    def cover(op: Perm) -> tuple[int, ...]:
        if op not in cover_cache:
            cover_cache[op] = tuple(i for i, q in enumerate(atoms) if q.covers(op))
        return cover_cache[op]

    flows: list[TFlow] = [TFlow(f.id, f.src, f.sink, False) for f in rel_raw]
    for f in locked_raw:
        covs = tuple(cover(op) for op in f.ops)
        alive = all(covs) if f.require == "all" else any(covs)
        if not alive:
            continue  # can never be unlocked by anything u could hold
        flows.append(TFlow(f.id, f.src, f.sink, True, f.require, covs,
                           rel_by_pair.get((f.src, f.sink)), f.template.id if f.template else None,
                           f.label))

    a0 = {e: frozenset(index[p] for p in direct[e] if p in index) for e in reach}

    # Over-approximate what each entity could ever hold; drop flows that can carry nothing.
    while True:
        may = {e: set(a0[e]) for e in reach}
        changed = True
        while changed:
            changed = False
            for f in flows:
                if not may[f.src] <= may[f.sink]:
                    may[f.sink] |= may[f.src]
                    changed = True
        kept = [f for f in flows if may[f.src]]
        if len(kept) == len(flows):
            break
        flows = kept

    entities = sorted({u} | {f.src for f in flows} | {f.sink for f in flows})
    names = {e: (config.entities[e].name if e in config.entities else "AnyPolicy") for e in entities}
    target_cover = tuple(i for i, q in enumerate(atoms) if q.covers(target))
    frozen: set[tuple[str, int]] = set()
    if ADMIN in index and ANY_POLICY_ID in entities:
        frozen.add((ANY_POLICY_ID, index[ADMIN]))      # virtual "attacker writes any policy" entity
    if protect_target:
        # Legitimate holders keep the target permission. Without this the cheapest "repair" is to
        # delete the target from its owner (the reference avoids it only via Type-II re-grants).
        frozen.update((e, p) for e in entities if e != u for p in target_cover if p in a0[e])
    return RepairTask(
        u=u, atoms=atoms, entities=entities, flows=flows,
        a0={e: a0[e] for e in entities},
        may={e: frozenset(may[e]) for e in entities},
        target_cover=target_cover,
        frozen=frozenset(frozen), names=names,
    )
