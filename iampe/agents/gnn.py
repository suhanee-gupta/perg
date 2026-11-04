"""GATv2 policies for A (Phase 5b) and B (Phase 7), and agents that play the game with them.

Both policies map one observation graph to logits over its candidates plus one terminal action
(END for A, STOP for B) and a state value. Agents optionally record (obs, action, logp, value)
into a trajectory list for PPO.
"""
from __future__ import annotations

import torch
from torch import nn
from torch_geometric.nn import GATv2Conv

from iampe.env.features import EDGE_DIM, NODE_DIM_A, NODE_DIM_B, finder_graph, remover_graph


class _Encoder(nn.Module):
    def __init__(self, node_dim: int, hidden: int = 64, layers: int = 3, heads: int = 2):
        super().__init__()
        self.inp = nn.Linear(node_dim, hidden)
        self.convs = nn.ModuleList(GATv2Conv(hidden, hidden // heads, heads=heads, edge_dim=EDGE_DIM,
                                             add_self_loops=True, fill_value=0.0) for _ in range(layers))
        self.norms = nn.ModuleList(nn.LayerNorm(hidden) for _ in range(layers))

    def forward(self, data):
        h = torch.relu(self.inp(data.x))
        for conv, norm in zip(self.convs, self.norms):
            h = norm(h + torch.relu(conv(h, data.edge_index, data.edge_attr)))
        return h


def _pool(h):
    return torch.cat([h.mean(0), h.max(0).values]) if h.shape[0] else torch.zeros(2 * h.shape[1])


class FinderPolicy(nn.Module):
    def __init__(self, hidden: int = 64):
        super().__init__()
        self.enc = _Encoder(NODE_DIM_A, hidden)
        self.node_head = nn.Sequential(nn.Linear(hidden, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.end_head = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.value = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))

    def forward(self, data):
        h = self.enc(data)
        g = torch.cat([_pool(h), data.glob[0]])
        logits = torch.cat([self.node_head(h[data.cand]).squeeze(-1), self.end_head(g)])
        return logits, self.value(g).squeeze(-1)


class RemediatorPolicy(nn.Module):
    def __init__(self, hidden: int = 64):
        super().__init__()
        self.enc = _Encoder(NODE_DIM_B, hidden)
        self.edge_head = nn.Sequential(nn.Linear(2 * hidden + EDGE_DIM, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.stop_head = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.value = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))

    def forward(self, data):
        h = self.enc(data)
        g = torch.cat([_pool(h), data.glob[0]])
        ei = data.edge_index[:, data.cand]
        feats = torch.cat([h[ei[0]], h[ei[1]], data.edge_attr[data.cand]], dim=-1)
        logits = torch.cat([self.edge_head(feats).squeeze(-1), self.stop_head(g)])
        return logits, self.value(g).squeeze(-1)


def _sample(policy, data, greedy: bool, allow_last: bool = True):
    with torch.no_grad():
        logits, v = policy(data)
    if not allow_last:
        logits = logits.clone()
        logits[-1] = -1e9
    dist = torch.distributions.Categorical(logits=logits)
    a = int(logits.argmax()) if greedy else int(dist.sample())
    return a, float(dist.log_prob(torch.tensor(a))), float(v)


class GNNFinder:
    """`allow_end=False` (default) masks END: a query costs little and FNR is measured at budget Q."""

    def __init__(self, policy: FinderPolicy, greedy: bool = False, record: list | None = None,
                 allow_end: bool = False):
        self.policy, self.greedy, self.record, self.allow_end = policy, greedy, record, allow_end

    def act(self, game):
        data, cands = finder_graph(game)
        if not cands:
            return None
        a, logp, v = _sample(self.policy, data, self.greedy, self.allow_end)
        if self.record is not None:
            self.record.append({"data": data, "a": a, "logp": logp, "v": v, "r": 0.0, "done": False,
                                "mask_last": not self.allow_end})
        return cands[a] if a < len(cands) else None


class GNNRemover:
    """Picks edges one at a time until STOP or nothing fits the budget."""

    def __init__(self, policy: RemediatorPolicy, greedy: bool = False, record: list | None = None):
        self.policy, self.greedy, self.record = policy, greedy, record

    def cut(self, game):
        chosen, spent = [], 0.0
        while True:
            data, cands = remover_graph(game, spent, set(chosen))
            if not cands:
                break
            a, logp, v = _sample(self.policy, data, self.greedy)
            if self.record is not None:
                self.record.append({"data": data, "a": a, "logp": logp, "v": v, "r": 0.0, "done": False})
            if a >= len(cands):
                break
            chosen.append(cands[a])
            spent += game.cut_cost([cands[a]])
        return chosen
