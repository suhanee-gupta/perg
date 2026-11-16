#!/usr/bin/env bash
# The whole pipeline on the GPU machine (never on the laptop). docs/STATUS.md explains every step.
#   bash scripts/run_gpu.sh smoke   # a few minutes: tests (incl. training tests) + tiny runs of every stage
#   bash scripts/run_gpu.sh         # full run (launch under tmux or nohup)
# Everything printed is also in runs/pipeline.log; at the end runs/logs.tgz holds every log and the
# results, which is what to copy back (checkpoints stay in runs/, the best ones are copied to models/).
#
# The question the run answers: does having the other player in the loop make each player better?
# Every A variant starts from the same fine-tuned A (finder) and every B variant from the same warm-
# started B (remover_init); each then trains 40 iterations of 32 five-round games on the same graphs.
# Only the opponent differs:
#   A: finder_noB (no B: the equal-time control) | finder_vsB (fixed removers) | cotrain_A* (learning B)
#   B: remover (fixed finders)                   | cotrain_B* (learning A)
# The variants are compared by their LAST weights (no checkpoint selection, which would use a different
# rule per variant), and on opponents none of the compared variants trained against. All are reported.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p runs
exec > >(tee -a runs/pipeline.log) 2>&1

# One game for every stage. Defaults are standard_config() in iampe/env/game.py; written out here so
# the run's settings are visible in its log.
GAME="--query-mode edge --visible 0.5 --Q 40 --decline 0.1 --b-sees revealed --lam 1"
# Graphs for every stage with both players: the 6 real training configs plus 500 synthetic ones
# (more fix -> re-find cycles than the real configs alone give).
LOOP_GRAPHS="--synth data/synth --max-graphs 500"
echo "== $(date -Is) commit $(git rev-parse --short HEAD) game: $GAME"

if [ "${1:-}" = "smoke" ]; then
  python -m pytest -q --run-training
  python -m experiments.gen_synth --n 40 --out data/synth_check
  python -m experiments.gen_synth --n 10 --seed 1 --out data/synth_check_val
  S="--synth data/synth_check --max-graphs 10"
  V="--eval-synth data/synth_check_val --eval-limit 2"
  python -m experiments.train_finder --synth data/synth_check $V $GAME --stages 2 --iters 1 --episodes 4 \
      --bc 50 --dagger 1 --name smoke_a
  python -m experiments.train_finder --init runs/finder/smoke_a.best.pt $S --also-real $V $GAME --rounds 5 \
      --opponent none --iters 1 --episodes 2 --name smoke_a_noB
  python -m experiments.train_finder --init runs/finder/smoke_a.best.pt $S --also-real $V $GAME --rounds 5 \
      --opponent minseen --iters 1 --episodes 2 --name smoke_a_vsB
  python -m experiments.train_remediator --finders bfs ckpt:runs/finder/smoke_a.best.pt $S $V $GAME \
      --iters 0 --bc 20 --name smoke_b_init
  python -m experiments.train_remediator --init runs/remover/smoke_b_init.best.pt --finders bfs ckpt:runs/finder/smoke_a.best.pt \
      $S $V $GAME --baseline minseen --iters 1 --episodes 4 --name smoke_b
  python -m experiments.cotrain --init-finder runs/finder/smoke_a.best.pt --init-remover runs/remover/smoke_b_init.best.pt \
      $S $V $GAME --baseline minseen --gens 1 --iters 1 --episodes 2 --name smoke_co
  python -m experiments.evaluate --finders bfs ckpt:runs/cotrain/smoke_co_A1.pt --heldout oracle ckpt:runs/finder/smoke_a_noB.pt \
      --removers minseen ckpt:runs/remover/smoke_b.pt ckpt:runs/cotrain/smoke_co_B1.pt \
      $GAME --seeds 2 --fnr-budgets 40 --synth-test data/synth_check_val --matrix --out runs/smoke_results.md
  echo "SMOKE OK"
  exit 0
fi

echo "[0/11] tests, including the ones that train"
python -m pytest -q --run-training

echo "[1/11] synthetic graphs: training (seed 0), validation (seed 1), test (seed 2)"
python -m experiments.gen_synth --n 2000 --seed 0 --out data/synth
python -m experiments.gen_synth --n 300 --seed 1 --out data/synth_val
python -m experiments.gen_synth --n 300 --seed 2 --out data/synth_test

echo "[2/11] finder A: imitate the oracle (+3 DAgger rounds), then PPO on synthetic graphs, size curriculum"
python -m experiments.train_finder --synth data/synth --eval-synth data/synth_val $GAME \
    --stages 4 --iters 50 --episodes 64 --bc 2000 --dagger 3 --eval-limit 100 --eval-every 5 --name finder_pre

echo "[3/11] finder A: fine-tune on the 6 real training configs (the common start of every A variant)"
python -m experiments.train_finder --init runs/finder/finder_pre.best.pt --eval-synth data/synth_val $GAME \
    --iters 30 --episodes 64 --eval-limit 100 --eval-every 5 --name finder

