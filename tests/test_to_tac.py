import json

import pytest

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


def test_reachability_matches_labels_on_small_configs():
    # team relax() is cheap below ~100 entities; the generator's own config.json gets dyntri/kalum wrong
    for org, has_pe in [("iv00u", True), ("iv13r", False), ("dyntri-100q3n", False), ("kalum-100q3l", False)]:
        assert env.load_config(org).is_reachable() == has_pe, org


def test_converted_root_is_valid_json():
    from iampe.data.index import get_config
    from iampe.parser.to_tac import convert
    root = convert(get_config("iv00u").path, env.action_specs())
    json.dumps(root)
    assert root["target"] == "*@*" and root["untrusted"] == "user:privesc1-user"
