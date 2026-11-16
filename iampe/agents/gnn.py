"""GATv2 policies for A (Phase 5b) and B (Phase 7), and agents that play the game with them.

Both policies map one observation graph to logits over its candidates plus one terminal action
(END for A, STOP for B) and a state value. Agents optionally record (obs, action, logp, value)
into a trajectory list for PPO.

In edge mode (yes/no questions) A's action is factorised: pi(u, v, key) = pi(u) * pi(v, key | u). The
first factor scores the frontier actors (as the node-mode policy scores nodes); the second scores u's
unasked questions from [h_u, h_v, template embedding]. The chosen actor's questions are stored on the
observation (opt_v, opt_k) so PPO and imitation can recompute both factors. An action is an int in node
mode and a pair (actor index, question index) in edge mode.
"""
from __future__ import annotations

import torch
from torch import nn
from torch_geometric.data import Batch
from torch_geometric.nn import GATv2Conv, global_max_pool, global_mean_pool

from iampe.env.features import EDGE_DIM, GLOB_A, NODE_DIM_A, NODE_DIM_B, finder_graph, finder_options, remover_graph
from iampe.env.query_space import key_vocab


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

    def evaluate_actions(self, datas, actions, mask_last):
        """log pi(a | obs), entropy and value per sample (PPO and imitation use this). `mask_last` masks
        the terminal action (END/STOP) for that sample."""
        logits, values = self.forward_batch(datas)
        logps, ents = [], []
        for lg, a, m in zip(logits, actions, mask_last):
            d = torch.distributions.Categorical(logits=_mask(lg, m))
            a = torch.tensor(a, device=lg.device)
            logps.append(d.log_prob(a))
            ents.append(d.entropy())
        return torch.stack(logps), torch.stack(ents), values


def _mask(lg, mask_last: bool):
    return torch.cat([lg[:-1], lg.new_full((1,), -1e9)]) if mask_last else lg


class FinderPolicy(_GraphPolicy):
    def __init__(self, hidden: int = 64, key_dim: int = 16):
        super().__init__()
        self.enc = _Encoder(NODE_DIM_A, hidden)
        self.node_head = nn.Sequential(nn.Linear(hidden, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.end_head = nn.Sequential(nn.Linear(2 * hidden + GLOB_A, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.value = nn.Sequential(nn.Linear(2 * hidden + GLOB_A, hidden), nn.ReLU(), nn.Linear(hidden, 1))
        self.key_emb = nn.Embedding(len(key_vocab()) + 1, key_dim)
        self.pair_head = nn.Sequential(nn.Linear(2 * hidden + key_dim, hidden), nn.ReLU(), nn.Linear(hidden, 1))

    def _encode(self, datas):
        b, h, g, ncand = self._prep(datas)
        offs = b.ptr[:-1].repeat_interleave(torch.tensor(ncand, device=h.device))
        node_logits = self.node_head(h[b.cand + offs]).squeeze(-1).split(ncand)
        end = self.end_head(g).squeeze(-1)
        logits = [torch.cat([nl, end[i:i + 1]]) for i, nl in enumerate(node_logits)]
        return b, h, logits, self.value(g).squeeze(-1)

    def forward_batch(self, datas):
        _, _, logits, values = self._encode(datas)
        return logits, values

    def question_logits(self, h, off: int, u_node: int, opt_v, opt_k):
        """Logits over one actor's questions: h is the batch's node embeddings, off the graph's first
        node, u_node the actor's node index and opt_v / opt_k the questions' targets and templates."""
        dev = h.device
        hv = h[off + opt_v.to(dev)]
        hu = h[off + u_node].expand(hv.shape[0], -1)
        return self.pair_head(torch.cat([hu, hv, self.key_emb(opt_k.to(dev))], dim=-1)).squeeze(-1)

    def evaluate_actions(self, datas, actions, mask_last):
        b, h, logits, values = self._encode(datas)
        logps, ents = [], []
        for i, (d, lg, a, m) in enumerate(zip(datas, logits, actions, mask_last)):
            a0 = a[0] if isinstance(a, (tuple, list)) else a
            d1 = torch.distributions.Categorical(logits=_mask(lg, m))
            lp, ent = d1.log_prob(torch.tensor(a0, device=lg.device)), d1.entropy()
            if isinstance(a, (tuple, list)):          # edge mode: add the question factor
                ql = self.question_logits(h, int(b.ptr[i]), int(d.cand[a0]), d.opt_v, d.opt_k)
                d2 = torch.distributions.Categorical(logits=ql)
                lp = lp + d2.log_prob(torch.tensor(a[1], device=lg.device))
                # H(u) + H(question | sampled u): a one-sample estimate of the joint entropy (exact in
                # expectation over u), enough for PPO's entropy bonus
                ent = ent + d2.entropy()
            logps.append(lp)
            ents.append(ent)
        return torch.stack(logps), torch.stack(ents), values


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


def _pick(logits, greedy: bool):
    dist = torch.distributions.Categorical(logits=logits)
    a = int(logits.argmax()) if greedy else int(dist.sample())
    return a, float(dist.log_prob(torch.tensor(a)))


def _sample(policy, data, greedy: bool, allow_last: bool = True):
    with torch.no_grad():
        logits, v = policy(data)
        logits, v = logits.cpu(), v.cpu()
    a, logp = _pick(_mask(logits, not allow_last), greedy)
    return a, logp, float(v)


class GNNFinder:
    """`allow_end=False` (the default, as in Greybox-TAC) masks END: the game's budget ends the turn.
    Plays both query modes; in edge mode it picks an actor, then one of its questions."""

    def __init__(self, policy: FinderPolicy, greedy: bool = False, record: list | None = None,
                 allow_end: bool = False):
        self.policy, self.greedy, self.record, self.allow_end = policy, greedy, record, allow_end

    def act(self, game):
        data, cands = finder_graph(game)
        if not cands:
            return None
        if game.qs is None:
            a, logp, v = _sample(self.policy, data, self.greedy, self.allow_end)
            q = cands[a] if a < len(cands) else None
        else:
            with torch.no_grad():
                b, h, logits, values = self.policy._encode([data])
                a0, lp0 = _pick(_mask(logits[0].cpu(), not self.allow_end), self.greedy)
                if a0 >= len(cands):                  # END (only with allow_end): no question factor
                    data.opt_v = data.opt_k = torch.zeros(0, dtype=torch.long)
                    a, logp, v, q = a0, lp0, float(values[0]), None
                else:
                    opts, data.opt_v, data.opt_k = finder_options(game, data, cands[a0])
                    ql = self.policy.question_logits(h, 0, int(data.cand[a0]), data.opt_v, data.opt_k).cpu()
                    a1, lp1 = _pick(ql, self.greedy)
                    a, logp, v = (a0, a1), lp0 + lp1, float(values[0])
                    q = (cands[a0],) + opts[a1]
            del data.node_ids                         # only needed to build the options
        if self.record is not None:
            self.record.append({"data": data, "a": a, "logp": logp, "v": v, "r": 0.0, "done": False,
                                "mask_last": not self.allow_end})
        return q


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
