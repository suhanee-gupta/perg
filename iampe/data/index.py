"""Discover the provided Terraform configs and their labels.

Dataset: data/raw/{esc,no_esc,more}/<org>/, 72 configs (esc.zip and no_esc.zip: 18; more.zip: 54), all made
by the same generator (`iamgen`). Each also ships the generator's config.json, which is NOT used as ground
truth: see docs/HANDOFF.md.

The generator seed puts each config in a size tier: 6e7 (~50 nodes), 7e7 (100-350), 8e7 (500-2,300),
1e8 (5k-30k+). Splits (fixed; the reasoning is in docs/dataset.md):
  train / val / test   tiers 6e7-8e7. The 8 configs of the first release keep their old split; the
                       others are spread ~60/20/20 within each (tier, has_pe) group in seed order.
  bench                the four IAM Vulnerable scenarios.
  large                tier 1e8, evaluation only (the biggest need minutes and ~2 GB to build).
"""
from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATASETS = {
    "v2": [ROOT / "data" / "raw" / "esc", ROOT / "data" / "raw" / "no_esc", ROOT / "data" / "raw" / "more"],
}
CACHE_DIR = ROOT / "data" / "cache"
GRAPH_DIR = ROOT / "data" / "graphs"
ADMIN = "admin:*"

TRAIN = ["mavsol-zq0ao", "linost-zq0as", "kalum-100q3l", "dyntri-100q3n", "mercor-15occh", "hexsol-15z25m",
    "rynhex-169ry8", "solryn-169rya", "axmav-169ryc", "velor-169ryd", "velcor-169ryf", "hexvel-169ryh",
    "delcor-169ryi", "belari-169ryk", "mersol-169rym", "beldel-169ryn", "fenbel-169ryp", "dynhex-169ryr",
    "tabel-169rys", "delqua-169ryu", "delbel-169ryv", "dynbel-169ryw", "solqua-16khrj", "solzen-16khsa",
    "solor-16khso", "axnor-1bmoe8", "delnor-1bxe74", "belbel-1c8400", "kanor-1c8402", "mavlin-1c8403",
    "taor-1c8405", "normer-1c8407", "dynqua-1c8408", "aritri-1c840a", "trimer-1c840c", "mavdyn-1c840d",
    "quaari-1c840e", "lumpyr-1citt2", "hexryn-1cittk", "lummer-1cittm"]
VAL = ["linzen-169ry9", "velzen-169rye", "ostlum-169ryj", "solfen-169ryo", "hexcor-169ryt", "soltri-16khry",
    "arimer-1bmoea", "corpyr-1bxe7c", "pyrpyr-1c8404", "arimer-1c8409"]
TEST = ["orqua-15occg", "ormav-15z25c", "trisol-169ryb", "velvel-169ryg", "mernor-169ryl", "quavel-169ryq",
    "axta-1c8401", "solcor-1c8406", "merryn-1c840b", "linmav-1citt4"]
BENCH = ["iv00u", "iv12u", "iv13r", "iv19r"]
LARGE = ["mermer-1njcht", "linlin-1nu2ao", "belqua-1o4s3k", "quabel-1o4s3l", "ostmav-1o4s3m", "axlin-1o4s3n",
    "mavlin-1ofhwj", "rynlin-1ofhwm"]


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
    return {"train": list(TRAIN), "val": list(VAL), "test": list(TEST), "bench": list(BENCH), "large": list(LARGE)}
