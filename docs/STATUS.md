# Project status

State as of 2026-11-17. Data: `docs/dataset.md`. Graph building: `docs/HANDOFF.md`. Results:
`docs/results.md` (still the 2026-11-12 node-mode run until the GPU pipeline below is rerun).

## The goal

A **finder** A queries an AWS IAM setup it cannot see and proves which users and roles can escalate
to admin; a **fixer** B removes permissions to close what A found. They play 5 rounds on the same
account: after each fix the graph changes, and A has to find routes around B's fixes. So one config
gives 5 runs, each on a slightly different graph, instead of TAC-GB's one run per graph.

**The claim to show: each player gets better by having the other in the loop.** A finder trained
with a fixer finds more than one trained alone, and a fixer trained against a learning finder fixes
better than one trained against fixed finders, in whatever way B is added (fixed or co-trained).
TAC-GB itself is implemented by another sub-team; it is a baseline for A, not something we rebuild.

## What the 2026-11-12 run showed (honestly: it did not support the claim)

- Learned A did not beat BFS: 0.54 vs 0.56 on a test set of 11 open sources (noise); fine-tuned A 0.60.
- Learned and co-trained B equalled the `minseen` ILP everywhere: B only saw proof edges, where that ILP is
  already the best cut, so there was nothing to learn.
- The "oracle bound" was not a bound, and declines depended on the order of queries.
These were design problems, not training-time problems; all are addressed below. Those checkpoints do not
load with the current code.

## The data

- **Real configs: 18** (`esc.zip`, `no_esc.zip`): 6 train (29–356 nodes), 2 test, 4 toy bench, 6 large
  (1k–28k nodes, evaluation only). About 21 open escalation sources in train, 11 in test. They were made by
  a generator (`iamgen`, named in each `config.json`); more of them would be the best extra data.
- **Synthetic graphs** (`experiments/gen_synth.py`, seeded, minutes on a CPU): 2000 train, 300 validation,
  300 test, never overlapping. Known gaps against the real graphs: no hubs, no groups, every w = 1.

## The game (`standard_config()` in `iampe/env/game.py`)

Standard values: edge mode, Q=40, 10% declines, `visible_p=0.5`, `b_sees="revealed"`, λ=1, 5 rounds.

