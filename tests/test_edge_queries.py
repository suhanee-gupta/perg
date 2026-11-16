"""Edge mode (TAC-style yes/no questions), order-independent declines, the fixed oracle and floor,
B's wider view, preview_cut, and the factorised policy. No test here trains (no gradient step)."""
import random

import networkx as nx
import pytest
import torch

from experiments.common import fnr, load_graph, make_finder, split_orgs
from iampe.graph.io import graph_path
from iampe.agents.finder_heuristic import OracleFinder
from iampe.agents.gnn import FinderPolicy, GNNFinder
from iampe.agents.remediator_baselines import MinSeenB
from iampe.agents.rollout import _a_phase, finder_bc_pairs
from iampe.env.game import Game, standard_config
from iampe.env.potential import potential, provable_sources
from iampe.env.query_space import QuerySpace, edge_prior, schema
from iampe.graph.build import ADMIN, HUB

ASSUME = "assume-or-edit-trust"
HUB_KEY = "assume-or-edit-trust|sts:AssumeRole"
E1 = ("s1", "r", ASSUME)                      # s1 can take over role r
E2 = ("r", ADMIN, "attach-role-policy")       # r can make itself admin
E3 = ("s2", ADMIN, "attach-user-policy")      # s2 can make itself admin
E_HUB = ("s3", HUB + HUB_KEY, HUB_KEY)        # s3 holds sts:AssumeRole on *
E_HR = (HUB + HUB_KEY, "r", HUB_KEY)          # public expansion of the hub


def toy(hub: bool = False):
    """s1 -> r -> admin and s2 -> admin are open; s3 is closed (unless hub: s3 -> hub -> r -> admin)."""
    G = nx.MultiDiGraph(untrusted="s1", name="toy-edge")
    for n, k in [("s1", "User"), ("s2", "User"), ("s3", "User"), ("r", "Role"), ("r2", "Role"), (ADMIN, "Admin")]:
        G.add_node(n, kind=k)
    edges = [E1, E2, E3] + ([E_HUB, E_HR] if hub else [])
    for u, v, k in edges:
        cut = not u.startswith(HUB)
        G.add_edge(u, v, key=k, prim=k.split("|")[0], category="PermissionRequest", w=1.0 if cut else float("inf"),
                   cuttable=cut)
    if hub:
        G.nodes[HUB + HUB_KEY]["kind"] = "Hub"
    return G


def game(G=None, **kw):
    base = {"K": 1, "Q": 30, "max_sources": 4, "decline_p": 0.0, "query_mode": "edge", "visible_p": 0.0,
            "source_kinds": ("User",)}                                  # sources s1, s2, s3; r is not one
    cfg = standard_config(**(base | kw))
    return Game(G or toy(), cfg, random.Random(0))


def test_schema_covers_every_edge_of_the_real_graphs():
    for sp in ("train", "val", "test", "bench", "large"):
        for org in split_orgs(sp):
            if not graph_path(org).exists():                  # the largest are built on the GPU machine
                continue
            G = load_graph(org)
            qs = QuerySpace(G)
            for e in G.edges(keys=True):
                if not e[0].startswith(HUB):
                    assert qs.allowed(e), (org, e)


def test_options_match_the_query_space_size():
    g = game()
    assert len(g.options("s1")) == g.qs.size("s1") == g.remaining("s1")
    assert all(v != "s1" for v, _ in g.options("s1"))


def test_yes_no_answers_reveal_only_true_edges_and_prove():
    g = game()
    assert set(g.frontier()) == {"s1", "s2", "s3"}            # the sources (r is not reachable yet)
    assert g.a_query(("s1", "r2", ASSUME)) == 0               # FALSE: nothing revealed
    assert g.answers[("s1", "r2", ASSUME)] is False and not g.revealed
    assert g.a_query(E1) == 0 and g.answers[E1] is True       # TRUE: s1 -> r revealed
    assert "r" in g.frontier()                                # r is now reachable from a source
    assert g.a_query(E2) == 1 and g.proven == {"s1"}          # s1 -> r -> admin proves s1
    assert g.queries == 3 and g.query_cost == 3.0


def test_illegal_questions_are_rejected():
    g = game()
    with pytest.raises(ValueError):
        g.a_query(("r", ADMIN, "attach-role-policy"))         # r is not on the frontier yet
    with pytest.raises(ValueError):
        g.a_query(("s1", ADMIN, "attach-role-policy"))        # a role template asked of a user
    g.a_query(("s1", "r2", ASSUME))
    with pytest.raises(ValueError):
        g.a_query(("s1", "r2", ASSUME))                       # asked already


