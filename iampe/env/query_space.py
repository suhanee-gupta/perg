"""Edge-level yes/no queries for Finder A (TAC-style answers, our takeover edges).

A query is one triple (u, v, key): "can u take over v with template `key`?", i.e. does the edge
u -[key]-> v exist (and is it still live)? The answer is TRUE, FALSE, or UNKNOWN (declined), as in
Greybox-TAC, where a query is one (entity, permission) pair. Our unit is one takeover edge instead of
one permission because our graph already combines a template's permissions into one edge
(iampe/graph/build.py); a permission-level version is a later step (docs/STATUS.md, open items).

What A may use to form queries is public information only, as in TAC's query space Q = E_vis x P_vis:
  * every entity id and its kind (User, Group, Role, Service), the admin sink, and the template list;
  * which (actor kind, template, target kind) combinations a template can produce. This schema is read
    from the template definitions (src_types, sink_types, sink, ops), never from the hidden graph,
    and follows the edge rules of iampe/graph/build.py:
      - holds_admin: any actor -> admin (the actor holds `*@*`; TAC's "target permission" query);
      - sink "any" templates (modify a policy of yourself): actor -> admin, when the actor, a group of
        a user actor, or the role a compute actor runs as is a sink type;
      - sink "actor" templates: actor -> every entity of a src type, and actor -> the template's hub
        `any:<template>` (require "all": every src op held on `*`) or `any:<template>|<action>`
        (require "any": that one op held on `*`).
    Hub ids come from the templates too, so asking about a hub that does not exist in this account
    is allowed (the answer is FALSE) and the set of hubs leaks nothing.
  * A hub's out-edges (hub -> each valid target of the template) are uncuttable and derived by the
    graph builder from public entity types; they are revealed once A confirms an edge into the hub.

Query space per actor: |schema(kind)| groups of (key, target spec, targets). Groups are kept implicit (key + a
shared list of targets) so even the largest config (28k nodes) is cheap to hold.
"""
from __future__ import annotations

from collections import Counter, defaultdict
from functools import lru_cache

import networkx as nx

from iampe.graph.build import ADMIN, HUB

HOLDS_ADMIN = "holds_admin"
ENTITY_KINDS = ("User", "Group", "Role", "Service")
ACTOR_KINDS = ("User", "Group", "Role", "Service")


@lru_cache(maxsize=1)
def schema() -> dict[str, tuple[tuple[str, str], ...]]:
    """actor kind -> ((key, target), ...) where target is an entity kind, ADMIN, or a hub id."""
    import env                                     # loads the vendored template list
    out: dict[str, list[tuple[str, str]]] = {k: [(HOLDS_ADMIN, ADMIN)] for k in ACTOR_KINDS}
    for t in env.templates():
        for kind in ACTOR_KINDS:
            if t.sink == "any":
                st = set(t.sink_types)
                if kind in st or (kind == "User" and "Group" in st) or (kind == "Service" and "Role" in st):
                    out[kind].append((t.id, ADMIN))
                continue
            actor = "User" if kind == "Group" else kind
            if actor not in t.sink_types:
                continue
            for sk in sorted(t.src_types):
                if sk in ENTITY_KINDS:
                    out[kind].append((t.id, sk))
            src_ops = [op for op in t.ops if op.on == "src"]
            if t.require == "any":
                for op in src_ops:
                    key = f"{t.id}|{op.action}"
                    out[kind].append((key, HUB + key))
            elif src_ops:
                out[kind].append((t.id, HUB + t.id))
    return {k: tuple(dict.fromkeys(v)) for k, v in out.items()}


@lru_cache(maxsize=1)
def key_vocab() -> dict[str, int]:
    """Template id -> index for the policy's template embedding (0 = unknown). Hub keys `t|action`
    map to their template t."""
    import env
    ids = sorted({HOLDS_ADMIN} | {t.id for t in env.templates()})
    return {k: i + 1 for i, k in enumerate(ids)}


def key_index(key: str) -> int:
    return key_vocab().get(key.split("|")[0], 0)


def all_hubs() -> list[str]:
    return sorted({tgt for groups in schema().values() for _, tgt in groups if tgt.startswith(HUB)})


class QuerySpace:
    """Public view of one account: entities by kind and each actor's query groups."""

    def __init__(self, G: nx.MultiDiGraph):
        self.G = G
        self.by_kind: dict[str, list[str]] = defaultdict(list)
        for n, d in G.nodes(data=True):
            if d.get("kind") in ENTITY_KINDS:
                self.by_kind[d["kind"]].append(n)
        for k in self.by_kind:
            self.by_kind[k].sort()

    def kind(self, n: str) -> str | None:
        return self.G.nodes[n].get("kind") if n in self.G else ("Hub" if n.startswith(HUB) else None)

    def targets(self, tgt: str) -> list[str]:
        """Targets of one schema entry: every entity of that kind, or the single admin/hub node."""
        return self.by_kind.get(tgt, []) if tgt in ENTITY_KINDS else [tgt]

    def groups(self, u: str) -> list[tuple[str, str, list[str]]]:
        """(key, target spec, targets) for actor u (empty for admin, hubs and non-actors). The spec is
        an entity kind, ADMIN or a hub id, as in `schema()` and `edge_prior`."""
        return [(key, tgt, self.targets(tgt)) for key, tgt in schema().get(self.kind(u), ())]

    def size(self, u: str) -> int:
        """Number of questions about u's out-edges (a target equal to u itself is excluded)."""
        return sum(len(ts) - (tgt == self.kind(u)) for _, tgt, ts in self.groups(u))

    def allowed(self, q) -> bool:
        """Is (u, v, key) in u's query space?"""
        u, v, key = q
        if u == v:
            return False
        kv = self.kind(v)
        return any(k == key and (tgt == v or (tgt in ENTITY_KINDS and kv == tgt))
                   for k, tgt in schema().get(self.kind(u), ()))


def edge_prior(graphs) -> dict[tuple[str, str, str], float]:
    """Public prior P(edge exists) per (actor kind, key, target) from training graphs: edges found over
    pairs asked, with a weak Beta(0.1, 0.9) prior so unseen combinations stay possible. Target is the
    entity kind, ADMIN, or the hub id. Used by the prior-greedy finder (training split only)."""
    hits, pairs = Counter(), Counter()
    for G in graphs:
        qs = QuerySpace(G)
        n = {k: len(v) for k, v in qs.by_kind.items()}
        for u_kind in ACTOR_KINDS:
            for key, tgt in schema()[u_kind]:
                m = n.get(u_kind, 0)
                pairs[(u_kind, key, tgt)] += m * (n.get(tgt, 0) - (tgt == u_kind)) if tgt in ENTITY_KINDS else m
        for u, v, key in G.edges(keys=True):
            ku = G.nodes[u].get("kind")
            if ku not in ACTOR_KINDS:
                continue
            tgt = v if (v == ADMIN or v.startswith(HUB)) else G.nodes[v].get("kind")
            hits[(ku, key, tgt)] += 1
    return {k: (hits[k] + 0.1) / (pairs[k] + 1.0) for k in pairs}
