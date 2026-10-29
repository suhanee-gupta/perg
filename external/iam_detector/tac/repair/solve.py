"""Weighted partial MaxSAT backends (SPEC §14.7).

    rc2    python-sat's RC2 core-guided solver      (pip install python-sat)   <- recommended
    milp   scipy.optimize.milp (HiGHS) on the same clauses   (pip install scipy)

`auto` picks rc2, then milp. If neither is installed, `solve` reports `unavailable` and the
caller falls back to the greedy repair.
"""

from __future__ import annotations

from dataclasses import dataclass

from .encode import Cnf


@dataclass
class SolveResult:
    status: str                    # optimal | feasible | unsat | unavailable
    model: dict[int, bool] | None = None
    backend: str = ""
    message: str = ""


def available_backends() -> list[str]:
    found = []
    try:
        import pysat.examples.rc2  # noqa: F401
        found.append("rc2")
    except Exception:
        pass
    try:
        import scipy.optimize  # noqa: F401
        if hasattr(scipy.optimize, "milp"):
            found.append("milp")
    except Exception:
        pass
    return found


def solve(cnf: Cnf, backend: str = "auto", timeout: float | None = None) -> SolveResult:
    if cnf.unsat:
        return SolveResult("unsat", backend=backend, message="hard clauses are contradictory")
    have = available_backends()
    if backend == "auto":
        backend = have[0] if have else "none"
    if backend not in have:
        return SolveResult("unavailable", backend=backend,
                           message="no MaxSAT backend installed (pip install python-sat)")
    return _rc2(cnf) if backend == "rc2" else _milp(cnf, timeout)


def _rc2(cnf: Cnf) -> SolveResult:
    from pysat.examples.rc2 import RC2
    from pysat.formula import WCNF

    w = WCNF()
    for c in cnf.hard:
        w.append(c)
    for lit, wt in cnf.soft:
        w.append([lit], weight=wt)
    with RC2(w) as solver:
        model = solver.compute()
    if model is None:
        return SolveResult("unsat", backend="rc2")
    return SolveResult("optimal", {abs(l): l > 0 for l in model}, "rc2")


def _milp(cnf: Cnf, timeout: float | None) -> SolveResult:
    import numpy as np
    from scipy.optimize import Bounds, LinearConstraint, milp
    from scipy.sparse import coo_matrix

    n = max(cnf.nvars, 1)
    rows, cols, vals, lb = [], [], [], []
    for r, clause in enumerate(cnf.hard):
        negs = 0
        for lit in clause:
            rows.append(r)
            cols.append(abs(lit) - 1)
            vals.append(1 if lit > 0 else -1)
            negs += lit < 0
        lb.append(1 - negs)
    cost = np.zeros(n)
    for lit, wt in cnf.soft:       # minimise the weight of violated soft clauses
        if lit > 0:
            cost[lit - 1] -= wt
        else:
            cost[-lit - 1] += wt
    constraints = []
    if cnf.hard:
        a = coo_matrix((vals, (rows, cols)), shape=(len(cnf.hard), n)).tocsr()
        constraints.append(LinearConstraint(a, np.array(lb, dtype=float), np.inf))
    options = {"disp": False}
    if timeout:
        options["time_limit"] = float(timeout)
    res = milp(cost, constraints=constraints, integrality=np.ones(n), bounds=Bounds(0, 1), options=options)
    if res.x is None:
        return SolveResult("unsat" if res.status == 2 else "unavailable", backend="milp", message=res.message)
    model = {i + 1: bool(round(v)) for i, v in enumerate(res.x)}
    return SolveResult("optimal" if res.status == 0 else "feasible", model, "milp", res.message)
