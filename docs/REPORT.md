# Finder and fixer: learning to find and close privilege-escalation paths in AWS IAM

## 1. The idea

In AWS, a user or role can sometimes give itself more power than it was granted: attach an admin
policy to itself, assume a stronger role, pass a role to a Lambda it controls, and so on. A chain of
such steps that ends with administrator access is a **privilege-escalation path**.

We study two agents playing against each other on the same AWS account:

- **Finder A** cannot see the account's permissions. It asks yes/no questions ("can user u take over
  role v with technique t?") under a fixed question budget, and has to *prove* which users and roles
  can reach admin. This is the setting of Greybox-TAC (arXiv 2304.14540), which another sub-team
  implements as our comparison.
- **Fixer B** sees what A uncovered and removes permissions to close the paths, while trying not to
  break things for legitimate users (each removed permission has a collateral cost).

They play **5 rounds** on the same account. After each fix the permission graph changes, and A has to
find routes around B's fixes. So **one account gives five runs, each on a slightly different graph**,
instead of TAC-GB's one run per graph.

**The claim we want to show:** each player gets better by having the other in the loop. A finder that
trains against a fixer finds more than one trained alone. A fixer that trains against a learning
finder fixes better than one trained against fixed finders. This should hold whichever way B is added
(a fixed opponent or a co-trained one).

## 2. Data

- **72 AWS IAM configurations** in Terraform, from a generator (`iamgen`), each with ground-truth
  labels: whether escalation exists, a witness path, planted paths, dead ends and decoys.
- Each config is converted into a **permission graph**. Nodes are users, groups, roles, policies and
  compute resources; an edge `u -> v` means "u can take over v with technique t". There are 70+
  techniques from pathfinding.cloud. **Every graph is checked against its labels before use, and all
  pass.** One converter bug found this way was fixed: a group's own Deny policy was ignored.
- **Splits** (fixed; by size tier and label):

| split | configs | graph size (nodes) | open escalation sources | used for |
|---|---|---|---|---|
| train | 40 | 29 - 2,263 | 175 | training |
| val | 10 | 100 - 1,900 | 44 | choosing checkpoints |
| test | 10 | 100 - 1,800 | 46 | final tables only |
| bench | 4 | 11 | 2 | IAM Vulnerable sanity checks |
| large | 8 | 5,000 - 30,000+ | 21+ | evaluation only |

- **2,300 synthetic graphs** (seeded) for pre-training A and as an extra test set.

## 3. The game

Per round (5 rounds per game):

**Finder A**
- Asks up to **Q = 40** yes/no questions `(u, technique, v)`. The answer is TRUE (the edge is
  revealed), FALSE, or UNKNOWN (10% of questions are declined, a fixed property of each question).
- Questions are built only from public information: entity names and kinds, and which techniques
  apply to which kinds. `u` must be a source or a node A has already reached.
- **50% of hidden edges are visible at the start.** This is our setting, not TAC-GB's: with 0
  visible, every non-learned finder misses 87-100% of sources, so there is nothing to compare.
- Never asks the same question twice. Proofs that survive B's cuts carry over to the next round.
- Reward: +1 per source newly proven, -1 per question. Training only: potential-based shaping toward
  the cheapest remaining path.

**Fixer B**
- Sees every edge A revealed, not only completed proofs. So it can cut a route A is exploring before
  it is proven.
- Removes any set of edges it has seen. Reward: (sources newly closed) - (sources still open) -
  collateral, where collateral = how many users and roles lose each removed permission.

**Metrics**
- A: **FNR** (false-negative rate) = open escalation sources A failed to prove / all open sources.
- B: total reward over 5 rounds, open sources left after each round, collateral.
- The loop: **re-found** sources, i.e. ones A proved, B's fix removed the proof, and A proved them
  again by another route. This is the direct evidence that the multi-round game adds something.

## 4. The agents

- **Policies:** graph neural networks (GATv2) over the part of the graph each player knows. A picks a
  node, then a (technique, target) for it; B scores every seen edge for removal.
- **Training A:** imitation of an oracle first (an oracle that reads the hidden graph and always asks
  the next question on a cheapest path), with 3 rounds of DAgger, then PPO with the TAC-GB
  hyper-parameters (AdamW 1e-4, gamma 1, GAE 0.95, clip 0.2, entropy 0.01).
- **Training B:** imitation of the full-information cut restricted to what B can see, then PPO on
  r_B minus a baseline remover's r_B (lower variance).
- **Co-training:** PSRO-style. Each player trains against a growing pool of opponents (fixed
  baselines plus snapshots of the other player), and an EXP3 bandit picks the opponent it currently
  does worst against.