def test_declined_question_costs_reveals_nothing_and_cannot_be_repeated():
    g = game(decline_p=1.0)
    assert g.a_query(E1) == 0
    assert E1 in g.declined and not g.revealed and g.queries == 1
    assert ("r", ASSUME) not in g.options("s1")


def test_declines_do_not_depend_on_query_order():
    a, b = game(decline_p=0.5), game(decline_p=0.5)
    qs = [("s1", "r2", ASSUME), E1, E3, ("s2", "r", ASSUME)]
    before = {q: b.would_decline(q) for q in qs}
    for q in qs[:2]:
        a.a_query(q)
    assert {q: a.would_decline(q) for q in qs} == before


def test_hub_expansion_is_revealed_with_the_edge_into_the_hub():
    g = game(toy(hub=True))
    assert g.qs.allowed(E_HUB)
    g.a_query(E_HUB)
    assert E_HR in g.revealed and "r" in g.frontier()


def test_memory_keeps_answers_and_reports_surviving_proofs():
    g = game(K=2)
    for q in (E1, E2, E3):
        g.a_query(q)
    g.a_done = True
    g.b_cut([E3])
    assert g.k == 1 and g.proven == {"s1"}                    # re-reported, no query spent
    assert E3 in g.asked_ever and ("s2", ADMIN, "attach-user-policy") not in [("s2",) + o for o in g.options("s2")]


def test_potential_counts_questions_still_needed():
    g = game()
    assert potential(g) == -3.0                               # s1: 2 questions, s2: 1
    g.a_query(E1)
    assert potential(g) == -2.0


@pytest.mark.parametrize("mode", ["node", "edge"])
def test_oracle_reaches_the_floor_with_a_large_budget(mode):
    for org in ("linost-zq0as", "mercor-15occh"):
        r = fnr(load_graph(org), OracleFinder(), seeds=(0, 1, 2), Q=1000, decline_p=0.3, query_mode=mode)
        assert r["missed"] == r["unprovable"]


def test_floor_counts_sources_behind_declined_queries():
    g = game(decline_p=1.0)                                   # every question declined
    assert provable_sources(g) == set()
    assert provable_sources(game()) == {"s1", "s2"}


def test_b_sees_revealed_lets_b_cut_an_unproven_route():
    for b_sees, expect in (("proofs", []), ("revealed", [E1])):
        g = game(b_sees=b_sees)
        g.a_query(E1)                                         # explored, not proven
        g.a_done = True
        assert g.b_cut([E1]).cut == expect


def test_preview_cut_matches_the_real_round_reward():
    g = game(K=2)
    for q in (E1, E2, E3):
        g.a_query(q)
    g.a_done = True
    cut = g.legal_cuts(MinSeenB().cut(g))
    closed, after, cost, r_B = g.preview_cut(cut)
    log = g.b_cut(cut)
    assert (closed, cost, r_B) == (log.closed, log.cut_cost, log.r_B)


def test_edge_prior_is_a_probability_and_greedy_plays():
    prior = edge_prior([load_graph(o) for o in split_orgs("train")])
    assert all(0 < p < 1 for p in prior.values())
    assert prior[("User", ASSUME, "Role")] > prior[("User", "create-access-key", "User")]
    r = fnr(load_graph("linost-zq0as"), make_finder("greedy"), seeds=(0,), Q=5, query_mode="edge")
    assert r["queries"] == 5


@pytest.mark.parametrize("mode", ["node", "edge"])
def test_policy_log_prob_matches_between_sampling_and_update(mode):
    torch.manual_seed(0)
    pol = FinderPolicy()
    G = load_graph("linost-zq0as")
    g = Game(G, standard_config(K=1, Q=4, query_mode=mode), random.Random(0))
    rec = []
    _a_phase(g, GNNFinder(pol, record=rec), None)
    assert rec and all(isinstance(s["a"], tuple) == (mode == "edge") for s in rec)
    with torch.no_grad():
        logp, ent, _ = pol.evaluate_actions([s["data"] for s in rec], [s["a"] for s in rec],
                                            [s["mask_last"] for s in rec])
    assert torch.allclose(logp, torch.tensor([s["logp"] for s in rec]), atol=1e-4)
    assert (ent > 0).all()


