"""Thin interface over the team's vendored code in external/ (see external/SOURCE.md).

My own code imports only from this module. Nothing in external/ is modified; adaptations live here.

    e = load_config("arifen-15ocxf")            # dataset name (external/data/) or a path to TAC JSON
    o = e.make_oracle(budget=100)              # A's view: entity-permission queries
    o.ask(Query.of("user:ext-raj.singh", "*@*"))
    e.reachable().found                         # whitebox check on the full (hidden) config
    e2 = e.remove(relations=[("group:contractors", "user:ext-raj.singh")])   # B's cut -> new Env

An "edge" B can remove is either a relation (src -> dst, permissions flow along it) or a direct
assignment (entity holds `action@resource`). Removals return a new Env; the original is untouched.
"""
from __future__ import annotations

import dataclasses
import importlib.util
import sys
import types
from pathlib import Path
from typing import Iterable

EXTERNAL = Path(__file__).resolve().parent / "external"
DATA_DIR = EXTERNAL / "data"
if str(EXTERNAL) not in sys.path:
    sys.path.insert(0, str(EXTERNAL))

from iam_detector.tac.engine import Result, WitnessStep, enumerate_paths, relax  # noqa: E402
from iam_detector.tac.model import ADMIN, Perm, TacConfig, load_tac_config, parse_perm  # noqa: E402
from iam_detector.tac.templates import Template, load_templates  # noqa: E402


def _load_oracle_module():
    """external/iam_detector/oracle.py uses `from ..tac...` and expects to be
    iam_detector/greybox/oracle.py; a plain import fails. Load it under that name instead."""
    name = "iam_detector.greybox.oracle"
    if name in sys.modules:
        return sys.modules[name]
    if "iam_detector.greybox" not in sys.modules:
        pkg = types.ModuleType("iam_detector.greybox")
        pkg.__path__ = []
        sys.modules["iam_detector.greybox"] = pkg
    spec = importlib.util.spec_from_file_location(name, EXTERNAL / "iam_detector" / "oracle.py")
    mod = importlib.util.module_from_spec(spec)
    sys.modules[name] = mod
    spec.loader.exec_module(mod)
    return mod


_oracle = _load_oracle_module()
Oracle = _oracle.Oracle
Query = _oracle.Query
Answer = _oracle.Answer
BudgetExhausted = _oracle.BudgetExhausted
InvalidQuery = _oracle.InvalidQuery

_TEMPLATES: list[Template] | None = None


def templates() -> list[Template]:
    global _TEMPLATES
    if _TEMPLATES is None:
        _TEMPLATES = load_templates()
    return _TEMPLATES


def _as_perm(p: Perm | str) -> Perm:
    return p if isinstance(p, Perm) else parse_perm(p, "perm")


class Env:
    """One loaded config: the hidden full graph plus helpers for querying, checking and cutting."""

    def __init__(self, config: TacConfig, name: str = ""):
        self.config = config
        self.name = name
        self._reach: dict[str, Result] = {}

    # ---------------------------------------------------------------- view of the config
    @property
    def untrusted(self) -> str:
        return self.config.untrusted

    @property
    def target(self) -> Perm:
        return self.config.target

    @property
    def entity_types(self) -> dict[str, str]:
        return {e.id: e.type for e in self.config.entities.values()}

    @property
    def relations(self) -> list[tuple[str, str]]:
        return list(self.config.relations)

    @property
    def assignments(self) -> dict[str, list[Perm]]:
        return {e: list(ps) for e, ps in self.config.assignments.items()}

    # ---------------------------------------------------------------- querying (A's side)
    def make_oracle(self, *, visible: Iterable[str] | None = None, budget: int | None = None,
                    accept_fraction: float = 1.0, seed: int = 0, effective: bool = True) -> Oracle:
        """Greybox oracle over this config. Rebuild it after `remove`, since it snapshots the config."""
        return Oracle(self.config, templates(), visible=visible, accept_fraction=accept_fraction,
                      budget=budget, seed=seed, effective=effective)

    # ---------------------------------------------------------------- whitebox checking
    def reachable(self, untrusted: str | None = None) -> Result:
        """Run the TAC-WB fixpoint on the full config for one source. Cached per source."""
        u = untrusted or self.untrusted
        if u not in self._reach:
            if u not in self.config.entities:
                raise KeyError(f"unknown entity {u!r}")
            self._reach[u] = relax(dataclasses.replace(self.config, untrusted=u), templates())
        return self._reach[u]

    def is_reachable(self, untrusted: str | None = None) -> bool:
        return self.reachable(untrusted).found

    def paths(self, untrusted: str | None = None, limit: int = 8) -> list[list[WitnessStep]]:
        """Ranked distinct escalation routes for one source (bounded search, not exhaustive)."""
        u = untrusted or self.untrusted
        return enumerate_paths(dataclasses.replace(self.config, untrusted=u), self.reachable(u), limit=limit)

    # ---------------------------------------------------------------- cutting (B's side)
    def remove(self, *, relations: Iterable[tuple[str, str]] = (),
               assignments: Iterable[tuple[str, Perm | str]] = ()) -> "Env":
        """Return a new Env without the given relations and direct assignments. Unknown edges raise KeyError."""
        drop_rel = set(relations)
        missing = drop_rel - set(self.config.relations)
        if missing:
            raise KeyError(f"relations not in config: {sorted(missing)}")
        new_assign = {e: list(ps) for e, ps in self.config.assignments.items()}
        for entity, perm in assignments:
            perm = _as_perm(perm)
            if perm not in new_assign.get(entity, ()):
                raise KeyError(f"{entity!r} has no direct assignment {perm}")
            new_assign[entity] = [p for p in new_assign[entity] if p != perm]
        cfg = dataclasses.replace(self.config, assignments=new_assign,
                                  relations=[r for r in self.config.relations if r not in drop_rel])
        return Env(cfg, self.name)


def load_config(name_or_path: str | Path, untrusted: str | None = None, target: str | None = None) -> Env:
    """Load a TAC-JSON config by dataset name (external/data/<name>.json) or by path."""
    p = Path(name_or_path)
    if not p.suffix:
        p = DATA_DIR / f"{p}.json"
    return Env(load_tac_config(str(p), untrusted, target), p.stem)


def available_configs() -> list[str]:
    return sorted(f.stem for f in DATA_DIR.glob("*.json"))


__all__ = ["ADMIN", "Answer", "BudgetExhausted", "Env", "InvalidQuery", "Oracle", "Perm", "Query",
           "available_configs", "load_config", "templates"]
