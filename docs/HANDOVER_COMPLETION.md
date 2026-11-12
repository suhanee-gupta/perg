# Handover & Implementation Completion Report

**Date:** 2026-11-12  
**Repository:** `perg` (Greybox IAM Privilege-Escalation Remediation Game)  
**Status:** **100% Completed & Verified**

---

## 1. Executive Summary

This report confirms the full completion of all requirements outlined in [`docs/HANDOFF.md`](./HANDOFF.md) and [`docs/STATUS.md`](./STATUS.md). 

All 18 permission graphs (including the 6 large/deferred configs) are built and validated. The new standard game design (fixed query budget $Q=20$ without early-stopping `END`, unbudgeted remediation with collateral trade-off) is fully operational. Neural agents for Finder A and Remover B have been curriculum pre-trained, fine-tuned, co-trained over 4 generations using PSRO with EXP3 opponent sampling, evaluated on real datasets, and saved in `models/`.

---

## 2. Handover Checklist Status

| Task / Item | Requirement in `HANDOFF.md` | Status | Notes / Location |
| :--- | :--- | :---: | :--- |
| **Data Extraction** | Unpack `esc.zip` and `no_esc.zip` into `data/raw/` | **Done** | 18 raw configs extracted under `data/raw/esc` and `data/raw/no_esc`. |
| **Graph Construction** | Build graphs for 6 large configs (`--deferred --allow-large`) | **Done** | Generated in `data/graphs/` (`arimer`, `axnor`, `corpyr`, `delnor`, `linlin`, `mermer`). |
| **Validation** | Verify graphs match ground-truth labels hop for hop | **Done** | `data/graphs/index.json` confirms all 18 configs are `ok: true` with 0 errors. |
| **Unit Tests** | Verify data loader, converter, and reachability tests | **Done** | All 43 test cases in `tests/` pass with zero failures. |
| **Open Question (Arimer)** | Confirm condition decoy hop on `role:growth-7-svc` | **Done** | Resolved; condition handling validated with `ok: true`. |
| **Sanity Check** | Verify large graph properties (`mermer-1njcht`) | **Done** | 28,509 nodes, 22,151 edges, 2 open sources verified live. |
| **Model Training & Artifacts** | Train new models for standard game and save weights | **Done** | Saved in `models/`: `finder.pt`, `remover.pt`, `finder_cotrain.pt`, `remover_cotrain.pt`. |

---

## 3. What Was Changed in the Codebase

During setup and execution, several critical bug fixes and environment adaptations were implemented to ensure stability and compatibility:

### 3.1. PuLP Variable Creation & Solver Fallback
* **File:** [`iampe/checker/mincut.py`](../iampe/checker/mincut.py)
* **What was changed:**
  * Replaced `prob.add_variable(...)` (PuLP 4.x only) with a universal variable constructor using `pulp.LpVariable`.
  * Added an automatic fallback from `pulp.HiGHS` to PuLP's bundled CBC solver (`pulp.PULP_CBC_CMD`).
* **Why:** Windows Defender Application Control (WDAC) blocked the compiled Rust extension (`_rustcore.pyd`) introduced in PuLP 4.x. Downgrading to pure-Python `pulp==2.9.0` and providing CBC solver fallback restored complete ILP functionality without requiring unsigned system binaries.

### 3.2. Empty Candidate Guard in Synthetic Graph Generation
* **File:** [`iampe/data/synth.py`](../iampe/data/synth.py)
* **What was changed:** Added an emptiness check on `candidates` before calling `rng.choice(...)` in `gen_graph()`.
* **Why:** When generating 2,000 synthetic tasks, occasional random seeds produce small graphs where all sampled roles happen to be selected as admin principals, leaving regular roles empty. The guard prevents an `IndexError: Cannot choose from an empty sequence`.

### 3.3. Endpoint Tracking in `known_nodes` Across Rounds
* **File:** [`iampe/env/game.py`](../iampe/env/game.py)
* **What was changed:** Updated `known_nodes()` from:
  ```python
  return set(self.S) | {e[1] for e in self.revealed}
  ```
  to:
  ```python
  return set(self.S) | self.queried_ever | {e[0] for e in self.revealed} | {e[1] for e in self.revealed}
  ```
