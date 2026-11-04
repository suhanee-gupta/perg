> **Superseded.** This was the first build guide (v1 data, Phases 0-7). The current state is in `docs/STATUS.md`.

# Step-by-step implementation guide (Phases 0–7)

This is the exact build plan for the greybox IAM privilege-escalation (PE) remediation game.
Each step says **what** to build, **where**, and the **check** that proves it is done.
Training (Phases 5c, 7) is written and smoke-tested on CPU here; full runs happen on a GPU box.

## Decisions (fixed)

| Topic | Decision |
|---|---|
| Data | The 14 provided configs (`escalation/escalation/*`, `no_escalation/no_escalation/*`): Terraform + `labels.json`. No generator. |
| Graph | Principal-level **multigraph**, using the label vocabulary: nodes `user:<n>`, `role:<n>`, `group:<n>`, sink `admin:*`. Edge `u -[prim]-> v` = "u can act as / gain v". Names have the org prefix stripped (`fenlum-1bmogc-alice.chen` → `user:alice.chen`). |
| S, T | S = labelled untrusted entity + low-priv (non-admin) users, optionally sub-sampled per episode. T = `{admin:*}`. |
| Ground truth | `labels.json`: `has_pe`, `min_len`, witness path, full `dfs.paths` when not capped, and decoys/dead-ends that must not count. |
| Rewards | r_A(k) = #pairs proven in round k − μ·#queries − ν·#invalid reports. r_B(k) = −\|R(G_{k+1})\| − λ·Σ_{e∈C_k} w(e) (on the **full** graph). |
| A's queries | Query node u → reveals all live out-edges of u. Report s → valid iff a path s→admin made of revealed, live edges exists (the path is the proof). |
| RL | Own PPO in torch, masked categorical actions over graph elements, PyG GATv2 encoders. |
| Tooling | `uv` + `pyproject.toml`, pytest; CPU torch locally, CUDA torch on the GPU box. |

## Layout

```
pyproject.toml
iampe/                      # python package (plan folders live here)
  data/      index.py        # discover configs, load labels, splits
  parser/    hcl.py          # Terraform -> raw resources (cached)
             model.py        # Config dataclass: users/groups/roles/policies/workloads
             policy.py       # statement evaluation: actions, ARNs, Deny, NotAction, Conditions
  graph/     rules.py        # one function per escalation primitive
             build.py        # Config -> nx.MultiDiGraph with edge attrs, w(e)
  checker/   reach.py        # S, T, R(G), remove-edges-and-recompute
             mincut.py       # min-cut + budgeted ILP (IAMPERE-style upper bound)
             validate.py     # compare graph to labels
  env/       game.py         # two-player game core
             gym_envs.py     # gymnasium wrappers: FinderEnv (A vs fixed B), RemediatorEnv (B vs fixed A)
             features.py     # observation -> PyG tensors
  agents/    finder_heuristic.py, finder_gnn.py, remediator_baselines.py, remediator_gnn.py, ppo.py
experiments/ validate_graphs.py, play_random.py, eval_finder.py, run_baseline.py, train_finder.py, train_remediator.py
tests/
data/cache/                 # parsed configs + graphs (gitignored)
```

---

## Phase 0 — Setup
0.1 `uv venv .venv --python 3.12`; deps in `pyproject.toml`: python-hcl2, networkx, numpy, pulp, gymnasium, torch, torch_geometric, pytest, matplotlib.
0.2 `.gitignore`: `.venv/`, `data/cache/`, `*.zip`, `__MACOSX/`, `runs/`.
0.3 `tests/test_hello.py` imports every subpackage.
**Check:** `pytest tests/test_hello.py` passes.

