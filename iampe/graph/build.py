"""Converted config (env.Env) -> permission graph G (Phase 2).

Nodes are principals and permission states: `user:`, `group:`, `role:`, `function:`/`workload:`
(compute that runs as a role), the sink `admin:*`, and `any:<template>` hubs (see below).
Edge u -[prim]-> v means "holding u's permissions lets you gain v's"; prim is the team template id.

Semantics (PMapper-style, per principal; the team engine's actor-accumulates semantics is coarser):
  * holdings H(x) = x's direct assignments + everything that flows into x along relations
    (policy -> group -> user, policy -> role -> function/workload), with the granting entities;
  * a template whose sink is the actor gives x -> s for each src s whose ops x holds
    (`require: any` = one op, `all` = every op, incl. the `*` ops such as lambda:CreateFunction@*);
  * a permission-request template (attach/put/create-version/set-default on a sink) gives x -> admin
    when the sink is x itself or a group x is in (modifying someone else is not an escalation of x);
  * `*@*` gives x -> admin (holds_admin, not cuttable: such principals are targets, not sources);
  * group nodes take the joiner's view (actor type User), so add_user_to_group chains work.
Precision fixes over the raw templates: the src entity must belong to the op's AWS service
(no "sagemaker presigned URL on a Lambda function"), and a PassRole target must trust the
service being launched.
Wildcard targets: x holding an op on `*` gets one edge x -> any:<template>, and the hub has
uncuttable edges to every valid src, so the graph does not grow with holders x srcs.

Edge attributes: prim, category, policies (granting entities of the cheapest op), w, cuttable.
w(e) (`w_mode="shared"`): principals touched by removing that op = sum over its granting entities
of the users/roles they reach; `"const"` = 1.
"""
from __future__ import annotations

from collections import defaultdict

import networkx as nx

import env

ADMIN = "admin:*"
HUB = "any:"
INF = float("inf")

_ACTION_SVC = {"sts": "iam", "ssm": "ec2", "ec2-instance-connect": "ec2"}
_PASS_SVC = {"ecs": "ecs-tasks.amazonaws.com", "batch": "ecs-tasks.amazonaws.com",
             "apprunner": "tasks.apprunner.amazonaws.com", "imagebuilder": "ec2.amazonaws.com",
             "states": "states.amazonaws.com"}
_ID_SVC = {"user": "iam", "group": "iam", "role": "iam", "policy": "iam", "function": "lambda"}
ACTOR_TYPES = ("User", "Role", "Service", "Group")


def _svc(action: str) -> str:
    s = action.split(":")[0]
    return _ACTION_SVC.get(s, s)


def _recon(action: str) -> bool:
    """Read-only lookups on `*` (ec2:DescribeInstances, ...) are not treated as required: the
    attacker keeps the original identity's read access along a path (assumption)."""
    verb = action.split(":")[1]
    return verb.startswith(("Describe", "Get", "List"))


def _pass_service(t) -> str | None:
    """Service principal a PassRole template launches the role into (from its other ops)."""
    svcs = [op.action.split(":")[0] for op in t.ops if op.action != "iam:PassRole"]
    if not svcs:
        return None
    s = svcs[0]
    return _PASS_SVC.get(s, f"{s}.amazonaws.com")


def holdings(e: "env.Env") -> dict[str, dict]:
    """entity -> {Perm: frozenset(granting entities)} after closure over relations."""
    direct = defaultdict(dict)
    for x, ps in e.config.assignments.items():
        for p in ps:
            direct[x][p] = frozenset((x,))
    incoming = defaultdict(list)
    for s, d in e.config.relations:
        incoming[d].append(s)
    memo: dict[str, dict] = {}

    def h(x, stack=()):
        if x in memo:
            return memo[x]
        if x in stack:                 # relation cycle (not expected); stop
            return direct.get(x, {})
        out = dict(direct.get(x, {}))
        for s in incoming.get(x, ()):
            for p, org in h(s, stack + (x,)).items():
                out[p] = out[p] | org if p in out else org
        memo[x] = out
        return out

    for x in e.config.entities:
        h(x)
    return memo