echo "[4/11] remover B: warm start only, by imitating the ceiling's cut (the common start of every B variant)"
python -m experiments.train_remediator --finders bfs greedy ckpt:runs/finder/finder.best.pt $LOOP_GRAPHS $GAME \
    --eval-synth data/synth_val --eval-limit 30 --iters 0 --bc 2000 --name remover_init

echo "[5/11] finder A, control: 5-round games with NO remover"
python -m experiments.train_finder --init runs/finder/finder.best.pt $LOOP_GRAPHS --also-real --eval-synth data/synth_val \
    $GAME --rounds 5 --opponent none --iters 40 --episodes 32 --eval-limit 100 --eval-every 5 --name finder_noB

echo "[6/11] finder A against fixed removers"
python -m experiments.train_finder --init runs/finder/finder.best.pt $LOOP_GRAPHS --also-real --eval-synth data/synth_val \
    $GAME --rounds 5 --opponent minseen adminfirst --iters 40 --episodes 32 --eval-limit 50 --eval-every 5 --name finder_vsB

echo "[7/11] remover B against fixed finders (BFS, greedy, the fine-tuned A)"
python -m experiments.train_remediator --init runs/remover/remover_init.best.pt --finders bfs greedy ckpt:runs/finder/finder.best.pt \
    $LOOP_GRAPHS $GAME --eval-synth data/synth_val --eval-limit 30 --baseline minseen --iters 40 --episodes 32 --name remover

echo "[8/11] co-training from the same starts: 4 generations x 10 iterations per player (40, as steps 5-7)"
python -m experiments.cotrain --init-finder runs/finder/finder.best.pt --init-remover runs/remover/remover_init.best.pt \
    $LOOP_GRAPHS --eval-synth data/synth_val --eval-limit 30 $GAME --baseline minseen \
    --gens 4 --iters 10 --episodes 32 --name cotrain

# Last weights of every variant. For B's tables, "pool" finders are ones some compared B trained against
# (bfs, greedy, the common start, co-trained A); held-out finders no B trained against (random, the
# oracle, finder_noB, finder_vsB). For A, the removers no compared A trained against are random, full
# and remover (step 7); minseen, adminfirst, remover_init and the co-trained B are in some A's pool.
A_POOL="ckpt:runs/finder/finder.best.pt ckpt:runs/cotrain/cotrain_A4.pt"
A_HELD="ckpt:runs/finder/finder_noB.pt ckpt:runs/finder/finder_vsB.pt"
B_ALL="ckpt:runs/remover/remover_init.best.pt ckpt:runs/remover/remover.pt ckpt:runs/cotrain/cotrain_B4.pt"

echo "[9/11] every variant on the real and synthetic test graphs (docs/results.md), then the large configs"
python -m experiments.evaluate $GAME --seeds 10 --fnr-budgets 20 40 100 --synth-test data/synth_test --synth-limit 200 \
    --title "Results: every A and B variant" --finders bfs greedy $A_POOL --heldout random oracle $A_HELD \
    --removers random minseen adminfirst full $B_ALL --matrix
python -m experiments.evaluate $GAME --seeds 3 --fnr-budgets 40 --splits --large \
    --title "Large configs (1k-28k nodes)" --finders bfs $A_POOL --heldout oracle $A_HELD \
    --removers minseen full $B_ALL --out docs/results_large.md

echo "[10/11] every A generation against every B generation (docs/results_generations.md)"
python -m experiments.evaluate $GAME --seeds 5 --splits test --synth-test data/synth_test --synth-limit 100 \
    --title "Co-training: A generations (rows) against B generations (columns)" --no-finder-table --no-removers --matrix \
    --finders ckpt:runs/finder/finder.best.pt $(for g in 1 2 3 4; do echo ckpt:runs/cotrain/cotrain_A$g.pt; done) --heldout \
    --removers ckpt:runs/remover/remover_init.best.pt $(for g in 1 2 3 4; do echo ckpt:runs/cotrain/cotrain_B$g.pt; done) \
    --out docs/results_generations.md

echo "[11/11] baselines at other visible shares (docs/results_visibility_*.md), then pack"
for V in 0 0.1 0.25 0.5; do
  python -m experiments.evaluate --query-mode edge --visible $V --seeds 5 --fnr-budgets 20 40 100 --splits train test \
      --synth-test data/synth_test --synth-limit 100 --no-removers --finders bfs greedy --heldout random oracle \
      --title "Baselines with visible share $V" --out docs/results_visibility_$V.md
done
cp runs/finder/finder.best.pt models/finder_start.pt
cp runs/finder/finder_noB.pt models/finder_noB.pt
cp runs/finder/finder_vsB.pt models/finder_vsB.pt
cp runs/cotrain/cotrain_A4.pt models/finder_cotrain.pt
cp runs/remover/remover_init.best.pt models/remover_start.pt
cp runs/remover/remover.pt models/remover.pt
cp runs/cotrain/cotrain_B4.pt models/remover_cotrain.pt
tar czf runs/logs.tgz runs/pipeline.log runs/finder/*.log runs/remover/*.log runs/cotrain/*.log runs/*.json \
    docs/results*.md data/synth/index.json
echo "DONE: copy runs/logs.tgz and models/ back"
