"""Terraform (.tf) -> flat list of resources, with jsonencode() bodies turned into Python objects.

python-hcl2 v8 keeps HCL quoting on keys/strings ('"\\"x\\""') and returns expressions such as
jsonencode({...}) as raw '${...}' strings, so this module unquotes and parses those expressions.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

import hcl2

from iampe.data.index import CACHE_DIR

CACHE_VERSION = 1


def _unq(s):
    if isinstance(s, str) and len(s) >= 2 and s[0] == '"' and s[-1] == '"':
        return s[1:-1]
    return s


def _clean(v):
    """Recursively strip hcl2 quoting and jsonencode wrappers."""
    if isinstance(v, dict):
        return {_unq(k): _clean(x) for k, x in v.items() if k != "__is_block__"}
    if isinstance(v, list):
        return [_clean(x) for x in v]
    if isinstance(v, str):
        if v.startswith("${jsonencode(") and v.endswith(")}"):
            return parse_hcl_expr(v[len("${jsonencode("):-2])
        return _unq(v)
    return v


# ---------------------------------------------------------------- HCL expression parser

_TOKEN = re.compile(r"""\s*(?:(?P<str>"(?:[^"\\]|\\.)*")|(?P<num>-?\d+(?:\.\d+)?)|(?P<ident>[A-Za-z_][\w\-.:]*)|(?P<punct>[{}\[\]=,:]))""")


def _tokenize(s: str):
    pos, out = 0, []
    while pos < len(s):
        if s[pos:].strip() == "":
            break
        m = _TOKEN.match(s, pos)
        if not m:
            raise ValueError(f"cannot tokenize HCL expr at {pos}: {s[pos:pos + 40]!r}")
        kind = m.lastgroup
        out.append((kind, m.group(kind)))
        pos = m.end()
    return out


def parse_hcl_expr(s: str):
    """Parse an HCL object/list/literal expression (the argument of jsonencode) into Python."""
    toks = _tokenize(s)
    i = 0

    def peek():
        return toks[i] if i < len(toks) else (None, None)

    def take(expected=None):
        nonlocal i
        t = toks[i]
        if expected is not None and t[1] != expected:
            raise ValueError(f"expected {expected!r}, got {t!r}")
        i += 1
        return t

    def value():
        kind, tok = peek()
        if tok == "{":
            take("{")
            obj = {}
            while peek()[1] != "}":
                k_kind, k = take()
                key = json.loads(k) if k_kind == "str" else k
                take("=") if peek()[1] == "=" else take(":")
                obj[key] = value()
                if peek()[1] == ",":
                    take(",")
            take("}")
            return obj
        if tok == "[":
            take("[")
            arr = []
            while peek()[1] != "]":
                arr.append(value())
                if peek()[1] == ",":
                    take(",")
            take("]")
            return arr
        take()
        if kind == "str":
            return tok[1:-1].replace('\\"', '"').replace("\\\\", "\\")
        if kind == "num":
            return float(tok) if "." in tok else int(tok)
        if tok in ("true", "false"):
            return tok == "true"
        if tok == "null":
            return None
        return "${" + tok + "}"  # bare reference, e.g. aws_iam_role.x.arn

    v = value()
    if i != len(toks):
        raise ValueError(f"trailing tokens in HCL expr: {toks[i:i + 5]}")
    return v


# ---------------------------------------------------------------- directory loading

def load_tf_dir(path: Path, use_cache: bool = True) -> list[dict]:
    """Return [{'type': 'aws_iam_user', 'name': 'x', 'attrs': {...}}, ...] for every resource/data block."""
    path = Path(path)
    cache = CACHE_DIR / f"{path.name}.parsed.json"
    if use_cache and cache.exists():
        d = json.loads(cache.read_text())
        if d.get("version") == CACHE_VERSION:
            return d["blocks"]
    blocks = []
    for f in sorted(path.glob("*.tf")):
        with open(f) as fh:
            doc = hcl2.load(fh)
        for kind in ("resource", "data"):
            for entry in doc.get(kind, []):
                for rtype, named in entry.items():
                    for rname, attrs in named.items():
                        blocks.append({"kind": kind, "type": _unq(rtype), "name": _unq(rname),
                                       "attrs": _clean(attrs)})
    if use_cache:
        CACHE_DIR.mkdir(parents=True, exist_ok=True)
        cache.write_text(json.dumps({"version": CACHE_VERSION, "blocks": blocks}))
    return blocks