def build_graph(e: "env.Env", w_mode: str = "shared") -> nx.MultiDiGraph:
    types = {x.id: x.type for x in e.config.entities.values()}
    meta = e.meta

    def service(x: str) -> str:
        return meta.get(x, {}).get("service") or _ID_SVC.get(x.split(":")[0], "")

    groups_of = defaultdict(set)
    reach_down = defaultdict(set)      # entity -> entities its permissions flow into
    for s, d in e.config.relations:
        if types[s] == "Group" and types[d] == "User":
            groups_of[d].add(s)
        reach_down[s].add(d)

    def principals_reached(o: str, _memo={}) -> int:
        key = (id(e), o)
        if key not in _memo:
            seen, stack = set(), [o]
            while stack:
                for d in reach_down.get(stack.pop(), ()):
                    if d not in seen:
                        seen.add(d)
                        stack.append(d)
            seen.add(o)
            _memo[key] = max(1, sum(types.get(x) in ("User", "Role") for x in seen))
        return _memo[key]

    def cost(origins) -> float:
        return 1.0 if w_mode == "const" else float(sum(principals_reached(o) for o in origins))

    H = holdings(e)
    tmpls = env.templates()
    by_type = defaultdict(list)
    for x, t in types.items():
        by_type[t].append(x)

    def valid_src(t, op_actions, s, x) -> bool:
        if s == x or types.get(s) not in t.src_types:
            return False
        if any(service(s) != _svc(a) for a in op_actions):
            return False
        ps = _pass_service(t) if "iam:PassRole" in op_actions else None
        return ps is None or ps in meta.get(s, {}).get("trusts", ())

    G = nx.MultiDiGraph()
    G.add_node(ADMIN, kind="Admin")
    for x, ty in types.items():
        if ty in ACTOR_TYPES:
            G.add_node(x, kind=ty, is_untrusted=x == e.untrusted)
    for s, d in e.config.relations:
        if types[s] == "Role" and types[d] == "Service":
            G.nodes[d]["role"] = s                 # compute that runs as role s
    hubs_built = set()

    def add(u, v, t_id, cat, origins, cuttable=True):
        G.add_edge(u, v, key=t_id, prim=t_id, category=cat, policies=tuple(sorted(origins)),
                   w=cost(origins) if cuttable else INF, cuttable=cuttable)

    def build_hub(t, src_actions):
        hub = HUB + t.id
        if hub not in hubs_built:
            hubs_built.add(hub)
            G.add_node(hub, kind="Hub")
            for st in t.src_types:
                for s in by_type.get(st, ()):
                    if valid_src(t, src_actions, s, None):
                        add(hub, s, t.id, t.category.value, (), cuttable=False)
        return hub

    for x, ty in types.items():
        if ty not in ACTOR_TYPES:
            continue
        hx = H.get(x, {})
        star = env.Perm("*", "*")
        if star in hx:
            add(x, ADMIN, "holds_admin", "Admin", hx[star], cuttable=False)
            G.nodes[x]["is_admin"] = True
            continue
        by_act: dict[str, dict] = defaultdict(dict)
        all_on: dict[str, frozenset] = {}          # `*@r`: every action on r
        for p, org in hx.items():
            if p.action == "*":
                all_on[p.resource] = org
            else:
                by_act[env.ACTION_ALIASES.get(p.action, p.action)][p.resource] = org

        def held(action, res):
            d = by_act.get(action, {})
            return d.get(res) or d.get("*") or all_on.get(res)

        actor = "User" if ty == "Group" else ty
        self_targets = {x} | groups_of.get(x, set())
        if ty == "Service" and G.nodes[x].get("role"):
            self_targets.add(G.nodes[x]["role"])   # compute modifying the role it runs as
        for t in tmpls:
            cat = t.category.value
            if t.sink == "any":
                for v in self_targets:
                    if types[v] not in t.sink_types:
                        continue
                    got = [held(op.action, v) for op in t.ops]
                    ok = [g for g in got if g]
                    if (t.require == "all" and len(ok) == len(got)) or (t.require == "any" and ok):
                        add(x, ADMIN, t.id, cat, min(ok, key=cost))
                        break
                continue
            if actor not in t.sink_types:
                continue
            src_ops = [op for op in t.ops if op.on == "src"]
            star_ops = [op for op in t.ops if op.on == "*" and not _recon(op.action)]
            star_org = [held(op.action, "*") for op in star_ops]
            if t.require == "all" and not all(star_org):
                continue
            src_actions = [op.action for op in src_ops] if t.require == "all" else None
            # specific targets per src op, and whether the op is held on `*`
            per_op = []
            for op in src_ops:
                spec = {r: o for r, o in by_act.get(op.action, {}).items() if r != "*"}
                spec.update({r: o for r, o in all_on.items() if r != "*"})
                per_op.append((op, spec, held(op.action, "*")))
            if t.require == "any":
                for op, spec, wild in per_op:
                    for s, o in spec.items():
                        if valid_src(t, [op.action], s, x):
                            add(x, s, t.id, cat, o)
                    if wild:
                        G.add_edge(x, build_hub_any(t, op, build_hub, valid_src), key=f"{t.id}|{op.action}",
                                   prim=t.id, category=cat, policies=tuple(sorted(wild)), w=cost(wild), cuttable=True)
                continue
            if not per_op:
                continue
            if all(wild for _, _, wild in per_op):
                o = min([w for _, _, w in per_op] + [s for s in star_org if s], key=cost)
                hub = build_hub(t, src_actions)
                G.add_edge(x, hub, key=t.id, prim=t.id, category=cat, policies=tuple(sorted(o)), w=cost(o), cuttable=True)
            cand = set().union(*(spec.keys() for _, spec, _ in per_op))
            for s in cand:
                origins = []
                for op, spec, wild in per_op:
                    o = spec.get(s) or wild
                    if not o:
                        break
                    origins.append(o)
                else:
                    if valid_src(t, src_actions, s, x):
                        add(x, s, t.id, cat, min(origins + [s_ for s_ in star_org if s_], key=cost))
    G.graph.update(name=e.name, untrusted=e.untrusted, w_mode=w_mode)
    return G


def build_hub_any(t, op, build_hub, valid_src):
    """Hub for a `require: any` template held on `*` through one op (keyed by that op)."""
    class _T:                                      # same template, restricted to the one op
        pass
    tt = _T()
    tt.id, tt.src_types, tt.category, tt.ops = f"{t.id}|{op.action}", t.src_types, t.category, (op,)
    return build_hub(tt, [op.action])


def sources(G: nx.MultiDiGraph, mode: str = "users") -> list[str]:
    """S: the untrusted entity plus every non-admin user (mode="users"), or only the untrusted one."""
    u = G.graph["untrusted"]
    if mode == "untrusted":
        return [u]
    return [u] + sorted(n for n, d in G.nodes(data=True)
                        if d.get("kind") == "User" and not d.get("is_admin") and n != u)
