"""Core data structures: entities, edges, escalation paths, PE categories."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Optional


class PECategory(Enum):
    """The five Privilege Escalation categories from Hu et al. (TAC 2026), plus Unknown."""

    CREDENTIAL_TAKEOVER = "CredentialTakeover"
    PERMISSION_REQUEST = "PermissionRequest"
    CODE_EXECUTION = "CodeExecution"
    PERMISSION_INHERITANCE = "PermissionInheritance"
    PERMISSION_DELEGATION = "PermissionDelegation"
    UNKNOWN = "Unknown"

    @property
    def display_name(self) -> str:
        """Human-readable form, e.g. 'Credential Takeover'."""
        return _DISPLAY_NAMES[self]

    @classmethod
    def parse(cls, text: str) -> Optional["PECategory"]:
        try:
            return cls(text)
        except ValueError:
            return None


_DISPLAY_NAMES = {
    PECategory.CREDENTIAL_TAKEOVER: "Credential Takeover",
    PECategory.PERMISSION_REQUEST: "Permission Request",
    PECategory.CODE_EXECUTION: "Code Execution",
    PECategory.PERMISSION_INHERITANCE: "Permission Inheritance",
    PECategory.PERMISSION_DELEGATION: "Permission Delegation",
    PECategory.UNKNOWN: "Unknown",
}


class EntityType(Enum):
    USER = "User"
    GROUP = "Group"
    ROLE = "Role"
    SERVICE = "Service"
    RESOURCE = "Resource"

    @classmethod
    def parse(cls, text: str) -> Optional["EntityType"]:
        try:
            return cls(text)
        except ValueError:
            return None


@dataclass
class Entity:
    id: str
    type: EntityType
    name: str
    arn: Optional[str] = None
    has_mfa: bool = False
    has_console_access: bool = False
    has_access_keys: bool = False
    trust_policy: Optional[str] = None


@dataclass
class Edge:
    """A directed permission flow: `source` can obtain `target`'s privileges via `action`."""

    source: str
    target: str
    action: str
    category: PECategory
    weight: float
    required_actions: list[str] = field(default_factory=list)
    resource_arn: Optional[str] = None
    mfa_required: bool = False
    source_ip_restricted: bool = False
    time_restricted: bool = False
    description: str = ""

    @property
    def action_label(self) -> str:
        """'iam:PassRole + ec2:RunInstances' when prerequisites exist."""
        return " + ".join([self.action, *self.required_actions])


@dataclass
class EscalationPath:
    source_id: str
    target_id: str
    edges: list[Edge] = field(default_factory=list)
    total_weight: float = 0.0

    def add_edge(self, edge: Edge) -> None:
        self.edges.append(edge)
        self.total_weight += edge.weight

    @property
    def steps(self) -> int:
        return len(self.edges)

    @classmethod
    def from_edges(cls, edges: list[Edge]) -> "EscalationPath":
        path = cls(source_id=edges[0].source, target_id=edges[-1].target)
        for edge in edges:
            path.add_edge(edge)
        return path
