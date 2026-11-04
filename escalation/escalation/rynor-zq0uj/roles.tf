resource "aws_iam_role" "billing_audit_svc" {
  name                 = "rynor-zq0uj-billing-audit-svc"
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
  name                 = "rynor-zq0uj-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-hana.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-wen.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-mei.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-kia.reddy" }
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
  name                 = "rynor-zq0uj-billing-ehr-svc"
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

resource "aws_iam_role" "billing_svc" {
  name                 = "rynor-zq0uj-billing-svc"
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
  name = "rynor-zq0uj-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "rynor-zq0uj-ci-runner"
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

resource "aws_iam_role" "clinical_data_audit_svc" {
  name                 = "rynor-zq0uj-clinical-data-audit-svc"
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
  name                 = "rynor-zq0uj-clinical-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-raj.larsen" }
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
  name                 = "rynor-zq0uj-clinical-data-glue-role"
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

resource "aws_iam_role" "clinical_data_reports_svc" {
  name                 = "rynor-zq0uj-clinical-data-reports-svc"
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

resource "aws_iam_role" "clinical_data_svc" {
  name                 = "rynor-zq0uj-clinical-data-svc"
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
  name = "rynor-zq0uj-clinical-data-svc"
  role = aws_iam_role.clinical_data_svc.name
}

resource "aws_iam_role" "imaging_audit_svc" {
  name                 = "rynor-zq0uj-imaging-audit-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_audit_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_audit_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_deploy" {
  name                 = "rynor-zq0uj-imaging-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-dave.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-mike.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-jun.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-bela.khan" }
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

resource "aws_iam_role" "imaging_reports_svc" {
  name                 = "rynor-zq0uj-imaging-reports-svc"
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

resource "aws_iam_role_policy_attachment" "imaging_reports_svc__imaging_data_rw" {
  role       = aws_iam_role.imaging_reports_svc.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_role" "imaging_svc" {
  name                 = "rynor-zq0uj-imaging-svc"
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
  name = "rynor-zq0uj-imaging-svc"
  role = aws_iam_role.imaging_svc.name
}

resource "aws_iam_role" "inj_assume_r1" {
  name                 = "rynor-zq0uj-inj-assume-r1"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-ext-mei.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role" "inj_assume_r2" {
  name                 = "rynor-zq0uj-inj-assume-r2"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/rynor-zq0uj-inj-assume-r1" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_assume_r2__inj_pol_p4" {
  role       = aws_iam_role.inj_assume_r2.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_role" "inj_trust_edit_r3" {
  name                 = "rynor-zq0uj-inj-trust-edit-r3"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/rynor-zq0uj-inj-assume-r2" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_trust_edit_r3__inj_legacy_p5" {
  role       = aws_iam_role.inj_trust_edit_r3.name
  policy_arn = aws_iam_policy.inj_legacy_p5.arn
}

resource "aws_iam_role_policy_attachment" "inj_trust_edit_r3__inj_pol_p6" {
  role       = aws_iam_role.inj_trust_edit_r3.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_role" "org_admin" {
  name                 = "rynor-zq0uj-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-adm-yara.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-adm-ian.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "patient_portal_audit_svc" {
  name                 = "rynor-zq0uj-patient-portal-audit-svc"
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

resource "aws_iam_role" "patient_portal_deploy" {
  name                 = "rynor-zq0uj-patient-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/rynor-zq0uj-eli.gupta" }
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
  name                 = "rynor-zq0uj-patient-portal-ehr-svc"
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

resource "aws_iam_role" "patient_portal_stack_role" {
  name                 = "rynor-zq0uj-patient-portal-stack-role"
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

resource "aws_iam_role_policy_attachment" "patient_portal_stack_role__patient_portal_data_rw" {
  role       = aws_iam_role.patient_portal_stack_role.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "patient_portal_stack_role__patient_portal_ops" {
  role       = aws_iam_role.patient_portal_stack_role.name
  policy_arn = aws_iam_policy.patient_portal_ops.arn
}

resource "aws_iam_role" "patient_portal_svc" {
  name                 = "rynor-zq0uj-patient-portal-svc"
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
  name = "rynor-zq0uj-patient-portal-svc"
  role = aws_iam_role.patient_portal_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "rynor-zq0uj-security-audit-role"
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