- **Baselines.** A: random, BFS, greedy (a prior over edge types learned from the train split), and
  the oracle. B: random cuts, `minseen` (an ILP minimum cut on what B saw), `adminfirst` (cut edges
  into admin), `full` (the cut with full information, a ceiling).

## 5. The pipeline (`scripts/run_gpu.sh`)

The question it answers: is each player better with the other in the loop? For a fair comparison,
every A variant starts from the same A and every B variant from the same B. Each trains for the same
number of iterations on the same graphs; only the opponent differs. Variants are compared by their
final weights, on opponents none of them trained against.

| step | what | why |
|---|---|---|
| 0 | tests, including training tests | catches breakage before hours of compute |
| 1 | build the largest graphs; generate synthetic graphs | evaluation configs; pre-training volume |
| 2 | A: imitate the oracle (+DAgger), then PPO on synthetic graphs, size curriculum | warm start |
| 3 | A: fine-tune on the 40 real train configs -> `finder` | the common start of every A variant |
| 4 | B: imitation warm start -> `remover_init` | the common start of every B variant |
| 5 | A with **no B**, 5-round games -> `finder_noB` | the control |
| 6 | A against **fixed** fixers -> `finder_vsB` | does a fixer in the loop help A? |
| 7 | B against **fixed** finders -> `remover` | B's counterpart of step 6 |
| 8 | **co-training**, 4 generations x 10 iterations each | each player against a learning opponent |
| 9-11 | evaluation: FNR with 95% CIs, B tables, finder x fixer matrix with re-finds, large configs, visibility sweep | the comparison |

Engineering points that matter for trusting the numbers:
- Results do not depend on Python's hash seed or on the number of parallel workers. A
  nondeterminism bug in the cut solver was found and fixed.
- Confidence intervals resample whole configs, not individual games, because games on the same
  config are correlated.
- Checkpoints are chosen on the validation split; the test split is used only for the final tables.

## 6. Results so far

Run on a shared RTX A6000 machine. Steps 0-5 finished. Step 2 alone took about 13 hours, because the
games run on the CPU one question at a time.

**Finder A, single round, Q = 40, validation configs** (243 open sources pooled over the validation
configs and evaluation seeds):

| finder | FNR (missed / open) | questions used |
|---|---|---|
| random | 0.720 (175/243) | 38.7 |
| BFS | 0.708 (172/243) | 38.7 |
| greedy | 0.646 (157/243) | 38.2 |
| **learned A** | **0.560 (136/243)** | 36.0 |
| oracle (reads the hidden graph) | 0.078 (19/243) | 4.6 |

The learned finder misses fewer sources than every non-oracle baseline: 21 fewer than greedy, the
best of them. It is still far from the oracle, which shows how much room is left.

**Re-finds exist in the data** (baselines only, before any training; sources re-found per 5-round
game against `minseen`): oracle 3.0 on test and 0.7 on train; greedy 0.07 / 0.28; BFS 0 / 0.04. With
the first 18 configs, no finder ever re-found a source. With the full 72, the graphs have routes
around B's fixes, which the loop needs. The simple finders rarely find them, which is what a learned
A should improve.

**Test set** (10 unseen configs; 172 open sources pooled over 2 seeds; 95% CIs resample whole
configs). Finder A, single round:

| finder | FNR at Q = 20 | FNR at Q = 40 [95% CI] |
|---|---|---|
| random | 0.67 | 0.67 [0.58, 0.78] (116/172) |
| BFS | 0.61 | 0.61 [0.48, 0.73] (105/172) |
| greedy | 0.67 | 0.59 [0.47, 0.69] (102/172) |
| **learned A** | **0.59** | **0.54 [0.41, 0.65] (93/172)** |
| learned A, then 40 more iterations in 5-round games with no fixer | 0.59 | 0.54 [0.41, 0.66] (93/172) |
| oracle | 0.12 | 0.12 (21/172) |
| exact floor (unprovable: every route needs a declined question) | 0.12 | 0.12 |

The learned finder is the best non-oracle finder on unseen configs as well: 9 fewer misses than
greedy, 12 fewer than BFS. The intervals overlap, so this is a consistent edge, not yet a significant one.
The oracle reaches the exact floor.

Fixer B, 5 rounds against held-out finders (random, oracle, the no-fixer A): `minseen` r_B -13.35,
`adminfirst` -14.09, B's warm start -13.69. All are within noise of each other; B's warm start plays
like `adminfirst`.

