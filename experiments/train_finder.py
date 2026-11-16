"""Phase 5c: train Finder A (GATv2 + PPO) in the standard game (iampe/env/game.py standard_config).

    # 1. pretrain on synthetic graphs with a size curriculum; select on the real val split
    python -m experiments.train_finder --synth data/synth --eval-orgs val --stages 4 --name finder_pre
    # 2. fine-tune on the real training configs (the train split, 40 configs)
    python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --eval-orgs val --stages 2 --name finder
    # 3. fine-tune in the game it is evaluated in: 5 rounds against removers
    python -m experiments.train_finder --init runs/finder/finder.best.pt --rounds 5 --opponent minseen adminfirst --name finder_vsB

Steps, in order:
  1. Imitation warm start (--bc pairs, --dagger rounds). The teacher is the whitebox oracle
     (iampe/agents/finder_heuristic.py), the strongest finder: it reads the hidden graph and asks the next
     query on a cheapest remaining path. Round 0 imitates the oracle's own games; each DAgger round then
     plays with the policy (teacher with probability 0.5**round) and labels every visited state with the
     oracle's choice, so the policy also learns what to do after its own mistakes (Ross et al. 2011).
     Greybox-TAC has no warm start; we add it because PPO from scratch rarely proves anything with
     yes/no queries (the baselines miss most sources), so early episodes carry almost no signal.
  2. PPO, as Greybox-TAC: fixed budget Q per round, no END, -1 per query (mu = 1), declines,
     potential shaping gamma * Phi(s') - Phi(s) with Phi(end) = 0 (training only; iampe/env/potential.py),
     AdamW lr 1e-4, gamma 1, GAE lambda 0.95, clip 0.2, entropy 0.01, 2 epochs. Ours: +1 per source
     proven and the round ends once every open source is proven (many sources, not one).
Model selection: pooled FNR at Q (missed open sources / open sources, then fewer queries), on held-out
graphs: --eval-orgs (real configs or a split name; the pipeline uses the val split) and/or --eval-synth
(synthetic graphs; the first --eval-limit, 100 by default),
every --eval-every iterations. Single round with no B, or, with --rounds > 1 and removers as opponents,
FNR over all rounds against them (step 3 is selected on the game it trains in). Selecting
on the graphs being trained on (the old default) rewards overfitting, so one of them is required unless
--select-on-train is given. Saves runs/finder/<name>.pt (last) and <name>.best.pt.
"""
from __future__ import annotations

import argparse
import json
import random
import time
from pathlib import Path

import torch

from experiments.common import (RUNS, add_game_args, device, fnr, game_kwargs, load_graph, make_finder,
                                make_remover, orgs_of, play, split_orgs)
from iampe.agents.gnn import FinderPolicy, GNNFinder
from iampe.agents.ppo import bc_update, ppo_update
from iampe.agents.rollout import finder_bc_pairs, finder_episode
from iampe.env.game import GameConfig, standard_config
from iampe.graph.io import load_graph_file

EVAL_SEEDS = (100, 101, 102)
TEACHER = "oracle"
BASELINES = ["random", "bfs", "greedy", "oracle"]


def evaluate(finder, graphs, seeds=EVAL_SEEDS, **game_kw) -> dict:
    """Pooled FNR at the game's Q over graphs and seeds (each open source counts once), and mean
    queries used. Single round, no B."""
    rows = [fnr(G, finder, seeds=seeds, **(game_kw | {"K": 1})) for G in graphs]
    missed, opened = sum(r["missed"] for r in rows), sum(r["open"] for r in rows)
    return {"fnr": missed / max(1, opened), "missed": missed, "open": opened,
            "queries": sum(r["queries"] for r in rows) / max(1, len(rows))}


def evaluate_rounds(finder, graphs, cfg: GameConfig, opponents, seeds=EVAL_SEEDS) -> dict:
    """The same numbers in the full game: missed / open sources summed over every round (each round's
    open sources are the ones still open after B's earlier cuts), against each opponent remover."""
    missed = opened = queries = n = 0
    for G in graphs:
        for opp in opponents:
            for sd in seeds:
                for l in play(G, finder, make_remover(opp, sd), cfg, sd):
                    missed += max(0, l["open_before"] - len(l["proven"]))
                    opened += l["open_before"]
                    queries += l["queries"]
                    n += 1
    return {"fnr": missed / max(1, opened), "missed": missed, "open": opened, "queries": queries / max(1, n)}


