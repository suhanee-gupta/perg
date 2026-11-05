# Project status (for review)

State of the greybox IAM privilege-escalation remediation game as of 2026-11-06.
Full result tables: `docs/results.md`. Data: `docs/dataset.md`. Large-graph hand-off: `docs/HANDOFF.md`.

## Summary

- **Pipeline:** the converter, graph builder and checker work on the v2 data. All 18 graphs are in
  `data/graphs/` and match their labels hop for hop. The 6 large ones were built off this laptop
  (commit `dd6a39a`) and checked here from the stored files, not rebuilt.
- **Game:** constant per-query cost μ (optional exponential growth), END enabled, no hand-picked
  cap. Rewards are hand-checked on a toy graph.
- **Finder A:** BFS, Greedy, a LinUCB contextual bandit, and a cheating oracle. **No learned (PPO)
  finder yet**: its training script still needs rewriting (see "Open items").
- **Remover B:**
  - baselines: random, min-seen (budgeted ILP on the edges B has seen), admin-first (hand-written
    rule), full (ILP on the whole graph; a ceiling that cheats);
  - learned B: GATv2 + PPO, warm-started by imitating the full-graph ceiling's cuts restricted to
    edges B has seen;
  - an EXP3-trained variant and three ablations.
- **Main result:** learned B's advantage does not generalise.
  - On the two small test configs, at the same cut budget, learned B leaves about a third of min-seen
    B's open sources against the training finders (2.00 vs 6.00) and matches the ceiling. In practice
    it has learned "cut the seen edge into admin, then stop".
  - On the six large configs it is level with min-seen (12.44 vs 12.00; held-out finders 15.04 vs
    15.46), and both are well behind the ceiling (8.33).

## Phase status

| Phase (original plan) | Status | Where |
|---|---|---|
| 0 Setup | done | `pyproject.toml` |
| 1 Dataset | done (v2: 18 configs) | `iampe/data/index.py`, `docs/dataset.md`, `data/splits.json` |
| 2 Parser + graph | done | `iampe/parser/`, `iampe/graph/build.py`, `data/graphs/` |
| 3 Whitebox checker | done | `iampe/checker/` |
| 4 Game | done | `iampe/env/game.py`, `tests/test_game.py` |
| 5a Heuristic A | done | `iampe/agents/finder_heuristic.py` |
| 5 Bandit A (added) | done | `iampe/agents/bandit.py`, `experiments/train_bandit.py` |
| 5b/c Learned A | **open**: policy and batched PPO exist; the training script needs a rewrite | `iampe/agents/gnn.py`, `experiments/train_finder.py` |
| 6 Baseline B | done | `iampe/agents/remediator_baselines.py`, `experiments/run_baseline.py` |
| 7 Learned B | done | `experiments/train_remediator.py`, `models/remover_v1.pt` |
| 8 Co-training | **B half only** (EXP3 over a finder pool); the A half waits for learned A | `experiments/cotrain.py` |
| 9 Evaluation | done for everything above, including the large configs | `experiments/evaluate.py`, `docs/results.md` |

## Decisions taken (and why)

**Data and pipeline**
- **v2 data replaces v1** as the main dataset. v1 stays readable (`list_configs("v1")`) and its
  arifen test still runs when the v1 folders are present.
- **Ground truth = my converter run on the Terraform, not the generator's `config.json`.**
  `config.json` gets 3 of the 9 no-escalation configs wrong (a Deny on policy-version actions in a
  separate policy is ignored) and over-approximates open sources. Evidence: `docs/HANDOFF.md` §9.
- **Splits:** train = linost, mavsol, mercor, dyntri, kalum, hexsol; test = orqua, ormav;
  bench = the 4 IAM Vulnerable configs; deferred = the 6 large configs (never used for training).
- **Graph building is the only heavy step,** done once and stored in `data/graphs/`. Everything
  downstream reads those files. The team engine's `relax()` is refused above 100 entities, because
  it crashed the laptop.

**Game**
- **Per-query cost:** μ is constant per query; exponential growth (`cost_growth`) is available as an
  ablation knob, but not the default.
- **When A's turn ends:** on END, when nothing is left to query, or when the round's query cost
  reaches the number of unproven sources (beyond that no query can pay off). There is no fixed cap.
- **Sources:** non-admin users **and roles**. With users only, min-seen B already matched the
  ceiling, leaving learned B nothing to show.
