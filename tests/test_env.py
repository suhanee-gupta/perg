import env


def test_load_dataset_config():
    e = env.load_config("arifen-15ocxf")
    assert e.untrusted == "user:ext-raj.singh"
    assert e.target == env.ADMIN
    assert len(e.entity_types) == 426 and len(e.relations) == 509
