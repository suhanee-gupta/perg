"""IAM policy-statement helpers: interpolation, wildcard matching, and condition evaluation.

Conditions are evaluated against a fixed *attacker context*: a fresh session from outside the
corporate network, without MFA, over TLS, in us-east-1. A condition key we do not model makes an
Allow inapplicable and a Deny applicable (conservative in both directions).
"""
from __future__ import annotations

import re
from dataclasses import dataclass, field
from functools import lru_cache

ACCOUNT_ID = "123456789012"
REGION = "us-east-1"

_REF = re.compile(r"\$\{([A-Za-z0-9_.:\-]+)\}")


def subst(s: str, refs: dict[str, str]) -> str:
    """Replace ${local.account_id}, ${var.region} and ${<type>.<name>.<attr>} references."""
    def repl(m):
        key = m.group(1)
        if key in ("local.account_id", "data.aws_caller_identity.current.account_id"):
            return ACCOUNT_ID
        if key == "var.region":
            return REGION
        return refs.get(key, m.group(0))
    return _REF.sub(repl, s)


def as_list(v) -> list:
    if v is None:
        return []
    return v if isinstance(v, list) else [v]


@lru_cache(maxsize=None)
def _glob(pattern: str, icase: bool) -> re.Pattern:
    rx = "".join(".*" if c == "*" else "." if c == "?" else re.escape(c) for c in pattern)
    return re.compile(rx, re.IGNORECASE if icase else 0)


def match_action(pattern: str, action: str) -> bool:
    return _glob(pattern, True).fullmatch(action) is not None


def match_resource(pattern: str, arn: str) -> bool:
    return _glob(pattern, False).fullmatch(arn) is not None


def has_wildcard(pattern: str) -> bool:
    return "*" in pattern or "?" in pattern


# ---------------------------------------------------------------- conditions

def _cond_value(op: str, key: str, values: list[str]) -> bool | None:
    """Truth of one condition (operator, key) in the attacker context; None = not modelled."""
    k = key.lower()
    vals = [str(v).lower() for v in values]
    base = op.removesuffix("IfExists")
    if k == "aws:tokenissuetime":
        return {"DateGreaterThan": True, "DateGreaterThanEquals": True,
                "DateLessThan": False, "DateLessThanEquals": False}.get(base)
    if k == "aws:sourceip":
        return {"IpAddress": False, "NotIpAddress": True}.get(base)
    if k == "aws:multifactorauthpresent" and base == "Bool":
        return "false" in vals
    if k == "aws:securetransport" and base == "Bool":
        return "true" in vals
    if k == "aws:requestedregion":
        if base in ("StringEquals", "StringLike"):
            return any(match_action(v, REGION) for v in vals)
        if base in ("StringNotEquals", "StringNotLike"):
            return not any(match_action(v, REGION) for v in vals)
    return None


@dataclass
class Stmt:
    effect: str                       # "Allow" | "Deny"
    actions: list[str]                # patterns; empty when not_actions is set
    not_actions: list[str] | None
    resources: list[str]              # patterns (already interpolated)
    applies: bool                     # condition outcome in the attacker context
    unknown_cond: bool = False
    passed_to: set[str] | None = None  # iam:PassedToService restriction (lower-case service principals)
    warnings: list[str] = field(default_factory=list)

    def covers_action(self, action: str) -> bool:
        if self.not_actions is not None:
            return not any(match_action(p, action) for p in self.not_actions)
        return any(match_action(p, action) for p in self.actions)


def parse_statements(doc: dict, refs: dict[str, str]) -> list[Stmt]:
    out = []
    for s in as_list((doc or {}).get("Statement")):
        effect = s.get("Effect", "Allow")
        warn = []
        if "NotResource" in s:
            warn.append("not_resource_skipped")
            out.append(Stmt(effect, [], [], [], False, warnings=warn))
            continue
        applies, unknown, passed_to = True, False, None
        for op, kv in (s.get("Condition") or {}).items():
            for key, vals in kv.items():
                vals = as_list(vals)
                if key.lower() == "iam:passedtoservice" and op.removesuffix("IfExists") in ("StringEquals", "StringLike"):
                    svc = {str(v).lower() for v in vals}
                    passed_to = svc if passed_to is None else passed_to & svc
                    continue
                v = _cond_value(op, key, vals)
                if v is None:
                    unknown = True
                    warn.append(f"condition_unknown:{op}:{key}")
                elif not v:
                    applies = False
        if unknown:
            applies = effect == "Deny"   # conservative: unknown Allow does not apply, unknown Deny does
        not_actions = [str(a) for a in as_list(s["NotAction"])] if "NotAction" in s else None
        out.append(Stmt(effect, [str(a) for a in as_list(s.get("Action"))], not_actions,
                        [subst(str(r), refs) for r in as_list(s.get("Resource"))],
                        applies, unknown, passed_to, warn))
    return out
