"""Patch -> patched v2 config (SPEC §14.8, paper §VI).

The patch lives on the semantic state (what each entity effectively holds). The config is relational,
so we realise the repaired state exactly, over ALL permissions (not just the attack-relevant ones):

  1. delete cut relations;
  2. delete revoked atoms from the entities' direct assignments;
  3. for every permission an entity legitimately held that it would no longer receive (it arrived
     through a cut relation), assign it to that entity directly.

Step 3 is the "remove User B from Group B, then assign Perm D to User B" move of the paper's Figure 1e.
Guarantee (tested): for every entity, holdings after = holdings before - exactly the revoked pairs.
In v2 configs any entity may hold assignments directly, so no intermediate Role is needed.
"""

from __future__ import annotations

import copy
from collections import defaultdict
from typing import Iterable

from ..model import Perm, TacConfig
from .task import Op, RepairTask, _closure


def baseline_holdings(config: TacConfig, relations: Iterable[tuple[str, str]] | None = None) -> dict[str, set[Perm]]:
    """What every entity holds with no attacker acting: direct assignments closed over relations."""
    held: dict[str, set[Perm]] = defaultdict(set)
    for e in config.entities:
        held[e] = set(config.assignments.get(e, []))
    _closure(held, list(dict.fromkeys(config.relations if relations is None else relations)))
    return held


def apply_patch(root: dict, config: TacConfig, task: RepairTask, patch: Iterable[Op]) -> dict:
    patch = list(patch)
    revoked, cut = task.split(patch)
    cut_pairs = {(f.src, f.sink) for f in task.relation_flows if f.id in cut}
    gone: dict[str, set[Perm]] = defaultdict(set)
    for e, p in revoked:
        gone[e].add(task.atoms[p])

    before = baseline_holdings(config)
    wanted = {e: before[e] - gone[e] for e in config.entities}          # the repaired state
    kept = [r for r in dict.fromkeys(config.relations) if r not in cut_pairs]

    direct = {e: set(config.assignments.get(e, [])) - gone[e] for e in config.entities}
    while True:
        held = {e: set(s) for e, s in direct.items()}
        _closure(held, kept)
        missing = {e: wanted[e] - held[e] for e in config.entities if wanted[e] - held[e]}
        if not missing:
            break
        for e, perms in missing.items():
            direct[e] |= perms

    out = copy.deepcopy(root)
    out["relations"] = [r for r in out.get("relations", []) if (r["from"], r["to"]) not in cut_pairs]
    assignments = out.setdefault("assignments", {})
    for e in config.entities:
        current = [p for p in assignments.get(e, []) if p not in {str(x) for x in gone[e]}]
        for perm in sorted(direct[e], key=str):
            if str(perm) not in current:
                current.append(str(perm))
        if current or e in assignments:
            assignments[e] = current
    return out