**Finder A**, per round:
- **Query:** one yes/no question `(u, template, v)`: "can u take over v with this template?" Answer TRUE
  (edge revealed), FALSE, or UNKNOWN (declined). Questions are formed from public information only (entity
  ids and kinds, and the (actor kind, template, target kind) combinations of the template definitions,
  `iampe/env/query_space.py`, which cover every edge of all 18 real graphs). u must be a source or a node A
  has already reached. Confirming `u → any:<template>` also reveals that hub's public expansion.
  Node mode (a query reveals all of u's out-edges, the old design) remains for comparison; it also sets
  nothing visible and B seeing proofs only, unless overridden.
- **Budget:** fixed Q per round, every query costs 1, no END.
- **Declines:** 10%, a fixed property of each query in a game, independent of query order.
- **Memory:** never re-asks; proofs that survive B's cuts are re-reported at round start. They are *not*
  rewarded again: the training reward per query is the sources that query newly proves − 1.
- **Shaping (training only):** γΦ(s′) − Φ(s), Φ = −(questions still needed on the cheapest live path,
  summed over unproven open sources); a source that declines cut off counts as 10.
- **Visibility:** `visible_p` is the share of hidden edges known at the start. This is our own setting,
  not TAC's (see below).

**Fixer B**, per round:
- **Sees** every edge A revealed (`b_sees="revealed"`), so it can cut routes A explored before they are
  proven. With proof edges only (`"proofs"`, the old design) the ILP `minseen` is already optimal.
  First check (test split, 3 seeds, baselines only): with `revealed`, `adminfirst` (r_B −0.68) and even
  random cuts (−1.70) beat `minseen` (−3.68), so a learned B has room.
- **Reward:** r_B = (sources newly closed) − (sources still open) − λ Σ w(e), w(e) = users and roles that
  lose the permission, over all users and roles. Training can subtract `minseen`'s r_B on the same state
  (`--baseline minseen`) to reduce variance.

## What TAC-GB does (arXiv 2304.14540 v9), and where we differ

- **Visible at the start:** a uniformly sampled subset of *entities* (fraction not stated); no permission
  is confirmed (Sec. 5.1.1, 7). Our closest setting is `visible_p = 0` with all entities public. We use
  0.5 because with 0 every non-learned baseline misses 87–100% (TAC's non-learned baseline EA: 93%), and
  the pipeline also measures the baselines at 0, 0.1, 0.25 and 0.5.
- **Query:** (entity, permission) yes/no; ours is one takeover edge (our graph already combines a
  template's permissions into one edge). **Budgets:** 10–100. **Declines:** a pre-sampled accepted set,
  rate not stated. **Data:** 2,000 LLM-generated tasks for pretraining, 500 for testing (avg 137 entities).
  **Result:** FNR 57% → 27% as the budget goes 10 → 100.
- For the A-only comparison with the TAC-GB sub-team, use their settings (ask them for visibility,
  budget and decline rate).

## Evidence for the settings (baselines only, nothing trained)

Pooled FNR (missed / open sources), 10 seeds, single round. The oracle reads the hidden graph and reaches
the exact floor (sources behind declined queries).

| mode | visible | finder | train Q=20 | train Q=40 | test Q=20 | test Q=40 |
|---|---|---|---|---|---|---|
| node | – | bfs | 0.44 | 0.21 | 0.47 | 0.24 |
| node | – | oracle | 0.21 | 0.21 | 0.24 | 0.24 |
| edge | 0 | random | 1.00 | 1.00 | 1.00 | 1.00 |
| edge | 0 | bfs | 0.98 | 0.98 | 0.94 | 0.94 |
| edge | 0 | greedy | 1.00 | 0.87 | 1.00 | 0.88 |
| edge | 0 | oracle | 0.23 | 0.23 | 0.11 | 0.11 |
| edge | 0.25 | greedy | 0.93 | 0.79 | 0.92 | 0.82 |
| edge | 0.5 | random | 0.81 | 0.81 | 0.82 | 0.82 |
| edge | 0.5 | bfs | 0.80 | 0.80 | 0.72 | 0.72 |
| edge | 0.5 | greedy | 0.81 | 0.65 | 0.82 | 0.80 |
| edge | 0.5 | oracle | 0.14 | 0.14 | 0.11 | 0.11 |

The test split has only 11 distinct open sources: compare finders on the synthetic test set.

## The pipeline (`scripts/run_gpu.sh`; GPU machine only)

Every A variant starts from the same A (step 3) and every B variant from the same B (step 4); each then
trains 40 uninterrupted iterations × 32 five-round games on the same graphs (6 real + 500 synthetic), with
one optimizer (co-training too: 4 generations × 10 iterations, continuing from the last weights). Only the
opponent differs. To keep it that way:
- **Variants are compared by their last weights.** Each run still saves a "best" checkpoint, but every
  run selects it by a different rule (single-round FNR for the no-B control, 5-round FNR against its own
  opponents otherwise), which would favour each variant on its own metric.
- **The claim rests on opponents no compared variant trained against.** For A: random, `full` and
  `remover` (step 7). For B: random, the oracle, `finder_noB` and `finder_vsB`. The tables mark which
  opponents are in some variant's training pool. All variants are reported, whichever wins.

| Step | What | Why |
|---|---|---|
| 0 | `pytest --run-training` | Tests that take gradient steps run only here |
| 1 | Synthetic graphs, seeds 0 / 1 / 2 → train / validation / test | Disjoint sets; the real test split is too small |
| 2 | A: imitate the oracle (+3 DAgger rounds), then PPO, size curriculum, on synthetic graphs | Warm start from the strongest finder; checkpoints chosen on 100 validation graphs every 5 iterations |
| 3 | A: fine-tune on the 6 real configs → `finder` | The common start of every A variant |
| 4 | B: imitation warm start only → `remover_init` | The common start of every B variant |
| 5 | A with **no B**, 5-round games → `finder_noB` | Equal-time control: same graphs and iterations, no fixer |
| 6 | A against **fixed** removers → `finder_vsB` | Is a fixed fixer in the loop already a help? Selected on 5-round FNR against them |
| 7 | B against **fixed** finders (BFS, greedy, `finder`) → `remover` | B's counterpart of step 6 |
| 8 | **Co-training**, 4 generations × 10 iterations per player → `cotrain_A1..4`, `cotrain_B1..4` | Each player against a learning opponent |
| 9 | Evaluate every variant: FNR with CIs and the floor (budgets 20/40/100), B tables (pool vs held-out finders), finder × fixer matrix with re-finds (sources A proved, lost to a cut, and proved again); then the large configs, smaller | The comparison the claim rests on |
| 10 | Every A generation against every B generation | Do later generations beat earlier opponents? |
| 11 | Baselines at visible 0 / 0.1 / 0.25 / 0.5; copy models; pack `runs/logs.tgz` | Visibility evidence; bring logs back |

`bash scripts/run_gpu.sh smoke` runs every stage tiny first. Evaluation runs games in parallel on all CPU
cores (`--workers`), one torch thread each. Results do not depend on the number of workers or on Python's
hash seed (checked for the baselines and a neural finder; set iteration that affected decisions was made
explicit on 2026-11-17). One caveat: the ILP cut has a 30 s time limit, so on the largest configs a heavily
loaded machine could stop it at a different incumbent. CIs resample whole configs, so with the 2 real test
configs they are wide; the synthetic test set is the one that can separate variants.

**First look at re-finds** (baselines only, test split, 2 seeds): bfs, greedy and the oracle never re-find a
source after B cut its proof. If trained finders don't either, these graphs may have too few alternative
routes for the loop to show anything, which would point to richer configs (`iamgen`) rather than more
training.

## Open items

1. Smoke run, then the full run, on the GPU machine; bring back `runs/logs.tgz`.
2. Team: confirm `visible_p = 0.5` for the loop experiments; get the TAC-GB sub-team's settings.
3. More generated configs from `iamgen`; make the synthetic generator closer to them (hubs, groups, w).
4. Permission-level questions (exact TAC query unit) on the same `a_query` interface.

## Older designs

First design (cost per query with END; 1 edge per round for B): commit `28315dd`. Node-mode fixed-budget
design and its 2026-11-12 run: commit `22ec59d`.
