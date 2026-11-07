"""Synthetic permission graphs for pretraining Finder A (adapted from Greybox-TAC's gen.py).

Greybox-TAC builds each task backwards from a planted escalation chain of length 1-5 (probabilities
.25/.30/.20/.15/.10), with about N(137, 70) entities clipped to [14, 320], and verifies it with the
whitebox checker. We keep that recipe and change what is needed for our game:

  * graphs are produced directly in our format (the same node kinds, edge attributes and admin node
    as experiments/build_graphs.py), so no Terraform or converter is involved;
  * edge types (kind -> kind, prim, category) are drawn with the frequencies seen in the real
    training graphs, instead of Greybox-TAC's hand-written template list, so the synthetic graphs look
    like ours; groups are left out (in our graphs they only carry admin rights, never cuttable edges);
  * several sources get planted chains (our game has many sources, not one untrusted entity), and
    chains may share nodes, so one cut can close several sources;
  * admin principals (2-5, as in the real graphs) reach admin through uncuttable holds_admin edges;
    background edges never point into admin or an admin principal, so the only escalations are the
    planted ones plus whatever background edges lead into a planted chain.
All cuttable edges get w = 1, as in every real training graph.
"""
from __future__ import annotations

import random
from collections import Counter

import networkx as nx

from iampe.checker.reach import LiveGraph
from iampe.graph.build import ADMIN

CHAIN_LEN = ([1, 2, 3, 4, 5], [.25, .30, .20, .15, .10])        # Greybox-TAC gen.py
KIND_P = {"User": .45, "Role": .38, "Service": .17}           # real training graphs, groups left out


def edge_table(graphs) -> Counter:
    """(kind_u, kind_v, prim, category) -> count over the cuttable edges of real graphs."""
    t = Counter()
    for G in graphs:
        for u, v, d in G.edges(data=True):
            if d.get("cuttable"):
                t[(G.nodes[u].get("kind"), G.nodes[v].get("kind"), d["prim"], d["category"])] += 1
    return t


def _pick(rng: random.Random, counts: dict):
    keys = list(counts)
    return rng.choices(keys, weights=[counts[k] for k in keys])[0]


def gen_graph(seed: int, table: Counter, n: int | None = None, max_planted: int = 6,
              density: float = 0.55, share: float = 0.3) -> nx.MultiDiGraph:
    """One synthetic graph. `density` = background cuttable edges per node (real: 0.47-0.64)."""
    rng = random.Random(seed)
    if n is None:
        n = int(min(320, max(14, rng.gauss(137, 70))))
    G = nx.MultiDiGraph(name=f"synth-{seed}", w_mode="shared", synthetic=True)
    G.add_node(ADMIN, kind="Admin")
    by_kind: dict[str, list[str]] = {k: [] for k in KIND_P}
    for i in range(n):
        k = _pick(rng, KIND_P)
        node = f"{k.lower()}:s{i}"
        G.add_node(node, kind=k)
        by_kind[k].append(node)
    for k in ("User", "Role"):                       # every graph needs both kinds
        if not by_kind[k]:
            node = f"{k.lower()}:s{n}"
            n += 1
            G.add_node(node, kind=k)
            by_kind[k].append(node)

    def add(u, v, prim, cat, cuttable=True):
        G.add_edge(u, v, key=prim, prim=prim, category=cat, policies=(f"policy:{u}",),
                   w=1.0 if cuttable else float("inf"), cuttable=cuttable)

    principals = by_kind["User"] + by_kind["Role"]
    admins = set(rng.sample(principals, min(len(principals) - 1, rng.randint(2, 5))))
    for a in admins:
        G.nodes[a]["is_admin"] = True
        add(a, ADMIN, "holds_admin", "Admin", cuttable=False)
    normal = {k: [x for x in v if x not in admins] for k, v in by_kind.items()}

    inner = {k: c for k, c in table.items() if k[1] not in ("Admin", "Hub") and k[0] != "Hub"}
    for _ in range(int(density * n)):
        ku, kv, prim, cat = _pick(rng, inner)
        if normal.get(ku) and normal.get(kv):
            u, v = rng.choice(normal[ku]), rng.choice(normal[kv])
            if u != v:
                add(u, v, prim, cat)

    to_role = {k: c for k, c in inner.items() if k[1] == "Role"}
    to_admin = {k: c for k, c in table.items() if k[1] == "Admin"}
    admin_roles = [a for a in admins if G.nodes[a]["kind"] == "Role"]
    starts = [x for x in normal["User"] + normal["Role"]]
    rng.shuffle(starts)
    planted, chain_nodes = [], []
    for s in starts[:rng.randint(1, max_planted)]:
        cur, length = s, rng.choices(*CHAIN_LEN)[0]
        for _ in range(length - 1):                  # intermediate hops land on roles
            opts = {k: c for k, c in to_role.items() if k[0] == G.nodes[cur]["kind"]}
            if not opts:
                break
            ku, kv, prim, cat = _pick(rng, opts)
            pool = [x for x in chain_nodes if x != cur and G.nodes[x]["kind"] == "Role"]
            nxt = rng.choice(pool) if pool and rng.random() < share else rng.choice(
                [x for x in normal["Role"] if x != cur] or normal["Role"])
            if nxt == cur:
                break
            add(cur, nxt, prim, cat)
            chain_nodes.append(nxt)
            cur = nxt
        k = G.nodes[cur]["kind"]
        direct = {x: c for x, c in to_admin.items() if x[0] == k}
        via_role = {x: c for x, c in to_role.items() if x[0] == k}
        if admin_roles and via_role and (not direct or rng.random() < 0.5):
            ku, kv, prim, cat = _pick(rng, via_role)
            add(cur, rng.choice(admin_roles), prim, cat)
        elif direct:
            ku, kv, prim, cat = _pick(rng, direct)
            add(cur, ADMIN, prim, cat)
        else:
            continue
        planted.append(s)
    if not planted:                                  # always at least one escalation
        s = rng.choice(normal["User"] + normal["Role"])
        add(s, ADMIN, "attach-role-policy", "PermissionRequest")
        planted.append(s)
    G.graph["untrusted"] = planted[0]
    G.graph["planted"] = planted
    reach = LiveGraph(G).can_reach_admin()
    assert all(s in reach for s in planted), "planted source cannot reach admin"
    return G
