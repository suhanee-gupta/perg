# Models of the current design (yes/no edge queries), trained 2026-11-17 to 2026-11-19

Evaluated in `docs/results.md` (test split) and `docs/results_generations.md`; written up in `docs/REPORT.md`.
Game: `--query-mode edge --visible 0.5 --Q 40 --decline 0.1 --b-sees revealed --lam 1`, 5 rounds.

| file | what | run |
|---|---|---|
| finder_start.pt | A after imitation + PPO pre-training and fine-tuning (best checkpoint) | runs/finder/finder.best.pt |
| finder_noB.pt | A after 40 more iterations x 32 five-round games with no fixer (last weights) | runs/finder/finder_noB.pt |
| finder_vsB.pt | A after 20 iterations x 32 games against fixed fixers minseen, adminfirst (last weights) | runs/finder/finder_vsB.pt |
| finder_cotrain.pt | A after co-training, generation 4 (4 x 5 iterations x 32 games) | runs/cotrain/cotrain_A4.pt |
| remover_start.pt | B after imitation warm start | runs/remover/remover_init.best.pt |
| remover_cotrain.pt | B after co-training, generation 4 | runs/cotrain/cotrain_B4.pt |
| cotrain/ | every co-training generation of A and B | runs/cotrain/ |
| logs/ | training logs of co-training and finder_vsB | |

Use with `ckpt:models/v2/<file>` in experiments/evaluate.py. The models directly in `models/` are from the
first design (2026-11-12, `docs/REPORT_old.md`) and do not load with the current code.
