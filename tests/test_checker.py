import networkx as nx
import pytest

import env
from iampe.checker.mincut import budgeted_cut, cut_cost, min_cut
from iampe.checker.reach import LiveGraph, reachable_pairs
from iampe.checker.validate import check
from iampe.data.index import get_config, load_labels
from iampe.graph.build import ADMIN, build_graph


def toy():
    """s1 -> a -> admin, s1 -> b -> admin, s2 -> b, s3 isolated; a->admin costs 1, b->admin 5, s2->b 2."""
    G = nx.MultiDiGraph(untrusted="s1")
    for u, v, w in [("s1", "a", 3), ("a", ADMIN, 1), ("s1", "b", 3), ("b", ADMIN, 5), ("s2", "b", 2)]:
        G.add_edge(u, v, key="p", prim="p", w=w, cuttable=True)
    G.add_node("s3")
    return G


def test_reachability_and_removal():
    G = toy()
    S = ["s1", "s2", "s3"]
    assert reachable_pairs(G, S) == {"s1", "s2"}
    lg = LiveGraph(G)
    lg.remove([("b", ADMIN, "p")])
    assert lg.open_pairs(S) == {"s1"}
    assert [e[1] for e in lg.shortest_proof("s1")] == ["a", ADMIN]


def test_min_cut_hand_computed():
    cost, cut = min_cut(toy(), ["s1", "s2"])
    assert cost == 6   # a->admin + b->admin, or a->admin + s1->b + s2->b
    assert reachable_pairs(toy(), ["s1", "s2"], set(cut)) == set()


def test_budgeted_cut_monotone():
    G, S = toy(), ["s1", "s2"]
    opened = []
    for b in [0, 1, 3, 6, 100]:
        cut = budgeted_cut(G, S, b)
        assert cut_cost(G, cut) <= b
        opened.append(len(reachable_pairs(G, S, set(cut))))
    assert opened == sorted(opened, reverse=True) and opened[0] == 2 and opened[-1] == 0


@pytest.mark.parametrize("org", ["taax-zq0zi", "kasol-zq0qg", "zenax-zq111", "rynor-zq0uj", "arifen-15ocxf"])
def test_graph_matches_labels(org):
    res = check(build_graph(env.load_config(org)), load_labels(get_config(org)))
    assert res["ok"], res
