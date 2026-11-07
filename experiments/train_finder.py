"""Phase 5c: train Finder A (GATv2 + PPO) in the standard game (iampe/env/game.py standard_config).

    # 1. pretrain on synthetic graphs with a size curriculum (Greybox-TAC: pass 0 sorted by size)
    python -m experiments.train_finder --synth data/synth --stages 4 --iters 50 --name finder_pre
    # 2. fine-tune on the real training configs
    python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --iters 30 --name finder
    # 3. (optional) fine-tune against a remover over several rounds
    python -m experiments.train_finder --init runs/finder/finder.best.pt --rounds 5 --opponent minseen --name finder_vsB

What follows Greybox-TAC (train.py) and what does not:
  * fixed budget Q per round, no END, -1 per query (mu=1), declines (10%)          as Greybox-TAC
  * shaping gamma*Phi(s') - Phi(s), Phi(end) = 0, training only                    as Greybox-TAC
  * PPO: AdamW lr 1e-4, gamma 1, GAE lambda 0.95, clip 0.2, entropy 0.01, 2 epochs as Greybox-TAC
  * +1 per source proven, round ends once every open source is proven              ours: many sources
  * Phi = unrevealed edges on the true shortest paths of unproven open sources     ours: no single plan
  * warm start by imitating the bandit finder (--bc; 0 = off, Greybox-TAC has none) ours: little data
  * Q = 20 (Greybox-TAC trains at 40): at 40 BFS already finds every source on our small configs
  * one pooled model                                                               as the Greybox-TAC replication
Model selection: FNR at Q (lower is better, then fewer queries) on --eval-orgs (default: the real
train split), single round, no B. Saves runs/finder/<name>.pt (last) and <name>.best.pt.
"""
from __future__ import annotations

import argparse
import json
import random
import time
from pathlib import Path

import torch

from experiments.common import RUNS, device, fnr, load_graph, make_finder, make_remover, split_orgs
from iampe.agents.gnn import FinderPolicy, GNNFinder
from iampe.agents.ppo import bc_update, ppo_update
from iampe.agents.rollout import finder_bc_pairs, finder_episode
from iampe.env.game import GameConfig, standard_config
from iampe.graph.io import load_graph_file

EVAL_SEEDS = (100, 101, 102)
TEACHER = "bandit:models/linucb.npz"
BASELINES = ["random", "bfs", "greedy", TEACHER]


def evaluate(finder, graphs, Q: int, decline_p: float, seeds=EVAL_SEEDS) -> dict:
    """FNR at Q over graphs with open sources (mean), and mean queries used. Single round, no B."""
    rows = [fnr(G, finder, seeds=seeds, Q=Q, decline_p=decline_p) for G in graphs]
    opened = [r for r in rows if r["open"]]
    return {"fnr": sum(r["fnr"] for r in opened) / max(1, len(opened)),
            "queries": sum(r["queries"] for r in rows) / max(1, len(rows))}


def fmt(m: dict) -> str:
    return f"FNR {m['fnr']:.3f} queries {m['queries']:.1f}"


def _better(m: dict, best: dict | None) -> bool:
    return best is None or (m["fnr"], m["queries"]) <= (best["fnr"], best["queries"])


