"""Small PPO (clipped, GAE) and behaviour cloning for the graph policies (Phases 5c, 7).

A step is {"data", "a", "logp", "v", "r", "done", "mask_last"?}; at update time the policy recomputes
log pi(a | obs) with `policy.evaluate_actions` (observation graphs differ in size and, in edge mode,
the action is a pair), so PPO and imitation share one code path for both policies and both modes.
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
    mean = advs.mean()
    std = (advs.std() if len(steps) > 1 else torch.tensor(1.0)) + 1e-8
    stats = {"loss": 0.0, "n": 0}
    for _ in range(epochs):
        order = list(range(len(steps)))
        rng.shuffle(order)
        for i in range(0, len(order), minibatch):
            mb = [steps[j] for j in order[i:i + minibatch]]
            logp, ent, values = policy.evaluate_actions([s["data"] for s in mb], [s["a"] for s in mb],
                                                        [bool(s.get("mask_last")) for s in mb])
            dev = logp.device
            old = torch.tensor([s["logp"] for s in mb], device=dev)
            adv = (torch.tensor([s["adv"] for s in mb], device=dev) - mean.to(dev)) / std.to(dev)
            ret = torch.tensor([s["ret"] for s in mb], device=dev)
            ratio = torch.exp(logp - old)
            pg = -torch.min(ratio * adv, torch.clamp(ratio, 1 - clip, 1 + clip) * adv)
            loss = (pg + vf_coef * (values - ret) ** 2 - ent_coef * ent).mean()
            opt.zero_grad()
            loss.backward()
            torch.nn.utils.clip_grad_norm_(policy.parameters(), 1.0)
            opt.step()
            stats["loss"] += loss.item()
            stats["n"] += 1
    return {"loss": stats["loss"] / max(1, stats["n"]), "steps": len(steps)}


def bc_update(policy, opt, pairs: list[tuple], epochs: int = 5, minibatch: int = 64,
              rng: random.Random | None = None) -> float:
    """Imitation: maximise log pi(teacher action) on (data, action) pairs (an int, or a pair in edge
    mode; the terminal action is never masked here, a teacher may choose it). Returns final mean loss."""
    rng = rng or random.Random(0)
    last = 0.0
    for _ in range(epochs):
        rng.shuffle(pairs)
        tot, n = 0.0, 0
        for i in range(0, len(pairs), minibatch):
            mb = pairs[i:i + minibatch]
            logp, _, _ = policy.evaluate_actions([d for d, _ in mb], [y for _, y in mb], [False] * len(mb))
            loss = -logp.mean()
            opt.zero_grad()
            loss.backward()
            opt.step()
            tot, n = tot + loss.item(), n + 1
        last = tot / max(1, n)
    return last
