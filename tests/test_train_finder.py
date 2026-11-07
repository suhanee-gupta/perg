"""Phase 5c check: finder evaluation and the trainer run end to end on the toy graph."""
import random

import torch

import experiments.train_finder as tf
from experiments.common import load_policy, make_finder
from iampe.agents.finder_heuristic import BFSFinder
from iampe.agents.gnn import FinderPolicy
from iampe.agents.rollout import finder_bc_pairs
from iampe.env.game import standard_config
from tests.test_game import Script, toy


def test_fnr_at_budget():
    m = tf.evaluate(Script(["s1", "r", "s2"]), [toy()], Q=10, decline_p=0.0, seeds=(0,))
    assert m["fnr"] == 0 and m["queries"] == 3
    m = tf.evaluate(Script(["s3"]), [toy()], Q=10, decline_p=0.0, seeds=(0,))
    assert m["fnr"] == 1


def test_bc_pairs_follow_the_teacher():
    cfg = standard_config(K=1, max_sources=3, decline_p=0.0)
    pairs = finder_bc_pairs(toy(), cfg, random.Random(0), BFSFinder())
    assert pairs and all(0 <= y < d.cand.numel() + 1 for d, y in pairs)


def test_train_writes_loadable_checkpoints(tmp_path, monkeypatch):
    monkeypatch.setattr(tf, "RUNS", tmp_path)
    torch.manual_seed(0)
    cfg = standard_config(K=2, Q=5, decline_p=0.1)
    tf.train(FinderPolicy(), [toy()], cfg, ["minseen"], iters=1, episodes=2, lr=1e-3, seed=0, out_name="t",
             eval_graphs=[toy()], log=lambda s: None, bc=4, teacher="bfs", stages=2)
    for f in ("t.pt", "t.best.pt"):
        assert (tmp_path / "finder" / f).exists()
    assert isinstance(load_policy("finder", tmp_path / "finder" / "t.pt"), FinderPolicy)
    m = tf.evaluate(make_finder(f"ckpt:{tmp_path / 'finder' / 't.best.pt'}"), [toy()], Q=5, decline_p=0.0, seeds=(0,))
    assert 0 <= m["fnr"] <= 1 and m["queries"] <= 5


def test_remover_and_cotrain_pieces(tmp_path, monkeypatch):
    import experiments.train_remediator as tr
    from experiments.cotrain import EXP3, a_failure
    from iampe.agents.gnn import RemediatorPolicy
    monkeypatch.setattr(tr, "RUNS", tmp_path)
    cfg = standard_config(K=2, Q=5, max_sources=4)
    tr.train(RemediatorPolicy(), [toy()], cfg, ["bfs"], iters=1, episodes=2, lr=1e-3, seed=0, out_name="b",
             log=lambda s: None, bc=4)
    assert (tmp_path / "remover" / "b.best.pt").exists()
    e = EXP3(["x", "y"], seed=0, reward=a_failure)
    e.add("z")
    assert len(e.probs()) == 3 and abs(sum(e.probs()) - 1) < 1e-9
