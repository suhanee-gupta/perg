#!/usr/bin/env bash
# Full Finder-A / Remover-B training pipeline for the GPU box.
#   bash scripts/run_gpu.sh smoke   # ~2 min: CUDA + wiring check
#   bash scripts/run_gpu.sh         # full run (launch under tmux or nohup)
# Each stage also writes its own log under runs/{finder,remover,cotrain}/.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p runs

if [ "${1:-}" = "smoke" ]; then
  python -m experiments.gen_synth --n 50 --out data/synth_check
  python -m experiments.train_finder --synth data/synth_check --stages 2 --iters 2 --episodes 4 --name gpucheck
  python -m experiments.train_remediator --iters 2 --episodes 4 --name gpucheck
  echo "SMOKE OK"
  exit 0
fi

echo "[1/5] synthetic data"; python -m experiments.gen_synth --n 2000
echo "[2/5] pretrain finder A"; python -m experiments.train_finder --synth data/synth --stages 4 --iters 50 --episodes 16 --name finder_pre
echo "[3/5] fine-tune finder A"; python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --iters 30 --name finder
echo "[4/5] train remover B"; python -m experiments.train_remediator --iters 30 --name remover
echo "[5/5] co-training"; python -m experiments.cotrain --init-finder runs/finder/finder.best.pt --init-remover runs/remover/remover.best.pt --gens 4
echo "DONE"
