"""Locked-flow templates: loader and validator (SPEC.md §12.3).

A template `{id, category, src_types, sink_types, sink, require, ops}` says: a flow
src -> sink opens once the untrusted entity holds `op.action@<resolved resource>` for
ANY one op (`require: "any"`, TAC's semantics and the default) or for EVERY op
(`require: "all"`, our extension for multi-operation attacks such as PassRole).
"""

from __future__ import annotations

import json
from dataclasses import dataclass
from importlib import resources
from typing import Any

from ..parser import ParseError, _require_list, _require_str
from ..types import PECategory
from .model import ANY_POLICY_TYPE, ENTITY_TYPES

_FIELDS = frozenset({"id", "category", "description", "ref", "sources",
                     "src_types", "sink_types", "sink", "require", "ops"})
_OP_FIELDS = frozenset({"action", "on"})
_SINK_KINDS = ("actor", "any")
_ON_KINDS = ("src", "sink", "*")
_REQUIRE_KINDS = ("any", "all")


@dataclass(frozen=True)
class Op:
    action: str
    on: str  # "src" | "sink" | "*"


@dataclass(frozen=True)
class Template:
    id: str
    category: PECategory
    src_types: frozenset[str]
    sink_types: frozenset[str]
    sink: str  # "actor" | "any"
    ops: tuple[Op, ...]
    require: str = "any"  # "any" | "all"
    description: str = ""
    ref: str = ""  # provenance: source path id, e.g. "pathfinding.cloud:lambda-001"
    sources: tuple[str, ...] = ()  # tools that detect this path (pmapper, pacu, cloudsplaining, ...)


def _type_set(obj: dict, key: str, where: str, allowed: frozenset[str]) -> frozenset[str]:
    items = _require_list(obj, key, where)
    if not items:
        raise ParseError(f"{where}: '{key}' must not be empty")
    for item in items:
        if item not in allowed:
            raise ParseError(f"{where}: unknown entity type {item!r} in '{key}'")
    return frozenset(items)


def parse_template(obj: Any, index: int) -> Template:
    where = f"templates[{index}]"
    if not isinstance(obj, dict):
        raise ParseError(f"{where}: must be an object")
    unknown = sorted(set(obj) - _FIELDS)
    if unknown:
        raise ParseError(f"{where}: unknown field(s) {', '.join(unknown)}")

    template_id = _require_str(obj, "id", where)
    where = f"{where} ('{template_id}')"
    category = PECategory.parse(_require_str(obj, "category", where))
    if category is None or category is PECategory.UNKNOWN:
        raise ParseError(f"{where}: bad category '{obj['category']}'")
    sink = _require_str(obj, "sink", where)
    if sink not in _SINK_KINDS:
        raise ParseError(f"{where}: 'sink' must be one of {', '.join(_SINK_KINDS)}")

    require = obj.get("require", "any")
    if require not in _REQUIRE_KINDS:
        raise ParseError(f"{where}: 'require' must be one of {', '.join(_REQUIRE_KINDS)}")

    ops: list[Op] = []
    raw_ops = _require_list(obj, "ops", where)
    if not raw_ops:
        raise ParseError(f"{where}: 'ops' must not be empty")
    for j, raw in enumerate(raw_ops):
        op_where = f"{where}.ops[{j}]"
        if not isinstance(raw, dict):
            raise ParseError(f"{op_where}: must be an object")
        unknown = sorted(set(raw) - _OP_FIELDS)
        if unknown:
            raise ParseError(f"{op_where}: unknown field(s) {', '.join(unknown)}")
        on = _require_str(raw, "on", op_where)
        if on not in _ON_KINDS:
            raise ParseError(f"{op_where}: 'on' must be one of {', '.join(_ON_KINDS)}")
        ops.append(Op(_require_str(raw, "action", op_where), on))

    description = obj.get("description", "")
    sources = obj.get("sources", [])
    if not isinstance(sources, list) or not all(isinstance(s, str) for s in sources):
        raise ParseError(f"{where}: 'sources' must be an array of strings")
    ref = obj.get("ref", "")
    return Template(
        id=template_id,
        category=category,
        src_types=_type_set(obj, "src_types", where, ENTITY_TYPES | {ANY_POLICY_TYPE}),
        sink_types=_type_set(obj, "sink_types", where, ENTITY_TYPES),
        sink=sink,
        ops=tuple(ops),
        require=require,
        description=description if isinstance(description, str) else "",
        ref=ref if isinstance(ref, str) else "",
        sources=tuple(sources),
    )


def parse_templates(root: Any) -> list[Template]:
    if not isinstance(root, dict):
        raise ParseError("templates: top-level JSON value must be an object")
    templates = [parse_template(obj, i) for i, obj in enumerate(_require_list(root, "templates", "templates"))]
    seen: set[str] = set()
    for t in templates:
        if t.id in seen:
            raise ParseError(f"templates: duplicate id '{t.id}'")
        seen.add(t.id)
    return templates


def load_templates(path: str | None = None) -> list[Template]:
    """Loads `path`, or the bundled seed set when `path` is None."""
    try:
        if path is None:
            text = resources.files(__package__).joinpath("templates.json").read_text(encoding="utf-8")
        else:
            with open(path, encoding="utf-8") as f:
                text = f.read()
        root = json.loads(text)
    except OSError as e:
        raise ParseError(f"cannot open templates file: {e.strerror}") from e
    except json.JSONDecodeError as e:
        raise ParseError(f"malformed templates JSON: {e}") from e
    return parse_templates(root)
