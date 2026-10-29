# external/ — vendored code from the team repo

Copied **unchanged** from `~/iam-escalation-detector` (treated as read-only). Do not edit files in
this folder; put adaptations in `env.py`. When a file is re-copied, update its row (commit + date).

Source repo: `~/iam-escalation-detector` (remote `origin`, branch `main`)

| File (under `external/`) | Source path | Commit | Copied | What it does |
|---|---|---|---|---|
| `iam_detector/__init__.py` | `iam_detector/__init__.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Package marker; defines `__version__` (used by repair). |
| `iam_detector/parser.py` | `iam_detector/parser.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Classic-format JSON parser; provides `ParseError` and `_require_*` helpers that the TAC model imports. |
| `iam_detector/graph.py` | `iam_detector/graph.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Classic edge graph; only needed because `parser.py` imports it. |
| `iam_detector/types.py` | `iam_detector/types.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Shared types, incl. `PECategory` (the five TAC escalation categories). |
| `iam_detector/weight_oracle.py` | `iam_detector/weight_oracle.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Maps actions to PE categories and categories to weights (1–5). |
| `iam_detector/oracle.py` | `iam_detector/oracle.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Greybox oracle: answers "does entity e hold permission p?" from the hidden config, with budget and declines. Meant to live at `iam_detector/greybox/oracle.py`; `env.py` loads it under that name. |
| `iam_detector/tac/__init__.py` | `iam_detector/tac/__init__.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Package marker for the TAC-WB engine. |
| `iam_detector/tac/model.py` | `iam_detector/tac/model.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Dataset loader: TAC JSON → `TacConfig` (entities, `action@resource` assignments, relations). |
| `iam_detector/tac/templates.py` | `iam_detector/tac/templates.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Loads and validates the escalation flow templates. |
| `iam_detector/tac/templates.json` | `iam_detector/tac/templates.json` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | 83 escalation templates with provenance (pathfinding.cloud, PMapper, Pacu, Cloudsplaining). |
| `iam_detector/tac/engine.py` | `iam_detector/tac/engine.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Graph builder (`instantiate_flows`) and whitebox checker (`relax`, `enumerate_paths`, `replay_witness`). |
| `iam_detector/tac/repair/__init__.py` | `iam_detector/tac/repair/__init__.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Exports `repair_config`. |
| `iam_detector/tac/repair/core.py` | `iam_detector/tac/repair/core.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | IAMPERE-style repair driver (MaxSAT + fixed-point verification loop). |
| `iam_detector/tac/repair/task.py` | `iam_detector/tac/repair/task.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Builds the `RepairTask` (atoms, flows, revoke/cut ops) from a `TacConfig`. |
| `iam_detector/tac/repair/encode.py` | `iam_detector/tac/repair/encode.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Bounded weighted partial MaxSAT encoding of the repair problem. |
| `iam_detector/tac/repair/fpi.py` | `iam_detector/tac/repair/fpi.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Fixed-point simulator used to verify a patch. |
| `iam_detector/tac/repair/greedy.py` | `iam_detector/tac/repair/greedy.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Solver-free reverse-delete repair (1-minimal fallback). |
| `iam_detector/tac/repair/prune.py` | `iam_detector/tac/repair/prune.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Restricts repair candidates to the backward slice of the attack. |
| `iam_detector/tac/repair/solve.py` | `iam_detector/tac/repair/solve.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | MaxSAT backends: python-sat RC2 or scipy MILP (both optional). |
| `iam_detector/tac/repair/translate.py` | `iam_detector/tac/repair/translate.py` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | Applies a patch to produce a repaired TAC config. |
| `data/arifen-15ocxf.json` | `data/arifen-15ocxf.json` | `45c16e710d795a53098664d2e7af3a37e5f6690f` | 2026-10-30 | The only dataset config already converted from Terraform to TAC JSON (the converter is not in the team repo). |

Not copied: `webui/`, CLIs and `__main__` modules, `tac/repair/{cli,report}.py`, the classic
`pathfinder.py`/`report.py`, `tests/`, `scripts/`, `tools/`, toy configs in `data/`.
