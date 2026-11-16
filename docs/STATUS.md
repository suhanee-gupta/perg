# Project status

State of the greybox IAM privilege-escalation remediation game as of 2026-11-17.
"TAC" means the Greybox-TAC replication (github.com/DarkMatterCompiler/Greybox-TAC).
Data: `docs/dataset.md`. Graph building: `docs/HANDOFF.md`. Results: `docs/results.md` (still the
2026-11-12 node-mode run until the GPU pipeline below is rerun).

## Summary

- **Data.** 18 real configs from `esc.zip` / `no_esc.zip`: 6 train (29–356 nodes), 2 test, 4 toy bench,
  6 large (1k–28k nodes, evaluation only). About 21 open escalation sources in train and 11 in test.
  Synthetic graphs are not in any zip: `experiments/gen_synth.py` makes them (seeded, minutes on a CPU).
  Three disjoint sets are used: 2000 for training, 300 for model selection and 300 for testing.
- **Design change (2026-11-17).** A asks TAC-style yes/no questions about single edges (`query_mode="edge"`)
  instead of revealing a node's outgoing edges. B may see and cut every edge A revealed, not only proof edges.
- **What the 2026-11-12 run showed.** Learned and co-trained B equalled the `minseen` ILP to two decimals
  everywhere. On proof edges `minseen` is already the best cut, so there was nothing left to learn. A's
  test gains (0.54 vs 0.56) were within the noise of an 11-source test set. The "oracle lower bound" was
  not one. All three are addressed below. Those checkpoints no longer load: the observation features changed.
- **Next:** rerun `scripts/run_gpu.sh` on the GPU machine and bring back `runs/logs.tgz`. Open question for
  the team: how much of the config is visible (see "Visibility").

## The game (`standard_config()` in `iampe/env/game.py`)

Standard values: Q=40, 10% declines, edge mode, `visible_p=0.5`, `b_sees="revealed"`, λ=1, 5 rounds.
Each round A queries until its budget is spent, then B cuts edges. Cuts are permanent,
and A sees them.

