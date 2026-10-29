"""Candidate pruning (SPEC §14.14 R7): the backward slice of the attack.

IAMPERE restricts MaxSAT to an "intermediate patch" predicted by a GNN. Here the same role is played
by the facts that take part in ANY derivation of the target, which the engine already records. Every
op outside the slice is held fixed, shrinking the formula.

The slice does not know about attacks that only appear after a repair (e.g. a cut relation turning
into a shadow flow), so the caller falls back to the full problem if the restricted one is
unsatisfiable or fails verification.
"""

from __future__ import annotations

from ..engine import Enabled, Has, Result
from .task import Op, RepairTask


def attack_slice(task: RepairTask, result: Result) -> tuple[set[Op], set[tuple[str, int]]]:
    """Returns (candidate ops, the (entity, atom) pairs that appear in some attack derivation)."""
    index = {q: i for i, q in enumerate(task.atoms)}
    target = result.config.target
    stack = [f for f in result.plans
             if isinstance(f, Has) and f.entity == task.u and f.perm.covers(target)]
    seen = set()
    while stack:
        fact = stack.pop()
        if fact in seen:
            continue
        seen.add(fact)
        for d in result.derivations.get(fact, ()):
            stack.extend(d.premises)

    rel_ids = {f.id for f in task.relation_flows}
    ops: set[Op] = set()
    pairs: set[tuple[str, int]] = set()
    for fact in seen:
        if isinstance(fact, Has):
            p = index.get(fact.perm)
            if p is not None and fact.entity in task.a0 and p in task.a0[fact.entity]:
                pairs.add((fact.entity, p))
                if (fact.entity, p) not in task.frozen:
                    ops.add(("revoke", fact.entity, p))
        elif isinstance(fact, Enabled) and fact.flow in rel_ids:
            ops.add(("cut", fact.flow))
    return ops, pairs
