"""GATv2 policies for A (Phase 5b) and B (Phase 7), and agents that play the game with them.

Both policies map one observation graph to logits over its candidates plus one terminal action
(END for A, STOP for B) and a state value. Agents optionally record (obs, action, logp, value)
into a trajectory list for PPO.
"""
from __future__ import annotations

import torch
from torch import nn
from torch_geometric.data import Batch
from torch_geometric.nn import GATv2Conv, global_max_pool, global_mean_pool

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


class _GraphPolicy(nn.Module):
    """Shared batching: `forward_batch(datas)` encodes many observation graphs at once and returns
    one logit vector per graph (its candidates, then the terminal action) and a value per graph."""

    def _prep(self, datas):
        dev = next(self.parameters()).device
        b = Batch.from_data_list(datas).to(dev)
        h = self.enc(b)
        g = torch.cat([global_mean_pool(h, b.batch, len(datas)), global_max_pool(h, b.batch, len(datas)), b.glob], dim=-1)
        ncand = [int(d.cand.numel()) for d in datas]
        return b, h, g, ncand

    def forward(self, data):
        logits, v = self.forward_batch([data])
        return logits[0], v[0]


class FinderPolicy(_GraphPolicy):
    def __init__(self, hidden: int = 64):
        super().__init__()
        self.enc = _Encoder(NODE_DIM_A, hidden)
        self.node_head = nn.Sequential(nn.Linear(hidden, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.end_head = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.value = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))

    def forward_batch(self, datas):
        b, h, g, ncand = self._prep(datas)
        offs = b.ptr[:-1].repeat_interleave(torch.tensor(ncand, device=h.device))
        node_logits = self.node_head(h[b.cand + offs]).squeeze(-1).split(ncand)
        end = self.end_head(g).squeeze(-1)
        return [torch.cat([nl, end[i:i + 1]]) for i, nl in enumerate(node_logits)], self.value(g).squeeze(-1)


class RemediatorPolicy(_GraphPolicy):
    def __init__(self, hidden: int = 64):
        super().__init__()
        self.enc = _Encoder(NODE_DIM_B, hidden)
        self.edge_head = nn.Sequential(nn.Linear(2 * hidden + EDGE_DIM, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.stop_head = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.value = nn.Sequential(nn.Linear(2 * hidden + 2, hidden), nn.ReLU(), nn.Linear(hidden, 1))

    def forward_batch(self, datas):
        b, h, g, ncand = self._prep(datas)
        e_off = torch.tensor([0] + [int(d.edge_index.shape[1]) for d in datas[:-1]], device=h.device).cumsum(0)
        cg = b.cand + e_off.repeat_interleave(torch.tensor(ncand, device=h.device))
        ei = b.edge_index[:, cg]
        feats = torch.cat([h[ei[0]], h[ei[1]], b.edge_attr[cg]], dim=-1)
        edge_logits = self.edge_head(feats).squeeze(-1).split(ncand)
        stop = self.stop_head(g).squeeze(-1)
        return [torch.cat([el, stop[i:i + 1]]) for i, el in enumerate(edge_logits)], self.value(g).squeeze(-1)


def _sample(policy, data, greedy: bool, allow_last: bool = True):
    with torch.no_grad():
        logits, v = policy(data)
        logits, v = logits.cpu(), v.cpu()
    if not allow_last:
        logits = logits.clone()
        logits[-1] = -1e9
    dist = torch.distributions.Categorical(logits=logits)
    a = int(logits.argmax()) if greedy else int(dist.sample())
    return a, float(dist.log_prob(torch.tensor(a))), float(v)


class GNNFinder:
    """`allow_end=False` masks END (used for fixed-budget evaluation, e.g. FNR@100)."""

    def __init__(self, policy: FinderPolicy, greedy: bool = False, record: list | None = None,
                 allow_end: bool = True):
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
