import importlib

import pytest


@pytest.mark.parametrize("mod", ["iampe.data", "iampe.parser", "iampe.graph", "iampe.checker",
                                 "iampe.env", "iampe.agents"])
def test_import(mod):
    importlib.import_module(mod)
