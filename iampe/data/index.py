"""Discover the provided Terraform configs and their labels.

Dataset: data/raw/{esc,no_esc}/<org>/, 18 configs (from esc.zip and no_esc.zip). Each also ships the
generator's config.json, which is NOT used as ground truth: see docs/HANDOFF.md.

Splits: train / test are small enough to convert on a laptop; `bench` are the four IAM Vulnerable
scenarios; `deferred` are the large configs whose graphs are built elsewhere (experiments/build_graphs.py).
"""
from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATASETS = {
    "v2": [ROOT / "data" / "raw" / "esc", ROOT / "data" / "raw" / "no_esc"],
}
CACHE_DIR = ROOT / "data" / "cache"
GRAPH_DIR = ROOT / "data" / "graphs"
ADMIN = "admin:*"

TRAIN = ["linost-zq0as", "mavsol-zq0ao", "mercor-15occh", "dyntri-100q3n", "kalum-100q3l", "hexsol-15z25m"]
TEST = ["orqua-15occg", "ormav-15z25c"]
BENCH = ["iv00u", "iv12u", "iv13r", "iv19r"]
DEFERRED = ["arimer-1bmoea", "axnor-1bmoe8", "corpyr-1bxe7c", "delnor-1bxe74", "linlin-1nu2ao", "mermer-1njcht"]


@dataclass(frozen=True)
class ConfigRef:
    org: str
    path: Path
    has_pe: bool
    dataset: str = "v2"


def list_configs(dataset: str | None = None) -> list[ConfigRef]:
    refs = []
    for name, dirs in DATASETS.items():
        if dataset is not None and name != dataset:
            continue
        for raw in dirs:
            if not raw.is_dir():
                continue
            for d in sorted(raw.iterdir()):
                lab = d / "labels.json"
                if d.is_dir() and lab.exists() and "__MACOSX" not in d.parts:
                    refs.append(ConfigRef(d.name, d, bool(json.loads(lab.read_text())["ground_truth"]["has_pe"]), name))
    return refs


def get_config(org: str) -> ConfigRef:
    for r in list_configs():
        if r.org == org:
            return r
    raise KeyError(org)


def load_labels(ref: ConfigRef) -> dict:
    """Labels; configs without an injection plan (IAM Vulnerable scenarios) get an empty one."""
    labels = json.loads((ref.path / "labels.json").read_text())
    labels.setdefault("injection_plan", {"planted": [], "dead_ends": [], "decoys": []})
    return labels


def node_id(label_node: str) -> str:
    """Label hop endpoints use bare 'admin' in places; graph uses 'admin:*'."""
    return ADMIN if label_node in ("admin", "admin:*") else label_node


def label_paths(labels: dict) -> dict[str, list[list[tuple[str, str, str]]]]:
    """Normalise every labelled path to lists of (src, prim, dst) triples, keyed by kind."""
    out: dict[str, list] = {"witness": [], "dfs": [], "planted": [], "dead_ends": [], "decoys": []}
    w = labels["ground_truth"].get("witness") or []
    if w:
        out["witness"].append([(node_id(h["via"][-1]), h["prim"], node_id(h["to"])) for h in w])
    if labels.get("dfs"):
        for p in labels["dfs"]["paths"]:
            out["dfs"].append([(node_id(h["src"]), h["prim"], node_id(h["dst"])) for h in p])
    for k in ("planted", "dead_ends", "decoys"):
        for p in labels.get("injection_plan", {}).get(k, []):
            out[k].append([(node_id(h["from"]), h["prim"], node_id(h["to"]), h) for h in p["hops"]])
    return out


def splits() -> dict[str, list[str]]:
    return {"train": list(TRAIN), "test": list(TEST), "bench": list(BENCH), "deferred": list(DEFERRED)}
