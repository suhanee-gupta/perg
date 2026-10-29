"""Directed weighted graph of IAM entities and exploitable permission flows."""

from __future__ import annotations

import sys
from collections import Counter

from .types import Edge, Entity, EntityType


def _warn(message: str) -> None:
    print(f"warning: {message}", file=sys.stderr)


class Graph:
    def __init__(self) -> None:
        self._entities: dict[str, Entity] = {}
        self._adj: dict[str, list[Edge]] = {}
        self._admins: set[str] = set()
        self._edge_count = 0

    # -- construction -------------------------------------------------------

    def add_entity(self, entity: Entity) -> None:
        if entity.id in self._entities:
            _warn(f"duplicate entity id '{entity.id}', keeping the first")
            return
        self._entities[entity.id] = entity
        self._adj.setdefault(entity.id, [])

    def mark_admin(self, entity_id: str) -> bool:
        """Marks an existing entity as an admin target. Warns and ignores unknown ids."""
        if entity_id not in self._entities:
            _warn(f"admin entity '{entity_id}' is not in the entities list, ignoring")
            return False
        self._admins.add(entity_id)
        return True

    def add_edge(self, edge: Edge) -> bool:
        """Validates per SPEC.md §5.3; on failure prints a warning and returns False.

        Duplicate (source, target, action) edges keep the lower-weight one.
        """
        if edge.source not in self._entities:
            _warn(f"edge {edge.source} -> {edge.target} references unknown source entity, skipping")
            return False
        if edge.target not in self._entities:
            _warn(f"edge {edge.source} -> {edge.target} references unknown target entity, skipping")
            return False
        if edge.source == edge.target:
            _warn(f"self-loop on '{edge.source}' via {edge.action}, skipping")
            return False

        out = self._adj[edge.source]
        for i, existing in enumerate(out):
            if existing.target == edge.target and existing.action == edge.action:
                _warn(
                    f"duplicate edge {edge.source} -> {edge.target} via {edge.action}, "
                    "keeping lower weight"
                )
                if edge.weight < existing.weight:
                    out[i] = edge
                return False

        out.append(edge)
        self._edge_count += 1
        return True

    # -- queries ------------------------------------------------------------

    def has_entity(self, entity_id: str) -> bool:
        return entity_id in self._entities

    def entity(self, entity_id: str) -> Entity:
        return self._entities[entity_id]

    def neighbors(self, entity_id: str) -> list[Edge]:
        return self._adj.get(entity_id, [])

    def entity_ids(self) -> list[str]:
        """Sorted for deterministic traversal/output order."""
        return sorted(self._entities)

    @property
    def admin_ids(self) -> frozenset[str]:
        return frozenset(self._admins)

    def is_admin(self, entity_id: str) -> bool:
        return entity_id in self._admins

    @property
    def entity_count(self) -> int:
        return len(self._entities)

    @property
    def edge_count(self) -> int:
        return self._edge_count

    def count_by_type(self) -> Counter[EntityType]:
        return Counter(e.type for e in self._entities.values())
