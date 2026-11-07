"""Small PPO (clipped, GAE) and behaviour cloning for the graph policies (Phases 5c, 7).

A step is {"data", "a", "logp", "v", "r", "done"}; the policy is re-run per sample at update time
(observation graphs differ in size), which is fine on CPU for the graph sizes in this game.
"""
from __future__ import annotations

import random

import torch


def gae(steps: list[dict], gamma: float = 0.99, lam: float = 0.95) -> None:
    """Adds "adv" and "ret" to each step (episodes are delimited by done=True)."""
    adv, nxt_v = 0.0, 0.0
    for s in reversed(steps):
        if s["done"]:
            adv, nxt_v = 0.0, 0.0
        delta = s["r"] + gamma * nxt_v - s["v"]
        adv = delta + gamma * lam * adv
        s["adv"], s["ret"] = adv, adv + s["v"]
        nxt_v = s["v"]


def ppo_update(policy, opt, steps: list[dict], epochs: int = 4, clip: float = 0.2, ent_coef: float = 0.01,
               vf_coef: float = 0.5, minibatch: int = 64, rng: random.Random | None = None,
               gamma: float = 0.99, lam: float = 0.95) -> dict:
    if not steps:
        return {}
    rng = rng or random.Random(0)
    gae(steps, gamma, lam)
    advs = torch.tensor([s["adv"] for s in steps])
    mean, std = advs.mean(), advs.std() + 1e-8
    stats = {"loss": 0.0, "n": 0}
    dev = next(policy.parameters()).device
    for _ in range(epochs):
        order = list(range(len(steps)))
        rng.shuffle(order)
        for i in range(0, len(order), minibatch):
            mb = [steps[j] for j in order[i:i + minibatch]]
            logits, values = policy.forward_batch([s["data"] for s in mb])
            losses = []
            for s, lg, v in zip(mb, logits, values):
                if s.get("mask_last"):
                    lg = torch.cat([lg[:-1], lg.new_full((1,), -1e9)])
                dist = torch.distributions.Categorical(logits=lg)
                ratio = torch.exp(dist.log_prob(torch.tensor(s["a"], device=dev)) - s["logp"])
                adv = float((s["adv"] - mean) / std)
                pg = -torch.min(ratio * adv, torch.clamp(ratio, 1 - clip, 1 + clip) * adv)
                losses.append(pg + vf_coef * (v - s["ret"]) ** 2 - ent_coef * dist.entropy())
            loss = torch.stack(losses).mean()
            opt.zero_grad()
            loss.backward()
            torch.nn.utils.clip_grad_norm_(policy.parameters(), 1.0)
            opt.step()
            stats["loss"] += loss.item()
            stats["n"] += 1
    return {"loss": stats["loss"] / max(1, stats["n"]), "steps": len(steps)}


def bc_update(policy, opt, pairs: list[tuple], epochs: int = 5, minibatch: int = 64,
              rng: random.Random | None = None) -> float:
    """Cross-entropy on (data, target index) pairs. Returns final mean loss."""
    rng = rng or random.Random(0)
    last = 0.0
    for _ in range(epochs):
        rng.shuffle(pairs)
        tot, n = 0.0, 0
        for i in range(0, len(pairs), minibatch):
            mb = pairs[i:i + minibatch]
            logits, _ = policy.forward_batch([d for d, _ in mb])
            dev = logits[0].device
            loss = torch.stack([torch.nn.functional.cross_entropy(lg[None], torch.tensor([y], device=dev))
                                for lg, (_, y) in zip(logits, mb)]).mean()
            opt.zero_grad()
            loss.backward()
            opt.step()
            tot, n = tot + loss.item(), n + 1
        last = tot / max(1, n)
    return last