## Phase 1 — Dataset index
1.1 `iampe/data/index.py`: `list_configs()` returns `ConfigRef(org, path, has_pe)` for every dir with `labels.json` (skipping `__MACOSX`).
1.2 `load_labels(ref)` → dict; helper `label_paths(labels)` normalises witness / dfs / planted / decoy / dead-end hops to `(src, prim, dst)` triples using graph node ids (`admin` → `admin:*`).
1.3 `splits()`: train = 8 small/medium configs; test = 4 held-out (2 PE, 2 no-PE); `large` = arior (25k entities), solor (50k), for generalisation only.
**Check:** 14 configs found, 8 PE / 6 no-PE, splits are disjoint.

## Phase 2 — Parser + graph builder
2.1 **HCL parsing** (`parser/hcl.py`): `python-hcl2` per `.tf` file; strip the quoting hcl2 v8 leaves on keys and strings. `jsonencode(...)` bodies come back as HCL-expression strings → small tokenizer/recursive-descent parser converting HCL object/list/string syntax to Python. Interpolations: `${local.account_id}`→`123456789012`, `${var.region}`→`us-east-1`, `${aws_x.y.id|name|arn}` → resolved reference. Result cached as JSON in `data/cache/<org>.parsed.json`.
2.2 **Model** (`parser/model.py`): build a `Config` with
  - users (+ login-profile flag), groups, memberships, roles (+ trust policy), instance profiles;
  - managed policies (default doc + extra versions from `terraform_data "<pol>__vN"`), inline policies (`aws_iam_*_policy`, if present);
  - attachments user/group/role → policy;
  - workloads: lambda functions (role), EC2 instances (profile → role), glue dev endpoints (role), sagemaker notebooks (role), cloudformation stacks (role).
  ARNs are computed the way AWS does (`arn:aws:iam::123456789012:user/<name>`, …).
2.3 **Policy evaluation** (`parser/policy.py`): `allowed(principal_policies, action, resource, ctx) -> (bool, granting_policies)`.
  - Action/NotAction, Resource/NotResource, wildcards `*`/`?`, case-insensitive actions.
  - Explicit Deny anywhere wins.
  - Conditions evaluated against an **attacker context** (inferred from the labels):
    blocking = `DateLessThan aws:TokenIssueTime`, `IpAddress aws:SourceIp`, `Bool aws:MultiFactorAuthPresent=true`, `iam:PassedToService` ≠ service in use;
    satisfiable = `DateGreaterThan aws:TokenIssueTime`, `Bool aws:SecureTransport`, `StringEquals aws:RequestedRegion` containing us-east-1, `iam:PassedToService` = service in use.
    Unknown keys are treated as unsatisfied for Allow and as applying for Deny (conservative, configurable).
  - Effective policies: user = own + all groups'; group = own; role = own.
2.4 **Rules** (`graph/rules.py`): one function per primitive in the labels. For actor u (user/group/role):

| prim | condition | edge |
|---|---|---|
| holds_admin | `*` allowed on `*` | u→admin |
| put/attach_user_policy | on self (user) | u→admin |
| put/attach_group_policy | on a group u is in (or u itself if group) | u→admin |
| put/attach_role_policy | on self (role) | u→admin |
| create_policy_version | on a customer-managed policy attached to u (directly or via group) | u→admin |
| set_default_policy_version | on policy P attached to u that has a non-default version granting `*` | u→admin |
| add_user_to_group | user u, group g | u→g |
| assume_role | trust of r names u's ARN, or account root + u allowed `sts:AssumeRole` on r | u→r |
| update_assume_role_policy | on role r | u→r |
| create_access_key | on user v | u→v |
| create_login_profile / update_login_profile | on user v without / with a login profile | u→v |
| pass_role_{lambda,ec2,glue,sagemaker,datapipeline,cloudformation} | `iam:PassRole` on r (PassedToService ok) + recipe actions + r trusts that service (ec2: r has an instance profile) | u→r |
| update_function_code | on function f | u→role(f) |
| ssm_send_command / ssm_start_session / ec2_instance_connect | on instance i | u→role(i) |
| glue_update_dev_endpoint | on endpoint e | u→role(e) |
| cfn_update_stack | on stack s | u→role(s) |

  Recipes: lambda {CreateFunction+InvokeFunction} or {CreateFunction+CreateEventSourceMapping}; ec2 {RunInstances}; glue {CreateDevEndpoint}; sagemaker {CreateNotebookInstance+CreatePresignedNotebookInstanceUrl} or {CreateProcessingJob}; datapipeline {CreatePipeline+PutPipelineDefinition+ActivatePipeline}; cloudformation {CreateStack}.
