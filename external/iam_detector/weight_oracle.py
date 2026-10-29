"""Action -> PE category -> danger weight mapping (SPEC.md §4).

Lower weight = more dangerous = easier to exploit, so shortest path = most dangerous path.
"""

from __future__ import annotations

from .types import PECategory

WEIGHTS: dict[PECategory, float] = {
    PECategory.CREDENTIAL_TAKEOVER: 1.0,
    PECategory.PERMISSION_REQUEST: 2.0,
    PECategory.CODE_EXECUTION: 3.0,
    PECategory.PERMISSION_INHERITANCE: 4.0,
    PECategory.PERMISSION_DELEGATION: 5.0,
    PECategory.UNKNOWN: 10.0,
}

_CT = PECategory.CREDENTIAL_TAKEOVER
_PR = PECategory.PERMISSION_REQUEST
_CE = PECategory.CODE_EXECUTION
_PI = PECategory.PERMISSION_INHERITANCE
_PD = PECategory.PERMISSION_DELEGATION

# SPEC.md §4.2 — the built-in action table.
ACTION_MAP: dict[str, PECategory] = {
    # Credential Takeover (1.0)
    "iam:CreateAccessKey": _CT,
    "iam:CreateLoginProfile": _CT,
    "iam:UpdateLoginProfile": _CT,
    "iam:CreateServiceSpecificCredential": _CT,
    "iam:ResetServiceSpecificCredential": _CT,
    "iam:DeactivateMFADevice": _CT,
    "iam:DeleteVirtualMFADevice": _CT,
    # Permission Request (2.0)
    "iam:AttachUserPolicy": _PR,
    "iam:AttachRolePolicy": _PR,
    "iam:AttachGroupPolicy": _PR,
    "iam:PutUserPolicy": _PR,
    "iam:PutRolePolicy": _PR,
    "iam:PutGroupPolicy": _PR,
    "iam:CreatePolicyVersion": _PR,
    "iam:SetDefaultPolicyVersion": _PR,
    "iam:PutUserPermissionsBoundary": _PR,
    "iam:PutRolePermissionsBoundary": _PR,
    "iam:DeleteUserPermissionsBoundary": _PR,
    "iam:DeleteRolePermissionsBoundary": _PR,
    "iam:DetachUserPolicy": _PR,
    "iam:DetachRolePolicy": _PR,
    "iam:DetachGroupPolicy": _PR,
    "iam:DeleteUserPolicy": _PR,
    "iam:DeleteRolePolicy": _PR,
    "iam:DeleteGroupPolicy": _PR,
    # Code Execution (3.0)
    "lambda:UpdateFunctionCode": _CE,
    "lambda:UpdateFunctionConfiguration": _CE,
    "lambda:InvokeFunction": _CE,
    "ssm:SendCommand": _CE,
    "ssm:StartSession": _CE,
    "ec2-instance-connect:SendSSHPublicKey": _CE,
    "ecs:RegisterTaskDefinition": _CE,
    "ecs:UpdateService": _CE,
    "codebuild:UpdateProject": _CE,
    "codebuild:StartBuild": _CE,
    "glue:UpdateJob": _CE,
    "sagemaker:CreateNotebookInstance": _CE,
    "sagemaker:UpdateNotebookInstance": _CE,
    "datapipeline:PutPipelineDefinition": _CE,
    "codestar:CreateProject": _CE,
    "cloud9:CreateEnvironmentEC2": _CE,
    # Permission Inheritance (4.0)
    "sts:AssumeRole": _PI,
    "sts:AssumeRoleWithSAML": _PI,
    "sts:AssumeRoleWithWebIdentity": _PI,
    "iam:AddUserToGroup": _PI,
    "iam:UpdateAssumeRolePolicy": _PI,
    "iam:CreateGroup": _PI,
    # Permission Delegation (5.0)
    "iam:PassRole": _PD,
    "lambda:CreateFunction": _PD,
    "ec2:RunInstances": _PD,
    "cloudformation:CreateStack": _PD,
    "cloudformation:UpdateStack": _PD,
    "glue:CreateDevEndpoint": _PD,
    "datapipeline:CreatePipeline": _PD,
    "codebuild:CreateProject": _PD,
    "sagemaker:CreateTrainingJob": _PD,
    "ecs:CreateService": _PD,
}

_CODE_EXEC_PREFIXES = frozenset(
    {"lambda", "ssm", "ecs", "codebuild", "glue", "sagemaker", "datapipeline", "cloud9", "codestar"}
)


def classify(action: str, required_actions: list[str] | None = None) -> PECategory:
    """Infer the PE category of an edge (SPEC.md §4.3)."""
    required_actions = required_actions or []

    # 1. Exact match.
    if action in ACTION_MAP:
        return ACTION_MAP[action]

    # 2. Any edge that needs iam:PassRole is a delegation.
    if "iam:PassRole" in required_actions:
        return PECategory.PERMISSION_DELEGATION

    # 3. Compute-service prefix heuristic.
    prefix = action.split(":", 1)[0]
    if prefix in _CODE_EXEC_PREFIXES:
        return PECategory.CODE_EXECUTION

    # 4. IAM substring heuristics.
    if prefix == "iam":
        if "Policy" in action or "Permission" in action:
            return PECategory.PERMISSION_REQUEST
        if "AccessKey" in action or "LoginProfile" in action or "MFA" in action:
            return PECategory.CREDENTIAL_TAKEOVER
        if "Group" in action or "Role" in action:
            return PECategory.PERMISSION_INHERITANCE

    # 5. STS is always inheritance.
    if prefix == "sts":
        return PECategory.PERMISSION_INHERITANCE

    # 6. Give up.
    return PECategory.UNKNOWN


def weight_for(category: PECategory) -> float:
    return WEIGHTS[category]