def fmt(m: dict) -> str:
    return f"FNR {m['fnr']:.3f} ({m['missed']}/{m['open']}) queries {m['queries']:.1f}"


def _better(m: dict, best: dict | None) -> bool:
    return best is None or (m["fnr"], m["queries"]) <= (best["fnr"], best["queries"])


def imitate(policy, opt, graphs, cfg: GameConfig, n_pairs: int, dagger: int, teacher: str, rng, log) -> None:
    """Imitation warm start: `n_pairs` teacher-played pairs, then `dagger` DAgger rounds of `n_pairs`
    each on the aggregated data set (single round games)."""
    bc_cfg = GameConfig(**(cfg.__dict__ | {"K": 1}))
    data: list = []
    for rnd in range(dagger + 1):
        beta = 0.5 ** rnd                          # round 0: the teacher plays every query
        new, tries = [], 0
        while len(new) < n_pairs and tries < 50 * n_pairs:
            new += finder_bc_pairs(rng.choice(graphs), bc_cfg, random.Random(rng.random()),
                                   make_finder(teacher, rng.randrange(1 << 30)),
                                   policy=policy if rnd else None, beta=beta)
            tries += 1
        data += new
        if data:
            loss = bc_update(policy, opt, data, epochs=5, rng=rng)
            log(f"imitation round {rnd} (beta {beta:.2f}): {len(new)} new pairs, {len(data)} total, loss {loss:.3f}")


def train(policy, graphs, cfg: GameConfig, opponents, iters: int, episodes: int, lr: float, seed: int,
          out_name: str, eval_graphs, log=print, bc: int = 0, teacher: str = TEACHER, stages: int = 1,
          gamma: float = 1.0, epochs: int = 2, shaping: bool = True, pick=None, observe=None,
          dagger: int = 0, eval_every: int = 1, opt=None) -> FinderPolicy:
    """`graphs` are sampled from a pool that grows with the stage (curriculum: they must be sorted by
    size; stage i uses the smallest (i+1)/stages of them). `opponents`: remover specs or agents, one
    per episode (`pick(rng)` / `observe(opponent, logs)` let co-training plug in EXP3). The policy is
    scored for model selection every `eval_every` iterations and at the end of each stage: single-round
    FNR when cfg.K == 1, else FNR over the K rounds against the opponent specs (the game it trains in).
    `opt`: an optimizer to keep using (co-training passes one that lives across generations)."""
    rng = random.Random(seed)
    opt = opt or torch.optim.AdamW(policy.parameters(), lr=lr)
    out = RUNS / "finder"
    out.mkdir(parents=True, exist_ok=True)
    as_agent = (lambda b: make_remover(b, rng.randrange(1 << 30)) if isinstance(b, str) else b)
    pick = pick or (lambda r: r.choice(opponents))
    specs = [b for b in opponents if isinstance(b, str) and b != "none"]
    if cfg.K > 1 and specs:
        score = lambda: evaluate_rounds(GNNFinder(policy, greedy=True), eval_graphs, cfg, specs)
        log(f"model selection: FNR over {cfg.K} rounds against {', '.join(specs)}")
    else:
        eval_kw = {k: v for k, v in cfg.__dict__.items() if k in ("Q", "decline_p", "query_mode", "visible_p")}
        score = lambda: evaluate(GNNFinder(policy, greedy=True), eval_graphs, **eval_kw)
        log("model selection: single-round FNR")
    if bc:
        imitate(policy, opt, graphs, cfg, bc, dagger, teacher, rng, log)
    best, best_it = score(), 0
    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
    log(f"iter 0: {fmt(best)}")
    it = 0
    for stage in range(stages):
        pool = graphs[:max(1, round(len(graphs) * (stage + 1) / stages))]
        for k in range(iters):
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
            line = (f"stage {stage + 1}/{stages} (pool {len(pool)}) iter {it}: return {ret / episodes:.2f} "
                    f"loss {stats.get('loss', 0):.3f} steps {len(steps)}")
            if it % eval_every == 0 or k == iters - 1:
                m = score()
                if _better(m, best):
                    best, best_it = m, it
                    torch.save(policy.state_dict(), out / f"{out_name}.best.pt")
                line += f" {fmt(m)} (best {fmt(best)} at iter {best_it})"
            log(f"{line} {time.time() - t0:.1f}s")
    if best_it == 0:
        log("note: no iteration beat the starting policy; <name>.best.pt is the starting policy")
    torch.save(policy.state_dict(), out / f"{out_name}.pt")
    return policy