2.5 **Graph** (`graph/build.py`): `nx.MultiDiGraph`, key = prim. Node attrs: `kind`, `arn`, `is_admin`, `is_untrusted`. Edge attrs: `prim`, `category`, `policies` (granting policy names), `w`, `cuttable` (False for `holds_admin`).
  **w(e) v1** (`w_mode="shared"`): number of distinct principals that hold the granting policy(ies), i.e. how many principals a fix would touch; for trust-based edges, the number of principals named in that trust policy. `w_mode="const"` → 1.
  Graphs pickled to `data/cache/<org>.graph.pkl`.
**Check (`experiments/validate_graphs.py`, `tests/test_graph.py`):** for every config,
  (a) every witness / planted / dead-end hop is an edge;
  (b) every decoy hop marked `decoy: true` is **not** an edge;
  (c) `has_pe` matches reachability untrusted→admin and `min_len` matches the shortest path;
  (d) when `dfs.capped == false`, the set of simple paths untrusted→admin equals `dfs.paths` exactly.

## Phase 3 — Whitebox checker
3.1 `checker/reach.py`:
  - `sources(G, mode="untrusted+lowpriv", max_n=None, rng)`: S = untrusted ∪ users with no path to admin of length 0 (not `is_admin`).
  - `reachable_pairs(G, S, removed=set())`: one reverse BFS from `admin:*` over live edges → {s ∈ S that reach T}. O(E).
  - `LiveGraph`: wraps G + removed-edge set; `remove(edges)`, `open_pairs()`, `shortest_proof(s)`.
3.2 `checker/mincut.py`:
  - `relevant_subgraph(G, S)`: nodes forward-reachable from S ∩ backward-reachable from admin.
  - `min_cut(G, S, weight)`: super-source → S (∞), capacity = Σ w over parallel cuttable edges (uncuttable = ∞), `nx.minimum_cut`, mapped back to edge keys. Exact unbudgeted upper bound.
  - `budgeted_cut(G, S, budget, weight, edges_allowed=None)`: ILP (pulp/CBC): p_v ∈{0,1} (1 = attacker side), p_admin = 0, z_s ≥ 1 − p_s, x_e ≥ p_u − p_v, Σ w_e x_e ≤ budget, minimise Σ z_s (= open pairs). `edges_allowed` restricts cuttable edges (used by B_minseen).
**Check (`tests/test_checker.py`):** toy graphs with hand-computed R and cuts; on every config, `min_cut` leaves 0 open pairs, and the budgeted ILP is monotone in budget.

## Phase 4 — Game environment
4.1 `env/game.py` — `GameConfig(Q, K, lam, mu, nu, cut_budget, cut_budget_mode ∈ {count, weight}, max_sources, reveal_cuts_to_A=True, seed)`.
4.2 State: full G, removed set (G_k = G − removed), S, A's revealed edges + queried nodes, reports this round, B's seen paths (all rounds).
4.3 Round k:
  - **A phase**: until Q queries used or A ends its turn. Actions: `("query", node)`; `("report", s)` (proof = shortest path over revealed live edges; invalid if none or s already proven this round); `("end",)`.
  - **B phase**: B observes all reported paths so far (union subgraph) + w(e). Actions: `("cut", edge)` among seen live cuttable edges within budget, `("stop",)`.
  - Transition G_{k+1} = G_k − C_k. If `reveal_cuts_to_A`, cut edges vanish from A's view.
  - Rewards: r_A, r_B as in the decisions table; r_B uses `reachable_pairs` on the full live graph.