**Finder A**, per round:
- **Query (edge mode, the standard):** one question `(u, v, template)`: "can u take over v with this
  template?" The answer is TRUE (the edge is revealed), FALSE, or UNKNOWN (declined).
  - *Public* (what A may use to form questions, as in TAC's query space): every entity id and kind,
    the admin sink, the template list, and which (actor kind, template, target kind) combinations the
    templates allow. `iampe/env/query_space.py` builds this schema from the template definitions only.
    It covers 100% of the edges in all 18 real graphs (tested).
  - *Frontier:* u must be a source or a node A has already proven reachable from a source (forward
    search, as before).
  - *Hubs:* confirming `u → any:<template>` (u holds the permission on `*`) also reveals that hub's
    uncuttable out-edges. The builder derives those from public entity types.
  - Node mode (`query_mode="node"`, the old design) is kept for comparison.
- **Budget:** fixed Q per round, every query costs 1, no END (as in TAC).
- **Declines:** each query is declined with probability 0.1. A decline is a fixed property of that
  query in that game, independent of the order queries are made in. Before 2026-11-17 it depended on
  the order, so two finders saw different declines in the same game. A declined query costs 1, reveals
  nothing and cannot be repeated.
- **Memory:** a question asked in any earlier round is never asked again. Answers only change when B
  cuts the edge, which A sees. Proofs that survive the cuts are re-reported at the start of each round.
- **Early end:** the round ends as soon as every open source is proven (TAC ends on detection).
- **Reward per query:** (sources proven) − 1. In training only, add the shaping term
  γΦ(s′) − Φ(s), where Φ = −(questions still needed on the cheapest live path, summed over unproven
  open sources). Declined queries are impassable in Φ. A source that declines have cut off counts as
  10, so a blocking decline lowers Φ rather than looking like progress (`iampe/env/potential.py`).
- **Node mode** (`query_mode="node"`) brings the old game back as a whole: nothing visible and B sees
  proof edges only, unless those are set explicitly, so node-mode numbers stay comparable with old runs.
- **Visibility (`visible_p`):** the share of hidden edges A knows from the start, as in TAC's partial
  permission-flow graph. See "Visibility" below for why this matters.

**Remover B**, per round:
- **Sees** the edges on reported proofs (`b_sees="proofs"`, old) or every edge A revealed
  (`b_sees="revealed"`, the pipeline's setting). Only the second gives a learned B something to beat
  the ILP with: routes A explored but has not proven yet. First check (test split, 3 seeds,
  baselines only, wide CIs): with `revealed`, `adminfirst` (r_B −0.68) and even random cuts (−1.70)
  beat `minseen` (−3.68), because `minseen` only separates already-proven sources.
- **Cuts** any number of seen cuttable edges. Optionally a per-round edge budget (`--cut-budget`).
- **Reward:** r_B = (sources newly closed) − (sources still open) − λ · Σ w(e). Here w(e) is the number
  of users and roles that lose the permission, divided by the account's users and roles.
  `Game.preview_cut` gives the same reward for any cut without applying it.

## Evidence for the design choices (baselines only, nothing trained)

Pooled FNR = missed open sources / open sources, 10 seeds, 10% declines, single round. The oracle reads
the hidden graph. At large Q it reaches the exact floor: the share of sources behind declined queries.

| mode | visible | finder | train Q=20 | train Q=40 | test Q=20 | test Q=40 |
|---|---|---|---|---|---|---|
| node | – | bfs | 0.44 | 0.21 | 0.47 | 0.24 |
| node | – | oracle | 0.21 | 0.21 | 0.24 | 0.24 |
| edge | 0 | random | 1.00 | 1.00 | 1.00 | 1.00 |
| edge | 0 | bfs | 0.98 | 0.98 | 0.94 | 0.94 |
| edge | 0 | greedy (prior × value) | 1.00 | 0.87 | 1.00 | 0.88 |
| edge | 0 | oracle | 0.23 | 0.23 | 0.11 | 0.11 |
| edge | 0.25 | greedy | 0.93 | 0.79 | 0.92 | 0.82 |
| edge | 0.5 | random | 0.81 | 0.81 | 0.82 | 0.82 |
| edge | 0.5 | bfs | 0.80 | 0.80 | 0.72 | 0.72 |
| edge | 0.5 | greedy | 0.81 | 0.65 | 0.82 | 0.80 |
| edge | 0.5 | oracle | 0.14 | 0.14 | 0.11 | 0.11 |

What this shows:
- **Fixing the oracle and the declines made the node-mode reference consistent.** Before the fix, the
  oracle was beaten (test Q=40: co-trained A 0.17 vs "oracle" 0.27). Now no finder beats it, and every
  finder converges on the same floor at Q=1000 (train 0.21, test 0.24).
- **Yes/no questions are much harder than revealing out-edges, and that's the honest comparison with
  TAC.** One actor has 600–7,000 possible questions on the small configs (TAC: total query spaces ≤ 800).
  With nothing visible, targets of the same kind look identical, so the non-whitebox baselines barely
  find anything. The oracle sits at the floor (0.11–0.23). The gap is where a learned A should help, but
  only if there is some structure to learn from.
- **Visibility.** TAC's greybox setting exposes part of the configuration. `visible_p` is our version
  of that. With half the edges visible, about 19% of open sources are proven before any question
  (random ≈ 0.81), and the best public baseline gets to 0.65 on train at Q=40. **Its value is a team
  decision:** it sets how hard the game is. The standard config and the pipeline use 0.5.
- **Q = 40.** That's TAC's training budget, and it's the first budget where a non-whitebox baseline
  gets anywhere (greedy 0.81 → 0.65 on train). In node mode we used 20, because at 40 BFS already found
  everything. In edge mode that argument no longer holds.
- **The test split is too small to decide anything.** On test the oracle misses 17 of 160 open
  source-games, but there are only 11 distinct open sources. Use `--synth-test` for comparisons
  between finders.

## Differences from TAC, and why

| Area | TAC | Ours | Why |
|---|---|---|---|
| Query unit | One (entity, permission) pair, yes/no | One takeover edge (u, template, v), yes/no | Same answer semantics. Our graph already combines a template's permissions into one edge; permission-level queries are the next step (open items below) |
| Query space | E_vis × P_vis from public info | Frontier actors × schema from the templates | Same public-only rule; forward search keeps it tractable |
| Partial view | Part of the config visible | `visible_p` share of edges | Without it the yes/no game has no signal (table above) |
| Budget, END | Fixed, no END | Same | Taken from TAC |
| Declines | Per query | Per query, fixed per game, order-independent | Fair comparison between finders |
| Shaping | Φ from the planted plan, training only | Φ from true cheapest remaining paths, training only | Many sources, no single plan |
| Warm start | None | Imitate the oracle, then DAgger | 6 real training configs vs TAC's 2,000 tasks; the old teacher (LinUCB) was the worst finder on test |
| PPO | AdamW 1e-4, γ 1, λ 0.95, clip 0.2, entropy 0.01, 2 epochs | Same for A; 64 episodes per iteration in pretraining and fine-tuning, 32 in the 5-round stages | Taken from TAC; bigger batches because a single round is short |
| Pretraining | Synthetic tasks, size curriculum | Same, edge types drawn from our real train graphs | Taken from TAC |
| Goal | One untrusted entity reaches admin | Every source that reaches admin | B has to fix every escalation |
| Rounds | One | 5, B cuts in between | The project is remediation |

## Agents

| Agent | What it does | Where |
|---|---|---|
| random / bfs / greedy / oracle (A) | Baselines for both modes. Greedy in edge mode = public prior P(edge) from the train split × (1 if the target already reaches admin, else 0.1). Oracle = next query on the cheapest remaining path (exact 0-1 BFS) | `iampe/agents/finder_heuristic.py` |
| LinUCB bandit (A) | Node mode only (it scores nodes) | `iampe/agents/bandit.py` |
| Learned A | GATv2. Edge mode factorises π(u, v, t) = π(u) · π(v, t \| u); the second factor scores [h_u, h_v, template embedding] | `iampe/agents/gnn.py` |
| minseen / adminfirst / random / full (B) | ILP trade-off cut on seen edges / cut seen edges into admin / random / ILP on the whole graph (cheats: the ceiling) | `iampe/agents/remediator_baselines.py` |
| Learned B | GATv2 edge scorer: imitates `full` restricted to seen edges, then PPO, optionally on r_B minus `minseen`'s r_B in the same state | `iampe/agents/gnn.py`, `iampe/agents/rollout.py` |

## The pipeline (`scripts/run_gpu.sh`; GPU machine only)

| Step | Command (game flags in `$GAME`) | Why |
|---|---|---|
| 0 | `pytest --run-training` | Tests that take gradient steps are skipped elsewhere (no training on the laptop) |
| 1 | `gen_synth` with seeds 0 / 1 / 2 → `data/synth`, `synth_val`, `synth_test` | Disjoint training, selection and test sets; the real test split (11 sources) is too small to tell finders apart |
| 2 | `train_finder --synth data/synth --eval-synth data/synth_val --stages 4 --iters 50 --episodes 64 --bc 2000 --dagger 3` | Imitate the oracle, DAgger, then PPO with a size curriculum. Checkpoints are scored every 5 iterations on 100 held-out graphs (scoring all 300 every iteration would cost more than the training) |
| 3 | `train_finder --init finder_pre.best.pt --iters 30` (real train split) | Adapt to real configs |
| 4 | `train_finder --init finder.best.pt --rounds 5 --opponent minseen adminfirst` | Train A in the game it is evaluated in, and select on FNR over all 5 rounds against those removers (the log says if no iteration beat the start) |
| 5 | `train_remediator --finders bfs greedy ckpt:finder_vsB --baseline minseen` | B against the trained A; random and the oracle stay held out |
| 6 | `cotrain --gens 4 --baseline minseen` | PSRO-style pools with EXP3 opponent sampling; B uses the same reward as step 5 |
| 7 | `evaluate --seeds 10 --large --synth-test data/synth_test --matrix` | FNR with CIs and the floor, B tables with CIs and per-round numbers, finder × remover matrix |
| 8 | Copy the best checkpoints to `models/`; pack `runs/logs.tgz` | `runs/` is gitignored; the logs are what tell us whether longer training would help |

`bash scripts/run_gpu.sh smoke` runs every stage tiny, in a few minutes, to check the setup first.

## Open items

1. Run the pipeline on the GPU machine and bring back `runs/logs.tgz`.
2. Decide the visible share and Q for the yes/no game (table above).
3. Permission-level queries (exact TAC), built on the same `a_query` interface.
4. Exploitability (best responses to the final agents), once B can differ from `minseen`.
5. More B experiments: `--lam`, `--cut-budget`, training on the large configs with varying w.

## Older results

The first design (cost per query with END; 1 edge per round for B) is in git history at commit `28315dd`.
The node-mode fixed-budget design and its 2026-11-12 run are at commit `22ec59d`.