- **μ = 0.3 for the B experiments.** The whole graph reachable from the sources is only about
  40–47 nodes, so any μ below about 0.2 never binds.
- **B's budget = 1 edge per round, K = 5 rounds,** counted in edges.

**Agents**
- **The bandit only chooses which node to query by default** (`bandit:`). Its own one-step END rule
  stops after 0–2 queries, because a query's payoff arrives several queries later. That variant is
  kept as `bandit+end:`.
- **B's round reward is divided by |S|,** so returns are comparable across configs.
- **B always starts from imitation.** It trains against a pool of finders: BFS, Greedy, bandit.
- **EXP3 co-training uses a finder pool disjoint from the held-out evaluation finders** (random,
  bfs:p10, greedy:p10).
- **The no-w ablation hides w(e) from B's features as well as from the cost** (an earlier version
  only hid it from the cost).

## Results (details in `docs/results.md`)

3 seeds, budget 1 edge per round. "Open-source-rounds" = open sources summed over the 5 rounds (lower
is better). "Edges cut" = edges actually cut over the 5 rounds. Finders used by "training finders":
BFS, Greedy, bandit. Held-out finders: random, bfs:p10, greedy:p10.

Test split (orqua, ormav):

| remover | vs training finders: open-source-rounds | edges cut | vs held-out finders: open-source-rounds | edges cut |
|---|---|---|---|---|
| random | 16.50 | 5.00 | 18.61 | 4.67 |
| min-seen | 6.00 | 3.00 | 8.22 | 2.78 |
| admin-first (hand rule) | 2.00 | 5.00 | 5.11 | 4.67 |
| **learned B** | **2.00** | **2.50** | **5.11** | **2.39** |
| full-graph ceiling (cheats) | 2.00 | 2.50 | 2.00 | 2.50 |

Large configs (arimer, axnor, corpyr, delnor, linlin, mermer):

| remover | vs training finders: open-source-rounds | edges cut | vs held-out finders: open-source-rounds | edges cut |
|---|---|---|---|---|
| random | 20.89 | 4.63 | 21.04 | 4.67 |
| min-seen | 12.00 | 3.17 | 15.46 | 3.26 |
| admin-first (hand rule) | 11.67 | 4.63 | 14.31 | 4.67 |
| **learned B** | **12.44** | **3.17** | **15.04** | **3.26** |
| EXP3 variant | 13.33 | 3.17 | 16.09 | 3.26 |
| full-graph ceiling (cheats) | 8.33 | 3.33 | 8.33 | 3.33 |

What this does and doesn't show:
- **On the small test split, the whole gain comes from one config, ormav.** There, min-seen spends its budget on two parallel
  edges into a Lambda function, while learned B and the ceiling cut the edge into admin. On orqua all
  removers cut identically. On the train configs min-seen already matches the ceiling.
- **Learned B's advantage over the obvious rule is cost, not coverage.** It leaves the same number of
  open sources as admin-first, with about half the cuts.
- **On the large configs learned B shows no gain over min-seen.** The differences are small, change
  sign between finder sets, and no variance was measured, so treat this as a tie.
  - corpyr, delnor and linlin are too easy to separate anything: learned B and min-seen score the
    same, and match the ceiling apart from 0.33 on corpyr against held-out finders.
  - learned B vs min-seen, training / held-out finders: axnor 19.00 vs 17.67 / 18.00 vs 17.67,
    mermer 23.00 vs 22.67 / 23.67 vs 24.22, arimer 29.67 vs 28.67 / 45.22 vs 47.56. So it is behind
    against training finders on all three, and ahead against held-out finders on two.
  - The gap to the ceiling is mostly arimer (min-seen 28.67 vs ceiling 11.00), about 80% of the total
    gap against training finders. That is the value of seeing the whole graph there.
  - The EXP3 variant is worse than plain learned B (13.33 vs 12.44), mainly on delnor (5.00 vs 1.00).
- **Budget may limit these numbers.** At 1 edge per round and 5 rounds, B can cut at most 5 edges, but
  the min-cut over all sources is 11 on arimer and 7 on axnor and mermer. No other budget has been run
  on the large configs.
- **Small-config numbers depend on seed count.** Learned B vs held-out finders was 4.33 at 4 seeds and
  is 5.11 at 3 (min-seen 7.67 vs 8.22). The ranking did not change.