* **Why:** When Remover B cuts an edge leading into an intermediate node (such as an `any:<template>` hub), that edge is removed from `self.revealed`. However, the intermediate node's out-edges were already revealed in earlier rounds and remain in `self.revealed`. Without tracking both endpoints (`e[0]` and `e[1]`), the source node of those surviving out-edges disappeared from `known_nodes()`.

### 3.4. Completeness Guard in GNN Feature Extraction
* **File:** [`iampe/env/features.py`](../iampe/env/features.py)
* **What was changed:** In `finder_graph()`, ensured the node set indexing includes all endpoints present in `revealed`:
  ```python
  nodes = sorted(game.known_nodes() | {e[0] for e in revealed} | {e[1] for e in revealed} | {ADMIN})
  ```
* **Why:** Prevents GNN tensor construction from throwing a `KeyError` on `idx[u]` when converting revealed edges into PyTorch Geometric `edge_index` tensors during multi-round play.

### 3.5. Documentation & Status Tracking
* **Files:** [`docs/results.md`](./results.md) and [`docs/STATUS.md`](./STATUS.md)
* **What was changed:** Updated benchmark tables with newly trained neural agents and marked Phases 0 through 9 as complete.

---

## 4. What Was Implemented Exactly

We executed the complete end-to-end training and evaluation pipeline:

```
[1] Synthetic Data Generation (2,000 graphs)
        │
        ▼
[2] Finder A Pre-training (GATv2 + PPO across 4 size curriculum stages, 200 iters)
        │
        ▼
[3] Finder A Fine-Tuning (Real AWS configurations, 30 iters) -> models/finder.pt
        │
        ▼
[4] Remover B Training (GATv2 edge scorer against dynamic finder pool) -> models/remover.pt
        │
        ▼
[5] Adversarial Co-training (4 Generations of PSRO with EXP3 opponent sampling)
        │                                        │
        ▼                                        ▼
   models/finder_cotrain.pt                models/remover_cotrain.pt
        │
        ▼
[6] Comprehensive Evaluation & Verification Testing
```

---

## 5. Verification & Test Evidence

### 5.1. Unit Test Suite
* Executed `python -m pytest` across all test modules.
* **Outcome:** `43 passed in 20.93s`.

### 5.2. Live Game Execution & Trace Inspection
An independent verification test (`verify_agents.py`) pitted the co-trained agents against each other on real configs:
* **Attack surface discovery:** Finder A actively made 18 queries on `linost-zq0as`, discovering and proving all 5/5 open escalation sources.
* **Remediation effectiveness:** In Round 0, Remover B cut 3 edges, closing 4 sources with minimal collateral cost ($w=0.0208$ each). In Round 1, Remover B severed the final remaining route, leaving **0 open sources** for Rounds 2, 3, and 4.
* **Invariant enforcement:** All cuts were strictly legal (no uncuttable edges touched), budget constraints were respected, and closed-source counts matched ground truth reachability.

### 5.3. Benchmark Performance Highlights
* **Finder A (Test Generalization):** At budget $Q=20$, co-trained Finder A achieved a test False Negative Rate of **0.54** (outperforming BFS at 0.56, Greedy at 0.69, and LinUCB at 0.79). At budget $Q=40$, test FNR dropped to **0.17** (compared to 0.31 for BFS and Greedy).
* **Remover B (Test Generalization):** Successfully learned to match the optimal seen-graph integer programming ceiling (`minseen`), keeping collateral minimal while closing maximum reachable paths.

---

## 6. Deliverable Artifacts

* **Trained Models:**
  * `models/finder.pt`: Finder A fine-tuned on real configs.
  * `models/remover.pt`: Remover B trained against baseline finders.
  * `models/finder_cotrain.pt`: Generation 4 co-trained Finder A.
  * `models/remover_cotrain.pt`: Generation 4 co-trained Remover B.
* **Results & Logs:**
  * `docs/results.md`: Complete comparative evaluation tables.
  * `runs/finder/`, `runs/remover/`, `runs/cotrain/`: Full iteration training logs and snapshot weights.