Re-finds against `minseen` (per game, over 5 rounds): oracle 4.25, learned A 0.05, BFS / greedy /
random 0. The routes around B's fixes exist, but only the oracle uses them. Teaching A to use them
is what co-training is for.

### Co-training results (final evaluation, test split, 3 seeds)

Run on an AWS c7i.2xlarge: co-training 4 generations x 5 iterations per player x 32 five-round games;
A against fixed fixers (`minseen`, `adminfirst`) 20 iterations x 32 games. All A variants start from the
same A, all B variants from the same B.

**Finder A, single round** (258 open sources pooled over 3 seeds):

| A variant | FNR at Q = 20 | FNR at Q = 40 [95% CI] |
|---|---|---|
| random | 0.66 | 0.66 (169/258) |
| BFS | 0.60 | 0.60 (156/258) |
| greedy | 0.66 | 0.60 (155/258) |
| A trained against fixed fixers | 0.58 | 0.57 [0.46, 0.66] (147/258) |
| A trained with no fixer | 0.60 | 0.54 [0.41, 0.63] (139/258) |
| starting A | 0.59 | 0.53 [0.41, 0.62] (138/258) |
| **co-trained A (generation 4)** | **0.55** | **0.50 [0.36, 0.61] (130/258)** |
| oracle = exact floor | 0.10 | 0.10 (25/258) |

**Fixer B, 5 rounds, against finders no B trained against** (random, oracle, A with no fixer, A
against fixed fixers):

| B variant | total r_B [95% CI] | open-source-rounds [95% CI] | collateral | edges cut |
|---|---|---|---|---|
| `minseen` (ILP min cut on what B saw) | -12.73 [-24.19, -4.92] | 17.80 [9.79, 29.30] | 0.011 | 2.8 |
| `adminfirst` | -13.10 [-26.87, -3.89] | 18.08 [8.99, 31.34] | 0.010 | 2.7 |
| starting B | -12.90 [-26.27, -3.89] | 17.92 [8.99, 30.88] | 0.010 | 2.7 |
| **co-trained B (generation 4)** | **-7.96 [-12.46, -3.77]** | **13.79 [8.93, 19.42]** | 0.048 | 10.8 |

Co-trained B has the best r_B against every finder in the finder x fixer matrix, including the oracle
(+3.09 against -1.65 for `minseen`). It learned to cut about four times as many edges, accepting more
collateral to leave about 23% fewer sources open.

**Generations matrix** (A generations 0-4 x B generations 0-4): later B generations hold every A
generation down better (B3 and B4 against every A row: r_B -6 to -10, against -11 to -14 for B0-B2).

**What this shows**
- Fixer B improves through co-training with a learning finder, and the gain holds against finders it
  never trained with. This is the clearest result.
- The co-trained finder is the best non-oracle finder (8 fewer misses than the starting A, 9 fewer than
  the equal-start no-fixer control), while training against a *fixed* fixer did not help A. The edge
  is small and the intervals overlap.
- Not shown: in the 5-round games no learned finder re-finds sources after a fix (the oracle re-finds
  4.1 per game against `minseen`), so co-training has not yet taught A to route around fixes. B's gain
  could partly come from more training alone; B trained against fixed finders for the same number of
  iterations (`remover`, still running on the shared machine) is the control for that.

## 7. Findings and limitations

- **Imitation does the work; PPO did not help.** In both pre-training and fine-tuning, the best
  checkpoint was the first one, right after imitation; PPO made validation FNR worse (0.56 -> 0.61 to
  0.67). Likely causes: sparse reward (most episodes prove few sources) and value-estimate noise over
  40-question episodes.
- **Reduced co-training.** For time, co-training ran 4 generations x 5 iterations per player instead
  of 4 x 10, and the B-against-fixed-finders control did not finish in time. Results use 3 seeds on
  10 test configs, so intervals are wide.
- **No re-finds by learned finders.** The routes around fixes exist (the oracle uses them), but no
  learned A found them; the A side of the claim rests on single-round FNR only.
- **Visibility.** We use 50% of edges visible at the start. TAC-GB reveals a subset of entities
  and no permissions (closest to 0% in our terms), where non-learned finders almost always fail.
- **Synthetic graphs** lack hubs, groups and varying weights, so they are only used for pre-training.

## 8. Next steps

1. Full-size co-training (4 x 10 iterations) and the B-against-fixed-finders control; more seeds.
2. Fix PPO on top of imitation: keep an imitation loss during PPO, lower the learning rate, or use
   the oracle's path length as a denser reward.
3. Permission-level questions (TAC-GB's exact query unit) on the same interface.
4. Compare A with the TAC-GB sub-team's implementation under their settings.
