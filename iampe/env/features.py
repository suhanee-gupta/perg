"""Observations -> torch_geometric graphs for the GNN policies.

Finder graph: A's view. Node mode: known nodes; edge mode: every entity (public), the admin sink and
every template hub id (public, iampe/env/query_space.py). Edges: A's revealed live edges. Candidates:
node mode, the nodes A may query (then END); edge mode, the frontier actors (then END, always masked in
the standard game). In edge mode the policy then scores the chosen actor's questions (v, key) with
`finder_options`, so it never has to score every (actor, template, target) triple at once.

Node features (both modes; a feature that does not apply in a mode is 0):
  kind one-hot | source | proven this round | revealed out-degree | revealed in-degree |
  hop distance from the unproven sources over revealed edges | asked (node: queried; edge: share of
  the actor's questions asked) | declined (node: this node; edge: declined questions from it) |
  candidate (node: may be queried; edge: on the frontier) | FALSE answers from it | FALSE answers into it
Global features: query cost so far / |S|, proven / |S|, queries left this round (absolute, /100,
capped at 1, so a model trained at one Q reads other budgets on the same scale), round k / K.

Remover graph: seen live edges (proofs; with b_sees="revealed" all of A's revealed edges). Node
features: kind one-hot | proven source | source | hop distance from the proven sources | admin sink |
hop distance from any source (reaches routes A explored but did not prove) | admin principal (B is
the account owner and knows its admins). Edge features: category, log w, times on this round's proofs,
already chosen. Candidates: cuttable seen edges that still fit the remaining budget, then STOP.
"""
from __future__ import annotations

import math
from collections import deque

import torch
from torch_geometric.data import Data

from iampe.env.query_space import all_hubs, key_index
from iampe.graph.build import ADMIN, HUB

KINDS = ["User", "Group", "Role", "Service", "Admin", "Hub"]
CATS = ["CredentialTakeover", "PermissionRequest", "CodeExecution", "PermissionInheritance",
        "PermissionDelegation", "Admin"]
NODE_DIM_A = len(KINDS) + 10
GLOB_A = 4
NODE_DIM_B = len(KINDS) + 6
EDGE_DIM = len(CATS) + 3


def _onehot(i: int, n: int) -> list[float]:
    v = [0.0] * n
    if 0 <= i < n:
        v[i] = 1.0
    return v


def _kind(G, n) -> int:
    k = G.nodes[n].get("kind") if n in G else ("Hub" if n.startswith(HUB) else None)
    return KINDS.index(k) if k in KINDS else 0


def _logw(w: float) -> float:
    return math.log1p(min(w, 1e3)) / math.log1p(1e3)


def _edge_feat(d: dict, extra: list[float]) -> list[float]:
    c = d.get("category")
    return _onehot(CATS.index(c) if c in CATS else -1, len(CATS)) + [_logw(float(d.get("w", 1.0)))] + extra


def _hops(nodes, edges, start) -> dict:
    adj = {}
    for u, v in edges:
        adj.setdefault(u, []).append(v)
    dist, q = {s: 0 for s in start}, deque(start)
    while q:
        u = q.popleft()
        for v in adj.get(u, ()):
            if v not in dist:
                dist[v] = dist[u] + 1
                q.append(v)
    return dist


def _log4(n: int) -> float:
    return math.log1p(n) / 4


