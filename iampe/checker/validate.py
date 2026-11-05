"""Compare a permission graph with the dataset labels (Phase 2/3 done-checks).

Checks per config:
  has_pe    the untrusted entity reaches admin  <=>  labels.ground_truth.has_pe
  hops      every non-decoy hop before a path's `broken_at` is an edge (with a matching prim);
            the hop at `broken_at` and every `decoy: true` hop is not
  starts    paths with reaches_admin start at an entity that reaches admin
"""
from __future__ import annotations

import networkx as nx

from iampe.checker.reach import LiveGraph
from iampe.graph.build import ADMIN

# label primitive -> team template ids that implement it
PRIM_TEMPLATES: dict[str, tuple[str, ...]] = {
    "holds_admin": ("holds_admin",),
    "add_user_to_group": ("add-user-to-group",),
    "assume_role": ("assume-or-edit-trust",),
    "update_assume_role_policy": ("assume-or-edit-trust",),
    "create_access_key": ("create-access-key",),
    "create_login_profile": ("create-login-profile",),
    "update_login_profile": ("update-login-profile",),
    "attach_user_policy": ("attach-user-policy",),
    "attach_group_policy": ("attach-group-policy",),
    "attach_role_policy": ("attach-role-policy",),
    "put_user_policy": ("put-user-policy",),
    "put_group_policy": ("put-group-policy",),
    "put_role_policy": ("put-role-policy",),
    "create_policy_version": ("create-policy-version",),
    "set_default_policy_version": ("set-default-policy-version",),
    "pass_role_lambda": ("lambda-001", "lambda-002", "lambda-006"),
    "pass_role_ec2": ("ec2-001", "ec2-003"),
    "pass_role_glue": ("glue-001", "glue-003", "glue-004", "glue-005", "glue-006", "glue-007"),
    "pass_role_sagemaker": ("sagemaker-001", "sagemaker-002", "sagemaker-003"),
    "pass_role_datapipeline": ("datapipeline-001",),
    "pass_role_cloudformation": ("cloudformation-001", "cloudformation-003", "cloudformation-004"),
    "update_function_code": ("lambda-003", "lambda-004", "lambda-005"),
    "ssm_send_command": ("ssm-002",),
    "ssm_start_session": ("ssm-001",),
    "ec2_instance_connect": ("ec2instanceconnect-003",),
    "glue_update_dev_endpoint": ("glue-002",),
    "cfn_update_stack": ("cloudformation-002",),
    "pass_role_codebuild": ("codebuild-001", "codebuild-004"),
    "sagemaker_presigned_url": ("sagemaker-004",),
}


def _node(n: str) -> str:
    return ADMIN if n in ("admin", "admin:*") else n


def has_hop(G: nx.MultiDiGraph, src: str, prim: str, dst: str, removed=frozenset(),
            policy: str | None = None) -> bool:
    """Edge src -> dst (directly, or via the template's wildcard hub) whose prim implements `prim`."""
    src, dst = _node(src), _node(dst)
    if src not in G:
        return False
    want = set(PRIM_TEMPLATES.get(prim, (prim,)))
    for _, v, k, d in G.out_edges(src, keys=True, data=True):
        if (src, v, k) in removed or d["prim"] not in want:
            continue
        if policy is not None and not any(p == f"policy:{policy}" or p == policy for p in d.get("policies", ())):
            continue
        hits = [v] if not v.startswith("any:") else list(G.successors(v))
        if any(x == dst or G.nodes[x].get("role") == dst for x in hits):
            return True
    return False


def check(G: nx.MultiDiGraph, labels: dict) -> dict:
    lg = LiveGraph(G)
    reach = lg.can_reach_admin()
    u = G.graph["untrusted"]
    out = {"has_pe": labels["ground_truth"]["has_pe"], "found": u in reach, "hop_errors": [], "start_errors": []}
    for kind in ("planted", "dead_ends", "decoys"):
        for p in labels["injection_plan"][kind]:
            broken = p.get("broken_at")
            for i, h in enumerate(p["hops"]):
                if broken is not None and i > broken:
                    break
                if G.nodes.get(_node(h["from"]), {}).get("is_admin"):
                    continue                      # admin principals only get holds_admin edges
                should = not h.get("decoy") and (broken is None or i < broken)
                pol = h.get("policy") if h.get("decoy") else None
                if has_hop(G, h["from"], h["prim"], h["to"], policy=pol) != should:
                    out["hop_errors"].append((kind, i, h["prim"], h["from"], h["to"], "missing" if should else "present"))
            if p["reaches_admin"] and _node(p["start"]) not in reach:
                out["start_errors"].append((kind, p["start"]))
    w = labels["ground_truth"].get("witness") or []
    for h in w:
        if not has_hop(G, h["via"][-1], h["prim"], h["to"]):
            out["hop_errors"].append(("witness", 0, h["prim"], h["via"][-1], h["to"], "missing"))
    out["ok"] = out["has_pe"] == out["found"] and not out["hop_errors"] and not out["start_errors"]
    return out
