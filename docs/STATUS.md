# Project status (for review)

State of the greybox IAM privilege-escalation remediation game as of 2026-11-08.
Results: `docs/results.md`. Data: `docs/dataset.md`. Graph building: `docs/HANDOFF.md`.
"TAC" below means the Greybox-TAC replication (github.com/DarkMatterCompiler/Greybox-TAC).

## Summary

- **Pipeline (done):** the converter, graph builder and checker work. All 18 graphs are in
  `data/graphs/` and match their labels hop for hop (the 6 large ones were built off this laptop).
  Only the v2 data (`esc.zip`, `no_esc.zip`) is used; the old 14-config dataset was deleted.
- **New game design (implemented, not yet trained):** A gets a fixed query budget with no END,
  as in TAC; B gets no edge budget and pays for collateral. See "The design" below.
- **Why it changed:** the first learned A, trained with a cost per query and an END action, learned to
  query nothing (FNR 1.0): at mu = 0.3, BFS earned about 0.2 per query against a cost of 0.3, so stopping
  at once scored best. Learned B, trained at 1 edge per round, matched min-seen on the large configs.
- **No model is trained for the new design yet.** Training runs on the GPU machine (commands below),
  never on the laptop. `models/remover_*.pt` were trained for the old game and are obsolete.

## Phase status

| Phase | Status | Where |
|---|---|---|
| 0-3 Setup, data, graphs, checker | done | `iampe/data`, `iampe/parser`, `iampe/graph`, `iampe/checker`, `data/graphs/` |
| 4 Game | done, new standard design | `iampe/env/game.py` (`standard_config`), `iampe/env/potential.py` |
| 5 Finder A | code done, **training pending (GPU)** | `experiments/train_finder.py`, `iampe/data/synth.py`, `experiments/gen_synth.py` |
| 6 Baseline B | done for the new design | `iampe/agents/remediator_baselines.py`, `iampe/checker/mincut.py` (`tradeoff_cut`) |
| 7 Learned B | code done, **retraining pending (GPU)** | `experiments/train_remediator.py` |
| 8 Co-training | code done (both halves), **pending (GPU)** | `experiments/cotrain.py` |
| 9 Evaluation | baselines done for the new design; learned agents pending | `experiments/evaluate.py`, `experiments/eval_finder.py` |

## The design (`standard_config()` in `iampe/env/game.py`)

**Finder A**, per round:
- a fixed budget of Q = 20 queries; each query reveals one node's outgoing edges and costs 1;
- no END: the round ends when the budget is spent, or as soon as every open source is proven;
- each query is declined with probability 0.1; a declined query costs 1, reveals nothing, and that node
  cannot be asked again in the same game;
- memory across rounds: A never re-queries a node it asked about in an earlier round (it sees B's cuts,
  so a re-query reveals nothing new), and at each round start it re-reports the proofs that survive the
  cuts. Without this, BFS spent later rounds re-asking old nodes and found no new routes at all;
- reward per query: (sources proven) - 1, plus in training only the shaping gamma * Phi(next) - Phi(now)
  with Phi = -(sum over open sources not yet proven of the fewest unrevealed edges on a real path to
  admin) and Phi = 0 after the game's last decision;
- policy: GATv2 over A's view; trained by imitating the bandit finder, then PPO.

