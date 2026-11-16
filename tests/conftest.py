"""Tests that run gradient updates (even one tiny step) are marked `training` and skipped unless
`--run-training` is given: training only runs on the GPU machine, never on the development laptop."""
import pytest


def pytest_addoption(parser):
    parser.addoption("--run-training", action="store_true", help="also run tests that train a model")


def pytest_configure(config):
    config.addinivalue_line("markers", "training: runs gradient updates; needs --run-training")


def pytest_collection_modifyitems(config, items):
    if config.getoption("--run-training"):
        return
    skip = pytest.mark.skip(reason="trains a model; run with --run-training (GPU machine)")
    for item in items:
        if "training" in item.keywords:
            item.add_marker(skip)
