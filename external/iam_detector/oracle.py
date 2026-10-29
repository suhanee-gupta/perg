"""Greybox oracle: the simulated customer in TAC's interactive greybox loop.

Reference: Hu, Wang, Khurshid, Tiwari, "TAC: Hybrid IAM Privilege Escalation
Detection", arXiv 2304.14540. Section numbers are from v8 (Mar 2026); older
versions number them differently. Sec. 5.1.1: partial PFG, visible flows and
visible permission space. Sec. 5.2: query space Q and customer response O.
Figure 4: worked example. Sec. 7: evaluation setup (customer response simulator).

A query is ONE entity-permission pair: "does visible entity e hold permission p?"
That is exactly one entity-permission edge of the partial PFG whose state is '?'.
The oracle answers from the hidden full configuration. It never answers the final
question "is there a privilege escalation?", and flow states are never queried
(the detector infers them from the answers).

Paper semantics implemented here:
  * query space   Q = E_vis x P_vis        (public information only)
  * response      O(e, p) in {TRUE, FALSE, UNKNOWN}; UNKNOWN = customer declined
  * query budget  every delivered query costs one interaction (declined and
                  repeated queries included)
  * simulator     a random subset of Q is "accepted"; everything else is declined

Place at iam_detector/greybox/oracle.py.
"""
from __future__ import annotations

import random
from dataclasses import dataclass
from enum import Enum

from ..tac.model import ANY_POLICY_ID, ANY_POLICY_TYPE, Perm, TacConfig, load_tac_config, parse_perm
from ..tac.templates import Template, load_templates


class Answer(Enum):
    TRUE = "true"          # accepted, and the entity holds the permission
    FALSE = "false"        # accepted, and it does not
    UNKNOWN = "unknown"    # the customer declined to answer


class BudgetExhausted(Exception):
    """A query was asked after the query budget was spent."""


class InvalidQuery(ValueError):
    """The query is outside the query space (hidden entity or irrelevant permission)."""


@dataclass(frozen=True)
class Query:
    entity: str
    perm: Perm

    @classmethod
    def of(cls, entity: str, perm: "Perm | str") -> "Query":
        return cls(entity, perm if isinstance(perm, Perm) else parse_perm(perm, "query"))

    def __str__(self) -> str:
        return f"({self.entity}, {self.perm})"


def query_space(visible_types: dict[str, str], untrusted: str, target: Perm,
                templates: list[Template]) -> list[Query]:
    """Q = E_vis x P_vis, computed from PUBLIC information only.

    `visible_types` maps each visible entity id to its type. P_vis is the target
    plus every permission a template can require between visible entities. It never
    looks at hidden assignments or relations, so it cannot leak them.

    Deliberate deviation from the paper: the paper instantiates a flow between every
    type-compatible pair of visible entities. Here, templates whose sink is "actor"
    only end at the untrusted entity (the same rule as engine.instantiate_flows), so
    Q is smaller than the paper's. A test pins this behaviour.
    """
    def type_of(e: str) -> str:
        return ANY_POLICY_TYPE if e == ANY_POLICY_ID else visible_types[e]

    perms = {target}
    sources = list(visible_types) + [ANY_POLICY_ID]       # engine's built-in pseudo-entity
    for t in templates:
        srcs = [s for s in sources if type_of(s) in t.src_types]
        if t.sink == "actor":                              # same rule as engine.instantiate_flows
            sinks = [untrusted] if visible_types[untrusted] in t.sink_types else []
        else:
            sinks = [e for e in visible_types if visible_types[e] in t.sink_types]
        for s in srcs:
            for k in sinks:
                if s == k:
                    continue
                for op in t.ops:
                    res = s if op.on == "src" else k if op.on == "sink" else "*"
                    if res != ANY_POLICY_ID:               # the pseudo-entity is never assigned
                        perms.add(Perm(op.action, res))
    return [Query(e, p) for e in visible_types for p in sorted(perms)]


def _holdings(config: TacConfig, effective: bool) -> dict[str, set[Perm]]:
    held = {e: set(config.assignments.get(e, ())) for e in config.entities}
    if effective:                      # fold in the flows that are already enabled
        changed = True
        while changed:
            changed = False
            for src, dst in config.relations:
                missing = held[src] - held[dst]
                if missing:
                    held[dst] |= missing
                    changed = True
    return held