def finder_graph(game) -> tuple[Data, list[str]]:
    """Returns (data, candidates); data.cand indexes the candidate nodes, END is the implicit last action.
    In edge mode data.node_ids keeps the node order for `finder_options`."""
    G = game.G
    edge_mode = game.qs is not None
    revealed = [e for e in game.revealed if game.lg.live(e)]
    ends = {e[0] for e in revealed} | {e[1] for e in revealed}
    nodes = sorted(game.known_nodes() | ends | {ADMIN} | (set(all_hubs()) if edge_mode else set()))
    idx = {n: i for i, n in enumerate(nodes)}
    outdeg, indeg = {}, {}
    for u, v, _ in revealed:
        outdeg[u] = outdeg.get(u, 0) + 1
        indeg[v] = indeg.get(v, 0) + 1
    dist = _hops(nodes, [(u, v) for u, v, _ in revealed], [s for s in game.S if s not in game.proven] or game.S)
    cands = game.query_candidates()
    cand_set = set(cands)
    asked, declined, f_out, f_in = {}, {}, {}, {}
    if edge_mode:
        for u in cand_set | set(game.S):
            n_q = game.qs.size(u)
            asked[u] = (n_q - game.remaining(u)) / n_q if n_q else 1.0
        for q in game.declined:
            declined[q[0]] = declined.get(q[0], 0) + 1
        for q, ok in game.answers.items():
            if not ok:
                f_out[q[0]] = f_out.get(q[0], 0) + 1
                f_in[q[1]] = f_in.get(q[1], 0) + 1
    else:
        queried = game.queried_ever if game.cfg.a_memory else game.queried
        asked = {n: 1.0 for n in queried}
        declined = {n: 1 for n in game.declined}
    S = set(game.S)
    x = [_onehot(_kind(G, n), len(KINDS)) +
         [float(n in S), float(n in game.proven), _log4(outdeg.get(n, 0)), _log4(indeg.get(n, 0)),
          min(dist.get(n, 9), 9) / 9, asked.get(n, 0.0), _log4(declined.get(n, 0)) if edge_mode else float(n in declined),
          float(n in cand_set), _log4(f_out.get(n, 0)), _log4(f_in.get(n, 0))]
         for n in nodes]
    ei = [[idx[u], idx[v]] for u, v, _ in revealed]
    ea = [_edge_feat(G.edges[e], [0.0, 0.0]) for e in revealed]
    left = 1.0 if game.cfg.Q is None else min(game.cfg.Q - game.queries, 100) / 100
    data = Data(x=torch.tensor(x, dtype=torch.float32).reshape(-1, NODE_DIM_A),
                edge_index=torch.tensor(ei, dtype=torch.long).t().reshape(2, -1),
                edge_attr=torch.tensor(ea, dtype=torch.float32).reshape(-1, EDGE_DIM),
                cand=torch.tensor([idx[c] for c in cands], dtype=torch.long),
                glob=torch.tensor([[game.query_cost / max(1, len(game.S)), len(game.proven) / max(1, len(game.S)),
                                    left, game.k / max(1, game.cfg.K)]], dtype=torch.float32))
    if edge_mode:
        data.node_ids = nodes
    return data, cands


def finder_options(game, data: Data, u: str) -> tuple[list[tuple[str, str]], torch.Tensor, torch.Tensor]:
    """Edge mode: u's unasked questions as (v, key), with the target node indices into `data` and the
    template indices for the policy's template embedding."""
    idx = {n: i for i, n in enumerate(data.node_ids)}
    opts = game.options(u)
    return (opts, torch.tensor([idx[v] for v, _ in opts], dtype=torch.long),
            torch.tensor([key_index(k) for _, k in opts], dtype=torch.long))


def remover_graph(game, spent: float, chosen: set) -> tuple[Data, list]:
    """B's view after picking `chosen` this round (cost `spent`). Returns (data, candidate edges)."""
    G = game.G
    obs = game.b_observe()
    seen = [e for e in obs.seen]
    nodes = sorted({n for e in seen for n in e[:2]} | {ADMIN})
    idx = {n: i for i, n in enumerate(nodes)}
    proven = obs.proven_ever
    hop_edges = [(u, v) for u, v, _ in seen]
    dist = _hops(nodes, hop_edges, [s for s in game.S if s in proven])
    dist_any = _hops(nodes, hop_edges, [s for s in game.S if s in idx])
    x = [_onehot(_kind(G, n), len(KINDS)) +
         [float(n in proven), float(n in game.S), min(dist.get(n, 9), 9) / 9, float(n == ADMIN),
          min(dist_any.get(n, 9), 9) / 9, float(bool(G.nodes[n].get("is_admin")))] for n in nodes]
    times = {}
    for p in obs.proofs:
        for e in p:
            times[e] = times.get(e, 0) + 1
    left = obs.budget - spent
    # w comes from the game (1 under the w_const ablation), not straight from the graph
    ea = [_edge_feat(G.edges[e] | {"w": game.w(e)}, [min(times.get(e, 0), 5) / 5, float(e in chosen)]) for e in seen]
    cands = [e for e in seen if e not in chosen and game.w(e) < float("inf")
             and game.cut_cost([e]) <= left + 1e-9]
    pos = {e: i for i, e in enumerate(seen)}
    data = Data(x=torch.tensor(x, dtype=torch.float32).reshape(-1, NODE_DIM_B),
                edge_index=torch.tensor([[idx[u], idx[v]] for u, v, _ in seen], dtype=torch.long).t().reshape(2, -1),
                edge_attr=torch.tensor(ea, dtype=torch.float32).reshape(-1, EDGE_DIM),
                cand=torch.tensor([pos[e] for e in cands], dtype=torch.long),
                glob=torch.tensor([[spent / obs.budget if obs.budget < float("inf") else min(spent, 1.0),
                                    len(proven) / max(1, len(game.S))]],
                                  dtype=torch.float32))
    return data, cands
