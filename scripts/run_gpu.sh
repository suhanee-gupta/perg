#!/usr/bin/env bash
# The whole pipeline on the GPU machine (never on the laptop). docs/STATUS.md explains every step.
#   bash scripts/run_gpu.sh smoke   # a few minutes: tests (incl. training tests) + tiny runs of every stage
#   bash scripts/run_gpu.sh         # full run (launch under tmux or nohup)
# Everything printed is also in runs/pipeline.log; at the end runs/logs.tgz holds every log and the
# results, which is what to copy back (checkpoints stay in runs/, the best ones are copied to models/).
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p runs
exec > >(tee -a runs/pipeline.log) 2>&1

# One game for every stage. Defaults are standard_config() in iampe/env/game.py; written out here so
# the run's settings are visible in its log.
GAME="--query-mode edge --visible 0.5 --Q 40 --decline 0.1 --b-sees revealed --lam 1"
echo "== $(date -Is) commit $(git rev-parse --short HEAD) game: $GAME"

if [ "${1:-}" = "smoke" ]; then
  python -m pytest -q --run-training
  python -m experiments.gen_synth --n 40 --out data/synth_check
  python -m experiments.gen_synth --n 10 --seed 1 --out data/synth_check_val
  python -m experiments.train_finder --synth data/synth_check --eval-synth data/synth_check_val $GAME \
      --stages 2 --iters 1 --episodes 4 --bc 50 --dagger 1 --name smoke_a
  python -m experiments.train_remediator --finders bfs ckpt:runs/finder/smoke_a.best.pt $GAME \
      --baseline minseen --iters 1 --episodes 4 --bc 20 --name smoke_b
  python -m experiments.cotrain --init-finder runs/finder/smoke_a.best.pt --init-remover runs/remover/smoke_b.best.pt \
      --eval-synth data/synth_check_val $GAME --gens 1 --iters 1 --episodes 4 --name smoke_co
  python -m experiments.evaluate --finders bfs ckpt:runs/finder/smoke_a.best.pt --removers minseen ckpt:runs/remover/smoke_b.best.pt \
      $GAME --seeds 2 --fnr-budgets 40 --synth-test data/synth_check_val --out runs/smoke_results.md
  echo "SMOKE OK"
  exit 0
fi

echo "[0/8] tests, including the ones that train"
python -m pytest -q --run-training

echo "[1/8] synthetic graphs: training (seed 0), validation (seed 1), test (seed 2)"
python -m experiments.gen_synth --n 2000 --seed 0 --out data/synth
python -m experiments.gen_synth --n 300 --seed 1 --out data/synth_val
python -m experiments.gen_synth --n 300 --seed 2 --out data/synth_test

echo "[2/8] finder A: imitate the oracle (+3 DAgger rounds), then PPO on synthetic graphs, size curriculum"
python -m experiments.train_finder --synth data/synth --eval-synth data/synth_val $GAME \
    --stages 4 --iters 50 --episodes 64 --bc 2000 --dagger 3 --eval-limit 100 --eval-every 5 --name finder_pre

echo "[3/8] finder A: fine-tune on the 6 real training configs"
python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --eval-synth data/synth_val $GAME \
    --iters 30 --episodes 64 --eval-limit 100 --eval-every 5 --name finder

echo "[4/8] finder A: fine-tune in the full game (5 rounds against removers)"
python -m experiments.train_finder --init runs/finder/finder.best.pt --eval-synth data/synth_val $GAME \
    --rounds 5 --opponent minseen adminfirst --iters 20 --episodes 32 --eval-limit 50 --eval-every 5 --name finder_vsB

echo "[5/8] remover B against BFS, greedy and the trained finder"
python -m experiments.train_remediator --finders bfs greedy ckpt:runs/finder/finder_vsB.best.pt $GAME \
    --baseline minseen --iters 30 --episodes 32 --name remover

echo "[6/8] co-training, 4 generations"
python -m experiments.cotrain --init-finder runs/finder/finder_vsB.best.pt --init-remover runs/remover/remover.best.pt \
    --eval-synth data/synth_val --eval-limit 30 $GAME --baseline minseen --gens 4 --iters 10 --episodes 32 --name cotrain

echo "[7/8] evaluation (writes docs/results.md)"
python -m experiments.evaluate $GAME --seeds 10 --large --synth-test data/synth_test --matrix \
    --finders bfs greedy ckpt:runs/finder/finder_vsB.best.pt ckpt:runs/cotrain/cotrain_A4.pt \
    --removers random minseen adminfirst full ckpt:runs/remover/remover.best.pt ckpt:runs/cotrain/cotrain_B4.pt

echo "[8/8] keep the best checkpoints and pack the logs"
cp runs/finder/finder_vsB.best.pt models/finder.pt
cp runs/cotrain/cotrain_A4.pt models/finder_cotrain.pt
cp runs/remover/remover.best.pt models/remover.pt
cp runs/cotrain/cotrain_B4.pt models/remover_cotrain.pt
tar czf runs/logs.tgz runs/pipeline.log runs/finder/*.log runs/remover/*.log runs/cotrain/*.log \
    runs/evaluate.json docs/results.md data/synth/index.json
echo "DONE: copy runs/logs.tgz and models/ back"