class Oracle:
    """Answers entity-permission queries from the hidden full configuration.

    Args:
        config:           the full (hidden) configuration.
        templates:        flow templates; they define which permissions are relevant.
        visible:          ids of entities the customer exposes (None = all). The
                          untrusted entity is always visible. Chosen by the masking step.
        accept_fraction:  share of Q the simulated customer is willing to answer.
        accepted:         explicit accepted queries (overrides accept_fraction).
        budget:           max number of queries (None = unlimited).
        seed:             makes the accepted subset reproducible.
        effective:        True  = answer with effective permissions (direct + inherited
                                  through flows that are already enabled), as in the
                                  paper's Figure 4 walk-through.
                          False = direct assignments only.
    """

    def __init__(self, config: TacConfig, templates: list[Template], *,
                 visible=None, accept_fraction: float = 1.0, accepted=None,
                 budget: int | None = None, seed: int = 0, effective: bool = True):
        if not 0.0 <= accept_fraction <= 1.0:
            raise ValueError("accept_fraction must be in [0, 1]")
        vis = set(config.entities) if visible is None else set(visible)
        if vis - set(config.entities):
            raise ValueError(f"unknown visible entities: {sorted(vis - set(config.entities))}")
        vis.add(config.untrusted)

        # ---- public view: what the detector is allowed to know ----
        self.untrusted: str = config.untrusted
        self.target: Perm = config.target
        self.visible_types: dict[str, str] = {e: x.type for e, x in config.entities.items() if e in vis}
        self.query_space: list[Query] = query_space(self.visible_types, self.untrusted,
                                                    self.target, templates)
        self.budget = budget
        self.log: list[tuple[Query, Answer]] = []

        # ---- hidden state ----
        self._space = set(self.query_space)
        self._held = _holdings(config, effective)
        if accepted is not None:
            self._accepted = set(accepted)
            if self._accepted - self._space:
                raise ValueError("accepted contains queries outside the query space")
        else:
            k = round(accept_fraction * len(self.query_space))
            self._accepted = set(random.Random(seed).sample(self.query_space, k))

    @classmethod
    def from_file(cls, path: str, templates: list[Template] | None = None, **kw) -> "Oracle":
        return cls(load_tac_config(path), load_templates() if templates is None else templates, **kw)

    @property
    def queries_used(self) -> int:
        return len(self.log)

    @property
    def remaining(self) -> int | None:
        return None if self.budget is None else self.budget - self.queries_used

    def ask(self, q: Query) -> Answer:
        if not isinstance(q, Query):
            raise InvalidQuery(f"expected a Query, got {type(q).__name__}")
        if q not in self._space:
            raise InvalidQuery(f"{q} is outside the query space")
        if self.budget is not None and self.queries_used >= self.budget:
            raise BudgetExhausted(f"query budget of {self.budget} is spent")
        if q not in self._accepted:
            ans = Answer.UNKNOWN
        else:
            ans = Answer.TRUE if any(h.covers(q.perm) for h in self._held[q.entity]) else Answer.FALSE
        self.log.append((q, ans))
        return ans

    def reset(self, budget: int | None = None) -> None:
        """Start a new episode/round: clear the log (and optionally set a new budget)."""
        self.log.clear()
        if budget is not None:
            self.budget = budget


if __name__ == "__main__":
    # Demo only.  usage: python -m iam_detector.greybox.oracle CONFIG.json [VISIBLE_FRACTION]
    # The visible subset here is a crude random sample; choosing it is the masking step's job.
    import sys
    cfg = load_tac_config(sys.argv[1])
    frac = float(sys.argv[2]) if len(sys.argv) > 2 else 1.0
    ids = list(cfg.entities)
    vis = set(random.Random(0).sample(ids, max(1, round(frac * len(ids))))) | {cfg.untrusted}
    o = Oracle(cfg, load_templates(), visible=vis, budget=10)
    print(f"untrusted={o.untrusted}  target={o.target}")
    print(f"visible entities={len(o.visible_types)}  |query space|={len(o.query_space)}")
    for q in (Query(o.untrusted, o.target), *o.query_space[:4]):
        print(f"  ask {q} -> {o.ask(q).value}   [{o.queries_used} used, {o.remaining} left]")