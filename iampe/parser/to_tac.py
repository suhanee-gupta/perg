"""Terraform config directory -> TAC JSON, the input format of the team's TAC-WB engine.

Output (`convert(...)`), as the team's `load_tac_config` expects:
    entities     users, groups, roles, managed policies, and Service entities for compute:
                 `function:<n>` (Lambda) and `workload:<n>` (EC2, CloudFormation, SageMaker, Glue)
    relations    group -> user (membership), policy -> user/group/role (attachment),
                 role -> function/workload (execution role / instance profile)
    assignments  policy -> its allowed `action@resource` permissions; user/role -> the
                 `sts:AssumeRole@role:<r>` grants that a trust policy gives it by name
    untrusted    from outputs.tf; target `*@*`

The engine matches resources exactly or by `*`, so the converter does the IAM semantics up front:
  * only escalation-relevant actions are kept (the template ops passed in as `actions`); action
    wildcards and NotAction are expanded over that set, and literal `Action: "*"` stays `*`;
  * resource ARNs and ARN globs are resolved to entity ids; a glob on an action that creates a new
    resource (a template op on `*`, e.g. lambda:CreateFunction) is widened to `*`;
  * conditions are evaluated in the attacker context (see policy.py); explicit Deny removes the
    matching grants from the principals it applies to;
  * sts:AssumeRole via identity policy only on roles whose trust names the account root; a trust
    that names a principal grants it directly; iam:PassRole only on roles that trust a service
    (and that service when iam:PassedToService is set); Create/UpdateLoginProfile only on users
    without/with a login profile; Create/SetDefaultPolicyVersion on a policy are re-targeted to
    the principals it is attached to (SetDefault only if a non-default version grants `*@*`).
"""
from __future__ import annotations

import bisect
import hashlib
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

from iampe.data.index import CACHE_DIR
from iampe.parser.hcl import load_tf_dir
from iampe.parser.policy import (ACCOUNT_ID, REGION, Stmt, as_list, has_wildcard, match_resource,
                                 parse_statements, subst)

CONVERTER_VERSION = 1
ADMIN_PERM = ("*", "*")
_SERVICE_ALIAS = {"sts": "iam", "ssm": "ec2", "ec2-instance-connect": "ec2"}
_POLICY_VERSION_ACTIONS = ("iam:CreatePolicyVersion", "iam:SetDefaultPolicyVersion")
_REF_ONLY = re.compile(r"^\$\{(aws_[a-z0-9_]+)\.([A-Za-z0-9_\-]+)\.[a-z_]+\}$")


def _arn_service(arn: str) -> str:
    return arn.split(":")[2] if arn.count(":") >= 2 else ""


