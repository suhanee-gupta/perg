# Hand-off: building the permission graphs (the "processing" step)

**What we need from you:** build the permission graphs for the six large configs in the v2 dataset,
check them against their labels, and send back the graph files. On a machine with 4 GB of free RAM
this is one command and about 5 minutes. Everything else in the project (the game, the learning
agents, training, evaluation) only reads the finished graph files, so this step is the only part of
the pipeline that touches Terraform.

Why it is handed off: on the author's laptop (14 GB RAM, about 4 GB free) the large configs, together
with an earlier memory-hungry checker, crashed the machine. The step itself is ordinary single-threaded
Python on the CPU; it does not need a GPU.

---

## 1. Checklist

1. Get the repo and the two data zips (`esc.zip`, `no_esc.zip`). The zips are not in git.
2. Install four Python packages (section 4).
3. Unzip the data into `data/raw/` (section 3).
4. Run `python -m experiments.build_graphs --deferred --allow-large` (section 5).
5. Check the printed results against the table in section 6. Fix or report any `BAD` line (section 8).
6. Send back `data/graphs/<org>.json` for the six configs and the updated `data/graphs/index.json`,
   either as a commit or as files (section 10).

---

## 2. Where this step sits in the pipeline

```
data/raw/{esc,no_esc}/<org>/*.tf + labels.json          (input: Terraform + ground-truth labels)
        │
        │  iampe/parser/hcl.py         parse Terraform           -> data/cache/<org>.parsed.json
        │  iampe/parser/to_tac.py      apply IAM semantics       -> data/cache/<org>.tac.json
        │    + iampe/parser/policy.py    (conditions, wildcards)
        │  env.py                      load the converted config into the team's TAC model
        │  iampe/graph/build.py        build the permission graph (networkx MultiDiGraph)
        │  iampe/checker/validate.py   compare the graph with labels.json
        │  iampe/graph/io.py           write the graph file
        ▼
data/graphs/<org>.json + data/graphs/index.json          (output: what the rest of the project reads)
        │
        ▼
game / Finder A / Remover B / training / evaluation      (not your part; reads data/graphs/ only)
```

`experiments/build_graphs.py` runs all of the above for each config, one config at a time.

---

## 3. What is in the repo for this step

| Path | What it does |
|---|---|
| `experiments/build_graphs.py` | **The command to run.** Converts, builds, validates and writes each graph; updates `data/graphs/index.json`. Skips configs over 3 MB of Terraform unless `--allow-large`. |
| `iampe/data/index.py` | Finds configs and labels; defines the splits (`TRAIN`, `TEST`, `BENCH`, `DEFERRED`). Also reads the older v1 dataset if it is present. |
| `iampe/parser/hcl.py` | Parses `*.tf` with `python-hcl2`, including the `jsonencode({...})` policy bodies. Caches the result. |
| `iampe/parser/policy.py` | Policy-statement helpers: `${...}` interpolation, wildcard matching, condition evaluation. |
| `iampe/parser/to_tac.py` | The converter: Terraform resources to the team's TAC JSON format (entities, permission assignments, relations). Caches the result, keyed on the converter's own source code. |
| `env.py` | Thin wrapper around the team's code in `external/`. Provides the flow templates and loads converted configs. |
| `external/` | Read-only copy of the team repo's engine (`iam-escalation-detector@45c16e7`; see `external/SOURCE.md`). This step only uses its templates (`external/iam_detector/tac/templates.json`) and its config model. Do not edit it. |
| `iampe/graph/build.py` | Builds the permission graph from the converted config (rules in section 7). |
| `iampe/checker/validate.py` | Label check, and `PRIM_TEMPLATES` (label primitive to template ids). |
| `iampe/checker/reach.py` | Fast reachability; used to count open sources. |
| `iampe/graph/io.py` | Reads and writes `data/graphs/<org>.json`. |
| `experiments/validate_graphs.py` | Same build and check without writing files; also computes a min-cut, so it needs `pulp` and `highspy` (section 4). Useful for debugging. |
| `experiments/inspect_dataset.py` | Regenerates `docs/dataset.md` (sizes, coverage of escalation patterns). |
| `tests/test_to_tac.py`, `tests/test_checker.py`, `tests/test_data.py` | Tests for this part of the pipeline (section 6.3). |
| `data/graphs/` | **Already built:** the 12 laptop-sized graphs (train, test, bench) and `index.json`. |
| `docs/dataset.md` | Dataset report: every config with its size and split, and which escalation patterns the labels cover. |

---

## 4. Setup

Python 3.10 or newer (3.12 is what we used). From the repo root:

