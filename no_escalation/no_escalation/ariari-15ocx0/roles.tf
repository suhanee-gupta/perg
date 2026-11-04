resource "aws_iam_role" "analytics_audit_svc" {
  name                 = "ariari-15ocx0-analytics-audit-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_audit_svc__analytics_data_rw" {
  role       = aws_iam_role.analytics_audit_svc.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_role" "analytics_deploy" {
  name                 = "ariari-15ocx0-analytics-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-vik.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-xia.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-mike.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-wen.ali" }
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

resource "aws_iam_role" "analytics_reports_svc" {
  name                 = "ariari-15ocx0-analytics-reports-svc"
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

resource "aws_iam_role_policy_attachment" "analytics_reports_svc__analytics_data_rw" {
  role       = aws_iam_role.analytics_reports_svc.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_role" "analytics_svc" {
  name                 = "ariari-15ocx0-analytics-svc"
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
  name = "ariari-15ocx0-analytics-svc"
  role = aws_iam_role.analytics_svc.name
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "ariari-15ocx0-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-sara.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-dara.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-heidi.nguyen" }
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
  name                 = "ariari-15ocx0-billing-2-imaging-svc"
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

resource "aws_iam_role" "billing_2_imaging_svc31" {
  name                 = "ariari-15ocx0-billing-2-imaging-svc31"
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

resource "aws_iam_role_policy_attachment" "billing_2_imaging_svc31__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_imaging_svc31.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_svc" {
  name                 = "ariari-15ocx0-billing-2-svc"
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
  name = "ariari-15ocx0-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_deploy" {
  name                 = "ariari-15ocx0-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-judy.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-ian.cohen" }
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

resource "aws_iam_role" "billing_phi_svc" {
  name                 = "ariari-15ocx0-billing-phi-svc"
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

resource "aws_iam_role_policy_attachment" "billing_phi_svc__billing_data_rw" {
  role       = aws_iam_role.billing_phi_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_reports_svc" {
  name                 = "ariari-15ocx0-billing-reports-svc"
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

resource "aws_iam_role" "billing_reports_svc36" {
  name                 = "ariari-15ocx0-billing-reports-svc36"
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

resource "aws_iam_role_policy_attachment" "billing_reports_svc36__billing_data_rw" {
  role       = aws_iam_role.billing_reports_svc36.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_svc" {
  name                 = "ariari-15ocx0-billing-svc"
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
  name = "ariari-15ocx0-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "ariari-15ocx0-ci-runner"
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

resource "aws_iam_role" "claims_deploy" {
  name                 = "ariari-15ocx0-claims-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-judy.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-quinn.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-zed.patel" }
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

resource "aws_iam_role" "claims_imaging_svc" {
  name                 = "ariari-15ocx0-claims-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "claims_imaging_svc__claims_data_rw" {
  role       = aws_iam_role.claims_imaging_svc.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role" "claims_imaging_svc24" {
  name                 = "ariari-15ocx0-claims-imaging-svc24"
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

resource "aws_iam_role_policy_attachment" "claims_imaging_svc24__claims_data_rw" {
  role       = aws_iam_role.claims_imaging_svc24.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_role" "claims_svc" {
  name                 = "ariari-15ocx0-claims-svc"
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
  name = "ariari-15ocx0-claims-svc"
  role = aws_iam_role.claims_svc.name
}

resource "aws_iam_role" "clinical_data_2_deploy" {
  name                 = "ariari-15ocx0-clinical-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-leo.wong" }
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
  name                 = "ariari-15ocx0-clinical-data-2-ehr-svc"
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
  name                 = "ariari-15ocx0-clinical-data-2-reports-svc"
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
  name                 = "ariari-15ocx0-clinical-data-2-svc"
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
  name = "ariari-15ocx0-clinical-data-2-svc"
  role = aws_iam_role.clinical_data_2_svc.name
}

resource "aws_iam_role" "clinical_data_audit_svc" {
  name                 = "ariari-15ocx0-clinical-data-audit-svc"
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

resource "aws_iam_role" "clinical_data_audit_svc34" {
  name                 = "ariari-15ocx0-clinical-data-audit-svc34"
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

resource "aws_iam_role_policy_attachment" "clinical_data_audit_svc34__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_audit_svc34.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role" "clinical_data_deploy" {
  name                 = "ariari-15ocx0-clinical-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-tom.khan6390" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-hana.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.singh" }
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

resource "aws_iam_role" "clinical_data_glue_role" {
  name                 = "ariari-15ocx0-clinical-data-glue-role"
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

resource "aws_iam_role_policy_attachment" "clinical_data_glue_role__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_glue_role.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "clinical_data_glue_role__clinical_data_ops" {
  role       = aws_iam_role.clinical_data_glue_role.name
  policy_arn = aws_iam_policy.clinical_data_ops.arn
}

resource "aws_iam_role" "clinical_data_imaging_svc" {
  name                 = "ariari-15ocx0-clinical-data-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "clinical_data_imaging_svc__clinical_data_data_rw" {
  role       = aws_iam_role.clinical_data_imaging_svc.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_role" "clinical_data_svc" {
  name                 = "ariari-15ocx0-clinical-data-svc"
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
  name = "ariari-15ocx0-clinical-data-svc"
  role = aws_iam_role.clinical_data_svc.name
}

resource "aws_iam_role" "compliance_claims_svc" {
  name                 = "ariari-15ocx0-compliance-claims-svc"
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
  name                 = "ariari-15ocx0-compliance-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-dara.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-dara.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-ivan.brown" }
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

resource "aws_iam_role" "compliance_ehr_svc" {
  name                 = "ariari-15ocx0-compliance-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "compliance_ehr_svc__compliance_data_rw" {
  role       = aws_iam_role.compliance_ehr_svc.name
  policy_arn = aws_iam_policy.compliance_data_rw.arn
}

resource "aws_iam_role" "compliance_svc" {
  name                 = "ariari-15ocx0-compliance-svc"
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
  name = "ariari-15ocx0-compliance-svc"
  role = aws_iam_role.compliance_svc.name
}

resource "aws_iam_role" "imaging_2_deploy" {
  name                 = "ariari-15ocx0-imaging-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.nguyen" }
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

resource "aws_iam_role" "imaging_2_imaging_svc" {
  name                 = "ariari-15ocx0-imaging-2-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_2_imaging_svc__imaging_2_data_rw" {
  role       = aws_iam_role.imaging_2_imaging_svc.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_role" "imaging_2_imaging_svc32" {
  name                 = "ariari-15ocx0-imaging-2-imaging-svc32"
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

resource "aws_iam_role_policy_attachment" "imaging_2_imaging_svc32__imaging_2_data_rw" {
  role       = aws_iam_role.imaging_2_imaging_svc32.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_role" "imaging_2_svc" {
  name                 = "ariari-15ocx0-imaging-2-svc"
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
  name = "ariari-15ocx0-imaging-2-svc"
  role = aws_iam_role.imaging_2_svc.name
}

resource "aws_iam_role" "imaging_claims_svc" {
  name                 = "ariari-15ocx0-imaging-claims-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_claims_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_claims_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_deploy" {
  name                 = "ariari-15ocx0-imaging-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-amit.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-fay.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-raj.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-uma.nguyen" }
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
  name                 = "ariari-15ocx0-imaging-imaging-svc"
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

resource "aws_iam_role" "imaging_imaging_svc37" {
  name                 = "ariari-15ocx0-imaging-imaging-svc37"
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

resource "aws_iam_role_policy_attachment" "imaging_imaging_svc37__imaging_data_rw" {
  role       = aws_iam_role.imaging_imaging_svc37.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_svc" {
  name                 = "ariari-15ocx0-imaging-svc"
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
  name = "ariari-15ocx0-imaging-svc"
  role = aws_iam_role.imaging_svc.name
}

resource "aws_iam_role" "lab_systems_deploy" {
  name                 = "ariari-15ocx0-lab-systems-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-kia.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-vik.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-ivan.larsen" }
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

resource "aws_iam_role" "lab_systems_imaging_svc" {
  name                 = "ariari-15ocx0-lab-systems-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "lab_systems_imaging_svc__lab_systems_data_rw" {
  role       = aws_iam_role.lab_systems_imaging_svc.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_role" "lab_systems_reports_svc" {
  name                 = "ariari-15ocx0-lab-systems-reports-svc"
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

resource "aws_iam_role_policy_attachment" "lab_systems_reports_svc__lab_systems_data_rw" {
  role       = aws_iam_role.lab_systems_reports_svc.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_role" "lab_systems_svc" {
  name                 = "ariari-15ocx0-lab-systems-svc"
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
  name = "ariari-15ocx0-lab-systems-svc"
  role = aws_iam_role.lab_systems_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "ariari-15ocx0-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-adm-uma.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-adm-noor.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-adm-judy.silva" }
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
  name                 = "ariari-15ocx0-patient-portal-2-audit-svc"
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

resource "aws_iam_role" "patient_portal_2_deploy" {
  name                 = "ariari-15ocx0-patient-portal-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-tom.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-leo.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-sara.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-fay.muller" }
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

resource "aws_iam_role" "patient_portal_2_ehr_svc" {
  name                 = "ariari-15ocx0-patient-portal-2-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_2_ehr_svc__patient_portal_2_data_rw" {
  role       = aws_iam_role.patient_portal_2_ehr_svc.name
  policy_arn = aws_iam_policy.patient_portal_2_data_rw.arn
}

resource "aws_iam_role" "patient_portal_2_svc" {
  name                 = "ariari-15ocx0-patient-portal-2-svc"
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
  name = "ariari-15ocx0-patient-portal-2-svc"
  role = aws_iam_role.patient_portal_2_svc.name
}

resource "aws_iam_role" "patient_portal_audit_svc" {
  name                 = "ariari-15ocx0-patient-portal-audit-svc"
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

resource "aws_iam_role_policy_attachment" "patient_portal_audit_svc__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_audit_svc.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role" "patient_portal_audit_svc35" {
  name                 = "ariari-15ocx0-patient-portal-audit-svc35"
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

resource "aws_iam_role_policy_attachment" "patient_portal_audit_svc35__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_audit_svc35.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role" "patient_portal_claims_svc" {
  name                 = "ariari-15ocx0-patient-portal-claims-svc"
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
  name                 = "ariari-15ocx0-patient-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-mike.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bela.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-nina.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-grace.davis" }
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

resource "aws_iam_role" "patient_portal_svc" {
  name                 = "ariari-15ocx0-patient-portal-svc"
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
  name = "ariari-15ocx0-patient-portal-svc"
  role = aws_iam_role.patient_portal_svc.name
}

resource "aws_iam_role" "pharmacy_2_deploy" {
  name                 = "ariari-15ocx0-pharmacy-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-noor.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-hana.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-jun.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-bob.silva" }
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
  name                 = "ariari-15ocx0-pharmacy-2-imaging-svc"
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

resource "aws_iam_role" "pharmacy_2_reports_svc" {
  name                 = "ariari-15ocx0-pharmacy-2-reports-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_2_reports_svc__pharmacy_2_data_rw" {
  role       = aws_iam_role.pharmacy_2_reports_svc.name
  policy_arn = aws_iam_policy.pharmacy_2_data_rw.arn
}

resource "aws_iam_role" "pharmacy_2_svc" {
  name                 = "ariari-15ocx0-pharmacy-2-svc"
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
  name = "ariari-15ocx0-pharmacy-2-svc"
  role = aws_iam_role.pharmacy_2_svc.name
}

resource "aws_iam_role" "pharmacy_deploy" {
  name                 = "ariari-15ocx0-pharmacy-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-nina.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-gus.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-erin.mehta" }
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

resource "aws_iam_role" "pharmacy_ehr_svc" {
  name                 = "ariari-15ocx0-pharmacy-ehr-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_ehr_svc__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_ehr_svc.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role" "pharmacy_nb_role" {
  name                 = "ariari-15ocx0-pharmacy-nb-role"
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

resource "aws_iam_role_policy_attachment" "pharmacy_nb_role__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_nb_role.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "pharmacy_nb_role__pharmacy_ops" {
  role       = aws_iam_role.pharmacy_nb_role.name
  policy_arn = aws_iam_policy.pharmacy_ops.arn
}

resource "aws_iam_role" "pharmacy_phi_svc" {
  name                 = "ariari-15ocx0-pharmacy-phi-svc"
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

resource "aws_iam_role_policy_attachment" "pharmacy_phi_svc__pharmacy_data_rw" {
  role       = aws_iam_role.pharmacy_phi_svc.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_role" "pharmacy_svc" {
  name                 = "ariari-15ocx0-pharmacy-svc"
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
  name = "ariari-15ocx0-pharmacy-svc"
  role = aws_iam_role.pharmacy_svc.name
}

resource "aws_iam_role" "research_claims_svc" {
  name                 = "ariari-15ocx0-research-claims-svc"
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
  name                 = "ariari-15ocx0-research-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-quinn.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-yara.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-hana.chen" }
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

resource "aws_iam_role" "research_nb_role" {
  name                 = "ariari-15ocx0-research-nb-role"
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

resource "aws_iam_role" "research_phi_svc" {
  name                 = "ariari-15ocx0-research-phi-svc"
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

resource "aws_iam_role_policy_attachment" "research_phi_svc__research_data_rw" {
  role       = aws_iam_role.research_phi_svc.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_role" "research_svc" {
  name                 = "ariari-15ocx0-research-svc"
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
  name = "ariari-15ocx0-research-svc"
  role = aws_iam_role.research_svc.name
}

resource "aws_iam_role" "scheduling_audit_svc" {
  name                 = "ariari-15ocx0-scheduling-audit-svc"
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

resource "aws_iam_role_policy_attachment" "scheduling_audit_svc__scheduling_data_rw" {
  role       = aws_iam_role.scheduling_audit_svc.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_role" "scheduling_deploy" {
  name                 = "ariari-15ocx0-scheduling-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-zed.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-noor.ivanov" }
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
  name                 = "ariari-15ocx0-scheduling-imaging-svc"
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

resource "aws_iam_role" "scheduling_svc" {
  name                 = "ariari-15ocx0-scheduling-svc"
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
  name = "ariari-15ocx0-scheduling-svc"
  role = aws_iam_role.scheduling_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "ariari-15ocx0-security-audit-role"
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

resource "aws_iam_role" "telehealth_deploy" {
  name                 = "ariari-15ocx0-telehealth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/ariari-15ocx0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-mei.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/ariari-15ocx0-kia.muller" }
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

resource "aws_iam_role" "telehealth_imaging_svc" {
  name                 = "ariari-15ocx0-telehealth-imaging-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_imaging_svc__telehealth_data_rw" {
  role       = aws_iam_role.telehealth_imaging_svc.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_role" "telehealth_phi_svc" {
  name                 = "ariari-15ocx0-telehealth-phi-svc"
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

resource "aws_iam_role_policy_attachment" "telehealth_phi_svc__telehealth_data_rw" {
  role       = aws_iam_role.telehealth_phi_svc.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_role" "telehealth_svc" {
  name                 = "ariari-15ocx0-telehealth-svc"
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
  name = "ariari-15ocx0-telehealth-svc"
  role = aws_iam_role.telehealth_svc.name
}