class _Converter:
    def __init__(self, path: Path, actions: dict[str, dict]):
        self.path = Path(path)
        self.org = self.path.name
        self.prefix = self.org + "-"
        self.actions = actions                      # action -> {"types": set, "on_star": bool}
        self.warn: Counter = Counter()
        self.ents: dict[str, dict] = {}             # id -> {type, name, arns}
        self.refs: dict[str, str] = {}              # "aws_x.y.attr" -> value
        self.tf2id: dict[str, str] = {}             # "aws_x.y" -> entity id
        self.relations: list[tuple[str, str]] = []
        self._cand_cache: dict[str, list[str]] = {}
        self.blocks = load_tf_dir(self.path)

    # ---------------------------------------------------------------- entities
    def _short(self, name: str) -> str:
        return name[len(self.prefix):] if name.startswith(self.prefix) else name

    def _add(self, b: dict, kind: str, etype: str, name: str, arns: list[str], ref_attrs: dict[str, str]):
        eid = f"{kind}:{self._short(name)}"
        self.ents[eid] = {"type": etype, "name": name, "arns": arns}
        key = f"{b['type']}.{b['name']}"
        self.tf2id[key] = eid
        for attr, val in ref_attrs.items():
            self.refs[f"{key}.{attr}"] = val
        return eid

    def _build_entities(self):
        iam = f"arn:aws:iam::{ACCOUNT_ID}"
        reg = f"{REGION}:{ACCOUNT_ID}"
        self.login_profile: set[str] = set()
        for b in self.blocks:
            a, t = b["attrs"], b["type"]
            if t == "aws_iam_user":
                n = a["name"]
                self._add(b, "user", "User", n, [f"{iam}:user/{n}"], {"name": n, "id": n, "arn": f"{iam}:user/{n}"})
            elif t == "aws_iam_group":
                n = a["name"]
                self._add(b, "group", "Group", n, [f"{iam}:group/{n}"], {"name": n, "id": n, "arn": f"{iam}:group/{n}"})
            elif t == "aws_iam_role":
                n = a["name"]
                self._add(b, "role", "Role", n, [f"{iam}:role/{n}"], {"name": n, "id": n, "arn": f"{iam}:role/{n}"})
            elif t == "aws_iam_policy":
                n, arn = a["name"], f"{iam}:policy/{a['name']}"
                self._add(b, "policy", "Policy", n, [arn], {"name": n, "id": arn, "arn": arn})
            elif t == "aws_iam_instance_profile":
                n = a["name"]
                key = f"{t}.{b['name']}"
                self.refs.update({f"{key}.name": n, f"{key}.arn": f"{iam}:instance-profile/{n}"})
            elif t == "aws_lambda_function":
                n = a["function_name"]
                arn = f"arn:aws:lambda:{reg}:function:{n}"
                self._add(b, "function", "Service", n, [arn], {"function_name": n, "id": n, "arn": arn})
            elif t == "aws_instance":
                n = (a.get("tags") or {}).get("Name", b["name"])
                iid = f"i-{b['name']}"
                arn = f"arn:aws:ec2:{reg}:instance/{iid}"
                self._add(b, "workload", "Service", n, [arn], {"id": iid, "arn": arn})
            elif t == "aws_cloudformation_stack":
                n = a["name"]
                arns = [f"arn:aws:cloudformation:{reg}:stack/{n}", f"arn:aws:cloudformation:{reg}:stack/{n}/0"]
                self._add(b, "workload", "Service", n, arns, {"name": n, "id": arns[1]})
            elif t == "aws_sagemaker_notebook_instance":
                n = a["name"]
                arn = f"arn:aws:sagemaker:{reg}:notebook-instance/{n.lower()}"
                self._add(b, "workload", "Service", n, [arn], {"name": n, "id": n, "arn": arn})
            elif t == "aws_glue_dev_endpoint":
                n = a["name"]
                arn = f"arn:aws:glue:{reg}:devEndpoint/{n}"
                self._add(b, "workload", "Service", n, [arn], {"name": n, "id": n, "arn": arn})
        self.by_arn = {arn: eid for eid, e in self.ents.items() for arn in e["arns"]}
        self.sorted_arns = sorted(self.by_arn)

    def _ref(self, s) -> str | None:
        """'${aws_iam_role.x.arn}' -> entity id (instance profiles resolve to their role)."""
        m = _REF_ONLY.match(s) if isinstance(s, str) else None
        if not m:
            return None
        key = f"{m.group(1)}.{m.group(2)}"
        if m.group(1) == "aws_iam_instance_profile":
            return self.profile_role.get(key)
        return self.tf2id.get(key)

    # ---------------------------------------------------------------- relations
    def _build_relations(self):
        self.profile_role = {}
        for b in self.blocks:
            if b["type"] == "aws_iam_instance_profile":
                self.profile_role[f"aws_iam_instance_profile.{b['name']}"] = self._ref(b["attrs"]["role"])
        rel = []
        for b in self.blocks:
            a, t = b["attrs"], b["type"]
            if t == "aws_iam_user_group_membership":
                u = self._ref(a["user"])
                rel += [(self._ref(g), u) for g in as_list(a["groups"])]
            elif t == "aws_iam_user_policy_attachment":
                rel.append((self._ref(a["policy_arn"]), self._ref(a["user"])))
            elif t == "aws_iam_group_policy_attachment":
                rel.append((self._ref(a["policy_arn"]), self._ref(a["group"])))
            elif t == "aws_iam_role_policy_attachment":
                rel.append((self._ref(a["policy_arn"]), self._ref(a["role"])))
            elif t == "aws_iam_user_login_profile":
                self.login_profile.add(self._ref(a["user"]))
            elif t == "aws_lambda_function":
                rel.append((self._ref(a["role"]), self.tf2id[f"{t}.{b['name']}"]))
            elif t == "aws_instance" and a.get("iam_instance_profile"):
                rel.append((self._ref(a["iam_instance_profile"]), self.tf2id[f"{t}.{b['name']}"]))
            elif t in ("aws_cloudformation_stack",) and a.get("iam_role_arn"):
                rel.append((self._ref(a["iam_role_arn"]), self.tf2id[f"{t}.{b['name']}"]))
            elif t in ("aws_sagemaker_notebook_instance", "aws_glue_dev_endpoint") and a.get("role_arn"):
                rel.append((self._ref(a["role_arn"]), self.tf2id[f"{t}.{b['name']}"]))
        for s, d in rel:
            if s is None or d is None:
                self.warn["unresolved_relation"] += 1
            else:
                self.relations.append((s, d))
        self.relations = list(dict.fromkeys(self.relations))
        self.attached = defaultdict(list)     # policy -> principals
        self.policies_of = defaultdict(list)  # principal -> policies
        self.groups_of = defaultdict(list)    # user -> groups
        for s, d in self.relations:
            if self.ents[s]["type"] == "Policy":
                self.attached[s].append(d)
                self.policies_of[d].append(s)
            elif self.ents[s]["type"] == "Group":
                self.groups_of[d].append(s)

    # ---------------------------------------------------------------- policies and trust
    def _build_policies(self):
        self.stmts: dict[str, list[Stmt]] = {}
        self.versions: dict[str, list[list[Stmt]]] = defaultdict(list)
        for b in self.blocks:
            if b["type"] == "aws_iam_policy":
                self.stmts[self.tf2id[f"aws_iam_policy.{b['name']}"]] = parse_statements(b["attrs"]["policy"], self.refs)
        for b in self.blocks:
            if b["type"] != "terraform_data" or "__v" not in b["name"]:
                continue
            pid = self._ref(b["attrs"].get("triggers_replace"))
            if pid is None:
                self.warn["unresolved_policy_version"] += 1
                continue
            cmd = " ".join(p.get("local-exec", {}).get("command", "") for p in as_list(b["attrs"].get("provisioner")))
            doc = parse_statements(b["attrs"]["input"], self.refs)
            if "--set-as-default" in cmd:
                self.stmts[pid] = doc
            else:
                self.versions[pid].append(doc)
        for ss in list(self.stmts.values()) + [d for v in self.versions.values() for d in v]:
            for s in ss:
                self.warn.update(s.warnings)

        self.root_trust: set[str] = set()
        self.role_services: dict[str, set[str]] = defaultdict(set)
        self.direct_assume: dict[str, set[str]] = defaultdict(set)   # principal -> roles
        for b in self.blocks:
            if b["type"] != "aws_iam_role":
                continue
            r = self.tf2id[f"aws_iam_role.{b['name']}"]
            for s in as_list(b["attrs"]["assume_role_policy"].get("Statement")):
                if s.get("Effect") != "Allow" or not any(a in ("sts:AssumeRole", "sts:*", "*") for a in as_list(s.get("Action"))):
                    continue
                if s.get("Condition"):
                    self.warn["trust_condition_ignored"] += 1
                p = s.get("Principal")
                p = {"AWS": p} if isinstance(p, str) else (p or {})
                self.role_services[r] |= {str(x).lower() for x in as_list(p.get("Service"))}
                for x in as_list(p.get("AWS")):
                    x = subst(str(x), self.refs)
                    if x in ("*", ACCOUNT_ID) or x.endswith(":root"):
                        self.root_trust.add(r)
                    elif x in self.by_arn:
                        self.direct_assume[self.by_arn[x]].add(r)
                    else:
                        self.warn["trust_principal_unknown"] += 1

    # ---------------------------------------------------------------- grants
    def _match(self, pattern: str) -> list[str]:
        if not has_wildcard(pattern):
            e = self.by_arn.get(pattern)
            return [e] if e else []
        cut = min(i for i in (pattern.find("*"), pattern.find("?")) if i >= 0)
        lo = bisect.bisect_left(self.sorted_arns, pattern[:cut])
        out = []
        for arn in self.sorted_arns[lo:]:
            if not arn.startswith(pattern[:cut]):
                break
            if match_resource(pattern, arn):
                out.append(self.by_arn[arn])
        return list(dict.fromkeys(out))

    def _candidates(self, action: str) -> list[str]:
        """Entities `action@*` can target (by template entity types and ARN service)."""
        if action not in self._cand_cache:
            spec = self.actions.get(action, {})
            svc = action.split(":")[0]
            svc = _SERVICE_ALIAS.get(svc, svc)
            self._cand_cache[action] = [e for e, x in self.ents.items() if x["arns"] and
                                        x["type"] in spec.get("types", ()) and _arn_service(x["arns"][0]) == svc]
        return self._cand_cache[action]

    def _admin_versions(self) -> set[str]:
        out = set()
        for pid, vers in self.versions.items():
            for doc in vers:
                if ADMIN_PERM in self._grants(doc, versions=False):
                    out.add(pid)
        return out

    def _resolve(self, action: str, rp: str, st: Stmt) -> list[str]:
        spec = self.actions.get(action, {})
        if rp == "*":
            targets = ["*"]
        else:
            targets = self._match(rp)
            if action in _POLICY_VERSION_ACTIONS:
                targets = [t for t in targets if self.ents[t]["type"] == "Policy"]
            if has_wildcard(rp) and spec.get("on_star"):
                targets.append("*")
            if not targets:
                self.warn["arn_matches_nothing"] += 1
                return []
        if action == "sts:AssumeRole":
            targets = self._expand(action, targets)
            targets = [r for r in targets if r in self.root_trust]
        elif action == "iam:PassRole":
            targets = self._expand(action, targets)
            targets = [r for r in targets if self.role_services[r] and
                       (st.passed_to is None or self.role_services[r] & st.passed_to)]
        elif action == "iam:CreateLoginProfile":
            targets = [u for u in self._expand(action, targets) if u not in self.login_profile]
        elif action == "iam:UpdateLoginProfile":
            targets = [u for u in self._expand(action, targets) if u in self.login_profile]
        elif action in _POLICY_VERSION_ACTIONS:
            pols = [p for p, x in self.ents.items() if x["type"] == "Policy"] if targets == ["*"] else targets
            if action == "iam:SetDefaultPolicyVersion":
                pols = [p for p in pols if p in self.admin_versions]
            targets = list(dict.fromkeys(pr for p in pols for pr in self.attached.get(p, ())))
        return targets

    def _expand(self, action: str, targets: list[str]) -> list[str]:
        if "*" not in targets:
            return targets
        return list(dict.fromkeys([t for t in targets if t != "*"] + self._candidates(action)))

    def _grants(self, stmts: list[Stmt], versions: bool = True) -> set[tuple[str, str]]:
        out: set[tuple[str, str]] = set()
        for st in stmts:
            if st.effect != "Allow" or not st.applies:
                continue
            if st.not_actions is None and "*" in st.actions:
                acts = ["*"]                   # `*@r` already covers every action on r
            else:
                acts = [a for a in self.actions if st.covers_action(a)]
            for a in acts:
                for rp in st.resources:
                    if a == "*":
                        out.update(("*", t) for t in (["*"] if rp == "*" else self._match(rp)))
                    elif versions or a not in _POLICY_VERSION_ACTIONS:
                        out.update((a, t) for t in self._resolve(a, rp, st))
        return out

    # ---------------------------------------------------------------- deny
    def _denies(self, principal: str) -> list[Stmt]:
        pols = list(self.policies_of.get(principal, ()))
        for g in self.groups_of.get(principal, ()):
            pols += self.policies_of.get(g, ())
        return [s for p in pols for s in self.stmts.get(p, ()) if s.effect == "Deny" and s.applies]

    def _deny_filter(self, grants: set[tuple[str, str]], denies: list[Stmt]) -> set[tuple[str, str]]:
        out = set()
        for a, r in grants:
            ds = [d for d in denies if d.covers_action(a)] if a != "*" else []
            if not ds:
                out.add((a, r))
            elif any("*" in d.resources for d in ds):
                continue
            elif a in _POLICY_VERSION_ACTIONS:  # r is a principal; the Deny names policies
                pols = [p for p in self.policies_of.get(r, ())
                        if a != "iam:SetDefaultPolicyVersion" or p in self.admin_versions]
                if not all(self._denied(p, ds) for p in pols):
                    out.add((a, r))
            elif r == "*":
                if self.actions.get(a, {}).get("on_star"):
                    self.warn["deny_partial_on_star_kept"] += 1
                    out.add((a, r))
                out.update((a, t) for t in self._candidates(a) if not self._denied(t, ds))
            elif not self._denied(r, ds):
                out.add((a, r))
        return out

    def _denied(self, eid: str, ds: list[Stmt]) -> bool:
        return any(match_resource(p, arn) for d in ds for p in d.resources for arn in self.ents[eid]["arns"])

    # ---------------------------------------------------------------- assemble
    def run(self) -> dict:
        self._build_entities()
        self._build_relations()
        self._build_policies()
        self.admin_versions = self._admin_versions()
        grants = {p: self._grants(ss) for p, ss in self.stmts.items()}
        direct = {u: {("sts:AssumeRole", r) for r in rs} for u, rs in self.direct_assume.items()}
        relations = list(self.relations)
        for u, x in self.ents.items():
            if x["type"] not in ("User", "Role"):
                continue
            ds = self._denies(u)
            if not ds:
                continue
            if u in direct:
                direct[u] = self._deny_filter(direct[u], ds)
            for p in self.policies_of.get(u, ()):
                kept = self._deny_filter(grants[p], ds)
                if kept == grants[p]:
                    continue
                if self.attached[p] == [u]:
                    grants[p] = kept
                else:                          # shared policy: give u a filtered copy
                    clone = f"{p}~{u.split(':', 1)[1]}"
                    self.ents[clone] = {"type": "Policy", "name": self.ents[p]["name"], "arns": []}
                    grants[clone] = kept
                    relations[relations.index((p, u))] = (clone, u)
                    self.warn["deny_cloned_policy"] += 1
            for g in self.groups_of.get(u, ()):
                for p in self.policies_of.get(g, ()):
                    if self._deny_filter(grants[p], ds) != grants[p]:
                        self.warn["deny_via_group_not_applied"] += 1

        assignments = {}
        for e, g in list(grants.items()) + list(direct.items()):
            if g:
                assignments.setdefault(e, set()).update(g)
        out_txt = (self.path / "outputs.tf").read_text() if (self.path / "outputs.tf").exists() else ""
        m = re.search(r'value\s*=\s*"(user|role):([^"]+)"', out_txt)
        if not m:
            raise ValueError(f"{self.org}: no untrusted_entity output")
        return {
            "_source": {"org": self.org, "converter": "iampe.parser.to_tac", "version": CONVERTER_VERSION,
                        "warnings": dict(sorted(self.warn.items()))},
            "untrusted": f"{m.group(1)}:{self._short(m.group(2))}",
            "target": "*@*",
            "entities": [{"id": e, "type": x["type"], "name": x["name"]} for e, x in self.ents.items()],
            "assignments": {e: sorted(f"{a}@{r}" for a, r in ps) for e, ps in sorted(assignments.items())},
            "relations": [{"from": s, "to": d} for s, d in relations],
        }


def convert(path: str | Path, actions: dict[str, dict], use_cache: bool = True) -> dict:
    """Convert one Terraform config directory to a TAC JSON root (cached in data/cache/)."""
    path = Path(path)
    src = "".join((Path(__file__).parent / f).read_text() for f in ("to_tac.py", "policy.py", "hcl.py"))
    key = hashlib.sha1((src + json.dumps({a: [sorted(s["types"]), s["on_star"]] for a, s in sorted(actions.items())}))
                       .encode()).hexdigest()[:10]
    cache = CACHE_DIR / f"{path.name}.tac.json"
    if use_cache and cache.exists():
        d = json.loads(cache.read_text())
        if d.get("_cache") == [CONVERTER_VERSION, key]:
            return d["root"]
    root = _Converter(path, actions).run()
    if use_cache:
        CACHE_DIR.mkdir(parents=True, exist_ok=True)
        cache.write_text(json.dumps({"_cache": [CONVERTER_VERSION, key], "root": root}))
    return root