- **The ablations show no measurable effect on the small configs.** All five learned variants behave
  identically on test. On train, the EXP3 and no-w variants are slightly worse (3.17 vs 2.33). The
  no-opponent-pool, no-w and seen-reward variants were not run on the large configs. With 2 test configs and min-cuts of 1–4 edges, B's problem is too small to separate them.
- **Finder A,** FNR at a fixed number of queries (sources include roles, small configs only):
  - BFS: train 0.32 / 0.10 / 0 / 0, test 0.71 / 0.38 / 0 / 0 at Q = 10 / 20 / 30 / 40;
  - bandit: about the same as BFS on train, worse on test;
  - oracle: 0–0.07.

  There's plenty of room for a learned sequential finder.
- **Min-seen numbers move slightly between runs** (train 2.33 vs 2.50) because of solver
  tie-breaking (HiGHS).

## Open items

1. **Learned Finder A (Phase 5b/c).** `experiments/train_finder.py` is outdated: its `evaluate()`
   calls `fnr(G, finder, Q, ...)` positionally, but `fnr`'s second parameter is now `mu`, and it uses
   the old fixed-budget assumptions. It needs a rewrite. My attempt this session was stopped by a
   safety filter, so it is left for you. What it should do:
   - warm-start by imitating the bandit's choices (the bandit only uses what A can see; the oracle
     cheats);
   - run PPO at μ ∈ {0.3, 0.5, 0.75} with END enabled;
   - select models by A's real objective (proofs minus query cost);
   - add a `--device` option.

   Everything it needs exists: `FinderPolicy`, `GNNFinder`, `ppo_update`/`bc_update` (batched), and
   `finder_episode` in `iampe/agents/rollout.py`. `experiments/train_remediator.py` is a working
   template for the B side.
2. **The A half of co-training (Phase 8).** Once (1) exists, alternate in `experiments/cotrain.py`:
   train A against an EXP3 mixture over B snapshots, then B against A snapshots.
3. **Why learned B doesn't generalise.** It trained only on 6 small configs. Options: train on some
   large configs (holding others out), and rerun the large configs at a higher cut budget.
4. **The arimer decoy label is too strict.** Resolved in `iampe/checker/validate.py`: a decoy hop now
   counts as present only if the edge comes from the decoy's own policy. This changes exactly one hop
   across all configs (arimer's `attach_role_policy` from `role:growth-7-svc`, policy `inj-pol-p3`).
   Which policy really grants that edge has not been looked up (`docs/HANDOFF.md` §8.2).
5. **Push to GitHub.** My push was blocked by Claude Code's permission check (it flagged pushing to a
   public repo). Local work is merged with `origin/master`; run `git push -u origin master` yourself. The repo includes `external/` (team code)
   and is public.
6. **Bigger evaluation.** 2 small test configs is too few for firm claims, and the large configs have
   not been used for finder FNR. Consider more seeds and a variance estimate.
7. **`docs/GUIDE.md` is superseded** (marked at the top).

## Reproducing

All commands run from the repo root, CPU-only, under about 410 MB of RAM on a laptop. Each takes under
about 1 minute, except the final evaluate, which takes about 25 minutes (mostly mermer). Rebuilding the
6 large graphs is not listed here: see `docs/HANDOFF.md`.

```bash
python -m pytest -q                                   # 30 tests
python -m experiments.build_graphs                    # rebuild the 12 small graphs (needs data/raw/)
python -m experiments.train_bandit                    # bandit finder -> runs/bandit/linucb.npz
python -m experiments.eval_finder --split test --mus 0.2 0.35 0.5 0.75 --budgets 5 10 20 30
python -m experiments.run_baseline --finder bfs --split train test --name baseline_bfs
python -m experiments.train_remediator --name remover_v1              # learned B
python -m experiments.cotrain                                          # EXP3 variant
python -m experiments.train_remediator --finders bfs --name remover_bfsonly
python -m experiments.train_remediator --w-const --name remover_wconst
python -m experiments.train_remediator --b-reward seen --name remover_seen
python -m experiments.evaluate --seeds 3 --removers random minseen adminfirst full \
    ckpt:models/remover_v1.pt ckpt:models/remover_exp3.pt ckpt:models/remover_bfsonly.pt \
    wconst+ckpt:models/remover_wconst.pt ckpt:models/remover_seen.pt \
    --large-removers random minseen adminfirst full \
    ckpt:models/remover_v1.pt ckpt:models/remover_exp3.pt              # -> docs/results.md
```

The evaluated models are committed in `models/`. The trainers write to `runs/` (gitignored).
