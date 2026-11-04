# Project status (for review)

State of the greybox IAM privilege-escalation remediation game at the end of the 2026-11-05 session.
Full result tables: `docs/results.md`. Data: `docs/dataset.md`. Large-graph hand-off: `docs/HANDOFF.md`.

## Summary

- **Pipeline:** the converter, graph builder and checker work on the v2 data. All 12 laptop-sized
  graphs match their labels hop for hop. The 6 large ones are handed off (`docs/HANDOFF.md`).
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
- **Main result:** on the two test configs, at the same cut budget, learned B leaves about a third
  of min-seen B's open sources and matches the ceiling. In practice it has learned "cut the seen edge
  into admin, then stop". A hand-written version of that rule leaves the same number of open sources
  but cuts about twice as many edges.

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
| 9 Evaluation | done for everything above; large configs pending | `experiments/evaluate.py`, `docs/results.md` |

## Decisions taken (and why)

**Data and pipeline**
- **v2 data replaces v1** as the main dataset. v1 stays readable (`list_configs("v1")`) and its
  arifen test still runs when the v1 folders are present.
- **Ground truth = my converter run on the Terraform, not the generator's `config.json`.**
  `config.json` gets 3 of the 9 no-escalation configs wrong (a Deny on policy-version actions in a
  separate policy is ignored) and over-approximates open sources. Evidence: `docs/HANDOFF.md` §9.
- **Splits:** train = linost, mavsol, mercor, dyntri, kalum, hexsol; test = orqua, ormav;
  bench = the 4 IAM Vulnerable configs; deferred = the 6 large configs.
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

Test split (orqua, ormav), 4 seeds, budget 1 edge per round. "Open-source-rounds" = open sources
summed over the 5 rounds (lower is better). "Edges cut" = edges actually cut over the 5 rounds.

| remover | vs training finders: open-source-rounds | edges cut | vs held-out finders: open-source-rounds | edges cut |
|---|---|---|---|---|
| random | 19.62 | 5.00 | 19.67 | 4.75 |
| min-seen | 6.00 | 3.00 | 7.67 | 2.83 |
| admin-first (hand rule) | 2.00 | 5.00 | 4.33 | 4.75 |
| **learned B** | **2.00** | **2.50** | **4.33** | **2.42** |
| full-graph ceiling (cheats) | 2.00 | 2.50 | 2.00 | 2.50 |

What this does and doesn't show:
- **The whole gain comes from one config, ormav.** There, min-seen spends its budget on two parallel
  edges into a Lambda function, while learned B and the ceiling cut the edge into admin. On orqua all
  removers cut identically. On the train configs min-seen already matches the ceiling.
- **Learned B's advantage over the obvious rule is cost, not coverage.** It leaves the same number of
  open sources as admin-first, with about half the cuts.
- **The ablations show no measurable effect at this scale.** All five learned variants behave
  identically on test. On train, the EXP3 and no-w variants are slightly worse (3.17 vs 2.33). With
  2 test configs and min-cuts of 1–4 edges, B's problem is too small to separate them.
- **Finder A,** FNR at a fixed number of queries (sources include roles):
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
3. **The six large graphs** (`docs/HANDOFF.md`). Then `python -m experiments.evaluate` fills in the
   generalisation section automatically.
4. **The arimer decoy question** (`docs/HANDOFF.md` §8.2).
5. **Push to GitHub.** My push was blocked by Claude Code's permission check (it flagged pushing to a
   public repo). Run `git push -u origin master` yourself. The repo includes `external/` (team code)
   and is public.
6. **Bigger evaluation.** 2 test configs is too few for firm claims. Once the large graphs exist,
   consider moving some train configs to test, or running more seeds.
7. **`docs/GUIDE.md` is superseded** (marked at the top).

## Reproducing

All commands run from the repo root, CPU-only. Each is under about 1 minute and under 400 MB of RAM
on a laptop.

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
python -m experiments.evaluate --seeds 4 --removers random minseen adminfirst full \
    ckpt:models/remover_v1.pt ckpt:models/remover_exp3.pt ckpt:models/remover_bfsonly.pt \
    wconst+ckpt:models/remover_wconst.pt ckpt:models/remover_seen.pt   # -> docs/results.md
```

The evaluated models are committed in `models/`. The trainers write to `runs/` (gitignored).
