import json

import env
from iampe.parser.policy import match_action, match_resource, parse_statements


def test_policy_matching_and_conditions():
    assert match_action("iam:Put*", "iam:PutUserPolicy") and match_action("IAM:putuserpolicy", "iam:PutUserPolicy")
    assert match_resource("arn:aws:iam::1:user/a-*", "arn:aws:iam::1:user/a-b")
    assert not match_resource("arn:aws:iam::1:user/a-*", "arn:aws:iam::1:role/a-b")
    doc = {"Statement": [
        {"Effect": "Allow", "Action": "x:A", "Resource": "*", "Condition": {"IpAddress": {"aws:SourceIp": "10.0.0.0/8"}}},
        {"Effect": "Allow", "Action": "x:A", "Resource": "*", "Condition": {"DateGreaterThan": {"aws:TokenIssueTime": "2020"}}},
        {"Effect": "Allow", "Action": "x:A", "Resource": "*", "Condition": {"StringEquals": {"foo:Bar": "x"}}},
        {"Effect": "Deny", "Action": "x:A", "Resource": "*", "Condition": {"StringEquals": {"foo:Bar": "x"}}},
    ]}
    assert [s.applies for s in parse_statements(doc, {})] == [False, True, False, True]


def _perms(e, entity):
    return {str(p) for p in e.assignments.get(entity, [])}


def test_arifen_matches_team_structure_and_drops_decoys():
    mine = env.load_config("arifen-15ocxf")
    team = env.load_config(env.DATA_DIR / "arifen-15ocxf.json")
    assert set(mine.entity_types) == set(team.entity_types)
    assert set(mine.relations) == set(team.relations)
    assert mine.untrusted == team.untrusted
    # labelled decoys: deny in a separate policy, deny in the same policy, blocking condition
    assert "iam:AddUserToGroup@group:inj-grp-g3" not in _perms(mine, "policy:inj-pol-p4")
    assert "iam:UpdateAssumeRolePolicy@role:inj-trust-edit-r6" not in _perms(mine, "policy:inj-pol-p7")
    assert "iam:PutUserPolicy@user:ext-raj.singh" not in _perms(mine, "policy:inj-pol-p8")
    assert "iam:AttachGroupPolicy@group:contractors" in _perms(mine, "policy:inj-pol-p1")


def test_reachability_matches_labels_on_small_configs():
    for org, has_pe in [("taax-zq0zi", False), ("kasol-zq0qg", True), ("zenax-zq111", False)]:
        assert env.load_config(org).is_reachable() == has_pe, org


def test_converted_root_is_valid_json():
    from iampe.data.index import get_config
    from iampe.parser.to_tac import convert
    root = convert(get_config("taax-zq0zi").path, env.action_specs())
    json.dumps(root)
    assert root["target"] == "*@*" and root["untrusted"] == "user:ext-nina.dubois"
