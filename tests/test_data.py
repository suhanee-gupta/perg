from iampe.data.index import label_paths, list_configs, load_labels, splits


def test_configs_found():
    refs = list_configs("v2")
    assert len(refs) == 72                    # esc.zip + no_esc.zip (18) + more.zip (54), unzipped in data/raw/
    assert sum(r.has_pe for r in refs) == 53


def test_splits_disjoint():
    s = splits()
    allo = [o for v in s.values() for o in v]
    assert len(allo) == len(set(allo)) == 72
    assert set(allo) == {r.org for r in list_configs("v2")}


def test_label_paths_normalised():
    from iampe.graph.io import graph_path, load_graph
    for r in list_configs("v2"):
        lp = label_paths(load_labels(r))
        assert bool(lp["witness"]) == r.has_pe
        G = load_graph(r.org) if graph_path(r.org).exists() else None
        for p in lp["witness"] + lp["dfs"]:
            end = p[-1][2]                                # the sink, or a principal that holds admin
            assert end == "admin:*" or (G.nodes[end].get("is_admin") if G is not None else "adm" in end)
            assert all(not h[0].startswith("admin") for h in p)


def test_saved_split_matches_code():
    import json
    from iampe.data.index import ROOT
    assert json.loads((ROOT / "data" / "splits.json").read_text()) == splits()