```bash
git clone https://github.com/suhanee-gupta/perg && cd perg

# minimal install: enough to build graphs
python -m venv .venv && . .venv/bin/activate
pip install "python-hcl2>=8" networkx numpy

# to also run the tests in section 6.3 (min-cut tests need an ILP solver)
pip install pytest pulp highspy
```

Versions we used: python-hcl2 8.1.4, networkx 3.7, numpy 2.5.4, pulp 4.2.0, highspy 1.15.1.
python-hcl2 must be version 8 or newer: `hcl.py` relies on how v8 returns quoted strings and
`jsonencode(...)` expressions.

Do not run `pip install -e .` unless you also want the training stack: it pulls torch and
torch_geometric, which this step does not need. Run commands from the repo root; `env` and `iampe`
are imported from there.

### Data

```bash
mkdir -p data/raw
unzip esc.zip -d data/raw -x '__MACOSX/*'
unzip no_esc.zip -d data/raw -x '__MACOSX/*'
ls data/raw/esc data/raw/no_esc        # 9 configs each
```

Each config folder holds `main.tf`, `users.tf`, `groups.tf`, `roles.tf`, `policies.tf`,
`functions.tf`, `workloads.tf`, `outputs.tf` (names the untrusted entity), `labels.json` (ground
truth) and `config.json` (the generator's own export; not used, see section 9).

---

## 5. What to run

```bash
python -m experiments.build_graphs --deferred --allow-large
```

This builds the six deferred configs one after another:

| config | split | has escalation | Terraform | approx. time | approx. peak RAM |
|---|---|---|---|---|---|
| arimer-1bmoea | deferred | yes | 1.1 MB | 10 s | < 0.5 GB |
| axnor-1bmoe8 | deferred | yes | 1.5 MB | 15 s | < 0.5 GB |
| corpyr-1bxe7c | deferred | no | 0.9 MB | 10 s | < 0.5 GB |
| delnor-1bxe74 | deferred | no | 1.3 MB | 10 s | < 0.5 GB |
| linlin-1nu2ao | deferred | no | 6.7 MB | 70 s | 0.6 GB |
| mermer-1njcht | deferred | yes | 16.6 MB | 3 min | 1.3 GB |

Most of the time is Terraform parsing; it is cached in `data/cache/`, so a second run is much faster.
Only linlin and mermer are above the 3 MB guard; the other four build even without `--allow-large`.

Other forms:

```bash
python -m experiments.build_graphs mermer-1njcht --allow-large    # one config
python -m experiments.build_graphs                                 # rebuild the 12 small ones
python -m experiments.build_graphs --v1                            # also the older 14-config dataset, if present
```

If your machine is tight on memory, cap the process so it fails on its own instead of freezing the
machine. On Linux with systemd:

```bash
systemd-run --user --scope -p MemoryMax=3G -p MemorySwapMax=0 \
  python -m experiments.build_graphs --deferred --allow-large
```

---

## 6. Checking the result

### 6.1 Reading the output

One line per config:

```
OK  linost-zq0as     V=68     E=66     open=2/23 has_pe=True  found=True  0.1s
```

- `OK` / `BAD`: whether the graph passed the label check (below).
- `V`, `E`: nodes and edges.
- `open=x/y`: how many of the `y` candidate sources (the untrusted entity plus every non-admin user)
  can reach admin.
- `has_pe` (from labels) and `found` (from the graph): whether the untrusted entity can escalate.
- Under a `BAD` line, each error is printed as
  `(path kind, hop index, label primitive, from, to, "missing" | "present")` or `(path kind, start)`.

The label check passes only when all of these hold:
1. `found == has_pe`;
2. every non-decoy hop of every planted path, dead end and witness exists as an edge with a matching
   primitive (hops that start at an admin principal are skipped);
3. every hop marked `decoy: true`, and the hop at a path's `broken_at`, does **not** exist;
4. every path marked `reaches_admin` starts at a node that reaches admin.

### 6.2 What we expect

The six were last checked before three small fixes were made, so they still need a confirming run:

| config | has_pe | last check | expected now |
|---|---|---|---|
| arimer-1bmoea | True | 1 decoy hop present: `attach_role_policy` from `role:growth-7-svc` (MFA-condition decoy) | **open question** (section 8.2) |
| axnor-1bmoe8 | True | 1 dead-end hop missing; it starts at an admin user | OK (validator now skips admin starts) |
| corpyr-1bxe7c | False | 1 hop missing: `ec2-instance-connect:SendSerialConsoleSSHPublicKey` | OK (action now aliased) |
| delnor-1bxe74 | False | OK | OK |
| linlin-1nu2ao | False | 1 hop missing: primitive `sagemaker_presigned_url` | OK (primitive now mapped) |
| mermer-1njcht | True | OK | OK |

`has_pe` was already correct for all six. The 12 small graphs in `data/graphs/` all pass.

### 6.3 Tests

```bash
python -m pytest -q tests/test_to_tac.py tests/test_checker.py tests/test_data.py
```

They take a few seconds and use only small configs. (`tests/test_game.py` needs torch; skip it.)

### 6.4 Quick sanity check of one file

```python
from iampe.graph.io import load_graph
from iampe.graph.build import sources
from iampe.checker.reach import LiveGraph
G = load_graph("mermer-1njcht")
print(G.graph["validation"], G.number_of_nodes(), G.number_of_edges())
print(len(LiveGraph(G).open_pairs(sources(G))), "open sources")
```

---

## 7. Rules the converter and graph builder apply

You only need this when a check fails and you have to judge whether the graph or the label is right.

**Converter (`iampe/parser/to_tac.py`)**
- Keeps only the actions the escalation templates use; `Action: "*"` stays `*`. Action wildcards and
  `NotAction` are expanded over that set.
- Resolves resource ARNs and ARN globs to entity ids. A glob on an action that creates a new resource
  (for example `lambda:CreateFunction`) becomes `*`.
- Evaluates conditions in a fixed attacker context: a fresh session, from outside the corporate
  network, without MFA, over TLS, in us-east-1. An unknown condition key makes an Allow not apply and a
  Deny apply.
- Applies explicit Deny to the principals it attaches to. A Deny reaching a user only through a group
  policy is not applied (counted as `deny_via_group_not_applied` in the warnings).
- `sts:AssumeRole` through an identity policy only works on roles whose trust policy names the account
  root; a trust policy that names a principal grants it directly.
- `iam:PassRole` only works on roles that trust some service, restricted further by
  `iam:PassedToService` when present.
- `CreateLoginProfile` only works on users without a login profile, `UpdateLoginProfile` only on users
  with one.
- `CreatePolicyVersion` / `SetDefaultPolicyVersion` on a policy are retargeted to the principals the
  policy is attached to. SetDefault only counts if a non-default version (from `terraform_data
  "<policy>__vN"`) grants `*@*`.
- Not modelled: resource-based policies, permission boundaries, SCPs, inline policies and `NotResource`
  (none of these appear in the dataset).

**Graph builder (`iampe/graph/build.py`)**
- Nodes: `user:`, `group:`, `role:`, `function:`/`workload:` (compute that runs as a role), the sink
  `admin:*`, and `any:<template>` hubs for permissions held on `*`.
- Edge `u -[prim]-> v` means "holding u's permissions lets you gain v's"; `prim` is the team template
  id (for example `lambda-001`).
- Each principal's holdings are its own grants plus everything that flows into it (policy to group to
  user, policy to role to compute).
