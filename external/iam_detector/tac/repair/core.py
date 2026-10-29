"""Repair driver: the paper's Algorithm 1 (BMC MaxSAT + fixed-point verification loop), SPEC §14.6.

    relax (engine)  -> is there an escalation at all?
    build_task      -> RepairTask
    fpi.simulate    -> BMC bound B
    loop:  Encoder(B) -> MaxSAT -> patch -> simulate(patched)
           still unsafe?  raise B and repeat
    translate       -> patched v2 config
    relax (engine)  -> must find NO escalation   (independent final check)
"""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Any

from ..engine import relax
from ..model import TacConfig, build_tac_config
from ..templates import Template, load_templates
from .encode import Encoder
from .fpi import simulate
from .greedy import greedy_patch
from .prune import attack_slice
from .solve import available_backends, solve
from .task import Op, RepairTask, build_task
from .translate import apply_patch


class RepairError(Exception):
    """Something that should never happen did (encoder/engine disagreement, failed verification)."""


class Unrepairable(RepairError):
    """No patch exists under the current restrictions (e.g. protected target)."""


@dataclass
class RepairOutcome:
    config: TacConfig
    escalation: bool
    task: RepairTask | None = None
    patch: list[Op] = field(default_factory=list)
    exact: bool = False            # proven minimum under the op model (full problem, optimal solve)
    solver: str = ""
    iterations: list[dict] = field(default_factory=list)
    patched_root: dict | None = None
    attack_pairs: set = field(default_factory=set)
    notes: list[str] = field(default_factory=list)

    @property
    def revoked(self) -> list[tuple[str, int]]:
        return sorted(self.task.split(self.patch)[0]) if self.task else []

    @property
    def cut(self) -> list[str]:
        return sorted(self.task.split(self.patch)[1]) if self.task else []


def repair_config(root: Any, templates: list[Template] | None = None, *,
                  untrusted: str | None = None, target: str | None = None,
                  solver: str = "auto", candidates: str = "all", weights: str = "collateral",
                  protect_target: bool = True, timeout: float | None = None,
                  max_iters: int = 30) -> RepairOutcome:
    templates = templates if templates is not None else load_templates()
    config = build_tac_config(root, untrusted, target)
    result = relax(config, templates)
    if not result.found:
        return RepairOutcome(config, escalation=False)

    task = build_task(config, templates, protect_target=protect_target)
    sim = simulate(task)
    if not sim.unsafe:
        raise RepairError("engine found an escalation but the repair model did not; "
                          "this is a bug in build_task")
    slice_ops, attack_pairs = attack_slice(task, result)
    out = RepairOutcome(config, escalation=True, task=task, attack_pairs=attack_pairs)
    cand: set[Op] | None = slice_ops if candidates == "slice" else None

    backend = solver
    if solver != "greedy":
        have = available_backends()
        if solver == "auto":
            backend = have[0] if have else "greedy"
        elif solver not in have:
            raise RepairError(f"solver '{solver}' is not installed (available: {have or 'none'})")
        if backend == "greedy":
            out.notes.append("no MaxSAT backend installed (pip install python-sat); "
                             "used the greedy fallback, so the patch is 1-minimal, not proven minimum")

    if backend == "greedy":
        patch = greedy_patch(task, cand)
        if patch is None and cand is not None:
            out.notes.append("candidate slice was insufficient; retried on the full problem")
            cand = None
            patch = greedy_patch(task, None)
        if patch is None:
            raise Unrepairable("no safe patch exists (try --allow-target-revoke)")
        out.solver, out.patch = "greedy", sorted(patch, key=str)
        out.iterations.append({"bound": sim.states, "size": len(patch), "safe": True})
    else:
        bound, optimal, used = sim.states, False, cand
        for _ in range(max_iters):
            enc = Encoder(task, bound, used, weights)
            cnf = enc.build()
            sr = solve(cnf, backend, timeout)
            if sr.status == "unsat":
                if used is not None:
                    out.notes.append("candidate slice was insufficient; retried on the full problem")
                    used = None
                    continue
                raise Unrepairable("no safe patch exists (try --allow-target-revoke)")
            if sr.status == "unavailable":
                raise RepairError(sr.message or "solver unavailable")
            patch = enc.decode(sr.model)
            optimal = sr.status == "optimal"
            sim2 = simulate(task, patch)
            out.iterations.append({"bound": bound, "size": len(patch), "safe": not sim2.unsafe,
                                   "vars": cnf.nvars, "hard": len(cnf.hard)})
            if not sim2.unsafe:
                break
            if sim2.states <= bound:
                raise RepairError(f"encoder and fixed-point check disagree at bound {bound}")
            bound = max(bound + 1, sim2.states)
        else:
            raise RepairError(f"no convergence after {max_iters} bound increases")
        out.solver = sr.backend
        out.patch = sorted(patch, key=str)
        out.exact = optimal and used is None
        if not optimal:
            out.notes.append("solver stopped before proving optimality")

    patched = apply_patch(root, config, task, out.patch)
    if untrusted is not None:
        patched["untrusted"] = config.untrusted
    if target is not None:
        patched["target"] = str(config.target)
    again = relax(build_tac_config(patched, untrusted, target), templates)
    if again.found:
        raise RepairError("the engine still finds an escalation after the patch was applied "
                          f"({[s.flow.id for s in again.witness]}); this is a bug")
    out.patched_root = patched
    return out
