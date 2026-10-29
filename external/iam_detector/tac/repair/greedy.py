"""Solver-free fallback: reverse-delete (SPEC §14.6).

Start from the patch that revokes/cuts everything allowed, then try to un-revoke each op in turn,
keeping the un-revoke whenever the repaired state is still consistent and still safe. Repeats until
no single op can be dropped. The result is 1-minimal (no single op can be removed), NOT guaranteed
minimum-cardinality.
"""

from __future__ import annotations

from .fpi import simulate
from .task import Op, RepairTask


def feasible(task: RepairTask, patch: set[Op]) -> bool:
    return task.consistent(patch) and not simulate(task, patch).unsafe


def greedy_patch(task: RepairTask, allowed: set[Op] | None = None) -> set[Op] | None:
    revokes, cuts = task.revoke_ops(), task.cut_ops()
    order = [op for op in revokes + cuts if allowed is None or op in allowed]
    patch = set(order)
    if not feasible(task, patch):
        return None
    changed = True
    while changed:
        changed = False
        for op in order:                      # revokes first: they cost the most collateral
            if op in patch and feasible(task, patch - {op}):
                patch.discard(op)
                changed = True
    return patch