- A permission-request template (attach / put / create-version / set-default) only escalates when it
  targets the principal itself, one of its groups, or, for compute, the role it runs as.
- A step's target must belong to the action's AWS service, and a PassRole target must trust the
  service being launched.
- Read-only lookups on `*` (`Describe*`, `Get*`, `List*`) are not required.
- `ec2-instance-connect:SendSerialConsoleSSHPublicKey` is treated like `SendSSHPublicKey`.
- Principals holding `*@*` get one uncuttable `holds_admin` edge and nothing else.
- Edge weight `w` = number of users and roles touched by removing the granting permission.

---

## 8. If a check fails

### 8.1 General procedure

1. Read the error tuple: which hop, which primitive, from where to where, missing or present.
2. Look at the labelled path in `data/raw/<split>/<org>/labels.json` (`injection_plan` →
   `planted` / `dead_ends` / `decoys`). Each hop names the injected policy (`policy`, `policies`) and,
   for decoys, a `decoy_style`: `deny_same`, `deny_separate`, `condition` or `wrong_resource`.
3. Find that policy in `policies.tf` (resource names use underscores: `inj_pol_p3`).
4. See what the converter produced for it:
   ```python
   import env
   e = env.load_config("<org>")
   print(e.assignments.get("policy:inj-pol-p3"), e.warnings)
   ```
5. See what the principal holds and which edges it has:
   ```python
   from iampe.graph.build import build_graph, holdings
   H = holdings(e); print(H["role:<name>"])
   G = build_graph(e); print(list(G.out_edges("role:<name>", keys=True)))
   ```
