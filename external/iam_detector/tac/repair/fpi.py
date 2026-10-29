"""Fixed-point verifier on a RepairTask (the paper's `fpi_verify.py`, SPEC §14.6).

It runs the SAME step discipline the MaxSAT encoding unrolls:

    PT step  the attacker applies every permission it now holds: all unlockable flows open
    FT step  one synchronous hop of propagation along enabled flows
    FT steps repeat while they make progress; the first idle FT hands control back to PT

`states` is the number of BMC states needed: if the target is reached at state index s, a
bounded check needs `s + 1` states to see it.
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Iterable

from .task import Op, RepairTask, TFlow


@dataclass(frozen=True)
class SimResult:
    unsafe: bool
    states: int


def triggered(flow: TFlow, held: set[int]) -> bool:
    hit = [any(a in held for a in cov) for cov in flow.ops]
    return all(hit) if flow.require == "all" else any(hit)


def simulate(task: RepairTask, patch: Iterable[Op] = ()) -> SimResult:
    patch = list(patch)
    star = task.state_after(patch)
    _, cut = task.split(patch)
    goal = set(task.target_cover)
    u = task.u

    enabled = {f.id for f in task.relation_flows if f.id not in cut}
    edges = {f.id: (f.src, f.sink) for f in task.flows}
    locked = [f for f in task.locked_flows if f.cut_of is None or f.cut_of in cut]

    idx = 0
    if star[u] & goal:
        return SimResult(True, 1)
    while True:
        newly = [f for f in locked if f.id not in enabled and triggered(f, star[u])]
        enabled.update(f.id for f in newly)
        idx += 1                                   # PT transition
        progressed = bool(newly)
        while True:
            add: dict[str, set[int]] = {}
            for fid in enabled:
                s, k = edges[fid]
                new = star[s] - star[k]
                if new:
                    add.setdefault(k, set()).update(new)
            for e, atoms in add.items():
                star[e] |= atoms
            idx += 1                               # FT transition
            if star[u] & goal:
                return SimResult(True, idx + 1)
            if not add:
                break
            progressed = True
        if not progressed:
            return SimResult(False, idx + 1)