def train(policy, graphs, cfg: GameConfig, opponents, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, eval_graphs, log=print, bc: int = 0, teacher: str = TEACHER, stages: int = 1,
          gamma: float = 1.0, epochs: int = 2, shaping: bool = True, pick=None, observe=None) -> FinderPolicy:
    """`graphs` are sampled from a pool that grows with the stage (curriculum: they must be sorted by
    size; stage i uses the smallest (i+1)/stages of them). `opponents`: remover specs or agents, one
    per episode (`pick(rng)` / `observe(opponent, logs)` let co-training plug in EXP3)."""
    rng = random.Random(seed)
    opt = torch.optim.AdamW(policy.parameters(), lr=lr)
    out = RUNS / "finder"
    out.mkdir(parents=True, exist_ok=True)
    as_agent = (lambda b: make_remover(b, rng.randrange(1 << 30)) if isinstance(b, str) else b)
    pick = pick or (lambda r: r.choice(opponents))
    if bc:
        bc_cfg = GameConfig(**(cfg.__dict__ | {"K": 1}))
        pairs, tries = [], 0
        while len(pairs) < bc and tries < 50 * bc:
            pairs += finder_bc_pairs(rng.choice(graphs), bc_cfg, random.Random(rng.random()), make_finder(teacher, seed))
            tries += 1
        if pairs:
            log(f"bc: {len(pairs)} pairs from {teacher}, loss {bc_update(policy, opt, pairs, epochs=5, rng=rng):.3f}")
    best = evaluate(GNNFinder(policy, greedy=True), eval_graphs, cfg.Q, cfg.decline_p)
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: {fmt(best)}")
    it = 0
    for stage in range(stages):
        pool = graphs[:max(1, round(len(graphs) * (stage + 1) / stages))]
        for _ in range(iters):
            it += 1
            t0, steps, ret = time.time(), [], 0.0
            for _ in range(episodes):
                b = pick(rng)
                rec, logs = finder_episode(rng.choice(pool), cfg, policy, as_agent(b), random.Random(rng.random()),
                                           shaping=shaping, gamma=gamma)
                if observe:
                    observe(b, logs)
                steps += rec
                ret += sum(l.r_A for l in logs)
            stats = ppo_update(policy, opt, steps, epochs=epochs, rng=rng, gamma=gamma)
            m = evaluate(GNNFinder(policy, greedy=True), eval_graphs, cfg.Q, cfg.decline_p)
            if _better(m, best):
                best = m
                torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
            log(f"stage {stage + 1}/{stages} (pool {len(pool)}) iter {it}: return {ret / episodes:.2f} "
                f"loss {stats.get('loss', 0):.3f} steps {len(steps)} {fmt(m)} (best {fmt(best)}) {time.time() - t0:.1f}s")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def load_pool(a) -> list:
    """Training graphs sorted by size: synthetic ones from --synth, else the real --orgs / train split."""
    if a.synth:
        paths = sorted(p for p in Path(a.synth).glob("*.json") if p.name != "index.json")
        if a.max_graphs:
            paths = paths[:a.max_graphs]
        graphs = [load_graph_file(p) for p in paths]
    else:
        graphs = [load_graph(o) for o in a.orgs or split_orgs("train")]
    return sorted(graphs, key=lambda G: G.number_of_nodes())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--synth", default=None, help="directory of synthetic graphs (experiments/gen_synth.py)")
    ap.add_argument("--max-graphs", type=int, default=0)
    ap.add_argument("--orgs", nargs="+", default=None, help="real training configs (default: the train split)")
    ap.add_argument("--eval-orgs", nargs="+", default=None, help="model selection configs (default: the train split)")
    ap.add_argument("--stages", type=int, default=1, help="size-curriculum stages")
    ap.add_argument("--iters", type=int, default=30, help="PPO iterations per stage")
    ap.add_argument("--episodes", type=int, default=16)
    ap.add_argument("--Q", type=int, default=20)
    ap.add_argument("--decline", type=float, default=0.1)
    ap.add_argument("--rounds", type=int, default=1)
    ap.add_argument("--opponent", nargs="+", default=["none"], help="remover(s) between rounds (with --rounds > 1)")
    ap.add_argument("--bc", type=int, default=400, help="imitation pairs before PPO (0 = off)")
    ap.add_argument("--teacher", default=TEACHER)
    ap.add_argument("--no-shaping", action="store_true")
    ap.add_argument("--lr", type=float, default=1e-4)
    ap.add_argument("--gamma", type=float, default=1.0)
    ap.add_argument("--epochs", type=int, default=2)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--init", default=None, help="checkpoint to start from")
    ap.add_argument("--name", default="finder")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = load_pool(a)
    eval_graphs = [load_graph(o) for o in a.eval_orgs or split_orgs("train")]
    cfg = standard_config(K=a.rounds, Q=a.Q, decline_p=a.decline)
    (RUNS / "finder").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "finder" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)) + f" | {len(graphs)} training graphs, {len(eval_graphs)} eval graphs")
    for spec in BASELINES:
        log(f"baseline {spec}: {fmt(evaluate(make_finder(spec), eval_graphs, a.Q, a.decline))}")
    policy = FinderPolicy().to(device(a.device))
    if a.init:
        policy.load_state_dict(torch.load(a.init, map_location="cpu"))
    train(policy, graphs, cfg, a.opponent, a.iters, a.episodes, a.lr, a.seed, a.name, eval_graphs, log,
          0 if a.init else a.bc, a.teacher, a.stages, a.gamma, a.epochs, not a.no_shaping)


if __name__ == "__main__":
    main()