6. Decide which side is wrong:
   - a **new label primitive** (a name not in `PRIM_TEMPLATES`): add a mapping in
     `iampe/checker/validate.py`;
   - an **action the templates don't list** but which behaves like one: add it to
     `ACTION_ALIASES` in `env.py`;
   - a **converter rule**: fix `iampe/parser/to_tac.py` or `policy.py`. The cache key includes the
     converter's source, so the next run reconverts automatically;
   - the **label is wrong**: note it and tell us.
7. Re-run the build for that config. Then rebuild the 12 small ones too (`python -m
   experiments.build_graphs`) and run the tests, to make sure the fix did not break them.

### 8.2 The known open question: arimer

Label: a decoy (style `condition`) says `role:growth-7-svc` must not be able to `attach_role_policy`
its way to admin. The injected policy `inj-pol-p3` allows `iam:AttachRolePolicy` on that role only
with `Bool aws:MultiFactorAuthPresent = true`, which our attacker context blocks. So the edge most
likely comes from a different policy attached to that role (for example a broad `iam:AttachRolePolicy`
on `role/*`). To settle it, check the edge's `policies` attribute:

```python
G = build_graph(env.load_config("arimer-1bmoea"))
print([(v, k, d["policies"]) for _, v, k, d in G.out_edges("role:growth-7-svc", keys=True, data=True)])
```

- If the edge comes from another, legitimate policy, the label is too strict: note it, and treat the
  config as OK.
- If it comes from `inj-pol-p3`, the condition handling has a bug: fix it in `policy.py`.

---

## 9. Do not use

- **`experiments/validate_tac.py` on anything above 100 entities.** It runs the team engine's
  `relax()`, which keeps every derivation in memory and needs several GB on a medium config; it is
  what crashed the laptop. The script refuses large configs; please don't remove that guard.
- **The generator's `config.json` as ground truth.** It has the same format as our converted configs,
  but checked against the labels:
  - it ignores a Deny on `CreatePolicyVersion` / `SetDefaultPolicyVersion` that sits in a separate
    policy, so dyntri, kalum and corpyr (no escalation according to their labels) come out with one.
    The team's own engine agrees with the wrong answer on dyntri and kalum;
  - it has no service or trust information and leaves unmatched ARN globs as literal strings, so its
    graphs have many more open sources (orqua 51 vs 6, corpyr 244 vs 2).

  It is fine as a cross-check. If you have contact with whoever maintains the generator
  (`iamgen.tac_export`), the Deny bug is worth reporting.

---

## 10. What to send back

- `data/graphs/arimer-1bmoea.json`, `axnor-1bmoe8.json`, `corpyr-1bxe7c.json`, `delnor-1bxe74.json`,
  `linlin-1nu2ao.json`, `mermer-1njcht.json`
- the updated `data/graphs/index.json` (the per-config validation results)
- any code fixes you made, with a note on why (section 8)
- for arimer: your conclusion on the open question in 8.2

Committing to the repo is easiest. The graph files are plain JSON: mermer's will be several MB, the
others well under 1 MB. Do not commit `data/raw/` or `data/cache/` (both gitignored).

### File format (for reference)

`data/graphs/<org>.json` is networkx node-link JSON (`nx.node_link_data(G, edges="edges")`):

- `graph`: `name`, `untrusted` (the untrusted entity's node id), `w_mode` (`"shared"`), `format`
  (currently 1), `validation` (`ok`, `has_pe`, `found`, `errors`)
- each node: `id`, `kind` (`User`, `Group`, `Role`, `Service`, `Admin`, `Hub`), and where relevant
  `is_untrusted`, `is_admin` (holds `*@*`), `role` (for compute: the role it runs as)
- each edge: `source`, `target`, `key` and `prim` (template id), `category` (TAC escalation category),
  `policies` (granting entities), `w` (weight), `cuttable`

Uncuttable edges have `"w": Infinity`. Python's `json` reads that, but strict JSON parsers in other
languages may not; load the files with `iampe.graph.io.load_graph`.

---

## 11. Optional, if you have time

- **The older v1 dataset** (14 configs, `escalation/` and `no_escalation/` folders): `python -m
  experiments.build_graphs --v1` builds the small ones as extra training data. Its two large configs
  (arior, solor) need `--allow-large`.
- **New data later:** put each config folder under `data/raw/esc/` or `data/raw/no_esc/`, add its name
  to a split in `iampe/data/index.py`, and run `build_graphs` for it.
- **Regenerate the dataset report:** `python -m experiments.inspect_dataset` (rewrites
  `docs/dataset.md` and `data/splits.json`).
