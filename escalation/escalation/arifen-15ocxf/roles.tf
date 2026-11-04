resource "aws_iam_role" "analytics_2_deploy" {
  name                 = "arifen-15ocxf-analytics-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-carol.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "analytics_2_deploy__analytics_2_ops" {
  role       = aws_iam_role.analytics_2_deploy.name
  policy_arn = aws_iam_policy.analytics_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "analytics_2_deploy__analytics_2_deploy_perms" {
  role       = aws_iam_role.analytics_2_deploy.name
  policy_arn = aws_iam_policy.analytics_2_deploy_perms.arn
}

resource "aws_iam_role" "analytics_2_imaging_svc" {
  name                 = "arifen-15ocxf-analytics-2-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_2_imaging_svc__analytics_2_data_rw" {
  role       = aws_iam_role.analytics_2_imaging_svc.name
  policy_arn = aws_iam_policy.analytics_2_data_rw.arn
}

resource "aws_iam_role" "analytics_2_imaging_svc44" {
  name                 = "arifen-15ocxf-analytics-2-imaging-svc44"
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

resource "aws_iam_role_policy_attachment" "analytics_2_imaging_svc44__analytics_2_data_rw" {
  role       = aws_iam_role.analytics_2_imaging_svc44.name
  policy_arn = aws_iam_policy.analytics_2_data_rw.arn
}

resource "aws_iam_role" "analytics_2_svc" {
  name                 = "arifen-15ocxf-analytics-2-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_2_svc__analytics_2_data_rw" {
  role       = aws_iam_role.analytics_2_svc.name
  policy_arn = aws_iam_policy.analytics_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "analytics_2_svc__analytics_2_ops" {
  role       = aws_iam_role.analytics_2_svc.name
  policy_arn = aws_iam_policy.analytics_2_ops.arn
}

resource "aws_iam_instance_profile" "analytics_2_svc" {
  name = "arifen-15ocxf-analytics-2-svc"
  role = aws_iam_role.analytics_2_svc.name
}

resource "aws_iam_role" "analytics_deploy" {
  name                 = "arifen-15ocxf-analytics-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-nina.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-priya.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-ivan.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "analytics_deploy__analytics_ops" {
  role       = aws_iam_role.analytics_deploy.name
  policy_arn = aws_iam_policy.analytics_ops.arn
}

resource "aws_iam_role_policy_attachment" "analytics_deploy__analytics_deploy_perms" {
  role       = aws_iam_role.analytics_deploy.name
  policy_arn = aws_iam_policy.analytics_deploy_perms.arn
}

resource "aws_iam_role" "analytics_ehr_svc" {
  name                 = "arifen-15ocxf-analytics-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_ehr_svc__analytics_data_rw" {
  role       = aws_iam_role.analytics_ehr_svc.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_role" "analytics_ehr_svc32" {
  name                 = "arifen-15ocxf-analytics-ehr-svc32"
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

resource "aws_iam_role_policy_attachment" "analytics_ehr_svc32__analytics_data_rw" {
  role       = aws_iam_role.analytics_ehr_svc32.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_role" "analytics_svc" {
  name                 = "arifen-15ocxf-analytics-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_svc__analytics_data_rw" {
  role       = aws_iam_role.analytics_svc.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "analytics_svc__analytics_ops" {
  role       = aws_iam_role.analytics_svc.name
  policy_arn = aws_iam_policy.analytics_ops.arn
}

resource "aws_iam_instance_profile" "analytics_svc" {
  name = "arifen-15ocxf-analytics-svc"
  role = aws_iam_role.analytics_svc.name
}

resource "aws_iam_role" "billing_2_audit_svc" {
  name                 = "arifen-15ocxf-billing-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "billing_2_audit_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_audit_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "arifen-15ocxf-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-ian.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-erin.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-fay.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_deploy__billing_2_ops" {
  role       = aws_iam_role.billing_2_deploy.name
  policy_arn = aws_iam_policy.billing_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_2_deploy__billing_2_deploy_perms" {
  role       = aws_iam_role.billing_2_deploy.name
  policy_arn = aws_iam_policy.billing_2_deploy_perms.arn
}

resource "aws_iam_role" "billing_2_imaging_svc" {
  name                 = "arifen-15ocxf-billing-2-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "billing_2_imaging_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_imaging_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_svc" {
  name                 = "arifen-15ocxf-billing-2-svc"
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

resource "aws_iam_role_policy_attachment" "billing_2_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_2_svc__billing_2_ops" {
  role       = aws_iam_role.billing_2_svc.name
  policy_arn = aws_iam_policy.billing_2_ops.arn
}

resource "aws_iam_instance_profile" "billing_2_svc" {
  name = "arifen-15ocxf-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_audit_svc" {
  name                 = "arifen-15ocxf-billing-audit-svc"
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

resource "aws_iam_role_policy_attachment" "billing_audit_svc__billing_data_rw" {
  role       = aws_iam_role.billing_audit_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_deploy" {
  name                 = "arifen-15ocxf-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-priya.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-dave.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-zed.ivanov731" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_deploy__billing_ops" {
  role       = aws_iam_role.billing_deploy.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_deploy__billing_deploy_perms" {
  role       = aws_iam_role.billing_deploy.name
  policy_arn = aws_iam_policy.billing_deploy_perms.arn
}

resource "aws_iam_role" "billing_ehr_svc" {
  name                 = "arifen-15ocxf-billing-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "billing_ehr_svc__billing_data_rw" {
  role       = aws_iam_role.billing_ehr_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_reports_svc" {
  name                 = "arifen-15ocxf-billing-reports-svc"
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

resource "aws_iam_role_policy_attachment" "billing_reports_svc__billing_data_rw" {
  role       = aws_iam_role.billing_reports_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_svc" {
  name                 = "arifen-15ocxf-billing-svc"
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

resource "aws_iam_role_policy_attachment" "billing_svc__billing_data_rw" {
  role       = aws_iam_role.billing_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_svc__billing_ops" {
  role       = aws_iam_role.billing_svc.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_instance_profile" "billing_svc" {
  name = "arifen-15ocxf-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "arifen-15ocxf-ci-runner"
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

resource "aws_iam_role" "claims_2_deploy" {
  name                 = "arifen-15ocxf-claims-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-leo.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.novak5250" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-grace.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "claims_2_deploy__claims_2_ops" {
  role       = aws_iam_role.claims_2_deploy.name
  policy_arn = aws_iam_policy.claims_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "claims_2_deploy__claims_2_deploy_perms" {
  role       = aws_iam_role.claims_2_deploy.name
  policy_arn = aws_iam_policy.claims_2_deploy_perms.arn
}

resource "aws_iam_role" "claims_2_imaging_svc" {
  name                 = "arifen-15ocxf-claims-2-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "claims_2_imaging_svc__claims_2_data_rw" {
  role       = aws_iam_role.claims_2_imaging_svc.name
  policy_arn = aws_iam_policy.claims_2_data_rw.arn
}

resource "aws_iam_role" "claims_2_reports_svc" {
  name                 = "arifen-15ocxf-claims-2-reports-svc"
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

resource "aws_iam_role_policy_attachment" "claims_2_reports_svc__claims_2_data_rw" {
  role       = aws_iam_role.claims_2_reports_svc.name
  policy_arn = aws_iam_policy.claims_2_data_rw.arn
}

resource "aws_iam_role" "claims_2_svc" {
  name                 = "arifen-15ocxf-claims-2-svc"
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

resource "aws_iam_role_policy_attachment" "claims_2_svc__claims_2_data_rw" {
  role       = aws_iam_role.claims_2_svc.name
  policy_arn = aws_iam_policy.claims_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "claims_2_svc__claims_2_ops" {
  role       = aws_iam_role.claims_2_svc.name
  policy_arn = aws_iam_policy.claims_2_ops.arn
}

resource "aws_iam_instance_profile" "claims_2_svc" {
  name = "arifen-15ocxf-claims-2-svc"
  role = aws_iam_role.claims_2_svc.name
}

resource "aws_iam_role" "claims_audit_svc" {
  name                 = "arifen-15ocxf-claims-audit-svc"
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

resource "aws_iam_role_policy_attachment" "claims_audit_svc__claims_data_rw" {
  role       = aws_iam_role.claims_audit_svc.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role" "claims_deploy" {
  name                 = "arifen-15ocxf-claims-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-leo.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-amit.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-wen.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-fay.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "claims_deploy__claims_ops" {
  role       = aws_iam_role.claims_deploy.name
  policy_arn = aws_iam_policy.claims_ops.arn
}

resource "aws_iam_role_policy_attachment" "claims_deploy__claims_deploy_perms" {
  role       = aws_iam_role.claims_deploy.name
  policy_arn = aws_iam_policy.claims_deploy_perms.arn
}

resource "aws_iam_role" "claims_phi_svc" {
  name                 = "arifen-15ocxf-claims-phi-svc"
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

resource "aws_iam_role_policy_attachment" "claims_phi_svc__claims_data_rw" {
  role       = aws_iam_role.claims_phi_svc.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role" "claims_stack_role" {
  name                 = "arifen-15ocxf-claims-stack-role"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "cloudformation.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "claims_stack_role__claims_data_rw" {
  role       = aws_iam_role.claims_stack_role.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "claims_stack_role__claims_ops" {
  role       = aws_iam_role.claims_stack_role.name
  policy_arn = aws_iam_policy.claims_ops.arn
}

resource "aws_iam_role" "claims_svc" {
  name                 = "arifen-15ocxf-claims-svc"
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

resource "aws_iam_role_policy_attachment" "claims_svc__claims_data_rw" {
  role       = aws_iam_role.claims_svc.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "claims_svc__claims_ops" {
  role       = aws_iam_role.claims_svc.name
  policy_arn = aws_iam_policy.claims_ops.arn
}

resource "aws_iam_instance_profile" "claims_svc" {
  name = "arifen-15ocxf-claims-svc"
  role = aws_iam_role.claims_svc.name
}

resource "aws_iam_role" "clinical_data_2_deploy" {
  name                 = "arifen-15ocxf-clinical-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-grace.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-frank.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-lena.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-judy.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "clinical_data_2_deploy__clinical_data_2_ops" {
  role       = aws_iam_role.clinical_data_2_deploy.name
  policy_arn = aws_iam_policy.clinical_data_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_2_deploy__clinical_data_2_deploy_perms" {
  role       = aws_iam_role.clinical_data_2_deploy.name
  policy_arn = aws_iam_policy.clinical_data_2_deploy_perms.arn
}

resource "aws_iam_role" "clinical_data_2_ehr_svc" {
  name                 = "arifen-15ocxf-clinical-data-2-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_2_ehr_svc__clinical_data_2_data_rw" {
  role       = aws_iam_role.clinical_data_2_ehr_svc.name
  policy_arn = aws_iam_policy.clinical_data_2_data_rw.arn
}

resource "aws_iam_role" "clinical_data_2_reports_svc" {
  name                 = "arifen-15ocxf-clinical-data-2-reports-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_2_reports_svc__clinical_data_2_data_rw" {
  role       = aws_iam_role.clinical_data_2_reports_svc.name
  policy_arn = aws_iam_policy.clinical_data_2_data_rw.arn
}

resource "aws_iam_role" "clinical_data_2_svc" {
  name                 = "arifen-15ocxf-clinical-data-2-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_2_svc__clinical_data_2_data_rw" {
  role       = aws_iam_role.clinical_data_2_svc.name
  policy_arn = aws_iam_policy.clinical_data_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_2_svc__clinical_data_2_ops" {
  role       = aws_iam_role.clinical_data_2_svc.name
  policy_arn = aws_iam_policy.clinical_data_2_ops.arn
}

resource "aws_iam_instance_profile" "clinical_data_2_svc" {
  name = "arifen-15ocxf-clinical-data-2-svc"
  role = aws_iam_role.clinical_data_2_svc.name
}

resource "aws_iam_role" "clinical_data_audit_svc" {
  name                 = "arifen-15ocxf-clinical-data-audit-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_audit_svc__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_audit_svc.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role" "clinical_data_deploy" {
  name                 = "arifen-15ocxf-clinical-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-karl.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-omar.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-zed.larsen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "clinical_data_deploy__clinical_data_ops" {
  role       = aws_iam_role.clinical_data_deploy.name
  policy_arn = aws_iam_policy.clinical_data_ops.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_deploy__clinical_data_deploy_perms" {
  role       = aws_iam_role.clinical_data_deploy.name
  policy_arn = aws_iam_policy.clinical_data_deploy_perms.arn
}

resource "aws_iam_role" "clinical_data_reports_svc" {
  name                 = "arifen-15ocxf-clinical-data-reports-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_reports_svc__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_reports_svc.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role" "clinical_data_reports_svc46" {
  name                 = "arifen-15ocxf-clinical-data-reports-svc46"
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

resource "aws_iam_role_policy_attachment" "clinical_data_reports_svc46__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_reports_svc46.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role" "clinical_data_stack_role" {
  name                 = "arifen-15ocxf-clinical-data-stack-role"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "cloudformation.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "clinical_data_stack_role__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_stack_role.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_stack_role__clinical_data_ops" {
  role       = aws_iam_role.clinical_data_stack_role.name
  policy_arn = aws_iam_policy.clinical_data_ops.arn
}

resource "aws_iam_role" "clinical_data_svc" {
  name                 = "arifen-15ocxf-clinical-data-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_svc__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_svc.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_svc__clinical_data_ops" {
  role       = aws_iam_role.clinical_data_svc.name
  policy_arn = aws_iam_policy.clinical_data_ops.arn
}

resource "aws_iam_instance_profile" "clinical_data_svc" {
  name = "arifen-15ocxf-clinical-data-svc"
  role = aws_iam_role.clinical_data_svc.name
}

resource "aws_iam_role" "compliance_2_claims_svc" {
  name                 = "arifen-15ocxf-compliance-2-claims-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_2_claims_svc__compliance_2_data_rw" {
  role       = aws_iam_role.compliance_2_claims_svc.name
  policy_arn = aws_iam_policy.compliance_2_data_rw.arn
}

resource "aws_iam_role" "compliance_2_deploy" {
  name                 = "arifen-15ocxf-compliance-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-frank.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-grace.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-chen.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-yara.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "compliance_2_deploy__compliance_2_ops" {
  role       = aws_iam_role.compliance_2_deploy.name
  policy_arn = aws_iam_policy.compliance_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "compliance_2_deploy__compliance_2_deploy_perms" {
  role       = aws_iam_role.compliance_2_deploy.name
  policy_arn = aws_iam_policy.compliance_2_deploy_perms.arn
}

resource "aws_iam_role" "compliance_2_phi_svc" {
  name                 = "arifen-15ocxf-compliance-2-phi-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_2_phi_svc__compliance_2_data_rw" {
  role       = aws_iam_role.compliance_2_phi_svc.name
  policy_arn = aws_iam_policy.compliance_2_data_rw.arn
}

resource "aws_iam_role" "compliance_2_svc" {
  name                 = "arifen-15ocxf-compliance-2-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_2_svc__compliance_2_data_rw" {
  role       = aws_iam_role.compliance_2_svc.name
  policy_arn = aws_iam_policy.compliance_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "compliance_2_svc__compliance_2_ops" {
  role       = aws_iam_role.compliance_2_svc.name
  policy_arn = aws_iam_policy.compliance_2_ops.arn
}

resource "aws_iam_instance_profile" "compliance_2_svc" {
  name = "arifen-15ocxf-compliance-2-svc"
  role = aws_iam_role.compliance_2_svc.name
}

resource "aws_iam_role" "compliance_claims_svc" {
  name                 = "arifen-15ocxf-compliance-claims-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_claims_svc__compliance_data_rw" {
  role       = aws_iam_role.compliance_claims_svc.name
  policy_arn = aws_iam_policy.compliance_data_rw.arn
}

resource "aws_iam_role" "compliance_deploy" {
  name                 = "arifen-15ocxf-compliance-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-jun.dubois243" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-quinn.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "compliance_deploy__compliance_ops" {
  role       = aws_iam_role.compliance_deploy.name
  policy_arn = aws_iam_policy.compliance_ops.arn
}

resource "aws_iam_role_policy_attachment" "compliance_deploy__compliance_deploy_perms" {
  role       = aws_iam_role.compliance_deploy.name
  policy_arn = aws_iam_policy.compliance_deploy_perms.arn
}

resource "aws_iam_role" "compliance_phi_svc" {
  name                 = "arifen-15ocxf-compliance-phi-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_phi_svc__compliance_data_rw" {
  role       = aws_iam_role.compliance_phi_svc.name
  policy_arn = aws_iam_policy.compliance_data_rw.arn
}

resource "aws_iam_role" "compliance_svc" {
  name                 = "arifen-15ocxf-compliance-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_svc__compliance_data_rw" {
  role       = aws_iam_role.compliance_svc.name
  policy_arn = aws_iam_policy.compliance_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "compliance_svc__compliance_ops" {
  role       = aws_iam_role.compliance_svc.name
  policy_arn = aws_iam_policy.compliance_ops.arn
}

resource "aws_iam_instance_profile" "compliance_svc" {
  name = "arifen-15ocxf-compliance-svc"
  role = aws_iam_role.compliance_svc.name
}

resource "aws_iam_role" "imaging_2_deploy" {
  name                 = "arifen-15ocxf-imaging-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-chen.reddy7712" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-omar.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-mei.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "imaging_2_deploy__imaging_2_ops" {
  role       = aws_iam_role.imaging_2_deploy.name
  policy_arn = aws_iam_policy.imaging_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "imaging_2_deploy__imaging_2_deploy_perms" {
  role       = aws_iam_role.imaging_2_deploy.name
  policy_arn = aws_iam_policy.imaging_2_deploy_perms.arn
}

resource "aws_iam_role" "imaging_2_phi_svc" {
  name                 = "arifen-15ocxf-imaging-2-phi-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_2_phi_svc__imaging_2_data_rw" {
  role       = aws_iam_role.imaging_2_phi_svc.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_role" "imaging_2_reports_svc" {
  name                 = "arifen-15ocxf-imaging-2-reports-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_2_reports_svc__imaging_2_data_rw" {
  role       = aws_iam_role.imaging_2_reports_svc.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_role" "imaging_2_svc" {
  name                 = "arifen-15ocxf-imaging-2-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_2_svc__imaging_2_data_rw" {
  role       = aws_iam_role.imaging_2_svc.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "imaging_2_svc__imaging_2_ops" {
  role       = aws_iam_role.imaging_2_svc.name
  policy_arn = aws_iam_policy.imaging_2_ops.arn
}

resource "aws_iam_instance_profile" "imaging_2_svc" {
  name = "arifen-15ocxf-imaging-2-svc"
  role = aws_iam_role.imaging_2_svc.name
}

resource "aws_iam_role" "imaging_deploy" {
  name                 = "arifen-15ocxf-imaging-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-priya.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-dave.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-dave.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "imaging_deploy__imaging_ops" {
  role       = aws_iam_role.imaging_deploy.name
  policy_arn = aws_iam_policy.imaging_ops.arn
}

resource "aws_iam_role_policy_attachment" "imaging_deploy__imaging_deploy_perms" {
  role       = aws_iam_role.imaging_deploy.name
  policy_arn = aws_iam_policy.imaging_deploy_perms.arn
}

resource "aws_iam_role" "imaging_imaging_svc" {
  name                 = "arifen-15ocxf-imaging-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_imaging_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_imaging_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_nb_role" {
  name                 = "arifen-15ocxf-imaging-nb-role"
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

resource "aws_iam_role_policy_attachment" "imaging_nb_role__imaging_data_rw" {
  role       = aws_iam_role.imaging_nb_role.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "imaging_nb_role__imaging_ops" {
  role       = aws_iam_role.imaging_nb_role.name
  policy_arn = aws_iam_policy.imaging_ops.arn
}

resource "aws_iam_role" "imaging_phi_svc" {
  name                 = "arifen-15ocxf-imaging-phi-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_phi_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_phi_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_svc" {
  name                 = "arifen-15ocxf-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "imaging_svc__imaging_ops" {
  role       = aws_iam_role.imaging_svc.name
  policy_arn = aws_iam_policy.imaging_ops.arn
}

resource "aws_iam_instance_profile" "imaging_svc" {
  name = "arifen-15ocxf-imaging-svc"
  role = aws_iam_role.imaging_svc.name
}

resource "aws_iam_role" "inj_trust_edit_r6" {
  name                 = "arifen-15ocxf-inj-trust-edit-r6"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    # no trust principals (unreachable via assume-role)
    ]
  })
}

resource "aws_iam_role" "lab_systems_claims_svc" {
  name                 = "arifen-15ocxf-lab-systems-claims-svc"
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

resource "aws_iam_role_policy_attachment" "lab_systems_claims_svc__lab_systems_data_rw" {
  role       = aws_iam_role.lab_systems_claims_svc.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_role" "lab_systems_deploy" {
  name                 = "arifen-15ocxf-lab-systems-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-tom.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-zed.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-chen.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-chen.novak" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lab_systems_deploy__lab_systems_ops" {
  role       = aws_iam_role.lab_systems_deploy.name
  policy_arn = aws_iam_policy.lab_systems_ops.arn
}

resource "aws_iam_role_policy_attachment" "lab_systems_deploy__lab_systems_deploy_perms" {
  role       = aws_iam_role.lab_systems_deploy.name
  policy_arn = aws_iam_policy.lab_systems_deploy_perms.arn
}

resource "aws_iam_role" "lab_systems_phi_svc" {
  name                 = "arifen-15ocxf-lab-systems-phi-svc"
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

resource "aws_iam_role_policy_attachment" "lab_systems_phi_svc__lab_systems_data_rw" {
  role       = aws_iam_role.lab_systems_phi_svc.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_role" "lab_systems_svc" {
  name                 = "arifen-15ocxf-lab-systems-svc"
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

resource "aws_iam_role_policy_attachment" "lab_systems_svc__lab_systems_data_rw" {
  role       = aws_iam_role.lab_systems_svc.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lab_systems_svc__lab_systems_ops" {
  role       = aws_iam_role.lab_systems_svc.name
  policy_arn = aws_iam_policy.lab_systems_ops.arn
}

resource "aws_iam_instance_profile" "lab_systems_svc" {
  name = "arifen-15ocxf-lab-systems-svc"
  role = aws_iam_role.lab_systems_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "arifen-15ocxf-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-adm-alice.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-adm-leo.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-adm-karl.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "patient_portal_2_audit_svc" {
  name                 = "arifen-15ocxf-patient-portal-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_2_audit_svc__patient_portal_2_data_rw" {
  role       = aws_iam_role.patient_portal_2_audit_svc.name
  policy_arn = aws_iam_policy.patient_portal_2_data_rw.arn
}

resource "aws_iam_role" "patient_portal_2_audit_svc36" {
  name                 = "arifen-15ocxf-patient-portal-2-audit-svc36"
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

resource "aws_iam_role_policy_attachment" "patient_portal_2_audit_svc36__patient_portal_2_data_rw" {
  role       = aws_iam_role.patient_portal_2_audit_svc36.name
  policy_arn = aws_iam_policy.patient_portal_2_data_rw.arn
}

resource "aws_iam_role" "patient_portal_2_deploy" {
  name                 = "arifen-15ocxf-patient-portal-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-sara.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-alice.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "patient_portal_2_deploy__patient_portal_2_ops" {
  role       = aws_iam_role.patient_portal_2_deploy.name
  policy_arn = aws_iam_policy.patient_portal_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "patient_portal_2_deploy__patient_portal_2_deploy_perms" {
  role       = aws_iam_role.patient_portal_2_deploy.name
  policy_arn = aws_iam_policy.patient_portal_2_deploy_perms.arn
}

resource "aws_iam_role" "patient_portal_2_svc" {
  name                 = "arifen-15ocxf-patient-portal-2-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_2_svc__patient_portal_2_data_rw" {
  role       = aws_iam_role.patient_portal_2_svc.name
  policy_arn = aws_iam_policy.patient_portal_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "patient_portal_2_svc__patient_portal_2_ops" {
  role       = aws_iam_role.patient_portal_2_svc.name
  policy_arn = aws_iam_policy.patient_portal_2_ops.arn
}

resource "aws_iam_instance_profile" "patient_portal_2_svc" {
  name = "arifen-15ocxf-patient-portal-2-svc"
  role = aws_iam_role.patient_portal_2_svc.name
}

resource "aws_iam_role" "patient_portal_claims_svc" {
  name                 = "arifen-15ocxf-patient-portal-claims-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_claims_svc__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_claims_svc.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role" "patient_portal_deploy" {
  name                 = "arifen-15ocxf-patient-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-wen.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-dara.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "patient_portal_deploy__patient_portal_ops" {
  role       = aws_iam_role.patient_portal_deploy.name
  policy_arn = aws_iam_policy.patient_portal_ops.arn
}

resource "aws_iam_role_policy_attachment" "patient_portal_deploy__patient_portal_deploy_perms" {
  role       = aws_iam_role.patient_portal_deploy.name
  policy_arn = aws_iam_policy.patient_portal_deploy_perms.arn
}

resource "aws_iam_role" "patient_portal_ehr_svc" {
  name                 = "arifen-15ocxf-patient-portal-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_ehr_svc__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_ehr_svc.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role" "patient_portal_phi_svc" {
  name                 = "arifen-15ocxf-patient-portal-phi-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_phi_svc__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_phi_svc.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role" "patient_portal_svc" {
  name                 = "arifen-15ocxf-patient-portal-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_svc__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_svc.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "patient_portal_svc__patient_portal_ops" {
  role       = aws_iam_role.patient_portal_svc.name
  policy_arn = aws_iam_policy.patient_portal_ops.arn
}

resource "aws_iam_instance_profile" "patient_portal_svc" {
  name = "arifen-15ocxf-patient-portal-svc"
  role = aws_iam_role.patient_portal_svc.name
}

resource "aws_iam_role" "pharmacy_2_audit_svc" {
  name                 = "arifen-15ocxf-pharmacy-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_2_audit_svc__pharmacy_2_data_rw" {
  role       = aws_iam_role.pharmacy_2_audit_svc.name
  policy_arn = aws_iam_policy.pharmacy_2_data_rw.arn
}

resource "aws_iam_role" "pharmacy_2_deploy" {
  name                 = "arifen-15ocxf-pharmacy-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-judy.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "pharmacy_2_deploy__pharmacy_2_ops" {
  role       = aws_iam_role.pharmacy_2_deploy.name
  policy_arn = aws_iam_policy.pharmacy_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "pharmacy_2_deploy__pharmacy_2_deploy_perms" {
  role       = aws_iam_role.pharmacy_2_deploy.name
  policy_arn = aws_iam_policy.pharmacy_2_deploy_perms.arn
}

resource "aws_iam_role" "pharmacy_2_imaging_svc" {
  name                 = "arifen-15ocxf-pharmacy-2-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_2_imaging_svc__pharmacy_2_data_rw" {
  role       = aws_iam_role.pharmacy_2_imaging_svc.name
  policy_arn = aws_iam_policy.pharmacy_2_data_rw.arn
}

resource "aws_iam_role" "pharmacy_2_svc" {
  name                 = "arifen-15ocxf-pharmacy-2-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_2_svc__pharmacy_2_data_rw" {
  role       = aws_iam_role.pharmacy_2_svc.name
  policy_arn = aws_iam_policy.pharmacy_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "pharmacy_2_svc__pharmacy_2_ops" {
  role       = aws_iam_role.pharmacy_2_svc.name
  policy_arn = aws_iam_policy.pharmacy_2_ops.arn
}

resource "aws_iam_instance_profile" "pharmacy_2_svc" {
  name = "arifen-15ocxf-pharmacy-2-svc"
  role = aws_iam_role.pharmacy_2_svc.name
}

resource "aws_iam_role" "pharmacy_audit_svc" {
  name                 = "arifen-15ocxf-pharmacy-audit-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_audit_svc__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_audit_svc.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role" "pharmacy_audit_svc27" {
  name                 = "arifen-15ocxf-pharmacy-audit-svc27"
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

resource "aws_iam_role_policy_attachment" "pharmacy_audit_svc27__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_audit_svc27.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role" "pharmacy_deploy" {
  name                 = "arifen-15ocxf-pharmacy-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-hana.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-judy.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-yara.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "pharmacy_deploy__pharmacy_ops" {
  role       = aws_iam_role.pharmacy_deploy.name
  policy_arn = aws_iam_policy.pharmacy_ops.arn
}

resource "aws_iam_role_policy_attachment" "pharmacy_deploy__pharmacy_deploy_perms" {
  role       = aws_iam_role.pharmacy_deploy.name
  policy_arn = aws_iam_policy.pharmacy_deploy_perms.arn
}

resource "aws_iam_role" "pharmacy_svc" {
  name                 = "arifen-15ocxf-pharmacy-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_svc__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_svc.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "pharmacy_svc__pharmacy_ops" {
  role       = aws_iam_role.pharmacy_svc.name
  policy_arn = aws_iam_policy.pharmacy_ops.arn
}

resource "aws_iam_instance_profile" "pharmacy_svc" {
  name = "arifen-15ocxf-pharmacy-svc"
  role = aws_iam_role.pharmacy_svc.name
}

resource "aws_iam_role" "research_2_deploy" {
  name                 = "arifen-15ocxf-research-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-quinn.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-mei.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-leo.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-lena.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "research_2_deploy__research_2_ops" {
  role       = aws_iam_role.research_2_deploy.name
  policy_arn = aws_iam_policy.research_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "research_2_deploy__research_2_deploy_perms" {
  role       = aws_iam_role.research_2_deploy.name
  policy_arn = aws_iam_policy.research_2_deploy_perms.arn
}

resource "aws_iam_role" "research_2_ehr_svc" {
  name                 = "arifen-15ocxf-research-2-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "research_2_ehr_svc__research_2_data_rw" {
  role       = aws_iam_role.research_2_ehr_svc.name
  policy_arn = aws_iam_policy.research_2_data_rw.arn
}

resource "aws_iam_role" "research_2_ehr_svc41" {
  name                 = "arifen-15ocxf-research-2-ehr-svc41"
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

resource "aws_iam_role_policy_attachment" "research_2_ehr_svc41__research_2_data_rw" {
  role       = aws_iam_role.research_2_ehr_svc41.name
  policy_arn = aws_iam_policy.research_2_data_rw.arn
}

resource "aws_iam_role" "research_2_svc" {
  name                 = "arifen-15ocxf-research-2-svc"
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

resource "aws_iam_role_policy_attachment" "research_2_svc__research_2_data_rw" {
  role       = aws_iam_role.research_2_svc.name
  policy_arn = aws_iam_policy.research_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "research_2_svc__research_2_ops" {
  role       = aws_iam_role.research_2_svc.name
  policy_arn = aws_iam_policy.research_2_ops.arn
}

resource "aws_iam_instance_profile" "research_2_svc" {
  name = "arifen-15ocxf-research-2-svc"
  role = aws_iam_role.research_2_svc.name
}

resource "aws_iam_role" "research_claims_svc" {
  name                 = "arifen-15ocxf-research-claims-svc"
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

resource "aws_iam_role_policy_attachment" "research_claims_svc__research_data_rw" {
  role       = aws_iam_role.research_claims_svc.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_role" "research_deploy" {
  name                 = "arifen-15ocxf-research-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-erin.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "research_deploy__research_ops" {
  role       = aws_iam_role.research_deploy.name
  policy_arn = aws_iam_policy.research_ops.arn
}

resource "aws_iam_role_policy_attachment" "research_deploy__research_deploy_perms" {
  role       = aws_iam_role.research_deploy.name
  policy_arn = aws_iam_policy.research_deploy_perms.arn
}

resource "aws_iam_role" "research_ehr_svc" {
  name                 = "arifen-15ocxf-research-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "research_ehr_svc__research_data_rw" {
  role       = aws_iam_role.research_ehr_svc.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_role" "research_nb_role" {
  name                 = "arifen-15ocxf-research-nb-role"
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

resource "aws_iam_role_policy_attachment" "research_nb_role__research_data_rw" {
  role       = aws_iam_role.research_nb_role.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "research_nb_role__research_ops" {
  role       = aws_iam_role.research_nb_role.name
  policy_arn = aws_iam_policy.research_ops.arn
}

resource "aws_iam_role" "research_svc" {
  name                 = "arifen-15ocxf-research-svc"
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

resource "aws_iam_role_policy_attachment" "research_svc__research_data_rw" {
  role       = aws_iam_role.research_svc.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "research_svc__research_ops" {
  role       = aws_iam_role.research_svc.name
  policy_arn = aws_iam_policy.research_ops.arn
}

resource "aws_iam_instance_profile" "research_svc" {
  name = "arifen-15ocxf-research-svc"
  role = aws_iam_role.research_svc.name
}

resource "aws_iam_role" "scheduling_2_deploy" {
  name                 = "arifen-15ocxf-scheduling-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-zed.ivanov" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "scheduling_2_deploy__scheduling_2_ops" {
  role       = aws_iam_role.scheduling_2_deploy.name
  policy_arn = aws_iam_policy.scheduling_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "scheduling_2_deploy__scheduling_2_deploy_perms" {
  role       = aws_iam_role.scheduling_2_deploy.name
  policy_arn = aws_iam_policy.scheduling_2_deploy_perms.arn
}

resource "aws_iam_role" "scheduling_2_ehr_svc" {
  name                 = "arifen-15ocxf-scheduling-2-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_2_ehr_svc__scheduling_2_data_rw" {
  role       = aws_iam_role.scheduling_2_ehr_svc.name
  policy_arn = aws_iam_policy.scheduling_2_data_rw.arn
}

resource "aws_iam_role" "scheduling_2_phi_svc" {
  name                 = "arifen-15ocxf-scheduling-2-phi-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_2_phi_svc__scheduling_2_data_rw" {
  role       = aws_iam_role.scheduling_2_phi_svc.name
  policy_arn = aws_iam_policy.scheduling_2_data_rw.arn
}

resource "aws_iam_role" "scheduling_2_svc" {
  name                 = "arifen-15ocxf-scheduling-2-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_2_svc__scheduling_2_data_rw" {
  role       = aws_iam_role.scheduling_2_svc.name
  policy_arn = aws_iam_policy.scheduling_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "scheduling_2_svc__scheduling_2_ops" {
  role       = aws_iam_role.scheduling_2_svc.name
  policy_arn = aws_iam_policy.scheduling_2_ops.arn
}

resource "aws_iam_instance_profile" "scheduling_2_svc" {
  name = "arifen-15ocxf-scheduling-2-svc"
  role = aws_iam_role.scheduling_2_svc.name
}

resource "aws_iam_role" "scheduling_deploy" {
  name                 = "arifen-15ocxf-scheduling-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-erin.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-karl.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-sara.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "scheduling_deploy__scheduling_ops" {
  role       = aws_iam_role.scheduling_deploy.name
  policy_arn = aws_iam_policy.scheduling_ops.arn
}

resource "aws_iam_role_policy_attachment" "scheduling_deploy__scheduling_deploy_perms" {
  role       = aws_iam_role.scheduling_deploy.name
  policy_arn = aws_iam_policy.scheduling_deploy_perms.arn
}

resource "aws_iam_role" "scheduling_imaging_svc" {
  name                 = "arifen-15ocxf-scheduling-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_imaging_svc__scheduling_data_rw" {
  role       = aws_iam_role.scheduling_imaging_svc.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_role" "scheduling_imaging_svc31" {
  name                 = "arifen-15ocxf-scheduling-imaging-svc31"
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

resource "aws_iam_role_policy_attachment" "scheduling_imaging_svc31__scheduling_data_rw" {
  role       = aws_iam_role.scheduling_imaging_svc31.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_role" "scheduling_nb_role" {
  name                 = "arifen-15ocxf-scheduling-nb-role"
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

resource "aws_iam_role_policy_attachment" "scheduling_nb_role__scheduling_data_rw" {
  role       = aws_iam_role.scheduling_nb_role.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "scheduling_nb_role__scheduling_ops" {
  role       = aws_iam_role.scheduling_nb_role.name
  policy_arn = aws_iam_policy.scheduling_ops.arn
}

resource "aws_iam_role" "scheduling_svc" {
  name                 = "arifen-15ocxf-scheduling-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_svc__scheduling_data_rw" {
  role       = aws_iam_role.scheduling_svc.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "scheduling_svc__scheduling_ops" {
  role       = aws_iam_role.scheduling_svc.name
  policy_arn = aws_iam_policy.scheduling_ops.arn
}

resource "aws_iam_instance_profile" "scheduling_svc" {
  name = "arifen-15ocxf-scheduling-svc"
  role = aws_iam_role.scheduling_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "arifen-15ocxf-security-audit-role"
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

resource "aws_iam_role" "telehealth_2_deploy" {
  name                 = "arifen-15ocxf-telehealth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-lena.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-mike.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "telehealth_2_deploy__telehealth_2_ops" {
  role       = aws_iam_role.telehealth_2_deploy.name
  policy_arn = aws_iam_policy.telehealth_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "telehealth_2_deploy__telehealth_2_deploy_perms" {
  role       = aws_iam_role.telehealth_2_deploy.name
  policy_arn = aws_iam_policy.telehealth_2_deploy_perms.arn
}

resource "aws_iam_role" "telehealth_2_ehr_svc" {
  name                 = "arifen-15ocxf-telehealth-2-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_2_ehr_svc__telehealth_2_data_rw" {
  role       = aws_iam_role.telehealth_2_ehr_svc.name
  policy_arn = aws_iam_policy.telehealth_2_data_rw.arn
}

resource "aws_iam_role" "telehealth_2_phi_svc" {
  name                 = "arifen-15ocxf-telehealth-2-phi-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_2_phi_svc__telehealth_2_data_rw" {
  role       = aws_iam_role.telehealth_2_phi_svc.name
  policy_arn = aws_iam_policy.telehealth_2_data_rw.arn
}

resource "aws_iam_role" "telehealth_2_svc" {
  name                 = "arifen-15ocxf-telehealth-2-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_2_svc__telehealth_2_data_rw" {
  role       = aws_iam_role.telehealth_2_svc.name
  policy_arn = aws_iam_policy.telehealth_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "telehealth_2_svc__telehealth_2_ops" {
  role       = aws_iam_role.telehealth_2_svc.name
  policy_arn = aws_iam_policy.telehealth_2_ops.arn
}

resource "aws_iam_instance_profile" "telehealth_2_svc" {
  name = "arifen-15ocxf-telehealth-2-svc"
  role = aws_iam_role.telehealth_2_svc.name
}

resource "aws_iam_role" "telehealth_audit_svc" {
  name                 = "arifen-15ocxf-telehealth-audit-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_audit_svc__telehealth_data_rw" {
  role       = aws_iam_role.telehealth_audit_svc.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_role" "telehealth_audit_svc28" {
  name                 = "arifen-15ocxf-telehealth-audit-svc28"
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

resource "aws_iam_role_policy_attachment" "telehealth_audit_svc28__telehealth_data_rw" {
  role       = aws_iam_role.telehealth_audit_svc28.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_role" "telehealth_deploy" {
  name                 = "arifen-15ocxf-telehealth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/arifen-15ocxf-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-amit.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-karl.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-kia.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/arifen-15ocxf-priya.larsen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "telehealth_deploy__telehealth_ops" {
  role       = aws_iam_role.telehealth_deploy.name
  policy_arn = aws_iam_policy.telehealth_ops.arn
}

resource "aws_iam_role_policy_attachment" "telehealth_deploy__telehealth_deploy_perms" {
  role       = aws_iam_role.telehealth_deploy.name
  policy_arn = aws_iam_policy.telehealth_deploy_perms.arn
}

resource "aws_iam_role" "telehealth_svc" {
  name                 = "arifen-15ocxf-telehealth-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_svc__telehealth_data_rw" {
  role       = aws_iam_role.telehealth_svc.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "telehealth_svc__telehealth_ops" {
  role       = aws_iam_role.telehealth_svc.name
  policy_arn = aws_iam_policy.telehealth_ops.arn
}

resource "aws_iam_instance_profile" "telehealth_svc" {
  name = "arifen-15ocxf-telehealth-svc"
  role = aws_iam_role.telehealth_svc.name
}