4.4 `env/gym_envs.py`: `FinderEnv(game_cfg, graphs, opponent_B)` and `RemediatorEnv(game_cfg, graphs, opponent_A)` subclass `gymnasium.Env`; obs = dict with the observed subgraph and action mask; the action is an index into the current candidate list.
4.5 `env/features.py`: obs → `torch_geometric.data.Data` (node feats: kind one-hot, is_source, queried, proven, observed in/out-degree, hop distance from S; edge feats: prim one-hot, category one-hot, log(1+w)).
**Check (`experiments/play_random.py`, `tests/test_game.py`):** random A + random B play full K-round games on all train configs; on a 6-node toy graph the per-round rewards match hand calculation.

## Phase 5 — Finder A
5a `agents/finder_heuristic.py`: `BFSFinder` (query frontier in BFS order from S, report as soon as a proof exists) and `GreedyFinder` (frontier priority by prim-type prior: edges that lead to admin-capable prims first).
5b `agents/finder_gnn.py`: `FinderPolicy` = 3× GATv2Conv (edge_dim) → per-node logit for query candidates, per-source logit for report, one logit for end; value head = mean+max pool → MLP.
5c `agents/ppo.py` (shared) + `experiments/train_finder.py`: PPO (GAE, clip 0.2, entropy bonus), episodes = single-round games without B (pure finding) and then vs B baselines; optional BC warm start from the whitebox oracle (`OracleFinder`: queries the next unqueried node on a true shortest path for an unproven reachable source).
`experiments/eval_finder.py`: FNR at budget Q ∈ {25, 50, 100, 200} = (# truly reachable s not proven) / (# truly reachable s), plus config-level FNR for the untrusted entity (TAC-comparable).
**Check:** heuristic FNR is reported for all configs; PPO training runs a few iterations on CPU and saves a checkpoint.

## Phase 6 — Baseline B
6.1 `agents/remediator_baselines.py`: `RandomB` (random seen edges within budget), `MinSeenB` (budgeted ILP on the seen subgraph, weights w(e)), `FullB` (budgeted ILP on the full relevant subgraph — ceiling, cheats by seeing G).
6.2 `experiments/run_baseline.py`: A (heuristic or checkpoint) vs each B for K rounds; logs per round: open pairs, cumulative cut cost, r_A, r_B, # new routes found; writes `runs/<name>/metrics.jsonl` and a plot.
**Check:** curves show A re-finding routes after B_minseen cuts (open pairs > 0 after round 1 while seen paths are cut).

## Phase 7 — Learned B
7.1 `agents/remediator_gnn.py`: `RemediatorPolicy` = GATv2 over B's observed subgraph (edge feats include w(e), times-seen, cut-cost-so-far/budget) → edge logit = MLP([h_u, h_v, e]); plus stop logit; sequential selection, masked by budget.
7.2 `experiments/train_remediator.py`: PPO on r_B (full-graph reward) vs a fixed A (heuristic / checkpoint); optional BC warm start imitating `FullB` cuts restricted to seen edges.
7.3 Evaluation hook: same metrics as Phase 6 for learned B vs MinSeenB at equal cut budget.
**Check:** a few training iterations on CPU run end to end and the checkpoint loads into `run_baseline.py`.

## Running on the GPU box
```
uv venv .venv --python 3.12 && uv pip install -e . && uv pip install torch --index-url https://download.pytorch.org/whl/cu124
python -m experiments.validate_graphs            # builds caches (~5 min for the two large configs)
python -m experiments.train_finder --device cuda --iters 2000
python -m experiments.train_remediator --device cuda --finder runs/finder/best.pt --iters 2000
```
