resource "aws_iam_role" "admissions_datasets_svc" {
  name                 = "kasol-zq0qg-admissions-datasets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "admissions_datasets_svc__admissions_data_rw" {
  role       = aws_iam_role.admissions_datasets_svc.name
  policy_arn = aws_iam_policy.admissions_data_rw.arn
}

resource "aws_iam_role" "admissions_deploy" {
  name                 = "kasol-zq0qg-admissions-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-vik.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-bob.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-carol.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-uma.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "admissions_deploy__admissions_ops" {
  role       = aws_iam_role.admissions_deploy.name
  policy_arn = aws_iam_policy.admissions_ops.arn
}

resource "aws_iam_role_policy_attachment" "admissions_deploy__admissions_deploy_perms" {
  role       = aws_iam_role.admissions_deploy.name
  policy_arn = aws_iam_policy.admissions_deploy_perms.arn
}

resource "aws_iam_role" "admissions_glue_role" {
  name                 = "kasol-zq0qg-admissions-glue-role"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "glue.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "admissions_glue_role__admissions_data_rw" {
  role       = aws_iam_role.admissions_glue_role.name
  policy_arn = aws_iam_policy.admissions_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "admissions_glue_role__admissions_ops" {
  role       = aws_iam_role.admissions_glue_role.name
  policy_arn = aws_iam_policy.admissions_ops.arn
}

resource "aws_iam_role" "admissions_reports_svc" {
  name                 = "kasol-zq0qg-admissions-reports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "admissions_reports_svc__admissions_data_rw" {
  role       = aws_iam_role.admissions_reports_svc.name
  policy_arn = aws_iam_policy.admissions_data_rw.arn
}

resource "aws_iam_role" "admissions_svc" {
  name                 = "kasol-zq0qg-admissions-svc"
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

resource "aws_iam_role_policy_attachment" "admissions_svc__admissions_data_rw" {
  role       = aws_iam_role.admissions_svc.name
  policy_arn = aws_iam_policy.admissions_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "admissions_svc__admissions_ops" {
  role       = aws_iam_role.admissions_svc.name
  policy_arn = aws_iam_policy.admissions_ops.arn
}

resource "aws_iam_instance_profile" "admissions_svc" {
  name = "kasol-zq0qg-admissions-svc"
  role = aws_iam_role.admissions_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "kasol-zq0qg-ci-runner"
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

resource "aws_iam_role" "inj_assume_r2" {
  name                 = "kasol-zq0qg-inj-assume-r2"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-adm-priya.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role" "inj_assume_r3" {
  name                 = "kasol-zq0qg-inj-assume-r3"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-adm-priya.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role" "library_datasets_svc" {
  name                 = "kasol-zq0qg-library-datasets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "library_datasets_svc__library_data_rw" {
  role       = aws_iam_role.library_datasets_svc.name
  policy_arn = aws_iam_policy.library_data_rw.arn
}

resource "aws_iam_role" "library_deploy" {
  name                 = "kasol-zq0qg-library-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/kasol-zq0qg-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-mei.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-mei.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-yara.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-leo.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "library_deploy__library_ops" {
  role       = aws_iam_role.library_deploy.name
  policy_arn = aws_iam_policy.library_ops.arn
}

resource "aws_iam_role_policy_attachment" "library_deploy__library_deploy_perms" {
  role       = aws_iam_role.library_deploy.name
  policy_arn = aws_iam_policy.library_deploy_perms.arn
}

resource "aws_iam_role" "library_svc" {
  name                 = "kasol-zq0qg-library-svc"
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

resource "aws_iam_role_policy_attachment" "library_svc__library_data_rw" {
  role       = aws_iam_role.library_svc.name
  policy_arn = aws_iam_policy.library_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "library_svc__library_ops" {
  role       = aws_iam_role.library_svc.name
  policy_arn = aws_iam_policy.library_ops.arn
}

resource "aws_iam_instance_profile" "library_svc" {
  name = "kasol-zq0qg-library-svc"
  role = aws_iam_role.library_svc.name
}

resource "aws_iam_role" "lms_deploy" {
  name                 = "kasol-zq0qg-lms-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/kasol-zq0qg-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-yara.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lms_deploy__lms_ops" {
  role       = aws_iam_role.lms_deploy.name
  policy_arn = aws_iam_policy.lms_ops.arn
}

resource "aws_iam_role_policy_attachment" "lms_deploy__lms_deploy_perms" {
  role       = aws_iam_role.lms_deploy.name
  policy_arn = aws_iam_policy.lms_deploy_perms.arn
}

resource "aws_iam_role" "lms_reports_svc" {
  name                 = "kasol-zq0qg-lms-reports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "lms_reports_svc__lms_data_rw" {
  role       = aws_iam_role.lms_reports_svc.name
  policy_arn = aws_iam_policy.lms_data_rw.arn
}

resource "aws_iam_role" "lms_reports_svc5" {
  name                 = "kasol-zq0qg-lms-reports-svc5"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "lms_reports_svc5__lms_data_rw" {
  role       = aws_iam_role.lms_reports_svc5.name
  policy_arn = aws_iam_policy.lms_data_rw.arn
}

resource "aws_iam_role" "lms_svc" {
  name                 = "kasol-zq0qg-lms-svc"
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

resource "aws_iam_role_policy_attachment" "lms_svc__lms_data_rw" {
  role       = aws_iam_role.lms_svc.name
  policy_arn = aws_iam_policy.lms_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lms_svc__lms_ops" {
  role       = aws_iam_role.lms_svc.name
  policy_arn = aws_iam_policy.lms_ops.arn
}

resource "aws_iam_instance_profile" "lms_svc" {
  name = "kasol-zq0qg-lms-svc"
  role = aws_iam_role.lms_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "kasol-zq0qg-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-adm-priya.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-adm-bela.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "research_computing_deploy" {
  name                 = "kasol-zq0qg-research-computing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-leo.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-noor.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-erin.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/kasol-zq0qg-raj.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "research_computing_deploy__research_computing_ops" {
  role       = aws_iam_role.research_computing_deploy.name
  policy_arn = aws_iam_policy.research_computing_ops.arn
}

resource "aws_iam_role_policy_attachment" "research_computing_deploy__research_computing_deploy_perms" {
  role       = aws_iam_role.research_computing_deploy.name
  policy_arn = aws_iam_policy.research_computing_deploy_perms.arn
}

resource "aws_iam_role" "research_computing_reports_svc" {
  name                 = "kasol-zq0qg-research-computing-reports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
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

resource "aws_iam_role_policy_attachment" "research_computing_reports_svc__research_computing_data_rw" {
  role       = aws_iam_role.research_computing_reports_svc.name
  policy_arn = aws_iam_policy.research_computing_data_rw.arn
}

resource "aws_iam_role" "research_computing_svc" {
  name                 = "kasol-zq0qg-research-computing-svc"
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

resource "aws_iam_role_policy_attachment" "research_computing_svc__research_computing_data_rw" {
  role       = aws_iam_role.research_computing_svc.name
  policy_arn = aws_iam_policy.research_computing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "research_computing_svc__research_computing_ops" {
  role       = aws_iam_role.research_computing_svc.name
  policy_arn = aws_iam_policy.research_computing_ops.arn
}

resource "aws_iam_instance_profile" "research_computing_svc" {
  name = "kasol-zq0qg-research-computing-svc"
  role = aws_iam_role.research_computing_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "kasol-zq0qg-security-audit-role"
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
