"""Discover the provided Terraform configs and their labels."""
from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
RAW_DIRS = [ROOT / "escalation" / "escalation", ROOT / "no_escalation" / "no_escalation"]
CACHE_DIR = ROOT / "data" / "cache"
ADMIN = "admin:*"

# Held-out configs (2 PE + 2 no-PE) and the two very large ones used only for generalisation.
TEST = {"lumzen-15ocuk", "rynor-zq0uj", "zenax-zq111", "axtri-1bmokt"}
LARGE = {"arior-1njchw", "solor-1njchy"}


@dataclass(frozen=True)
class ConfigRef:
    org: str
    path: Path
    has_pe: bool


def list_configs() -> list[ConfigRef]:
    refs = []
    for raw in RAW_DIRS:
        if not raw.is_dir():
            continue
        for d in sorted(raw.iterdir()):
            lab = d / "labels.json"
            if d.is_dir() and lab.exists() and "__MACOSX" not in d.parts:
                refs.append(ConfigRef(d.name, d, bool(json.loads(lab.read_text())["ground_truth"]["has_pe"])))
    return refs


def get_config(org: str) -> ConfigRef:
    for r in list_configs():
        if r.org == org:
            return r
    raise KeyError(org)


def load_labels(ref: ConfigRef) -> dict:
    return json.loads((ref.path / "labels.json").read_text())


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
        for p in labels["injection_plan"][k]:
            out[k].append([(node_id(h["from"]), h["prim"], node_id(h["to"]), h) for h in p["hops"]])
    return out


def splits() -> dict[str, list[str]]:
    orgs = [r.org for r in list_configs()]
    return {
        "train": [o for o in orgs if o not in TEST | LARGE],
        "test": [o for o in orgs if o in TEST],
        "large": [o for o in orgs if o in LARGE],
    }
