"""TAC-WB input model: permissions, entities, config format v2 (SPEC.md §12)."""

from __future__ import annotations

import json
from dataclasses import dataclass, field
from typing import Any, NamedTuple

from ..parser import ParseError, _require_list, _require_str

ENTITY_TYPES = frozenset({"User", "Group", "Role", "Service", "Policy", "Resource"})

# Built-in pseudo-entity holding `*@*`; inline-policy templates flow from it.
ANY_POLICY_ID = "__any__"
ANY_POLICY_TYPE = "AnyPolicy"


class Perm(NamedTuple):
    """`action@resource`; either part may be `*`."""

    action: str
    resource: str

    def __str__(self) -> str:
        return f"{self.action}@{self.resource}"

    def covers(self, required: "Perm") -> bool:
        """True if holding `self` grants `required` (`*` in self matches anything)."""
        return (self.action == "*" or self.action == required.action) and (
            self.resource == "*" or self.resource == required.resource
        )


ADMIN = Perm("*", "*")


def parse_perm(text: Any, where: str) -> Perm:
    if not isinstance(text, str):
        raise ParseError(f"{where}: permission must be a string")
    if text.count("@") != 1:
        raise ParseError(f"{where}: bad permission '{text}' (expected 'action@resource')")
    action, resource = text.split("@")
    if not action or not resource:
        raise ParseError(f"{where}: bad permission '{text}' (empty action or resource)")
    if action != "*" and (action.count(":") != 1 or action.startswith(":") or action.endswith(":")):
        raise ParseError(f"{where}: bad action '{action}' (expected 'service:Action' or '*')")
    if action != "*" and "*" in action:
        raise ParseError(f"{where}: action wildcards like '{action}' are not supported")
    return Perm(action, resource)


@dataclass
class TacEntity:
    id: str
    type: str
    name: str


@dataclass
class TacConfig:
    untrusted: str
    target: Perm
    entities: dict[str, TacEntity]
    assignments: dict[str, list[Perm]] = field(default_factory=dict)
    relations: list[tuple[str, str]] = field(default_factory=list)


def _parse_entity(obj: Any, index: int) -> TacEntity:
    where = f"entities[{index}]"
    if not isinstance(obj, dict):
        raise ParseError(f"{where}: must be an object")
    entity_id = _require_str(obj, "id", where)
    entity_type = _require_str(obj, "type", where)
    if entity_type not in ENTITY_TYPES:
        raise ParseError(f"{where} ('{entity_id}'): unknown type '{entity_type}'")
    if entity_id == ANY_POLICY_ID:
        raise ParseError(f"{where}: id '{ANY_POLICY_ID}' is reserved")
    name = obj.get("name")
    return TacEntity(entity_id, entity_type, name if isinstance(name, str) else entity_id)


def build_tac_config(root: Any, untrusted: str | None = None, target: str | None = None) -> TacConfig:
    """Builds a TacConfig from decoded JSON. `untrusted`/`target` override the config values."""
    if not isinstance(root, dict):
        raise ParseError("top-level JSON value must be an object")

    entities: dict[str, TacEntity] = {}
    for i, obj in enumerate(_require_list(root, "entities", "config")):
        entity = _parse_entity(obj, i)
        if entity.id in entities:
            raise ParseError(f"entities[{i}]: duplicate id '{entity.id}'")
        entities[entity.id] = entity

    def known(entity_id: str, where: str) -> str:
        if entity_id not in entities:
            raise ParseError(f"{where}: unknown entity '{entity_id}'")
        return entity_id

    assignments: dict[str, list[Perm]] = {}
    raw_assign = root.get("assignments", {})
    if not isinstance(raw_assign, dict):
        raise ParseError("config: field 'assignments' must be an object")
    for entity_id, perms in raw_assign.items():
        where = f"assignments['{entity_id}']"
        known(entity_id, where)
        if not isinstance(perms, list):
            raise ParseError(f"{where}: must be an array")
        assignments[entity_id] = [parse_perm(p, f"{where}[{j}]") for j, p in enumerate(perms)]

    relations: list[tuple[str, str]] = []
    for i, obj in enumerate(root.get("relations", [])):
        where = f"relations[{i}]"
        if not isinstance(obj, dict):
            raise ParseError(f"{where}: must be an object")
        src = known(_require_str(obj, "from", where), where)
        dst = known(_require_str(obj, "to", where), where)
        if src == dst:
            raise ParseError(f"{where}: self-relation on '{src}'")
        relations.append((src, dst))

    if untrusted is None:
        if "untrusted" not in root:
            raise ParseError("config: missing untrusted entity (field 'untrusted' or --untrusted)")
        untrusted = _require_str(root, "untrusted", "config")
    known(untrusted, "untrusted")
    if target is None:
        if "target" not in root:
            raise ParseError("config: missing target permission (field 'target' or --target)")
        target = _require_str(root, "target", "config")

    return TacConfig(
        untrusted=untrusted,
        target=parse_perm(target, "target"),
        entities=entities,
        assignments=assignments,
        relations=relations,
    )


def load_tac_config(path: str, untrusted: str | None = None, target: str | None = None) -> TacConfig:
    try:
        with open(path, encoding="utf-8") as f:
            root = json.load(f)
    except OSError as e:
        raise ParseError(f"cannot open config file '{path}': {e.strerror}") from e
    except json.JSONDecodeError as e:
        raise ParseError(f"malformed JSON in '{path}': {e}") from e
    return build_tac_config(root, untrusted, target)
