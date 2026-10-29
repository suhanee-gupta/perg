"""JSON config -> Graph builder (SPEC.md §3, §5.2)."""

from __future__ import annotations

import json
import sys
from dataclasses import dataclass
from typing import Any

from . import weight_oracle
from .graph import Graph
from .types import Edge, Entity, EntityType, PECategory


class ParseError(Exception):
    """Unreadable file, malformed JSON, or missing/ill-typed required fields."""


@dataclass
class Metadata:
    account_id: str = ""
    collected_at: str = ""
    description: str = ""


@dataclass
class ParseResult:
    graph: Graph
    metadata: Metadata


def _warn(message: str) -> None:
    print(f"warning: {message}", file=sys.stderr)


def _require(obj: dict, key: str, where: str, kind: type, kind_name: str) -> Any:
    if key not in obj:
        raise ParseError(f"{where}: missing required field '{key}'")
    value = obj[key]
    if not isinstance(value, kind):
        raise ParseError(f"{where}: field '{key}' must be {kind_name}")
    return value


def _require_str(obj: dict, key: str, where: str) -> str:
    return _require(obj, key, where, str, "a string")


def _require_list(obj: dict, key: str, where: str) -> list:
    return _require(obj, key, where, list, "an array")


def _opt_str(obj: dict, key: str) -> str | None:
    value = obj.get(key)
    return value if isinstance(value, str) else None


def _opt_bool(obj: dict, key: str) -> bool:
    value = obj.get(key)
    return value if isinstance(value, bool) else False


def parse_entity(obj: Any, index: int) -> Entity:
    where = f"entities[{index}]"
    if not isinstance(obj, dict):
        raise ParseError(f"{where}: must be an object")

    entity_id = _require_str(obj, "id", where)
    name = _require_str(obj, "name", where)
    type_text = _require_str(obj, "type", where)
    entity_type = EntityType.parse(type_text)
    if entity_type is None:
        _warn(f"{where} ('{entity_id}'): unknown type '{type_text}', defaulting to Resource")
        entity_type = EntityType.RESOURCE

    props = obj.get("properties")
    props = props if isinstance(props, dict) else {}
    return Entity(
        id=entity_id,
        type=entity_type,
        name=name,
        arn=_opt_str(obj, "arn"),
        has_mfa=_opt_bool(props, "has_mfa"),
        has_console_access=_opt_bool(props, "has_console_access"),
        has_access_keys=_opt_bool(props, "has_access_keys"),
        trust_policy=_opt_str(props, "trust_policy"),
    )


def parse_edge(obj: Any, index: int) -> Edge:
    where = f"edges[{index}]"
    if not isinstance(obj, dict):
        raise ParseError(f"{where}: must be an object")

    source = _require_str(obj, "source", where)
    target = _require_str(obj, "target", where)
    action = _require_str(obj, "action", where)

    required_actions: list[str] = []
    if "required_actions" in obj:
        raw = obj["required_actions"]
        if not isinstance(raw, list):
            raise ParseError(f"{where}: field 'required_actions' must be an array")
        for item in raw:
            if not isinstance(item, str):
                raise ParseError(f"{where}: 'required_actions' entries must be strings")
            required_actions.append(item)

    # An explicit category overrides the oracle; an unrecognised one falls back to it.
    category: PECategory | None = None
    cat_text = _opt_str(obj, "category")
    if cat_text is not None:
        category = PECategory.parse(cat_text)
        if category is None:
            _warn(f"{where}: unknown category '{cat_text}', inferring from action")
    if category is None:
        category = weight_oracle.classify(action, required_actions)

    conditions = obj.get("conditions")
    conditions = conditions if isinstance(conditions, dict) else {}
    return Edge(
        source=source,
        target=target,
        action=action,
        category=category,
        weight=weight_oracle.weight_for(category),
        required_actions=required_actions,
        resource_arn=_opt_str(obj, "resource_arn"),
        mfa_required=_opt_bool(conditions, "mfa_required"),
        source_ip_restricted=_opt_bool(conditions, "source_ip_restricted"),
        time_restricted=_opt_bool(conditions, "time_restricted"),
        description=_opt_str(obj, "description") or "",
    )


def _parse_metadata(root: dict) -> Metadata:
    meta = root.get("metadata")
    if not isinstance(meta, dict):
        return Metadata()
    return Metadata(
        account_id=_opt_str(meta, "account_id") or "",
        collected_at=_opt_str(meta, "collected_at") or "",
        description=_opt_str(meta, "description") or "",
    )


def build_graph(root: Any) -> ParseResult:
    """Builds a Graph from an already-decoded JSON document (SPEC.md §5.2)."""
    if not isinstance(root, dict):
        raise ParseError("top-level JSON value must be an object")

    graph = Graph()

    # Step 1: entities.
    for i, obj in enumerate(_require_list(root, "entities", "config")):
        graph.add_entity(parse_entity(obj, i))

    # Step 2: admin targets.
    for i, admin_id in enumerate(_require_list(root, "admin_entities", "config")):
        if not isinstance(admin_id, str):
            raise ParseError(f"admin_entities[{i}] must be a string")
        graph.mark_admin(admin_id)

    # Step 3: weighted edges.
    for i, obj in enumerate(_require_list(root, "edges", "config")):
        graph.add_edge(parse_edge(obj, i))

    return ParseResult(graph=graph, metadata=_parse_metadata(root))


def load_config(path: str) -> ParseResult:
    """Reads and parses the JSON config at `path`. Raises ParseError on any failure."""
    try:
        with open(path, encoding="utf-8") as f:
            root = json.load(f)
    except OSError as e:
        raise ParseError(f"cannot open config file '{path}': {e.strerror}") from e
    except json.JSONDecodeError as e:
        raise ParseError(f"malformed JSON in '{path}': {e}") from e
    return build_graph(root)
