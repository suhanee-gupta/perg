"""The agreed design (standard_config): A's fixed budget, declines, early end, the shaping potential;
B's unbudgeted trade-off reward and baselines; synthetic graphs. All on the toy graph from test_game."""
import random

import pytest

from experiments.common import load_graph, split_orgs
from iampe.agents.remediator_baselines import AdminFirstB, FullB, MinSeenB
from iampe.agents.rollout import _a_phase
from iampe.checker.mincut import tradeoff_cut
from iampe.checker.reach import LiveGraph
from iampe.data.synth import edge_table, gen_graph
from iampe.env.game import Game, standard_config
from iampe.env.potential import potential
from iampe.graph.build import ADMIN, sources
from tests.test_game import Script, toy

E_R = ("r", ADMIN, "p")
E_S2 = ("s2", ADMIN, "p")


def game(**kw):
    return Game(toy(), standard_config(**({"K": 1, "max_sources": 4, "decline_p": 0.0} | kw)), random.Random(0))


def test_fixed_budget_has_no_cost_rule_and_ends_when_all_open_are_proven():
    g = game(Q=10)
    assert g.open_now() == {"s1", "s2", "r"}
    for u in ["s1", "r"]:                      # proves s1 and r (r -> admin), s2 still open
        g.a_query(u)
    assert g.a_can_query() and g.query_cost == 2.0
    g.a_query("s2")
    assert g.proven == {"s1", "s2", "r"} and not g.a_can_query()


def test_memory_skips_old_nodes_and_re_reports_surviving_proofs():
    g = game(Q=10, K=2)
    for u in ["s1", "r", "s2"]:
        g.a_query(u)
    g.a_done = True
    g.b_cut([E_S2])                            # s2 closed; s1 -> r -> admin survives
    assert g.k == 1 and g.proven == {"s1", "r"}  # re-reported at round start, no query spent
    assert not {"s1", "r", "s2"} & set(g.query_candidates())


def test_declined_query_costs_reveals_nothing_and_cannot_be_repeated():
    g = game(decline_p=1.0, Q=10)
    assert g.a_query("s1") == 0
    assert not g.revealed and g.queries == 1 and "s1" in g.declined
    assert "s1" not in g.query_candidates()


def test_w_is_normalised_by_users_and_roles():
    g = game()
    assert g.n_principals == 4                  # s1, s2, s3, r
    assert g.w(E_R) == pytest.approx(2 / 4) and g.w(("s1", "r", "p")) == pytest.approx(3 / 4)


def test_close_reward_counts_newly_closed_sources():
    g = game(Q=10)
    for u in ["s1", "r", "s2"]:
        g.a_query(u)
    g.a_done = True
    log = g.b_cut([E_R])                       # closes s1 and r; s2 stays open
    assert log.closed == 2 and log.open_after == 1
    assert log.r_B == pytest.approx(2 - 1 - 1.0 * 0.5)


def test_potential_counts_unrevealed_edges_and_is_zero_when_all_proven():
    g = game(Q=10)
    assert potential(g) == -4.0                 # s1: 2 edges, s2: 1, r: 1
    g.a_query("s1")                             # reveals s1 -> r
    assert potential(g) == -3.0
    for u in ["r", "s2"]:
        g.a_query(u)
    assert potential(g) == 0.0


def test_shaping_telescopes_to_minus_the_first_potential():
    from iampe.agents.gnn import FinderPolicy
    from iampe.agents.rollout import finder_episode
    from iampe.agents.remediator_baselines import NoB
    import torch
    torch.manual_seed(0)
    cfg = standard_config(K=1, Q=10, max_sources=4, decline_p=0.0)
    rec_s, _ = finder_episode(toy(), cfg, FinderPolicy(), NoB(), random.Random(0), shaping=True)
    torch.manual_seed(0)
    rec_p, _ = finder_episode(toy(), cfg, FinderPolicy(), NoB(), random.Random(0), shaping=False)
    assert [s["a"] for s in rec_s] == [s["a"] for s in rec_p]
    assert sum(s["r"] for s in rec_s) == pytest.approx(sum(s["r"] for s in rec_p) - rec_s[0]["phi"])


def test_tradeoff_cut_closes_everything_when_cheap_and_nothing_when_dear():
    G = toy()
    cheap = tradeoff_cut(G, ["s1", "s2", "r"], lambda e: G.edges[e]["w"], penalty=0.01)
    assert set(cheap) == {E_R, E_S2}
    assert tradeoff_cut(G, ["s1", "s2", "r"], lambda e: G.edges[e]["w"], penalty=100.0) == []


def _after_full_a_turn(**kw):
    g = game(Q=10, **kw)
    _a_phase(g, Script(["s1", "r", "s2"]), None)
    return g


def test_baselines_without_budget():
    assert set(FullB().cut(_after_full_a_turn())) == {E_R, E_S2}
    assert set(MinSeenB().cut(_after_full_a_turn())) == {E_R, E_S2}
    assert set(AdminFirstB().cut(_after_full_a_turn())) == {E_R, E_S2}
    assert MinSeenB().cut(_after_full_a_turn(lam=1000.0)) == []


def test_synthetic_graphs_are_valid_and_reproducible():
    table = edge_table([load_graph(o) for o in split_orgs("train")[:2]])
    G, G2 = gen_graph(3, table, n=40), gen_graph(3, table, n=40)
    assert sorted(G.edges(keys=True)) == sorted(G2.edges(keys=True))
    reach = LiveGraph(G).can_reach_admin()
    assert G.graph["untrusted"] in reach and all(s in reach for s in G.graph["planted"])
    assert set(G.graph["planted"]) <= set(sources(G, kinds=("User", "Role")))
    for u, v, d in G.edges(data=True):
        assert d["cuttable"] == (d["w"] < float("inf"))
