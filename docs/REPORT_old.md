# Finder and fixer, first design: results of the 2026-11-12 run

This is the **first full run** of the project: every stage trained and evaluated, including co-training.
It used an earlier game design and the first 18 configs. The current design (`REPORT.md`) changed the
parts that this run showed to be problems; section 6 says which and why.

Code: commit `22ec59d`. Tables: `docs/results.md` at that commit. Models: `models/finder.pt`,
`models/remover.pt`, `models/finder_cotrain.pt`, `models/remover_cotrain.pt` (they do not load with the
current code).

## 1. The idea (unchanged)

Two agents play on one AWS account:

- **Finder A** cannot see the permissions. It queries the account under a fixed budget and proves which
  users and roles can escalate to admin (the Greybox-TAC setting, arXiv 2304.14540).
- **Fixer B** removes permissions to close what A found, paying a cost for each legitimate user and role
  that loses a permission.

They play **5 rounds**: after each fix the graph changes, and A looks for routes around it. The claim to
show is that each player gets better by having the other in the loop.

## 2. Data

- **18 AWS IAM configs** (Terraform, from the `iamgen` generator, with ground-truth labels), converted
  into permission graphs. All 18 match their labels hop for hop.
- Splits: **train 6** (29-356 nodes, about 21 open escalation sources), **test 2** (11 open sources),
  bench 4 (IAM Vulnerable scenarios), large 6 (1k-28k nodes).
- **2,000 synthetic graphs** for pre-training A (adapted from TAC's generator; edge types drawn from the
  real training graphs).

## 3. The game (first design)

**Finder A**, per round:
- **Query = a node.** Asking about node u reveals *all* of u's outgoing edges (every way u can take over
  something).
- Fixed budget **Q = 20** queries per round, each costing 1; no "stop" action.
- 10% of queries declined: the query costs 1, reveals nothing, and that node cannot be asked again.
- Memory across rounds: never re-asks a node; proofs that survive B's cuts are re-reported.
- Reward: sources newly proven - 1 per query, plus potential-based shaping in training.
- Nothing visible at the start.

**Fixer B**, per round:
- **Sees only the edges on A's completed proofs.**
- Cuts any number of seen edges. Reward: (sources newly closed) - (sources still open) - collateral.

## 4. Agents and pipeline

- Policies: GATv2 graph networks. A: imitation of a bandit finder (LinUCB), then PPO with TAC's settings
  (AdamW 1e-4, gamma 1, GAE 0.95, clip 0.2, entropy 0.01).
- Pipeline:
  1. A pre-trained on synthetic graphs with a 4-stage size curriculum (200 iterations).
  2. Fine-tuned on the 6 real train configs (30 iterations).
  3. B trained against a pool of fixed finders.
  4. **Co-training**: 4 generations, PSRO-style pools with EXP3 opponent choice.
  5. Evaluation on train and test, 3 seeds.
- Baselines. A: random, BFS, greedy, LinUCB, and an oracle that reads the hidden graph. B: random cuts,
  `minseen` (ILP min cut on what B saw), `adminfirst`, `full` (min cut with full information, a
  ceiling).

## 5. Results

### Finder A: FNR (missed open sources / open sources), single round, no B

| finder | train Q=10 | train Q=20 | train Q=40 | test Q=10 | test Q=20 | test Q=40 |
|---|---|---|---|---|---|---|
| random | 0.58 | 0.29 | 0.09 | 0.79 | 0.65 | 0.38 |
| BFS | 0.34 | 0.12 | 0.07 | 0.77 | 0.56 | 0.31 |
| greedy | 0.42 | 0.12 | 0.05 | 0.83 | 0.69 | 0.31 |
| LinUCB (bandit) | 0.33 | 0.18 | 0.08 | 0.90 | 0.79 | 0.56 |
| learned A (`finder`) | 0.53 | 0.17 | 0.07 | 0.77 | 0.60 | 0.31 |
| **co-trained A (gen 4)** | 0.55 | 0.17 | 0.12 | 0.77 | **0.54** | **0.17** |
| oracle | 0.15 | 0.12 | 0.12 | 0.27 | 0.27 | 0.27 |

- The **co-trained A** is the best non-oracle finder on test at Q=20 (0.54 against BFS 0.56) and
  clearly at Q=40 (0.17 against 0.31 for BFS and greedy).
- The learned A trained without co-training equals BFS on test.
- On train, BFS and greedy are as good as or better than the learned finders.

### Fixer B: total r_B over 5 rounds (higher is better) and open-source-rounds (lower is better)

Against held-out finders (random, oracle):

| remover | train r_B | train open | test r_B | test open |
|---|---|---|---|---|
| random | -1.03 | 6.17 | -5.20 | 11.83 |
| minseen | 1.58 | 3.64 | -2.76 | 9.42 |
| adminfirst | 0.75 | 4.31 | -2.76 | 9.42 |
| learned B | 1.58 | 3.64 | -2.76 | 9.42 |
| co-trained B (gen 4) | 1.58 | 3.64 | -2.76 | 9.42 |
| full (ceiling, sees everything) | 5.80 | 0.00 | 7.99 | 0.00 |

Against the training finders, the pattern is the same: learned and co-trained B score exactly what
`minseen` scores, on every split.

**In short:** learned B learned to copy the ILP baseline. Co-trained A looked better than every
baseline on the test configs.

## 6. What this run taught us, and why the design changed

A close look afterwards showed that most of these numbers cannot carry the claim:

1. **The test set was too small.** It had 2 configs with 11 open sources, so one source is 0.09 of FNR.
   The co-trained A's 0.17 against BFS's 0.31 at Q=40 is a gap of about 1.5 sources, within noise. No
   confidence intervals were reported.
2. **The oracle was not a bound.** The co-trained A (0.17) beat the "oracle" (0.27) on test. The oracle
   gave up when a query on its path was declined instead of trying another route, so the table's
   "lower bound" was wrong. In the current design it reroutes, and the exact floor (sources no finder
   can prove) is computed separately.
3. **Declines depended on the order of queries,** so two finders asking the same question could get
   different answers. Now each question's decline is fixed per game.
4. **B had nothing to learn.** B saw only proof edges, and on that view the `minseen` ILP is already the
   optimal cut, so copying it was the best a learned B could do. Now B sees every edge A revealed, and
   there simple heuristics already beat `minseen`, so a learned B has room.
5. **Checkpoints were chosen on the training graphs,** which rewards overfitting. Now they are chosen on
   a separate validation split.
6. **One query revealed a node's whole neighbourhood,** which is coarser than TAC's yes/no questions and
   made BFS hard to beat on small graphs. Now A asks yes/no questions about single edges.
7. **The variants were not trained equally,** so "co-trained beats fine-tuned" mixed up more training
   with a better opponent. The current pipeline gives every variant the same start and the same
   number of iterations, and adds a no-fixer control.

## 7. What carries over

- The data pipeline, the graph builder and the label checker, all reused unchanged.
- The game loop (5 rounds, memory across rounds, collateral cost), the agents' architecture, the
  PSRO/EXP3 co-training and the evaluation code, all kept and fixed rather than rewritten.
- The first sign that co-training can help A (Q=40 on test), which the current design re-tests with
  more data (72 configs, 46 open sources in test), a proper control and confidence intervals.
