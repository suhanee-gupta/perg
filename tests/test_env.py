import env


def test_load_dataset_config():
    e = env.load_config("linost-zq0as")
    assert e.untrusted == "user:ext-bela.brown"
    assert e.target == env.ADMIN
    assert len(e.entity_types) == 98 and len(e.relations) == 106