**Remover B**, per round:
- cuts any number of seen, cuttable edges (no edge budget);
- w(e) is divided by the number of users and roles in the account;
- reward: (sources newly closed) - (sources still open) - 1 * (sum of w over this round's cuts);
- baselines: min-seen and the full-graph ceiling maximise that round reward with an ILP (`tradeoff_cut`);
  admin-first cuts every seen edge into admin or into an admin principal; random cuts a random subset.

**Kept from before:** 5 rounds; A sees B's cuts and keeps what it revealed; sources = untrusted entity +
non-admin users and roles (open ones plus closed fillers up to 20); the referee scores on the whole graph.

## Differences from TAC, and why

| Area | TAC | Ours | Why |
|---|---|---|---|
| Budget | Fixed, every query costs | Same (Q = 20) | Taken from TAC: it removes "do nothing" as an option |
| END action | None | None | Taken from TAC |
| Customer declines | Yes (they use 0.1 and 0.3) | Yes, 0.1, fixed per node | Taken from TAC |
| Shaping | Phi from the planted plan, training only | Phi from the checker's true shortest paths, training only | We have many sources and no single plan; the checker gives every source's real path |
| PPO settings | AdamW 1e-4, gamma 1, lambda 0.95, clip 0.2, entropy 0.01, 2 epochs | Same for A | Taken from TAC |
| Pretraining | Thousands of synthetic tasks, size curriculum | Synthetic graphs adapted from TAC's `gen.py`, size curriculum, then fine-tune on real configs | Taken from TAC; edge types drawn from our real graphs so the synthetic ones look like ours |
| Query | One (entity, permission) pair | One node's outgoing edges | Our graph already holds takeover steps (the converter did the permission reasoning); B needs whole paths to cut |
| Goal | One untrusted entity reaches admin | Every source that reaches admin, +1 per proof | B has to fix every escalation, so A has to find all of them |
| Episode end | On detection | When every open source is proven | Same idea with many targets; keeps -1 per query meaningful |
| Rounds | One | 5, with B cutting in between | The project is remediation: A has to find routes around B's fixes |
| Memory across rounds | Not applicable (one episode) | No re-queries; surviving proofs re-reported | A sees B's cuts, so re-asking a node is pure waste of budget |
| Warm start | None | Imitate the bandit finder | Until the synthetic pretraining exists we have 6 real training configs against TAC's 2,000 tasks |
| Budget size | Trains at 40 | 20 | At 40, BFS already finds every source on our small configs, so A could not show anything |
| Models | One pooled model (the paper: 27 per type) | One pooled model | Too little data for per-type models |
| Their trained model | Exists | Not used | Its query unit and templates differ, and it learned only on query spaces <= 800 |

## Baselines in the new game (details in `docs/results.md`)

Small configs, 3 seeds. Remover B: total r_B over 5 rounds (higher is better) and open-source-rounds
(lower is better), against the training finders (BFS, Greedy, bandit).

| remover | train: r_B | train: open-source-rounds | test: r_B | test: open-source-rounds |
|---|---|---|---|---|
| random | -0.10 | 5.61 | -7.98 | 14.22 |
| min-seen | 2.80 | 2.78 | -7.57 | 13.50 |
| admin-first | 2.06 | 3.37 | -7.57 | 13.50 |
| full-graph ceiling (cheats) | 5.80 | 0.00 | 7.99 | 0.00 |

Finder A, FNR at Q = 10 / 20 / 40 with 10% declines: BFS train 0.34 / 0.12 / 0.07, test
0.77 / 0.56 / 0.31; oracle (sees the hidden graph) train 0.12, test 0.27 at every Q.

What these show:
- **The oracle cannot reach FNR 0:** a declined node on the only path makes a source unprovable. TAC's
  "ask everything" ceiling behaves the same way.
- **Cuts are almost free on the small configs:** every edge there has w = 1, about 0.02 after
  normalisation, so the ceiling closes everything in round 0. B's real limit is what A reveals.
- **There is room for learned A** (BFS test FNR 0.56 at Q = 20) and for learned B (min-seen is far from
  the ceiling on test: 13.50 open-source-rounds against 0, and admin-first is no better than min-seen).

## GPU runbook (in order)

Not on the laptop. On the GPU machine, from the repo root:

```bash
pip install -e ".[dev]" && python -m pytest -q                      # 43 tests, seconds
python -m experiments.gen_synth --n 2000                             # data/synth/, light
# Finder A: pretrain on synthetic graphs (size curriculum), then fine-tune on the real train split
python -m experiments.train_finder --synth data/synth --stages 4 --iters 50 --episodes 16 --name finder_pre
python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --iters 30 --name finder
# Remover B on the real train split
python -m experiments.train_remediator --iters 30 --name remover
# Co-training, both halves
python -m experiments.cotrain --init-finder runs/finder/finder.best.pt --init-remover runs/remover/remover.best.pt --gens 4
# Evaluation, including the large configs (mermer is the slow one)
python -m experiments.evaluate --large \
    --finders bfs greedy bandit:models/linucb.npz ckpt:runs/finder/finder.best.pt ckpt:runs/cotrain/cotrain_A4.pt \
    --removers random minseen adminfirst full ckpt:runs/remover/remover.best.pt ckpt:runs/cotrain/cotrain_B4.pt
```

Each trainer prints its baselines first, then one line per iteration, and writes a log next to the
checkpoints (`runs/finder/`, `runs/remover/`, `runs/cotrain/`). What to look for:
- `train_finder`: FNR must drop below the BFS baseline line; queries used near Q is normal.
- `train_remediator`: r_B must rise above min-seen's (2.80 on train with the training finders).
- Send back the logs and `docs/results.md`; copy the best checkpoints into `models/`.

Optional: train B on large configs too, e.g. `--orgs <train split> axnor-1bmoe8 delnor-1bxe74
arimer-1bmoea`, keeping corpyr, linlin and mermer for testing.

## Open items

1. All training (runbook above), on the GPU machine.
2. If learned A fails again, check in this order: shaping on (default), BC loss falls, FNR on synthetic
   graphs drops during pretraining (TAC needed its curriculum for anything beyond small tasks).
3. Collateral barely matters with w = 1 everywhere on the small configs; the large configs have larger
   w. If collateral should matter more, raise `--lam`.
4. Push to GitHub: run `git push -u origin master` yourself.
5. `docs/GUIDE.md` is superseded (marked at the top).
6. More seeds / a variance estimate before any firm claim.

## Older results

The first design (cost per query with END for A; 1 edge per round for B) and its results are in git
history: `docs/results.md` and `docs/STATUS.md` at commit `28315dd`.
