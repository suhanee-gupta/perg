"""Phase 4 check: per-round rewards on a toy graph match a hand calculation."""
import random

import networkx as nx
import pytest

from experiments.common import load_graph, make_finder, make_remover, play
from iampe.env.game import Game, GameConfig
from iampe.graph.build import ADMIN


def toy():
    """s1 -> r -> admin (w=2 on r->admin), s2 -> admin (w=1), s3 closed. Untrusted = s1."""
    G = nx.MultiDiGraph(untrusted="s1")
    for n, k in [("s1", "User"), ("s2", "User"), ("s3", "User"), ("r", "Role"), (ADMIN, "Admin")]:
        G.add_node(n, kind=k)
    for u, v, w in [("s1", "r", 3), ("r", ADMIN, 2), ("s2", ADMIN, 1)]:
        G.add_edge(u, v, key="p", prim="p", category="PermissionRequest", w=w, cuttable=True)
    return G


class Script:
    def __init__(self, steps):
        self.steps = list(steps)

    def act(self, game):
        return self.steps.pop(0) if self.steps else None

    def cut(self, game):
        return self.steps.pop(0)


def test_rewards_match_hand_calculation():
    cfg = GameConfig(Q=3, K=2, mu=0.1, lam=0.5, cut_budget=1, max_sources=3)
    g = Game(toy(), cfg, random.Random(0))
    assert set(g.S) == {"s1", "s2", "s3"}
    A = Script(["s1", "r", "s2", "s1", "s3", "r"])
    B = Script([[("r", ADMIN, "p")], [("s2", ADMIN, "p")]])
    l0, l1 = g.play(A, B)
    # round 0: 3 queries prove s1 (s1->r->admin) and s2; B cuts r->admin (w=2); s2 stays open
    assert l0.proven == ["s1", "s2"] and l0.r_A == pytest.approx(2 - 0.3)
    assert l0.open_after == 1 and l0.r_B == pytest.approx(-1 - 0.5 * 2)
    # round 1: s2's remembered edge proves it again on the first query; s1 is now dead; B cuts s2->admin
    assert l1.proven == ["s2"] and l1.r_A == pytest.approx(1 - 0.3)
    assert l1.open_after == 0 and l1.r_B == pytest.approx(0 - 0.5 * 1)
    assert l1.new_routes == 0


def test_b_cannot_cut_unseen_edges():
    g = Game(toy(), GameConfig(Q=1, K=1, cut_budget=5, max_sources=3), random.Random(0))
    log = g.play(Script(["s2"]), Script([[("r", ADMIN, "p"), ("s2", ADMIN, "p")]]))[0]
    assert log.cut == [("s2", ADMIN, "p")]


def test_random_players_finish_on_real_graphs():
    for org in ["linost-zq0as", "orqua-15occg", "iv00u"]:
        logs = play(load_graph(org), make_finder("random"), make_remover("random"), GameConfig(Q=10, K=3), 0)
        assert len(logs) == 3 and all(l["open_after"] <= l["open_before"] for l in logs)


def test_cost_rule_ends_turn_without_a_cap():
    """A random A never chooses END; the turn still ends once spent cost reaches what it could gain."""
    G = load_graph("hexsol-15z25m")
    for mu, growth in [(0.05, 1.0), (0.05, 1.05)]:
        g = Game(G, GameConfig(Q=None, K=1, mu=mu, cost_growth=growth, max_sources=10), random.Random(0))
        A = make_finder("random")
        while g.a_can_query():
            g.a_query(A.act(g))
        assert g.query_cost <= len(g.S)            # spent cost never exceeds the most A could gain
        assert g.queries <= len(g.S) / mu
    # growing cost stops much earlier than constant cost
    runs = {}
    for growth in (1.0, 1.1):
        g = Game(G, GameConfig(Q=None, K=1, mu=0.05, cost_growth=growth, max_sources=10), random.Random(0))
        A = make_finder("random")
        while g.a_can_query():
            g.a_query(A.act(g))
        runs[growth] = g.queries
    assert runs[1.1] < runs[1.0]
