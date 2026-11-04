resource "aws_iam_role" "ci_runner" {
  name                 = "taax-zq0zi-ci-runner"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ci_runner__base_readonly" {
  role       = aws_iam_role.ci_runner.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_role_policy_attachment" "ci_runner__ci_assume" {
  role       = aws_iam_role.ci_runner.name
  policy_arn = aws_iam_policy.ci_assume.arn
}

resource "aws_iam_role_policy_attachment" "ci_runner__inj_pol_p2" {
  role       = aws_iam_role.ci_runner.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_role" "citizen_portal_deploy" {
  name                 = "taax-zq0zi-citizen-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/taax-zq0zi-raj.rossi" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_deploy__citizen_portal_ops" {
  role       = aws_iam_role.citizen_portal_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_deploy__citizen_portal_deploy_perms" {
  role       = aws_iam_role.citizen_portal_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_nb_role" {
  name                 = "taax-zq0zi-citizen-portal-nb-role"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "sagemaker.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_nb_role__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_nb_role.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_nb_role__citizen_portal_ops" {
  role       = aws_iam_role.citizen_portal_nb_role.name
  policy_arn = aws_iam_policy.citizen_portal_ops.arn
}

resource "aws_iam_role" "citizen_portal_svc" {
  name                 = "taax-zq0zi-citizen-portal-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_svc__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_svc.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_svc__citizen_portal_ops" {
  role       = aws_iam_role.citizen_portal_svc.name
  policy_arn = aws_iam_policy.citizen_portal_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_svc" {
  name = "taax-zq0zi-citizen-portal-svc"
  role = aws_iam_role.citizen_portal_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "taax-zq0zi-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/taax-zq0zi-adm-wen.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/taax-zq0zi-adm-mei.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "records_deploy" {
  name                 = "taax-zq0zi-records-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/taax-zq0zi-raj.rossi" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_deploy__records_ops" {
  role       = aws_iam_role.records_deploy.name
  policy_arn = aws_iam_policy.records_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_deploy__records_deploy_perms" {
  role       = aws_iam_role.records_deploy.name
  policy_arn = aws_iam_policy.records_deploy_perms.arn
}

resource "aws_iam_role" "records_svc" {
  name                 = "taax-zq0zi-records-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_svc__records_data_rw" {
  role       = aws_iam_role.records_svc.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_svc__records_ops" {
  role       = aws_iam_role.records_svc.name
  policy_arn = aws_iam_policy.records_ops.arn
}

resource "aws_iam_instance_profile" "records_svc" {
  name = "taax-zq0zi-records-svc"
  role = aws_iam_role.records_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "taax-zq0zi-security-audit-role"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:root" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "security_audit_role__security_audit" {
  role       = aws_iam_role.security_audit_role.name
  policy_arn = aws_iam_policy.security_audit.arn
}