def test_imitation_pairs_in_edge_mode_have_valid_labels():
    cfg = standard_config(K=1, Q=20, decline_p=0.0, query_mode="edge")
    pairs = finder_bc_pairs(load_graph("mercor-15occh"), cfg, random.Random(0), OracleFinder())
    assert pairs
    for d, (iu, iq) in pairs:
        assert 0 <= iu < d.cand.numel() and 0 <= iq < d.opt_v.numel()
    dagger = finder_bc_pairs(load_graph("mercor-15occh"), cfg, random.Random(0), OracleFinder(),
                             policy=FinderPolicy(), beta=0.0)
    assert dagger and all(isinstance(y, tuple) for _, y in dagger)
    with torch.no_grad():                                     # the labels are scorable by the policy
        logp, _, _ = FinderPolicy().evaluate_actions([d for d, _ in pairs], [y for _, y in pairs], [False] * len(pairs))
    assert torch.isfinite(logp).all()


def test_schema_has_admin_and_hub_questions_for_actors():
    for kind in ("User", "Role"):
        tg = {t for _, t in schema()[kind]}
        assert ADMIN in tg and "Role" in tg and any(t.startswith(HUB) for t in tg)


def test_node_mode_means_the_old_game_unless_overridden():
    c = standard_config(query_mode="node")
    assert (c.visible_p, c.b_sees) == (0.0, "proofs")
    c = standard_config(query_mode="node", visible_p=0.3, b_sees="revealed")
    assert (c.visible_p, c.b_sees) == (0.3, "revealed")
    assert standard_config().query_mode == "edge" and standard_config().visible_p == 0.5


def test_a_decline_is_the_same_for_a_list_and_a_tuple():
    g = game(decline_p=0.5)
    assert all(g.would_decline(q) == g.would_decline(list(q)) for q in [E1, E2, E3, ("s1", "r2", ASSUME)])


def test_a_blocking_decline_never_raises_the_potential():
    g = game(decline_p=1.0)
    before = potential(g)
    g.a_query(E3)                                             # s2's only route is now declined
    assert potential(g) < before


def test_games_do_not_depend_on_pythons_hash_seed(tmp_path):
    """Set iteration order differs per process (PYTHONHASHSEED); no decision may depend on it. Covers
    the baselines and an (untrained, randomly initialised) neural finder."""
    import os
    import subprocess
    import sys
    torch.manual_seed(0)
    ck = tmp_path / "rand.pt"
    torch.save(FinderPolicy().state_dict(), ck)
    code = ("import sys, torch\n"
            "from experiments.common import load_graph, make_finder, make_remover, play\n"
            "from iampe.env.game import standard_config\n"
            "torch.set_num_threads(1)\n"
            "G = load_graph('ormav-15z25c')\n"
            "for mode in ('edge', 'node'):\n"
            "    for f in ('oracle', 'bfs', 'greedy', 'ckpt:' + sys.argv[1]):\n"
            "        for r in ('minseen', 'adminfirst', 'random'):\n"
            "            logs = play(G, make_finder(f, 0), make_remover(r, 0), standard_config(query_mode=mode, Q=10), 0)\n"
            "            print([(l['open_after'], l['cut'], l['proven']) for l in logs])\n")
    outs = [subprocess.run([sys.executable, "-c", code, str(ck)], capture_output=True, text=True, check=True,
                           env=os.environ | {"PYTHONHASHSEED": h, "PYTHONPATH": "."}).stdout for h in ("1", "2")]
    assert outs[0] and outs[0] == outs[1]


def test_refound_counts_only_sources_proved_again_after_a_cut():
    from experiments.evaluate import _later_finds
    logs = [{"proven": ["a", "b"], "reported_at_start": []},
            {"proven": ["a", "c"], "reported_at_start": ["a"]},     # a survived the cut; c is new
            {"proven": ["b"], "reported_at_start": []}]             # b lost its proof, proved again
    assert _later_finds(logs) == ([0, 0, 1], [2, 1, 0])


def test_round_log_records_proofs_reported_at_round_start():
    g = game(K=2)
    for q in (E1, E2, E3):
        g.a_query(q)
    g.a_done = True
    g.b_cut([E3])
    assert g.reported_at_start == ["s1"]                       # s1's proof survived; s2's was cut
    g.a_done = True
    log = g.b_cut([])
    assert log.reported_at_start == ["s1"] and log.reproven == 1
