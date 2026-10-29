from iampe.data.index import label_paths, list_configs, load_labels, splits


def test_configs_found():
    refs = list_configs()
    assert len(refs) == 14
    assert sum(r.has_pe for r in refs) == 8


def test_splits_disjoint():
    s = splits()
    allo = s["train"] + s["test"] + s["large"]
    assert len(allo) == len(set(allo)) == 14


def test_label_paths_normalised():
    for r in list_configs():
        lp = label_paths(load_labels(r))
        assert bool(lp["witness"]) == r.has_pe
        for p in lp["witness"] + lp["dfs"]:
            assert p[-1][2] == "admin:*" or "admin" in p[-1][2]   # sink, or an admin principal
            assert all(not h[0].startswith("admin") for h in p)


def test_saved_split_matches_code():
    import json
    from iampe.data.index import ROOT
    assert json.loads((ROOT / "data" / "splits.json").read_text()) == splits()
