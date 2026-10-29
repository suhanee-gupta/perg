"""BMC weighted partial MaxSAT encoding of the repair problem (SPEC §14.5).

Follows the reference IAMPERE `maxsat.py`:

  * one copy of the state variables per BMC step (states 0 .. B-1, transitions 0 .. B-2)
  * a per-transition switch m[i]: PT ("attacker applies permissions") or FT ("propagate")
  * step-type rules that force propagation to a local fixpoint before the next PT
  * "nothing appears from nowhere" rules, so the solver cannot invent permissions
  * soft clauses: keep each held permission / enabled flow (every false switch = one revoke)
  * hard goal: the untrusted entity never holds the target

Differences from the reference, both forced by this project's engine:
  * no Type-II permissions (every attack step is a locked-flow unlock)
  * a locked flow is triggered by u holding ANY / ALL of its ops, each op met by any covering atom
  * "shadow" flows: cutting a relation re-creates it as an attack move (see task.build_task)

Constants are folded away at encode time (a permission an entity can never hold is the constant
False), which is what keeps the formula small.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Iterable

from .task import Op, RepairTask, TFlow


class _Const:
    def __init__(self, value: bool):
        self.value = value

    def __repr__(self) -> str:
        return "T" if self.value else "F"


T = _Const(True)
F = _Const(False)


def neg(x):
    if x is T:
        return F
    if x is F:
        return T
    return -x


@dataclass
class Cnf:
    hard: list[list[int]] = field(default_factory=list)
    soft: list[tuple[int, int]] = field(default_factory=list)  # (literal, weight)
    nvars: int = 0
    unsat: bool = False  # an empty hard clause was produced

    def new_var(self) -> int:
        self.nvars += 1
        return self.nvars

    def clause(self, *lits) -> None:
        out = []
        for x in lits:
            if x is T:
                return
            if x is F:
                continue
            out.append(x)
        if not out:
            self.unsat = True
            return
        self.hard.append(out)


class Encoder:
    def __init__(self, task: RepairTask, bound: int, candidates: set[Op] | None = None,
                 weights: str = "collateral", prune: bool = True):
        if bound < 1:
            raise ValueError("bound must be at least 1")
        if weights not in ("collateral", "uniform"):
            raise ValueError("weights must be 'collateral' or 'uniform'")
        self.task = task
        self.B = bound
        self.candidates = candidates
        self.weights = weights
        self.cnf = Cnf()
        self.ops_vars: dict[Op, int] = {}
        n_atoms = len(task.atoms)
        self.may = task.may if prune else {e: frozenset(range(n_atoms)) for e in task.entities}
        self._a: dict[tuple, object] = {}
        self._w: dict[tuple, object] = {}
        self._m: dict[int, object] = {}
        self._gates: dict[tuple, object] = {}
        self._into: dict[str, list[TFlow]] = {e: [] for e in task.entities}
        for f in task.flows:
            self._into[f.sink].append(f)
        self._init_state0()

    # ---- state 0: the soft "keep" switches --------------------------------------------
    def _restricted(self, op: Op) -> bool:
        return self.candidates is not None and op not in self.candidates

    def _init_state0(self) -> None:
        t = self.task
        for e in t.entities:
            for p in self.may[e]:
                if p not in t.a0[e]:
                    self._a[(0, e, p)] = F
                    continue
                op = ("revoke", e, p)
                if (e, p) in t.frozen or self._restricted(op):
                    self._a[(0, e, p)] = T
                else:
                    v = self.cnf.new_var()
                    self._a[(0, e, p)] = v
                    self.ops_vars[op] = v
        for f in t.flows:
            if f.locked:
                self._w[(0, f.id)] = F
                continue
            op = ("cut", f.id)
            if self._restricted(op):
                self._w[(0, f.id)] = T
            else:
                v = self.cnf.new_var()
                self._w[(0, f.id)] = v
                self.ops_vars[op] = v

    # ---- literal accessors ------------------------------------------------------------
    def a(self, i: int, e: str, p: int):
        if p not in self.may[e]:
            return F
        key = (i, e, p)
        if key not in self._a:
            self._a[key] = self.cnf.new_var()
        return self._a[key]

    def w(self, i: int, f: TFlow):
        key = (i, f.id)
        if key not in self._w:
            self._w[key] = self.cnf.new_var()
        return self._w[key]

    def m(self, i: int):
        if i == 0:
            return T  # the first transition is a PT step
        if i not in self._m:
            self._m[i] = self.cnf.new_var()
        return self._m[i]

    # ---- gates (Tseitin, with constant folding and memoisation) --------------------------
    def AND(self, *lits):
        flat = []
        for x in lits:
            if x is F:
                return F
            if x is T:
                continue
            flat.append(x)
        flat = sorted(set(flat))
        if not flat:
            return T
        if len(flat) == 1:
            return flat[0]
        key = ("and", tuple(flat))
        if key not in self._gates:
            v = self.cnf.new_var()
            for x in flat:
                self.cnf.clause(-v, x)
            self.cnf.clause(v, *[-x for x in flat])
            self._gates[key] = v
        return self._gates[key]

    def OR(self, *lits):
        flat = []
        for x in lits:
            if x is T:
                return T
            if x is F:
                continue
            flat.append(x)
        flat = sorted(set(flat))
        if not flat:
            return F
        if len(flat) == 1:
            return flat[0]
        key = ("or", tuple(flat))
        if key not in self._gates:
            v = self.cnf.new_var()
            self.cnf.clause(-v, *flat)
            for x in flat:
                self.cnf.clause(v, -x)
            self._gates[key] = v
        return self._gates[key]

    # ---- derived literals ---------------------------------------------------------------
    def holds_op(self, i: int, cover: tuple[int, ...]):
        """u holds some atom covering this op at state i."""
        return self.OR(*[self.a(i, self.task.u, q) for q in cover])

    def trigger(self, i: int, f: TFlow):
        """Locked flow f can be unlocked by u at state i."""
        key = ("t", i, f.id)
        if key not in self._gates:
            hs = [self.holds_op(i, cov) for cov in f.ops]
            base = self.AND(*hs) if f.require == "all" else self.OR(*hs)
            if f.cut_of is not None:  # shadow flow: only exists once its relation is cut
                base = self.AND(base, neg(self._w[(0, f.cut_of)]))
            self._gates[key] = base
        return self._gates[key]

    def offered(self, i: int, f: TFlow, p: int):
        """Source of f currently offers atom p through an enabled f."""
        return self.AND(self.w(i, f), self.a(i, f.src, p))

    def new_atom(self, i: int, e: str, p: int):
        """p is new at e in transition i (the reference's y variable)."""
        return self.AND(neg(self.a(i, e, p)), self.a(i + 1, e, p))

    # ---- the formula --------------------------------------------------------------------
    def build(self) -> Cnf:
        t, B, cnf = self.task, self.B, self.cnf

        # C0b: the repaired start state must itself be a fixed point.
        for f in t.relation_flows:
            for p in self.may[f.src]:
                cnf.clause(neg(self._w[(0, f.id)]), neg(self.a(0, f.src, p)), self.a(0, f.sink, p))

        # C6: the untrusted entity never holds the target.
        for i in range(B):
            for q in t.target_cover:
                cnf.clause(neg(self.a(i, t.u, q)))

        for i in range(B - 1):
            self._transition(i)

        ops = list(self.ops_vars)
        big = len(ops) + 1
        for op in ops:
            if self.weights == "uniform":
                wt = 1
            else:  # collateral: same op count first, then fewer lost permissions
                wt = big if op[0] == "cut" else big + 1
            cnf.soft.append((self.ops_vars[op], wt))
        return cnf

    def _transition(self, i: int) -> None:
        t, B, cnf = self.task, self.B, self.cnf
        mi = self.m(i)

        # C2: persistence.
        for e in t.entities:
            for p in self.may[e]:
                cnf.clause(neg(self.a(i, e, p)), self.a(i + 1, e, p))
        for f in t.flows:
            cnf.clause(neg(self.w(i, f)), self.w(i + 1, f))

        # C3: PT step. Only u acts, and the only effect is unlocking flows.
        for f in t.flows:
            trig = self.trigger(i, f) if f.locked else F
            if f.locked:
                cnf.clause(neg(mi), neg(trig), self.w(i + 1, f))
            cnf.clause(neg(mi), neg(self.w(i + 1, f)), self.w(i, f), trig)
        for e in t.entities:
            for p in self.may[e]:
                cnf.clause(neg(mi), neg(self.a(i + 1, e, p)), self.a(i, e, p))

        # C4: FT step. One synchronous hop along enabled flows.
        for f in t.flows:
            for p in self.may[f.src]:
                cnf.clause(mi, neg(self.w(i, f)), neg(self.a(i, f.src, p)), self.a(i + 1, f.sink, p))
            cnf.clause(mi, neg(self.w(i + 1, f)), self.w(i, f))
        for e in t.entities:
            for p in self.may[e]:
                sup = [self.offered(i, f, p) for f in self._into[e] if p in self.may[f.src]]
                cnf.clause(mi, neg(self.a(i + 1, e, p)), self.a(i, e, p), *sup)

        # C1: step-type discipline (PT, FT while progressing, an idle FT, PT, ...).
        if i + 1 <= B - 2:
            mn = self.m(i + 1)
            cnf.clause(neg(mi), neg(mn))
            ys = []
            for e in t.entities:
                for p in self.may[e]:
                    y = self.new_atom(i, e, p)
                    ys.append(y)
                    cnf.clause(neg(y), mi, neg(mn))
            cnf.clause(mi, mn, *ys)

    # ---- decoding -----------------------------------------------------------------------
    def decode(self, model: dict[int, bool]) -> set[Op]:
        """The patch: every op whose keep-switch is false in the model."""
        return {op for op, v in self.ops_vars.items() if not model.get(v, True)}
