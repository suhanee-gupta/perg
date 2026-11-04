# Hand-off: building the large graphs

Everything in this repo after graph construction (game, Finder A, Remover B, training, evaluation)
reads permission graphs from `data/graphs/<org>.json` and never converts Terraform itself. Building
those files is the only heavy step. The 12 small configs (train, test, bench) are already built and
committed. The six large ones are left for a machine with more RAM.

## What to run

Needs Python 3.10+, this repo, and the v2 data unzipped into `data/raw/` (`esc.zip`, `no_esc.zip`).

```bash
uv venv .venv && uv pip install -e ".[dev]"
unzip esc.zip -d data/raw && unzip no_esc.zip -d data/raw
python -m experiments.build_graphs --deferred --allow-large
```

That builds, one at a time: arimer, axnor, corpyr, delnor (1.4k–2.6k entities, about 10–15 s each),
linlin (12k, about 70 s, about 0.6 GB RAM) and mermer (30k, about 3 min, about 1.3 GB RAM). Most of the
time goes to parsing the Terraform; the result is cached in `data/cache/`. Each graph is checked
against its `labels.json` before it is written, and `data/graphs/index.json` records the result.

Send back `data/graphs/<org>.json` for the six configs and `data/graphs/index.json` (or commit them).

## What it is expected to print

Last checked before the fixes below, so re-check these rows:

| config | has_pe | label check |
|---|---|---|
| arimer-1bmoea | True | 1 decoy hop present (MFA-condition decoy on role growth-7-svc; open question) |
| axnor-1bmoe8 | True | 1 dead-end hop missing; it starts at an admin user, which the validator now skips (expect OK) |
| corpyr-1bxe7c | False | 1 hop missing (`SendSerialConsoleSSHPublicKey`, now aliased; expect OK) |
| delnor-1bxe74 | False | OK |
| linlin-1nu2ao | False | 1 hop missing (`sagemaker_presigned_url`, now mapped; expect OK) |
| mermer-1njcht | True | OK |

has_pe was correct for all six. If a row still prints BAD, send the printed hop errors back.

## Do not use

- `experiments/validate_tac.py` on anything above 100 entities: the team engine's `relax()` keeps every
  derivation and needs several GB of RAM on a medium config. It is what crashed the laptop.
- The generator's `config.json` as ground truth. It is the same TAC export as the team's converter and
  ignores a Deny on `CreatePolicyVersion`/`SetDefaultPolicyVersion` that sits in a separate policy: dyntri,
  kalum and corpyr (no escalation in their labels) come out with one. It also has no service/trust
  information, so its graphs have many more open sources (orqua 51 vs 6, corpyr 244 vs 2).
