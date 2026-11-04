resource "aws_iam_role" "ci_runner" {
  name                 = "zenax-zq111-ci-runner"
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

resource "aws_iam_role" "citizen_portal_deploy" {
  name                 = "zenax-zq111-citizen-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-lena.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-vik.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-kia.mehta" }
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

resource "aws_iam_role" "citizen_portal_records_svc" {
  name                 = "zenax-zq111-citizen-portal-records-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_records_svc__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_records_svc.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_records_svc4" {
  name                 = "zenax-zq111-citizen-portal-records-svc4"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_records_svc4__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_records_svc4.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_svc" {
  name                 = "zenax-zq111-citizen-portal-svc"
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
  name = "zenax-zq111-citizen-portal-svc"
  role = aws_iam_role.citizen_portal_svc.name
}

resource "aws_iam_role" "gis_deploy" {
  name                 = "zenax-zq111-gis-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-eli.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-bob.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-vik.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-uma.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_deploy__gis_ops" {
  role       = aws_iam_role.gis_deploy.name
  policy_arn = aws_iam_policy.gis_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_deploy__gis_deploy_perms" {
  role       = aws_iam_role.gis_deploy.name
  policy_arn = aws_iam_policy.gis_deploy_perms.arn
}

resource "aws_iam_role" "gis_public_data_svc" {
  name                 = "zenax-zq111-gis-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "gis_public_data_svc__gis_data_rw" {
  role       = aws_iam_role.gis_public_data_svc.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_role" "gis_public_data_svc7" {
  name                 = "zenax-zq111-gis-public-data-svc7"
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

resource "aws_iam_role_policy_attachment" "gis_public_data_svc7__gis_data_rw" {
  role       = aws_iam_role.gis_public_data_svc7.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_role" "gis_svc" {
  name                 = "zenax-zq111-gis-svc"
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

resource "aws_iam_role_policy_attachment" "gis_svc__gis_data_rw" {
  role       = aws_iam_role.gis_svc.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_svc__gis_ops" {
  role       = aws_iam_role.gis_svc.name
  policy_arn = aws_iam_policy.gis_ops.arn
}

resource "aws_iam_instance_profile" "gis_svc" {
  name = "zenax-zq111-gis-svc"
  role = aws_iam_role.gis_svc.name
}

resource "aws_iam_role" "inj_ec2_exec_r3" {
  name                 = "zenax-zq111-inj-ec2-exec-r3"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_ec2_exec_r3__inj_legacy_p6" {
  role       = aws_iam_role.inj_ec2_exec_r3.name
  policy_arn = aws_iam_policy.inj_legacy_p6.arn
}

resource "aws_iam_role_policy_attachment" "inj_ec2_exec_r3__inj_pol_p7" {
  role       = aws_iam_role.inj_ec2_exec_r3.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_instance_profile" "inj_ec2_exec_r3" {
  name = "zenax-zq111-inj-ec2-exec-r3"
  role = aws_iam_role.inj_ec2_exec_r3.name
}

resource "aws_iam_role" "licensing_audit_svc" {
  name                 = "zenax-zq111-licensing-audit-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_audit_svc__licensing_data_rw" {
  role       = aws_iam_role.licensing_audit_svc.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_role" "licensing_backups_svc" {
  name                 = "zenax-zq111-licensing-backups-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_backups_svc__licensing_data_rw" {
  role       = aws_iam_role.licensing_backups_svc.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_role" "licensing_deploy" {
  name                 = "zenax-zq111-licensing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/zenax-zq111-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-tom.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-chen.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-judy.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-erin.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_deploy__licensing_ops" {
  role       = aws_iam_role.licensing_deploy.name
  policy_arn = aws_iam_policy.licensing_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_deploy__licensing_deploy_perms" {
  role       = aws_iam_role.licensing_deploy.name
  policy_arn = aws_iam_policy.licensing_deploy_perms.arn
}

resource "aws_iam_role" "licensing_svc" {
  name                 = "zenax-zq111-licensing-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_svc__licensing_data_rw" {
  role       = aws_iam_role.licensing_svc.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_svc__licensing_ops" {
  role       = aws_iam_role.licensing_svc.name
  policy_arn = aws_iam_policy.licensing_ops.arn
}

resource "aws_iam_instance_profile" "licensing_svc" {
  name = "zenax-zq111-licensing-svc"
  role = aws_iam_role.licensing_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "zenax-zq111-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-adm-kia.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-adm-raj.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-adm-kia.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "records_backups_svc" {
  name                 = "zenax-zq111-records-backups-svc"
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

resource "aws_iam_role_policy_attachment" "records_backups_svc__records_data_rw" {
  role       = aws_iam_role.records_backups_svc.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role" "records_backups_svc5" {
  name                 = "zenax-zq111-records-backups-svc5"
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

resource "aws_iam_role_policy_attachment" "records_backups_svc5__records_data_rw" {
  role       = aws_iam_role.records_backups_svc5.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role" "records_deploy" {
  name                 = "zenax-zq111-records-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-quinn.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-omar.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-amit.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/zenax-zq111-noor.miller" }
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
  name                 = "zenax-zq111-records-svc"
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
  name = "zenax-zq111-records-svc"
  role = aws_iam_role.records_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "zenax-zq111-security-audit-role"
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