def synth_graphs(d: str, limit: int = 0) -> list:
    """Graphs of a gen_synth directory in file order (the first `limit` if given)."""
    paths = sorted(p for p in Path(d).glob("*.json") if p.name != "index.json")
    return [load_graph_file(p) for p in (paths[:limit] if limit else paths)]


def load_pool(a) -> list:
    """Training graphs sorted by size: synthetic ones from --synth (plus the real ones with --also-real),
    else the real --orgs / train split."""
    real = [load_graph(o) for o in orgs_of(a.orgs or ["train"])]
    graphs = (synth_graphs(a.synth, a.max_graphs) + (real if a.also_real else [])) if a.synth else real
    return sorted(graphs, key=lambda G: G.number_of_nodes())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--synth", default=None, help="directory of synthetic training graphs (experiments/gen_synth.py)")
    ap.add_argument("--max-graphs", type=int, default=0, help="use the first N --synth graphs (0 = all)")
    ap.add_argument("--also-real", action="store_true", help="with --synth: add the real training configs")
    ap.add_argument("--orgs", nargs="+", default=None, help="real training configs (default: the train split)")
    ap.add_argument("--eval-synth", default=None, help="held-out synthetic graphs for model selection")
    ap.add_argument("--eval-orgs", nargs="+", default=None, help="real configs or split names (e.g. val) for model selection")
    ap.add_argument("--select-on-train", action="store_true", help="allow selecting on the training graphs")
    ap.add_argument("--eval-limit", type=int, default=100, help="use the first N --eval-synth graphs (0 = all)")
    ap.add_argument("--eval-every", type=int, default=5, help="score for model selection every N iterations")
    ap.add_argument("--stages", type=int, default=1, help="size-curriculum stages")
    ap.add_argument("--iters", type=int, default=30, help="PPO iterations per stage")
    ap.add_argument("--episodes", type=int, default=64, help="episodes per PPO iteration")
    add_game_args(ap, rounds=1)
    ap.add_argument("--opponent", nargs="+", default=["none"], help="remover(s) between rounds (with --rounds > 1)")
    ap.add_argument("--bc", type=int, default=2000, help="imitation pairs per round (0 = no imitation)")
    ap.add_argument("--dagger", type=int, default=3, help="DAgger rounds after the first imitation round")
    ap.add_argument("--teacher", default=TEACHER)
    ap.add_argument("--no-shaping", action="store_true")
    ap.add_argument("--lr", type=float, default=1e-4)
    ap.add_argument("--gamma", type=float, default=1.0)
    ap.add_argument("--epochs", type=int, default=2)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--device", default="auto")
    ap.add_argument("--init", default=None, help="checkpoint to start from (skips imitation)")
    ap.add_argument("--name", default="finder")
    a = ap.parse_args()
    torch.manual_seed(a.seed)
    graphs = load_pool(a)
    eval_graphs = ((synth_graphs(a.eval_synth, a.eval_limit) if a.eval_synth else [])
                   + [load_graph(o) for o in orgs_of(a.eval_orgs)])
    if not eval_graphs:
        if not a.select_on_train:
            ap.error("give held-out selection graphs (--eval-synth / --eval-orgs) or --select-on-train")
        eval_graphs = [load_graph(o) for o in split_orgs("train")]
    kw = game_kwargs(a)
    cfg = standard_config(**kw)
    (RUNS / "finder").mkdir(parents=True, exist_ok=True)
    logf = open(RUNS / "finder" / f"{a.name}.log", "w")

    def log(s):
        print(s, flush=True)
        logf.write(s + "\n")
        logf.flush()
    log(json.dumps(vars(a)) + f" | {len(graphs)} training graphs, {len(eval_graphs)} selection graphs")
    for spec in BASELINES:
        if spec.startswith("bandit") and cfg.query_mode == "edge":
            continue
        log(f"baseline {spec}: {fmt(evaluate(make_finder(spec), eval_graphs, **(kw | {'K': 1})))}")
    policy = FinderPolicy().to(device(a.device))
    if a.init:
        policy.load_state_dict(torch.load(a.init, map_location="cpu"))
    train(policy, graphs, cfg, a.opponent, a.iters, a.episodes, a.lr, a.seed, a.name, eval_graphs, log,
          0 if a.init else a.bc, a.teacher, a.stages, a.gamma, a.epochs, not a.no_shaping, dagger=a.dagger,
          eval_every=a.eval_every)


if __name__ == "__main__":
    main()
