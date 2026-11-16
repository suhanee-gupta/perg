"""Shared helpers for the experiment scripts: graphs, agents by name, metrics."""
from __future__ import annotations

import json
import random
from functools import lru_cache
from pathlib import Path

import torch

from iampe.agents.bandit import BanditFinder, LinUCB
from iampe.agents.finder_heuristic import BFSFinder, GreedyFinder, OracleFinder, RandomFinder
from iampe.agents.gnn import FinderPolicy, GNNFinder, GNNRemover, RemediatorPolicy
from iampe.agents.remediator_baselines import AdminFirstB, FullB, MinSeenB, NoB, RandomB
from iampe.data.index import ROOT, splits
from iampe.env.game import Game, GameConfig, standard_config
from iampe.env.potential import provable_sources
from iampe.env.query_space import edge_prior
from iampe.graph.io import load_graph  # noqa: F401  (graphs come from data/graphs/, built by build_graphs.py)

RUNS = ROOT / "runs"
torch.set_num_threads(4)          # keep CPU use modest


def split_orgs(name: str) -> list[str]:
    return splits()[name]


def device(name: str = "auto") -> torch.device:
    """`auto` picks CUDA when available, else CPU."""
    if name == "auto":
        name = "cuda" if torch.cuda.is_available() else "cpu"
    return torch.device(name)


@lru_cache(maxsize=32)
def load_policy(kind: str, path: str | Path):
    """Load a checkpoint once per process (cached: evaluation builds an agent per game)."""
    pol = FinderPolicy() if kind == "finder" else RemediatorPolicy()
    try:
        pol.load_state_dict(torch.load(path, map_location="cpu"))
    except RuntimeError as err:
        raise RuntimeError(f"{path} does not fit the current {kind} policy (observation features and heads "
                           f"changed for the edge-query design, 2026-11-17); retrain it with scripts/run_gpu.sh. "
                           f"Checkpoints from before that date cannot be evaluated with this code.") from err
    pol.eval()
    return pol


def make_finder(spec: str, seed: int = 0, allow_end: bool = False):
    """random | bfs | greedy | oracle | bfs:p10 / greedy:p10 (END after 10 idle queries; only with
    allow_end) | bandit:<model.npz> | bandit+end:<model.npz> | ckpt:<policy.pt>. The standard game has
    no END (fixed budget, as in Greybox-TAC), so allow_end defaults to False."""
    if spec.startswith("ckpt:"):
        return GNNFinder(load_policy("finder", spec[5:]), greedy=True, allow_end=allow_end)
    if spec.startswith("bandit:"):                 # choose-only: the game's cost rule ends its turn
        return BanditFinder(LinUCB.load(spec[7:]), allow_end=False)
    if spec.startswith("bandit+end:"):             # with its own one-step END rule (stops far too early)
        return BanditFinder(LinUCB.load(spec[11:]), allow_end=allow_end)
    name, _, opt = spec.partition(":")
    patience = int(opt[1:]) if opt.startswith("p") and allow_end else None
    if name == "bfs":
        return BFSFinder(patience)
    if name == "greedy":
        return GreedyFinder(patience, prior=public_prior())
    return {"random": lambda: RandomFinder(seed), "oracle": OracleFinder}[name]()


@lru_cache(maxsize=1)
def public_prior() -> dict:
    """P(edge exists) per (actor kind, template, target) on the real training split only: the
    prior-greedy finder's knowledge in edge mode (never estimated on test or large configs)."""
    return edge_prior([load_graph(o) for o in split_orgs("train")])


def make_remover(spec: str, seed: int = 0):
    if spec.startswith("ckpt:"):
        return GNNRemover(load_policy("remover", spec[5:]), greedy=True)
    return {"none": NoB, "random": lambda: RandomB(seed), "minseen": MinSeenB, "full": FullB,
            "adminfirst": AdminFirstB}[spec]()


def fnr(G, finder, seeds=(0, 1, 2), **overrides) -> dict:
    """Single round, no B, in the standard game (standard_config(K=1, **overrides), e.g. Q=10).
    Returns the share of truly open sources A failed to prove ("fnr"), the raw counts ("missed",
    "open"), the exact floor no finder can beat in these games ("unprovable": open sources whose every
    path needs a declined query) and the mean queries used. Declines depend only on the game seed and
    the query, so every finder faces the same declines for the same seed."""
    missed = total = used = floor = 0
    for sd in seeds:
        cfg = standard_config(**({"K": 1, "seed": sd} | overrides))
        g = Game(G, cfg, random.Random(sd))
        if hasattr(finder, "reset"):
            finder.reset(g)
        opened = g.lg.open_pairs(g.S)
        floor += len(opened - provable_sources(g))
        while g.a_can_query():
            u = finder.act(g)
            if u is None:
                break
            g.a_query(u)
        missed += len(opened - g.proven)
        total += len(opened)
        used += g.queries
    return {"fnr": missed / total if total else 0.0, "missed": missed, "open": total, "unprovable": floor,
            "queries": used / len(seeds)}


def play(G, finder, remover, cfg: GameConfig, seed: int) -> list[dict]:
    g = Game(G, cfg, random.Random(seed))
    return [log.__dict__ | {"cut": [list(e) for e in log.cut]} for log in g.play(finder, remover)]


def add_game_args(ap, rounds: int = 5) -> None:
    """Game settings shared by every trainer and the evaluation (defaults = standard_config)."""
    d = standard_config()
    ap.add_argument("--rounds", type=int, default=rounds)
    ap.add_argument("--Q", type=int, default=d.Q, help="queries per round")
    ap.add_argument("--decline", type=float, default=d.decline_p, help="share of queries declined")
    ap.add_argument("--query-mode", default=d.query_mode, choices=["node", "edge"],
                    help="edge: TAC-style yes/no questions; node: a query reveals a node's out-edges")
    ap.add_argument("--visible", type=float, default=None,
                    help=f"share of hidden edges public at the start (default {d.visible_p:g}; 0 in node mode)")
    ap.add_argument("--lam", type=float, default=d.lam, help="weight of B's collateral")
    ap.add_argument("--b-reward", default=d.b_reward, choices=["full", "seen"])
    ap.add_argument("--b-sees", default=None, choices=["proofs", "revealed"],
                    help=f"what B observes (default {d.b_sees}; proofs in node mode)")
    ap.add_argument("--cut-budget", type=int, default=0, help="edges B may cut per round (0 = no budget)")
    ap.add_argument("--w-const", action="store_true", help="ablation: every w(e) = 1")


def game_kwargs(a) -> dict:
    """standard_config overrides from add_game_args' arguments (None = the mode's default)."""
    kw = dict(K=a.rounds, Q=a.Q, decline_p=a.decline, query_mode=a.query_mode, visible_p=a.visible,
              lam=a.lam, b_reward=a.b_reward, b_sees=a.b_sees, w_const=a.w_const)
    kw = {k: v for k, v in kw.items() if v is not None}
    if a.cut_budget:
        kw |= dict(budget_mode="count", cut_budget=a.cut_budget)
    return kw


def game_config(a) -> GameConfig:
    return standard_config(**game_kwargs(a))


def write_jsonl(path: Path, rows) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in rows:
            f.write(json.dumps(r, default=str) + "\n")
