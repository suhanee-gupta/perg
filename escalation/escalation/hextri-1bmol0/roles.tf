resource "aws_iam_role" "audit_2_deploy" {
  name                 = "hextri-1bmol0-audit-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mike.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_2_deploy__audit_2_ops" {
  role       = aws_iam_role.audit_2_deploy.name
  policy_arn = aws_iam_policy.audit_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_2_deploy__audit_2_deploy_perms" {
  role       = aws_iam_role.audit_2_deploy.name
  policy_arn = aws_iam_policy.audit_2_deploy_perms.arn
}

resource "aws_iam_role" "audit_2_public_data_svc" {
  name                 = "hextri-1bmol0-audit-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "audit_2_public_data_svc__audit_2_data_rw" {
  role       = aws_iam_role.audit_2_public_data_svc.name
  policy_arn = aws_iam_policy.audit_2_data_rw.arn
}

resource "aws_iam_role" "audit_2_public_data_svc182" {
  name                 = "hextri-1bmol0-audit-2-public-data-svc182"
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

resource "aws_iam_role_policy_attachment" "audit_2_public_data_svc182__audit_2_data_rw" {
  role       = aws_iam_role.audit_2_public_data_svc182.name
  policy_arn = aws_iam_policy.audit_2_data_rw.arn
}

resource "aws_iam_role" "audit_2_records_svc" {
  name                 = "hextri-1bmol0-audit-2-records-svc"
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

resource "aws_iam_role_policy_attachment" "audit_2_records_svc__audit_2_data_rw" {
  role       = aws_iam_role.audit_2_records_svc.name
  policy_arn = aws_iam_policy.audit_2_data_rw.arn
}

resource "aws_iam_role" "audit_2_svc" {
  name                 = "hextri-1bmol0-audit-2-svc"
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

resource "aws_iam_role_policy_attachment" "audit_2_svc__audit_2_data_rw" {
  role       = aws_iam_role.audit_2_svc.name
  policy_arn = aws_iam_policy.audit_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_2_svc__audit_2_ops" {
  role       = aws_iam_role.audit_2_svc.name
  policy_arn = aws_iam_policy.audit_2_ops.arn
}

resource "aws_iam_instance_profile" "audit_2_svc" {
  name = "hextri-1bmol0-audit-2-svc"
  role = aws_iam_role.audit_2_svc.name
}

resource "aws_iam_role" "audit_3_backups_svc" {
  name                 = "hextri-1bmol0-audit-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "audit_3_backups_svc__audit_3_data_rw" {
  role       = aws_iam_role.audit_3_backups_svc.name
  policy_arn = aws_iam_policy.audit_3_data_rw.arn
}

resource "aws_iam_role" "audit_3_backups_svc114" {
  name                 = "hextri-1bmol0-audit-3-backups-svc114"
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

resource "aws_iam_role_policy_attachment" "audit_3_backups_svc114__audit_3_data_rw" {
  role       = aws_iam_role.audit_3_backups_svc114.name
  policy_arn = aws_iam_policy.audit_3_data_rw.arn
}

resource "aws_iam_role" "audit_3_backups_svc194" {
  name                 = "hextri-1bmol0-audit-3-backups-svc194"
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

resource "aws_iam_role_policy_attachment" "audit_3_backups_svc194__audit_3_data_rw" {
  role       = aws_iam_role.audit_3_backups_svc194.name
  policy_arn = aws_iam_policy.audit_3_data_rw.arn
}

resource "aws_iam_role" "audit_3_deploy" {
  name                 = "hextri-1bmol0-audit-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_3_deploy__audit_3_ops" {
  role       = aws_iam_role.audit_3_deploy.name
  policy_arn = aws_iam_policy.audit_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_3_deploy__audit_3_deploy_perms" {
  role       = aws_iam_role.audit_3_deploy.name
  policy_arn = aws_iam_policy.audit_3_deploy_perms.arn
}

resource "aws_iam_role" "audit_3_svc" {
  name                 = "hextri-1bmol0-audit-3-svc"
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

resource "aws_iam_role_policy_attachment" "audit_3_svc__audit_3_data_rw" {
  role       = aws_iam_role.audit_3_svc.name
  policy_arn = aws_iam_policy.audit_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_3_svc__audit_3_ops" {
  role       = aws_iam_role.audit_3_svc.name
  policy_arn = aws_iam_policy.audit_3_ops.arn
}

resource "aws_iam_instance_profile" "audit_3_svc" {
  name = "hextri-1bmol0-audit-3-svc"
  role = aws_iam_role.audit_3_svc.name
}

resource "aws_iam_role" "audit_4_backups_svc" {
  name                 = "hextri-1bmol0-audit-4-backups-svc"
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

resource "aws_iam_role_policy_attachment" "audit_4_backups_svc__audit_4_data_rw" {
  role       = aws_iam_role.audit_4_backups_svc.name
  policy_arn = aws_iam_policy.audit_4_data_rw.arn
}

resource "aws_iam_role" "audit_4_deploy" {
  name                 = "hextri-1bmol0-audit-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_4_deploy__audit_4_ops" {
  role       = aws_iam_role.audit_4_deploy.name
  policy_arn = aws_iam_policy.audit_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_4_deploy__audit_4_deploy_perms" {
  role       = aws_iam_role.audit_4_deploy.name
  policy_arn = aws_iam_policy.audit_4_deploy_perms.arn
}

resource "aws_iam_role" "audit_4_filings_svc" {
  name                 = "hextri-1bmol0-audit-4-filings-svc"
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

resource "aws_iam_role_policy_attachment" "audit_4_filings_svc__audit_4_data_rw" {
  role       = aws_iam_role.audit_4_filings_svc.name
  policy_arn = aws_iam_policy.audit_4_data_rw.arn
}

resource "aws_iam_role" "audit_4_records_svc" {
  name                 = "hextri-1bmol0-audit-4-records-svc"
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

resource "aws_iam_role_policy_attachment" "audit_4_records_svc__audit_4_data_rw" {
  role       = aws_iam_role.audit_4_records_svc.name
  policy_arn = aws_iam_policy.audit_4_data_rw.arn
}

resource "aws_iam_role" "audit_4_svc" {
  name                 = "hextri-1bmol0-audit-4-svc"
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

resource "aws_iam_role_policy_attachment" "audit_4_svc__audit_4_data_rw" {
  role       = aws_iam_role.audit_4_svc.name
  policy_arn = aws_iam_policy.audit_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_4_svc__audit_4_ops" {
  role       = aws_iam_role.audit_4_svc.name
  policy_arn = aws_iam_policy.audit_4_ops.arn
}

resource "aws_iam_instance_profile" "audit_4_svc" {
  name = "hextri-1bmol0-audit-4-svc"
  role = aws_iam_role.audit_4_svc.name
}

resource "aws_iam_role" "audit_5_deploy" {
  name                 = "hextri-1bmol0-audit-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_5_deploy__audit_5_ops" {
  role       = aws_iam_role.audit_5_deploy.name
  policy_arn = aws_iam_policy.audit_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_5_deploy__audit_5_deploy_perms" {
  role       = aws_iam_role.audit_5_deploy.name
  policy_arn = aws_iam_policy.audit_5_deploy_perms.arn
}

resource "aws_iam_role" "audit_5_public_data_svc" {
  name                 = "hextri-1bmol0-audit-5-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "audit_5_public_data_svc__audit_5_data_rw" {
  role       = aws_iam_role.audit_5_public_data_svc.name
  policy_arn = aws_iam_policy.audit_5_data_rw.arn
}

resource "aws_iam_role" "audit_5_records_svc" {
  name                 = "hextri-1bmol0-audit-5-records-svc"
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

resource "aws_iam_role_policy_attachment" "audit_5_records_svc__audit_5_data_rw" {
  role       = aws_iam_role.audit_5_records_svc.name
  policy_arn = aws_iam_policy.audit_5_data_rw.arn
}

resource "aws_iam_role" "audit_5_records_svc218" {
  name                 = "hextri-1bmol0-audit-5-records-svc218"
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

resource "aws_iam_role_policy_attachment" "audit_5_records_svc218__audit_5_data_rw" {
  role       = aws_iam_role.audit_5_records_svc218.name
  policy_arn = aws_iam_policy.audit_5_data_rw.arn
}

resource "aws_iam_role" "audit_5_svc" {
  name                 = "hextri-1bmol0-audit-5-svc"
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

resource "aws_iam_role_policy_attachment" "audit_5_svc__audit_5_data_rw" {
  role       = aws_iam_role.audit_5_svc.name
  policy_arn = aws_iam_policy.audit_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_5_svc__audit_5_ops" {
  role       = aws_iam_role.audit_5_svc.name
  policy_arn = aws_iam_policy.audit_5_ops.arn
}

resource "aws_iam_instance_profile" "audit_5_svc" {
  name = "hextri-1bmol0-audit-5-svc"
  role = aws_iam_role.audit_5_svc.name
}

resource "aws_iam_role" "audit_6_audit_svc" {
  name                 = "hextri-1bmol0-audit-6-audit-svc"
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

resource "aws_iam_role_policy_attachment" "audit_6_audit_svc__audit_6_data_rw" {
  role       = aws_iam_role.audit_6_audit_svc.name
  policy_arn = aws_iam_policy.audit_6_data_rw.arn
}

resource "aws_iam_role" "audit_6_audit_svc230" {
  name                 = "hextri-1bmol0-audit-6-audit-svc230"
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

resource "aws_iam_role_policy_attachment" "audit_6_audit_svc230__audit_6_data_rw" {
  role       = aws_iam_role.audit_6_audit_svc230.name
  policy_arn = aws_iam_policy.audit_6_data_rw.arn
}

resource "aws_iam_role" "audit_6_deploy" {
  name                 = "hextri-1bmol0-audit-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-gus.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-alice.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.novak" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_6_deploy__audit_6_ops" {
  role       = aws_iam_role.audit_6_deploy.name
  policy_arn = aws_iam_policy.audit_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_6_deploy__audit_6_deploy_perms" {
  role       = aws_iam_role.audit_6_deploy.name
  policy_arn = aws_iam_policy.audit_6_deploy_perms.arn
}

resource "aws_iam_role" "audit_6_records_svc" {
  name                 = "hextri-1bmol0-audit-6-records-svc"
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

resource "aws_iam_role_policy_attachment" "audit_6_records_svc__audit_6_data_rw" {
  role       = aws_iam_role.audit_6_records_svc.name
  policy_arn = aws_iam_policy.audit_6_data_rw.arn
}

resource "aws_iam_role" "audit_6_svc" {
  name                 = "hextri-1bmol0-audit-6-svc"
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

resource "aws_iam_role_policy_attachment" "audit_6_svc__audit_6_data_rw" {
  role       = aws_iam_role.audit_6_svc.name
  policy_arn = aws_iam_policy.audit_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_6_svc__audit_6_ops" {
  role       = aws_iam_role.audit_6_svc.name
  policy_arn = aws_iam_policy.audit_6_ops.arn
}

resource "aws_iam_instance_profile" "audit_6_svc" {
  name = "hextri-1bmol0-audit-6-svc"
  role = aws_iam_role.audit_6_svc.name
}

resource "aws_iam_role" "audit_backups_svc" {
  name                 = "hextri-1bmol0-audit-backups-svc"
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

resource "aws_iam_role_policy_attachment" "audit_backups_svc__audit_data_rw" {
  role       = aws_iam_role.audit_backups_svc.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_role" "audit_backups_svc170" {
  name                 = "hextri-1bmol0-audit-backups-svc170"
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

resource "aws_iam_role_policy_attachment" "audit_backups_svc170__audit_data_rw" {
  role       = aws_iam_role.audit_backups_svc170.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_role" "audit_deploy" {
  name                 = "hextri-1bmol0-audit-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "audit_deploy__audit_ops" {
  role       = aws_iam_role.audit_deploy.name
  policy_arn = aws_iam_policy.audit_ops.arn
}

resource "aws_iam_role_policy_attachment" "audit_deploy__audit_deploy_perms" {
  role       = aws_iam_role.audit_deploy.name
  policy_arn = aws_iam_policy.audit_deploy_perms.arn
}

resource "aws_iam_role" "audit_nb_role" {
  name                 = "hextri-1bmol0-audit-nb-role"
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

resource "aws_iam_role_policy_attachment" "audit_nb_role__audit_data_rw" {
  role       = aws_iam_role.audit_nb_role.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_nb_role__audit_ops" {
  role       = aws_iam_role.audit_nb_role.name
  policy_arn = aws_iam_policy.audit_ops.arn
}

resource "aws_iam_role" "audit_records_svc" {
  name                 = "hextri-1bmol0-audit-records-svc"
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

resource "aws_iam_role_policy_attachment" "audit_records_svc__audit_data_rw" {
  role       = aws_iam_role.audit_records_svc.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_role" "audit_svc" {
  name                 = "hextri-1bmol0-audit-svc"
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

resource "aws_iam_role_policy_attachment" "audit_svc__audit_data_rw" {
  role       = aws_iam_role.audit_svc.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "audit_svc__audit_ops" {
  role       = aws_iam_role.audit_svc.name
  policy_arn = aws_iam_policy.audit_ops.arn
}

resource "aws_iam_instance_profile" "audit_svc" {
  name = "hextri-1bmol0-audit-svc"
  role = aws_iam_role.audit_svc.name
}

resource "aws_iam_role" "benefits_2_audit_svc" {
  name                 = "hextri-1bmol0-benefits-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_2_audit_svc__benefits_2_data_rw" {
  role       = aws_iam_role.benefits_2_audit_svc.name
  policy_arn = aws_iam_policy.benefits_2_data_rw.arn
}

resource "aws_iam_role" "benefits_2_audit_svc183" {
  name                 = "hextri-1bmol0-benefits-2-audit-svc183"
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

resource "aws_iam_role_policy_attachment" "benefits_2_audit_svc183__benefits_2_data_rw" {
  role       = aws_iam_role.benefits_2_audit_svc183.name
  policy_arn = aws_iam_policy.benefits_2_data_rw.arn
}

resource "aws_iam_role" "benefits_2_deploy" {
  name                 = "hextri-1bmol0-benefits-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mike.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_2_deploy__benefits_2_ops" {
  role       = aws_iam_role.benefits_2_deploy.name
  policy_arn = aws_iam_policy.benefits_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_2_deploy__benefits_2_deploy_perms" {
  role       = aws_iam_role.benefits_2_deploy.name
  policy_arn = aws_iam_policy.benefits_2_deploy_perms.arn
}

resource "aws_iam_role" "benefits_2_gis_layers_svc" {
  name                 = "hextri-1bmol0-benefits-2-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_2_gis_layers_svc__benefits_2_data_rw" {
  role       = aws_iam_role.benefits_2_gis_layers_svc.name
  policy_arn = aws_iam_policy.benefits_2_data_rw.arn
}

resource "aws_iam_role" "benefits_2_svc" {
  name                 = "hextri-1bmol0-benefits-2-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_2_svc__benefits_2_data_rw" {
  role       = aws_iam_role.benefits_2_svc.name
  policy_arn = aws_iam_policy.benefits_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_2_svc__benefits_2_ops" {
  role       = aws_iam_role.benefits_2_svc.name
  policy_arn = aws_iam_policy.benefits_2_ops.arn
}

resource "aws_iam_instance_profile" "benefits_2_svc" {
  name = "hextri-1bmol0-benefits-2-svc"
  role = aws_iam_role.benefits_2_svc.name
}

resource "aws_iam_role" "benefits_3_deploy" {
  name                 = "hextri-1bmol0-benefits-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-priya.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-xia.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_3_deploy__benefits_3_ops" {
  role       = aws_iam_role.benefits_3_deploy.name
  policy_arn = aws_iam_policy.benefits_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_3_deploy__benefits_3_deploy_perms" {
  role       = aws_iam_role.benefits_3_deploy.name
  policy_arn = aws_iam_policy.benefits_3_deploy_perms.arn
}

resource "aws_iam_role" "benefits_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-benefits-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_3_gis_layers_svc__benefits_3_data_rw" {
  role       = aws_iam_role.benefits_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.benefits_3_data_rw.arn
}

resource "aws_iam_role" "benefits_3_records_svc" {
  name                 = "hextri-1bmol0-benefits-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_3_records_svc__benefits_3_data_rw" {
  role       = aws_iam_role.benefits_3_records_svc.name
  policy_arn = aws_iam_policy.benefits_3_data_rw.arn
}

resource "aws_iam_role" "benefits_3_records_svc195" {
  name                 = "hextri-1bmol0-benefits-3-records-svc195"
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

resource "aws_iam_role_policy_attachment" "benefits_3_records_svc195__benefits_3_data_rw" {
  role       = aws_iam_role.benefits_3_records_svc195.name
  policy_arn = aws_iam_policy.benefits_3_data_rw.arn
}

resource "aws_iam_role" "benefits_3_svc" {
  name                 = "hextri-1bmol0-benefits-3-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_3_svc__benefits_3_data_rw" {
  role       = aws_iam_role.benefits_3_svc.name
  policy_arn = aws_iam_policy.benefits_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_3_svc__benefits_3_ops" {
  role       = aws_iam_role.benefits_3_svc.name
  policy_arn = aws_iam_policy.benefits_3_ops.arn
}

resource "aws_iam_instance_profile" "benefits_3_svc" {
  name = "hextri-1bmol0-benefits-3-svc"
  role = aws_iam_role.benefits_3_svc.name
}

resource "aws_iam_role" "benefits_4_backups_svc" {
  name                 = "hextri-1bmol0-benefits-4-backups-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_4_backups_svc__benefits_4_data_rw" {
  role       = aws_iam_role.benefits_4_backups_svc.name
  policy_arn = aws_iam_policy.benefits_4_data_rw.arn
}

resource "aws_iam_role" "benefits_4_backups_svc127" {
  name                 = "hextri-1bmol0-benefits-4-backups-svc127"
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

resource "aws_iam_role_policy_attachment" "benefits_4_backups_svc127__benefits_4_data_rw" {
  role       = aws_iam_role.benefits_4_backups_svc127.name
  policy_arn = aws_iam_policy.benefits_4_data_rw.arn
}

resource "aws_iam_role" "benefits_4_backups_svc207" {
  name                 = "hextri-1bmol0-benefits-4-backups-svc207"
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

resource "aws_iam_role_policy_attachment" "benefits_4_backups_svc207__benefits_4_data_rw" {
  role       = aws_iam_role.benefits_4_backups_svc207.name
  policy_arn = aws_iam_policy.benefits_4_data_rw.arn
}

resource "aws_iam_role" "benefits_4_deploy" {
  name                 = "hextri-1bmol0-benefits-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.tanaka3772" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.patel6848" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-noor.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_4_deploy__benefits_4_ops" {
  role       = aws_iam_role.benefits_4_deploy.name
  policy_arn = aws_iam_policy.benefits_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_4_deploy__benefits_4_deploy_perms" {
  role       = aws_iam_role.benefits_4_deploy.name
  policy_arn = aws_iam_policy.benefits_4_deploy_perms.arn
}

resource "aws_iam_role" "benefits_4_svc" {
  name                 = "hextri-1bmol0-benefits-4-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_4_svc__benefits_4_data_rw" {
  role       = aws_iam_role.benefits_4_svc.name
  policy_arn = aws_iam_policy.benefits_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_4_svc__benefits_4_ops" {
  role       = aws_iam_role.benefits_4_svc.name
  policy_arn = aws_iam_policy.benefits_4_ops.arn
}

resource "aws_iam_instance_profile" "benefits_4_svc" {
  name = "hextri-1bmol0-benefits-4-svc"
  role = aws_iam_role.benefits_4_svc.name
}

resource "aws_iam_role" "benefits_5_backups_svc" {
  name                 = "hextri-1bmol0-benefits-5-backups-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_5_backups_svc__benefits_5_data_rw" {
  role       = aws_iam_role.benefits_5_backups_svc.name
  policy_arn = aws_iam_policy.benefits_5_data_rw.arn
}

resource "aws_iam_role" "benefits_5_backups_svc139" {
  name                 = "hextri-1bmol0-benefits-5-backups-svc139"
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

resource "aws_iam_role_policy_attachment" "benefits_5_backups_svc139__benefits_5_data_rw" {
  role       = aws_iam_role.benefits_5_backups_svc139.name
  policy_arn = aws_iam_policy.benefits_5_data_rw.arn
}

resource "aws_iam_role" "benefits_5_backups_svc219" {
  name                 = "hextri-1bmol0-benefits-5-backups-svc219"
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

resource "aws_iam_role_policy_attachment" "benefits_5_backups_svc219__benefits_5_data_rw" {
  role       = aws_iam_role.benefits_5_backups_svc219.name
  policy_arn = aws_iam_policy.benefits_5_data_rw.arn
}

resource "aws_iam_role" "benefits_5_deploy" {
  name                 = "hextri-1bmol0-benefits-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.smith9431" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_5_deploy__benefits_5_ops" {
  role       = aws_iam_role.benefits_5_deploy.name
  policy_arn = aws_iam_policy.benefits_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_5_deploy__benefits_5_deploy_perms" {
  role       = aws_iam_role.benefits_5_deploy.name
  policy_arn = aws_iam_policy.benefits_5_deploy_perms.arn
}

resource "aws_iam_role" "benefits_5_svc" {
  name                 = "hextri-1bmol0-benefits-5-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_5_svc__benefits_5_data_rw" {
  role       = aws_iam_role.benefits_5_svc.name
  policy_arn = aws_iam_policy.benefits_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_5_svc__benefits_5_ops" {
  role       = aws_iam_role.benefits_5_svc.name
  policy_arn = aws_iam_policy.benefits_5_ops.arn
}

resource "aws_iam_instance_profile" "benefits_5_svc" {
  name = "hextri-1bmol0-benefits-5-svc"
  role = aws_iam_role.benefits_5_svc.name
}

resource "aws_iam_role" "benefits_6_audit_svc" {
  name                 = "hextri-1bmol0-benefits-6-audit-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_6_audit_svc__benefits_6_data_rw" {
  role       = aws_iam_role.benefits_6_audit_svc.name
  policy_arn = aws_iam_policy.benefits_6_data_rw.arn
}

resource "aws_iam_role" "benefits_6_audit_svc151" {
  name                 = "hextri-1bmol0-benefits-6-audit-svc151"
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

resource "aws_iam_role_policy_attachment" "benefits_6_audit_svc151__benefits_6_data_rw" {
  role       = aws_iam_role.benefits_6_audit_svc151.name
  policy_arn = aws_iam_policy.benefits_6_data_rw.arn
}

resource "aws_iam_role" "benefits_6_audit_svc231" {
  name                 = "hextri-1bmol0-benefits-6-audit-svc231"
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

resource "aws_iam_role_policy_attachment" "benefits_6_audit_svc231__benefits_6_data_rw" {
  role       = aws_iam_role.benefits_6_audit_svc231.name
  policy_arn = aws_iam_policy.benefits_6_data_rw.arn
}

resource "aws_iam_role" "benefits_6_deploy" {
  name                 = "hextri-1bmol0-benefits-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-jun.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_6_deploy__benefits_6_ops" {
  role       = aws_iam_role.benefits_6_deploy.name
  policy_arn = aws_iam_policy.benefits_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_6_deploy__benefits_6_deploy_perms" {
  role       = aws_iam_role.benefits_6_deploy.name
  policy_arn = aws_iam_policy.benefits_6_deploy_perms.arn
}

resource "aws_iam_role" "benefits_6_svc" {
  name                 = "hextri-1bmol0-benefits-6-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_6_svc__benefits_6_data_rw" {
  role       = aws_iam_role.benefits_6_svc.name
  policy_arn = aws_iam_policy.benefits_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_6_svc__benefits_6_ops" {
  role       = aws_iam_role.benefits_6_svc.name
  policy_arn = aws_iam_policy.benefits_6_ops.arn
}

resource "aws_iam_instance_profile" "benefits_6_svc" {
  name = "hextri-1bmol0-benefits-6-svc"
  role = aws_iam_role.benefits_6_svc.name
}

resource "aws_iam_role" "benefits_deploy" {
  name                 = "hextri-1bmol0-benefits-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.miller2796" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mike.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "benefits_deploy__benefits_ops" {
  role       = aws_iam_role.benefits_deploy.name
  policy_arn = aws_iam_policy.benefits_ops.arn
}

resource "aws_iam_role_policy_attachment" "benefits_deploy__benefits_deploy_perms" {
  role       = aws_iam_role.benefits_deploy.name
  policy_arn = aws_iam_policy.benefits_deploy_perms.arn
}

resource "aws_iam_role" "benefits_filings_svc" {
  name                 = "hextri-1bmol0-benefits-filings-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_filings_svc__benefits_data_rw" {
  role       = aws_iam_role.benefits_filings_svc.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_role" "benefits_filings_svc171" {
  name                 = "hextri-1bmol0-benefits-filings-svc171"
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

resource "aws_iam_role_policy_attachment" "benefits_filings_svc171__benefits_data_rw" {
  role       = aws_iam_role.benefits_filings_svc171.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_role" "benefits_filings_svc91" {
  name                 = "hextri-1bmol0-benefits-filings-svc91"
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

resource "aws_iam_role_policy_attachment" "benefits_filings_svc91__benefits_data_rw" {
  role       = aws_iam_role.benefits_filings_svc91.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_role" "benefits_nb_role" {
  name                 = "hextri-1bmol0-benefits-nb-role"
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

resource "aws_iam_role_policy_attachment" "benefits_nb_role__benefits_data_rw" {
  role       = aws_iam_role.benefits_nb_role.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_nb_role__benefits_ops" {
  role       = aws_iam_role.benefits_nb_role.name
  policy_arn = aws_iam_policy.benefits_ops.arn
}

resource "aws_iam_role" "benefits_svc" {
  name                 = "hextri-1bmol0-benefits-svc"
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

resource "aws_iam_role_policy_attachment" "benefits_svc__benefits_data_rw" {
  role       = aws_iam_role.benefits_svc.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "benefits_svc__benefits_ops" {
  role       = aws_iam_role.benefits_svc.name
  policy_arn = aws_iam_policy.benefits_ops.arn
}

resource "aws_iam_instance_profile" "benefits_svc" {
  name = "hextri-1bmol0-benefits-svc"
  role = aws_iam_role.benefits_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "hextri-1bmol0-ci-runner"
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

resource "aws_iam_role" "citizen_portal_2_audit_svc" {
  name                 = "hextri-1bmol0-citizen-portal-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_2_audit_svc__citizen_portal_2_data_rw" {
  role       = aws_iam_role.citizen_portal_2_audit_svc.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_2_audit_svc172" {
  name                 = "hextri-1bmol0-citizen-portal-2-audit-svc172"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_2_audit_svc172__citizen_portal_2_data_rw" {
  role       = aws_iam_role.citizen_portal_2_audit_svc172.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_2_audit_svc92" {
  name                 = "hextri-1bmol0-citizen-portal-2-audit-svc92"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_2_audit_svc92__citizen_portal_2_data_rw" {
  role       = aws_iam_role.citizen_portal_2_audit_svc92.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_2_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.novak8067" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-raj.haddad366" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.lopez" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_2_deploy__citizen_portal_2_ops" {
  role       = aws_iam_role.citizen_portal_2_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_2_deploy__citizen_portal_2_deploy_perms" {
  role       = aws_iam_role.citizen_portal_2_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_2_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_2_stack_role" {
  name                 = "hextri-1bmol0-citizen-portal-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_2_stack_role__citizen_portal_2_data_rw" {
  role       = aws_iam_role.citizen_portal_2_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_2_stack_role__citizen_portal_2_ops" {
  role       = aws_iam_role.citizen_portal_2_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_2_ops.arn
}

resource "aws_iam_role" "citizen_portal_2_svc" {
  name                 = "hextri-1bmol0-citizen-portal-2-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_2_svc__citizen_portal_2_data_rw" {
  role       = aws_iam_role.citizen_portal_2_svc.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_2_svc__citizen_portal_2_ops" {
  role       = aws_iam_role.citizen_portal_2_svc.name
  policy_arn = aws_iam_policy.citizen_portal_2_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_2_svc" {
  name = "hextri-1bmol0-citizen-portal-2-svc"
  role = aws_iam_role.citizen_portal_2_svc.name
}

resource "aws_iam_role" "citizen_portal_3_backups_svc" {
  name                 = "hextri-1bmol0-citizen-portal-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_3_backups_svc__citizen_portal_3_data_rw" {
  role       = aws_iam_role.citizen_portal_3_backups_svc.name
  policy_arn = aws_iam_policy.citizen_portal_3_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_3_backups_svc184" {
  name                 = "hextri-1bmol0-citizen-portal-3-backups-svc184"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_3_backups_svc184__citizen_portal_3_data_rw" {
  role       = aws_iam_role.citizen_portal_3_backups_svc184.name
  policy_arn = aws_iam_policy.citizen_portal_3_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_3_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-jun.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.tanaka" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_3_deploy__citizen_portal_3_ops" {
  role       = aws_iam_role.citizen_portal_3_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_3_deploy__citizen_portal_3_deploy_perms" {
  role       = aws_iam_role.citizen_portal_3_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_3_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_3_filings_svc" {
  name                 = "hextri-1bmol0-citizen-portal-3-filings-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_3_filings_svc__citizen_portal_3_data_rw" {
  role       = aws_iam_role.citizen_portal_3_filings_svc.name
  policy_arn = aws_iam_policy.citizen_portal_3_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_3_svc" {
  name                 = "hextri-1bmol0-citizen-portal-3-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_3_svc__citizen_portal_3_data_rw" {
  role       = aws_iam_role.citizen_portal_3_svc.name
  policy_arn = aws_iam_policy.citizen_portal_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_3_svc__citizen_portal_3_ops" {
  role       = aws_iam_role.citizen_portal_3_svc.name
  policy_arn = aws_iam_policy.citizen_portal_3_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_3_svc" {
  name = "hextri-1bmol0-citizen-portal-3-svc"
  role = aws_iam_role.citizen_portal_3_svc.name
}

resource "aws_iam_role" "citizen_portal_4_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.novak" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_4_deploy__citizen_portal_4_ops" {
  role       = aws_iam_role.citizen_portal_4_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_4_deploy__citizen_portal_4_deploy_perms" {
  role       = aws_iam_role.citizen_portal_4_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_4_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_4_public_data_svc" {
  name                 = "hextri-1bmol0-citizen-portal-4-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_4_public_data_svc__citizen_portal_4_data_rw" {
  role       = aws_iam_role.citizen_portal_4_public_data_svc.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_4_public_data_svc116" {
  name                 = "hextri-1bmol0-citizen-portal-4-public-data-svc116"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_4_public_data_svc116__citizen_portal_4_data_rw" {
  role       = aws_iam_role.citizen_portal_4_public_data_svc116.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_4_public_data_svc196" {
  name                 = "hextri-1bmol0-citizen-portal-4-public-data-svc196"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_4_public_data_svc196__citizen_portal_4_data_rw" {
  role       = aws_iam_role.citizen_portal_4_public_data_svc196.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_4_stack_role" {
  name                 = "hextri-1bmol0-citizen-portal-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_4_stack_role__citizen_portal_4_data_rw" {
  role       = aws_iam_role.citizen_portal_4_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_4_stack_role__citizen_portal_4_ops" {
  role       = aws_iam_role.citizen_portal_4_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_4_ops.arn
}

resource "aws_iam_role" "citizen_portal_4_svc" {
  name                 = "hextri-1bmol0-citizen-portal-4-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_4_svc__citizen_portal_4_data_rw" {
  role       = aws_iam_role.citizen_portal_4_svc.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_4_svc__citizen_portal_4_ops" {
  role       = aws_iam_role.citizen_portal_4_svc.name
  policy_arn = aws_iam_policy.citizen_portal_4_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_4_svc" {
  name = "hextri-1bmol0-citizen-portal-4-svc"
  role = aws_iam_role.citizen_portal_4_svc.name
}

resource "aws_iam_role" "citizen_portal_5_backups_svc" {
  name                 = "hextri-1bmol0-citizen-portal-5-backups-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_5_backups_svc__citizen_portal_5_data_rw" {
  role       = aws_iam_role.citizen_portal_5_backups_svc.name
  policy_arn = aws_iam_policy.citizen_portal_5_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_5_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-priya.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-sara.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_5_deploy__citizen_portal_5_ops" {
  role       = aws_iam_role.citizen_portal_5_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_5_deploy__citizen_portal_5_deploy_perms" {
  role       = aws_iam_role.citizen_portal_5_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_5_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_5_filings_svc" {
  name                 = "hextri-1bmol0-citizen-portal-5-filings-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_5_filings_svc__citizen_portal_5_data_rw" {
  role       = aws_iam_role.citizen_portal_5_filings_svc.name
  policy_arn = aws_iam_policy.citizen_portal_5_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_5_gis_layers_svc" {
  name                 = "hextri-1bmol0-citizen-portal-5-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_5_gis_layers_svc__citizen_portal_5_data_rw" {
  role       = aws_iam_role.citizen_portal_5_gis_layers_svc.name
  policy_arn = aws_iam_policy.citizen_portal_5_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_5_svc" {
  name                 = "hextri-1bmol0-citizen-portal-5-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_5_svc__citizen_portal_5_data_rw" {
  role       = aws_iam_role.citizen_portal_5_svc.name
  policy_arn = aws_iam_policy.citizen_portal_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_5_svc__citizen_portal_5_ops" {
  role       = aws_iam_role.citizen_portal_5_svc.name
  policy_arn = aws_iam_policy.citizen_portal_5_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_5_svc" {
  name = "hextri-1bmol0-citizen-portal-5-svc"
  role = aws_iam_role.citizen_portal_5_svc.name
}

resource "aws_iam_role" "citizen_portal_6_audit_svc" {
  name                 = "hextri-1bmol0-citizen-portal-6-audit-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_6_audit_svc__citizen_portal_6_data_rw" {
  role       = aws_iam_role.citizen_portal_6_audit_svc.name
  policy_arn = aws_iam_policy.citizen_portal_6_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_6_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.singh3294" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_6_deploy__citizen_portal_6_ops" {
  role       = aws_iam_role.citizen_portal_6_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_6_deploy__citizen_portal_6_deploy_perms" {
  role       = aws_iam_role.citizen_portal_6_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_6_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_6_gis_layers_svc" {
  name                 = "hextri-1bmol0-citizen-portal-6-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_6_gis_layers_svc__citizen_portal_6_data_rw" {
  role       = aws_iam_role.citizen_portal_6_gis_layers_svc.name
  policy_arn = aws_iam_policy.citizen_portal_6_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_6_public_data_svc" {
  name                 = "hextri-1bmol0-citizen-portal-6-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_6_public_data_svc__citizen_portal_6_data_rw" {
  role       = aws_iam_role.citizen_portal_6_public_data_svc.name
  policy_arn = aws_iam_policy.citizen_portal_6_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_6_svc" {
  name                 = "hextri-1bmol0-citizen-portal-6-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_6_svc__citizen_portal_6_data_rw" {
  role       = aws_iam_role.citizen_portal_6_svc.name
  policy_arn = aws_iam_policy.citizen_portal_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_6_svc__citizen_portal_6_ops" {
  role       = aws_iam_role.citizen_portal_6_svc.name
  policy_arn = aws_iam_policy.citizen_portal_6_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_6_svc" {
  name = "hextri-1bmol0-citizen-portal-6-svc"
  role = aws_iam_role.citizen_portal_6_svc.name
}

resource "aws_iam_role" "citizen_portal_7_audit_svc" {
  name                 = "hextri-1bmol0-citizen-portal-7-audit-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_7_audit_svc__citizen_portal_7_data_rw" {
  role       = aws_iam_role.citizen_portal_7_audit_svc.name
  policy_arn = aws_iam_policy.citizen_portal_7_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_7_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.reddy2331" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "citizen_portal_7_deploy__citizen_portal_7_ops" {
  role       = aws_iam_role.citizen_portal_7_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_7_deploy__citizen_portal_7_deploy_perms" {
  role       = aws_iam_role.citizen_portal_7_deploy.name
  policy_arn = aws_iam_policy.citizen_portal_7_deploy_perms.arn
}

resource "aws_iam_role" "citizen_portal_7_gis_layers_svc" {
  name                 = "hextri-1bmol0-citizen-portal-7-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_7_gis_layers_svc__citizen_portal_7_data_rw" {
  role       = aws_iam_role.citizen_portal_7_gis_layers_svc.name
  policy_arn = aws_iam_policy.citizen_portal_7_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_7_public_data_svc" {
  name                 = "hextri-1bmol0-citizen-portal-7-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_7_public_data_svc__citizen_portal_7_data_rw" {
  role       = aws_iam_role.citizen_portal_7_public_data_svc.name
  policy_arn = aws_iam_policy.citizen_portal_7_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_7_svc" {
  name                 = "hextri-1bmol0-citizen-portal-7-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_7_svc__citizen_portal_7_data_rw" {
  role       = aws_iam_role.citizen_portal_7_svc.name
  policy_arn = aws_iam_policy.citizen_portal_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_7_svc__citizen_portal_7_ops" {
  role       = aws_iam_role.citizen_portal_7_svc.name
  policy_arn = aws_iam_policy.citizen_portal_7_ops.arn
}

resource "aws_iam_instance_profile" "citizen_portal_7_svc" {
  name = "hextri-1bmol0-citizen-portal-7-svc"
  role = aws_iam_role.citizen_portal_7_svc.name
}

resource "aws_iam_role" "citizen_portal_backups_svc" {
  name                 = "hextri-1bmol0-citizen-portal-backups-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_backups_svc__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_backups_svc.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_deploy" {
  name                 = "hextri-1bmol0-citizen-portal-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-priya.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.tanaka" }
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

resource "aws_iam_role" "citizen_portal_gis_layers_svc" {
  name                 = "hextri-1bmol0-citizen-portal-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_gis_layers_svc__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_gis_layers_svc.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role" "citizen_portal_records_svc" {
  name                 = "hextri-1bmol0-citizen-portal-records-svc"
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

resource "aws_iam_role" "citizen_portal_stack_role" {
  name                 = "hextri-1bmol0-citizen-portal-stack-role"
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

resource "aws_iam_role_policy_attachment" "citizen_portal_stack_role__citizen_portal_data_rw" {
  role       = aws_iam_role.citizen_portal_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "citizen_portal_stack_role__citizen_portal_ops" {
  role       = aws_iam_role.citizen_portal_stack_role.name
  policy_arn = aws_iam_policy.citizen_portal_ops.arn
}

resource "aws_iam_role" "citizen_portal_svc" {
  name                 = "hextri-1bmol0-citizen-portal-svc"
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
  name = "hextri-1bmol0-citizen-portal-svc"
  role = aws_iam_role.citizen_portal_svc.name
}

resource "aws_iam_role" "gis_2_deploy" {
  name                 = "hextri-1bmol0-gis-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_2_deploy__gis_2_ops" {
  role       = aws_iam_role.gis_2_deploy.name
  policy_arn = aws_iam_policy.gis_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_2_deploy__gis_2_deploy_perms" {
  role       = aws_iam_role.gis_2_deploy.name
  policy_arn = aws_iam_policy.gis_2_deploy_perms.arn
}

resource "aws_iam_role" "gis_2_records_svc" {
  name                 = "hextri-1bmol0-gis-2-records-svc"
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

resource "aws_iam_role_policy_attachment" "gis_2_records_svc__gis_2_data_rw" {
  role       = aws_iam_role.gis_2_records_svc.name
  policy_arn = aws_iam_policy.gis_2_data_rw.arn
}

resource "aws_iam_role" "gis_2_records_svc175" {
  name                 = "hextri-1bmol0-gis-2-records-svc175"
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

resource "aws_iam_role_policy_attachment" "gis_2_records_svc175__gis_2_data_rw" {
  role       = aws_iam_role.gis_2_records_svc175.name
  policy_arn = aws_iam_policy.gis_2_data_rw.arn
}

resource "aws_iam_role" "gis_2_records_svc95" {
  name                 = "hextri-1bmol0-gis-2-records-svc95"
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

resource "aws_iam_role_policy_attachment" "gis_2_records_svc95__gis_2_data_rw" {
  role       = aws_iam_role.gis_2_records_svc95.name
  policy_arn = aws_iam_policy.gis_2_data_rw.arn
}

resource "aws_iam_role" "gis_2_svc" {
  name                 = "hextri-1bmol0-gis-2-svc"
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

resource "aws_iam_role_policy_attachment" "gis_2_svc__gis_2_data_rw" {
  role       = aws_iam_role.gis_2_svc.name
  policy_arn = aws_iam_policy.gis_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_2_svc__gis_2_ops" {
  role       = aws_iam_role.gis_2_svc.name
  policy_arn = aws_iam_policy.gis_2_ops.arn
}

resource "aws_iam_instance_profile" "gis_2_svc" {
  name = "hextri-1bmol0-gis-2-svc"
  role = aws_iam_role.gis_2_svc.name
}

resource "aws_iam_role" "gis_3_backups_svc" {
  name                 = "hextri-1bmol0-gis-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "gis_3_backups_svc__gis_3_data_rw" {
  role       = aws_iam_role.gis_3_backups_svc.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_role" "gis_3_deploy" {
  name                 = "hextri-1bmol0-gis-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-vik.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.muller8983" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.dubois1248" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_3_deploy__gis_3_ops" {
  role       = aws_iam_role.gis_3_deploy.name
  policy_arn = aws_iam_policy.gis_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_3_deploy__gis_3_deploy_perms" {
  role       = aws_iam_role.gis_3_deploy.name
  policy_arn = aws_iam_policy.gis_3_deploy_perms.arn
}

resource "aws_iam_role" "gis_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-gis-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "gis_3_gis_layers_svc__gis_3_data_rw" {
  role       = aws_iam_role.gis_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_role" "gis_3_glue_role" {
  name                 = "hextri-1bmol0-gis-3-glue-role"
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

resource "aws_iam_role_policy_attachment" "gis_3_glue_role__gis_3_data_rw" {
  role       = aws_iam_role.gis_3_glue_role.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_3_glue_role__gis_3_ops" {
  role       = aws_iam_role.gis_3_glue_role.name
  policy_arn = aws_iam_policy.gis_3_ops.arn
}

resource "aws_iam_role" "gis_3_public_data_svc" {
  name                 = "hextri-1bmol0-gis-3-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "gis_3_public_data_svc__gis_3_data_rw" {
  role       = aws_iam_role.gis_3_public_data_svc.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_role" "gis_3_svc" {
  name                 = "hextri-1bmol0-gis-3-svc"
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

resource "aws_iam_role_policy_attachment" "gis_3_svc__gis_3_data_rw" {
  role       = aws_iam_role.gis_3_svc.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_3_svc__gis_3_ops" {
  role       = aws_iam_role.gis_3_svc.name
  policy_arn = aws_iam_policy.gis_3_ops.arn
}

resource "aws_iam_instance_profile" "gis_3_svc" {
  name = "hextri-1bmol0-gis-3-svc"
  role = aws_iam_role.gis_3_svc.name
}

resource "aws_iam_role" "gis_4_deploy" {
  name                 = "hextri-1bmol0-gis-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.patel9626" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-alice.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_4_deploy__gis_4_ops" {
  role       = aws_iam_role.gis_4_deploy.name
  policy_arn = aws_iam_policy.gis_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_4_deploy__gis_4_deploy_perms" {
  role       = aws_iam_role.gis_4_deploy.name
  policy_arn = aws_iam_policy.gis_4_deploy_perms.arn
}

resource "aws_iam_role" "gis_4_filings_svc" {
  name                 = "hextri-1bmol0-gis-4-filings-svc"
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

resource "aws_iam_role_policy_attachment" "gis_4_filings_svc__gis_4_data_rw" {
  role       = aws_iam_role.gis_4_filings_svc.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_role" "gis_4_public_data_svc" {
  name                 = "hextri-1bmol0-gis-4-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "gis_4_public_data_svc__gis_4_data_rw" {
  role       = aws_iam_role.gis_4_public_data_svc.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_role" "gis_4_records_svc" {
  name                 = "hextri-1bmol0-gis-4-records-svc"
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

resource "aws_iam_role_policy_attachment" "gis_4_records_svc__gis_4_data_rw" {
  role       = aws_iam_role.gis_4_records_svc.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_role" "gis_4_stack_role" {
  name                 = "hextri-1bmol0-gis-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "gis_4_stack_role__gis_4_data_rw" {
  role       = aws_iam_role.gis_4_stack_role.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_4_stack_role__gis_4_ops" {
  role       = aws_iam_role.gis_4_stack_role.name
  policy_arn = aws_iam_policy.gis_4_ops.arn
}

resource "aws_iam_role" "gis_4_svc" {
  name                 = "hextri-1bmol0-gis-4-svc"
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

resource "aws_iam_role_policy_attachment" "gis_4_svc__gis_4_data_rw" {
  role       = aws_iam_role.gis_4_svc.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_4_svc__gis_4_ops" {
  role       = aws_iam_role.gis_4_svc.name
  policy_arn = aws_iam_policy.gis_4_ops.arn
}

resource "aws_iam_instance_profile" "gis_4_svc" {
  name = "hextri-1bmol0-gis-4-svc"
  role = aws_iam_role.gis_4_svc.name
}

resource "aws_iam_role" "gis_5_deploy" {
  name                 = "hextri-1bmol0-gis-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.mehta9475" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-gus.muller488" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-sara.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_5_deploy__gis_5_ops" {
  role       = aws_iam_role.gis_5_deploy.name
  policy_arn = aws_iam_policy.gis_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_5_deploy__gis_5_deploy_perms" {
  role       = aws_iam_role.gis_5_deploy.name
  policy_arn = aws_iam_policy.gis_5_deploy_perms.arn
}

resource "aws_iam_role" "gis_5_records_svc" {
  name                 = "hextri-1bmol0-gis-5-records-svc"
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

resource "aws_iam_role_policy_attachment" "gis_5_records_svc__gis_5_data_rw" {
  role       = aws_iam_role.gis_5_records_svc.name
  policy_arn = aws_iam_policy.gis_5_data_rw.arn
}

resource "aws_iam_role" "gis_5_records_svc131" {
  name                 = "hextri-1bmol0-gis-5-records-svc131"
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

resource "aws_iam_role_policy_attachment" "gis_5_records_svc131__gis_5_data_rw" {
  role       = aws_iam_role.gis_5_records_svc131.name
  policy_arn = aws_iam_policy.gis_5_data_rw.arn
}

resource "aws_iam_role" "gis_5_records_svc211" {
  name                 = "hextri-1bmol0-gis-5-records-svc211"
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

resource "aws_iam_role_policy_attachment" "gis_5_records_svc211__gis_5_data_rw" {
  role       = aws_iam_role.gis_5_records_svc211.name
  policy_arn = aws_iam_policy.gis_5_data_rw.arn
}

resource "aws_iam_role" "gis_5_svc" {
  name                 = "hextri-1bmol0-gis-5-svc"
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

resource "aws_iam_role_policy_attachment" "gis_5_svc__gis_5_data_rw" {
  role       = aws_iam_role.gis_5_svc.name
  policy_arn = aws_iam_policy.gis_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_5_svc__gis_5_ops" {
  role       = aws_iam_role.gis_5_svc.name
  policy_arn = aws_iam_policy.gis_5_ops.arn
}

resource "aws_iam_instance_profile" "gis_5_svc" {
  name = "hextri-1bmol0-gis-5-svc"
  role = aws_iam_role.gis_5_svc.name
}

resource "aws_iam_role" "gis_6_deploy" {
  name                 = "hextri-1bmol0-gis-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.sato1968" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_6_deploy__gis_6_ops" {
  role       = aws_iam_role.gis_6_deploy.name
  policy_arn = aws_iam_policy.gis_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_6_deploy__gis_6_deploy_perms" {
  role       = aws_iam_role.gis_6_deploy.name
  policy_arn = aws_iam_policy.gis_6_deploy_perms.arn
}

resource "aws_iam_role" "gis_6_filings_svc" {
  name                 = "hextri-1bmol0-gis-6-filings-svc"
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

resource "aws_iam_role_policy_attachment" "gis_6_filings_svc__gis_6_data_rw" {
  role       = aws_iam_role.gis_6_filings_svc.name
  policy_arn = aws_iam_policy.gis_6_data_rw.arn
}

resource "aws_iam_role" "gis_6_filings_svc143" {
  name                 = "hextri-1bmol0-gis-6-filings-svc143"
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

resource "aws_iam_role_policy_attachment" "gis_6_filings_svc143__gis_6_data_rw" {
  role       = aws_iam_role.gis_6_filings_svc143.name
  policy_arn = aws_iam_policy.gis_6_data_rw.arn
}

resource "aws_iam_role" "gis_6_filings_svc223" {
  name                 = "hextri-1bmol0-gis-6-filings-svc223"
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

resource "aws_iam_role_policy_attachment" "gis_6_filings_svc223__gis_6_data_rw" {
  role       = aws_iam_role.gis_6_filings_svc223.name
  policy_arn = aws_iam_policy.gis_6_data_rw.arn
}

resource "aws_iam_role" "gis_6_svc" {
  name                 = "hextri-1bmol0-gis-6-svc"
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

resource "aws_iam_role_policy_attachment" "gis_6_svc__gis_6_data_rw" {
  role       = aws_iam_role.gis_6_svc.name
  policy_arn = aws_iam_policy.gis_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_6_svc__gis_6_ops" {
  role       = aws_iam_role.gis_6_svc.name
  policy_arn = aws_iam_policy.gis_6_ops.arn
}

resource "aws_iam_instance_profile" "gis_6_svc" {
  name = "hextri-1bmol0-gis-6-svc"
  role = aws_iam_role.gis_6_svc.name
}

resource "aws_iam_role" "gis_7_deploy" {
  name                 = "hextri-1bmol0-gis-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.chen5511" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-xia.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-raj.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "gis_7_deploy__gis_7_ops" {
  role       = aws_iam_role.gis_7_deploy.name
  policy_arn = aws_iam_policy.gis_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "gis_7_deploy__gis_7_deploy_perms" {
  role       = aws_iam_role.gis_7_deploy.name
  policy_arn = aws_iam_policy.gis_7_deploy_perms.arn
}

resource "aws_iam_role" "gis_7_records_svc" {
  name                 = "hextri-1bmol0-gis-7-records-svc"
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

resource "aws_iam_role_policy_attachment" "gis_7_records_svc__gis_7_data_rw" {
  role       = aws_iam_role.gis_7_records_svc.name
  policy_arn = aws_iam_policy.gis_7_data_rw.arn
}

resource "aws_iam_role" "gis_7_records_svc155" {
  name                 = "hextri-1bmol0-gis-7-records-svc155"
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

resource "aws_iam_role_policy_attachment" "gis_7_records_svc155__gis_7_data_rw" {
  role       = aws_iam_role.gis_7_records_svc155.name
  policy_arn = aws_iam_policy.gis_7_data_rw.arn
}

resource "aws_iam_role" "gis_7_records_svc235" {
  name                 = "hextri-1bmol0-gis-7-records-svc235"
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

resource "aws_iam_role_policy_attachment" "gis_7_records_svc235__gis_7_data_rw" {
  role       = aws_iam_role.gis_7_records_svc235.name
  policy_arn = aws_iam_policy.gis_7_data_rw.arn
}

resource "aws_iam_role" "gis_7_svc" {
  name                 = "hextri-1bmol0-gis-7-svc"
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

resource "aws_iam_role_policy_attachment" "gis_7_svc__gis_7_data_rw" {
  role       = aws_iam_role.gis_7_svc.name
  policy_arn = aws_iam_policy.gis_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "gis_7_svc__gis_7_ops" {
  role       = aws_iam_role.gis_7_svc.name
  policy_arn = aws_iam_policy.gis_7_ops.arn
}

resource "aws_iam_instance_profile" "gis_7_svc" {
  name = "hextri-1bmol0-gis-7-svc"
  role = aws_iam_role.gis_7_svc.name
}

resource "aws_iam_role" "gis_audit_svc" {
  name                 = "hextri-1bmol0-gis-audit-svc"
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

resource "aws_iam_role_policy_attachment" "gis_audit_svc__gis_data_rw" {
  role       = aws_iam_role.gis_audit_svc.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_role" "gis_backups_svc" {
  name                 = "hextri-1bmol0-gis-backups-svc"
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

resource "aws_iam_role_policy_attachment" "gis_backups_svc__gis_data_rw" {
  role       = aws_iam_role.gis_backups_svc.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_role" "gis_deploy" {
  name                 = "hextri-1bmol0-gis-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.kim" }
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
  name                 = "hextri-1bmol0-gis-public-data-svc"
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

resource "aws_iam_role" "gis_svc" {
  name                 = "hextri-1bmol0-gis-svc"
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
  name = "hextri-1bmol0-gis-svc"
  role = aws_iam_role.gis_svc.name
}

resource "aws_iam_role" "hr_2_deploy" {
  name                 = "hextri-1bmol0-hr-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_2_deploy__hr_2_ops" {
  role       = aws_iam_role.hr_2_deploy.name
  policy_arn = aws_iam_policy.hr_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_2_deploy__hr_2_deploy_perms" {
  role       = aws_iam_role.hr_2_deploy.name
  policy_arn = aws_iam_policy.hr_2_deploy_perms.arn
}

resource "aws_iam_role" "hr_2_public_data_svc" {
  name                 = "hextri-1bmol0-hr-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "hr_2_public_data_svc__hr_2_data_rw" {
  role       = aws_iam_role.hr_2_public_data_svc.name
  policy_arn = aws_iam_policy.hr_2_data_rw.arn
}

resource "aws_iam_role" "hr_2_public_data_svc100" {
  name                 = "hextri-1bmol0-hr-2-public-data-svc100"
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

resource "aws_iam_role_policy_attachment" "hr_2_public_data_svc100__hr_2_data_rw" {
  role       = aws_iam_role.hr_2_public_data_svc100.name
  policy_arn = aws_iam_policy.hr_2_data_rw.arn
}

resource "aws_iam_role" "hr_2_public_data_svc180" {
  name                 = "hextri-1bmol0-hr-2-public-data-svc180"
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

resource "aws_iam_role_policy_attachment" "hr_2_public_data_svc180__hr_2_data_rw" {
  role       = aws_iam_role.hr_2_public_data_svc180.name
  policy_arn = aws_iam_policy.hr_2_data_rw.arn
}

resource "aws_iam_role" "hr_2_svc" {
  name                 = "hextri-1bmol0-hr-2-svc"
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

resource "aws_iam_role_policy_attachment" "hr_2_svc__hr_2_data_rw" {
  role       = aws_iam_role.hr_2_svc.name
  policy_arn = aws_iam_policy.hr_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_2_svc__hr_2_ops" {
  role       = aws_iam_role.hr_2_svc.name
  policy_arn = aws_iam_policy.hr_2_ops.arn
}

resource "aws_iam_instance_profile" "hr_2_svc" {
  name = "hextri-1bmol0-hr-2-svc"
  role = aws_iam_role.hr_2_svc.name
}

resource "aws_iam_role" "hr_3_deploy" {
  name                 = "hextri-1bmol0-hr-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.reddy8687" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_3_deploy__hr_3_ops" {
  role       = aws_iam_role.hr_3_deploy.name
  policy_arn = aws_iam_policy.hr_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_3_deploy__hr_3_deploy_perms" {
  role       = aws_iam_role.hr_3_deploy.name
  policy_arn = aws_iam_policy.hr_3_deploy_perms.arn
}

resource "aws_iam_role" "hr_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-hr-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "hr_3_gis_layers_svc__hr_3_data_rw" {
  role       = aws_iam_role.hr_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_role" "hr_3_gis_layers_svc192" {
  name                 = "hextri-1bmol0-hr-3-gis-layers-svc192"
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

resource "aws_iam_role_policy_attachment" "hr_3_gis_layers_svc192__hr_3_data_rw" {
  role       = aws_iam_role.hr_3_gis_layers_svc192.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_role" "hr_3_nb_role" {
  name                 = "hextri-1bmol0-hr-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "hr_3_nb_role__hr_3_data_rw" {
  role       = aws_iam_role.hr_3_nb_role.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_3_nb_role__hr_3_ops" {
  role       = aws_iam_role.hr_3_nb_role.name
  policy_arn = aws_iam_policy.hr_3_ops.arn
}

resource "aws_iam_role" "hr_3_records_svc" {
  name                 = "hextri-1bmol0-hr-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "hr_3_records_svc__hr_3_data_rw" {
  role       = aws_iam_role.hr_3_records_svc.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_role" "hr_3_svc" {
  name                 = "hextri-1bmol0-hr-3-svc"
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

resource "aws_iam_role_policy_attachment" "hr_3_svc__hr_3_data_rw" {
  role       = aws_iam_role.hr_3_svc.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_3_svc__hr_3_ops" {
  role       = aws_iam_role.hr_3_svc.name
  policy_arn = aws_iam_policy.hr_3_ops.arn
}

resource "aws_iam_instance_profile" "hr_3_svc" {
  name = "hextri-1bmol0-hr-3-svc"
  role = aws_iam_role.hr_3_svc.name
}

resource "aws_iam_role" "hr_4_audit_svc" {
  name                 = "hextri-1bmol0-hr-4-audit-svc"
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

resource "aws_iam_role_policy_attachment" "hr_4_audit_svc__hr_4_data_rw" {
  role       = aws_iam_role.hr_4_audit_svc.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_role" "hr_4_deploy" {
  name                 = "hextri-1bmol0-hr-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-raj.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.rossi8681" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_4_deploy__hr_4_ops" {
  role       = aws_iam_role.hr_4_deploy.name
  policy_arn = aws_iam_policy.hr_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_4_deploy__hr_4_deploy_perms" {
  role       = aws_iam_role.hr_4_deploy.name
  policy_arn = aws_iam_policy.hr_4_deploy_perms.arn
}

resource "aws_iam_role" "hr_4_gis_layers_svc" {
  name                 = "hextri-1bmol0-hr-4-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "hr_4_gis_layers_svc__hr_4_data_rw" {
  role       = aws_iam_role.hr_4_gis_layers_svc.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_role" "hr_4_nb_role" {
  name                 = "hextri-1bmol0-hr-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "hr_4_nb_role__hr_4_data_rw" {
  role       = aws_iam_role.hr_4_nb_role.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_4_nb_role__hr_4_ops" {
  role       = aws_iam_role.hr_4_nb_role.name
  policy_arn = aws_iam_policy.hr_4_ops.arn
}

resource "aws_iam_role" "hr_4_public_data_svc" {
  name                 = "hextri-1bmol0-hr-4-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "hr_4_public_data_svc__hr_4_data_rw" {
  role       = aws_iam_role.hr_4_public_data_svc.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_role" "hr_4_svc" {
  name                 = "hextri-1bmol0-hr-4-svc"
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

resource "aws_iam_role_policy_attachment" "hr_4_svc__hr_4_data_rw" {
  role       = aws_iam_role.hr_4_svc.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_4_svc__hr_4_ops" {
  role       = aws_iam_role.hr_4_svc.name
  policy_arn = aws_iam_policy.hr_4_ops.arn
}

resource "aws_iam_instance_profile" "hr_4_svc" {
  name = "hextri-1bmol0-hr-4-svc"
  role = aws_iam_role.hr_4_svc.name
}

resource "aws_iam_role" "hr_5_audit_svc" {
  name                 = "hextri-1bmol0-hr-5-audit-svc"
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

resource "aws_iam_role_policy_attachment" "hr_5_audit_svc__hr_5_data_rw" {
  role       = aws_iam_role.hr_5_audit_svc.name
  policy_arn = aws_iam_policy.hr_5_data_rw.arn
}

resource "aws_iam_role" "hr_5_deploy" {
  name                 = "hextri-1bmol0-hr-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-kia.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_5_deploy__hr_5_ops" {
  role       = aws_iam_role.hr_5_deploy.name
  policy_arn = aws_iam_policy.hr_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_5_deploy__hr_5_deploy_perms" {
  role       = aws_iam_role.hr_5_deploy.name
  policy_arn = aws_iam_policy.hr_5_deploy_perms.arn
}

resource "aws_iam_role" "hr_5_gis_layers_svc" {
  name                 = "hextri-1bmol0-hr-5-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "hr_5_gis_layers_svc__hr_5_data_rw" {
  role       = aws_iam_role.hr_5_gis_layers_svc.name
  policy_arn = aws_iam_policy.hr_5_data_rw.arn
}

resource "aws_iam_role" "hr_5_records_svc" {
  name                 = "hextri-1bmol0-hr-5-records-svc"
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

resource "aws_iam_role_policy_attachment" "hr_5_records_svc__hr_5_data_rw" {
  role       = aws_iam_role.hr_5_records_svc.name
  policy_arn = aws_iam_policy.hr_5_data_rw.arn
}

resource "aws_iam_role" "hr_5_svc" {
  name                 = "hextri-1bmol0-hr-5-svc"
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

resource "aws_iam_role_policy_attachment" "hr_5_svc__hr_5_data_rw" {
  role       = aws_iam_role.hr_5_svc.name
  policy_arn = aws_iam_policy.hr_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_5_svc__hr_5_ops" {
  role       = aws_iam_role.hr_5_svc.name
  policy_arn = aws_iam_policy.hr_5_ops.arn
}

resource "aws_iam_instance_profile" "hr_5_svc" {
  name = "hextri-1bmol0-hr-5-svc"
  role = aws_iam_role.hr_5_svc.name
}

resource "aws_iam_role" "hr_6_deploy" {
  name                 = "hextri-1bmol0-hr-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_6_deploy__hr_6_ops" {
  role       = aws_iam_role.hr_6_deploy.name
  policy_arn = aws_iam_policy.hr_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_6_deploy__hr_6_deploy_perms" {
  role       = aws_iam_role.hr_6_deploy.name
  policy_arn = aws_iam_policy.hr_6_deploy_perms.arn
}

resource "aws_iam_role" "hr_6_gis_layers_svc" {
  name                 = "hextri-1bmol0-hr-6-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "hr_6_gis_layers_svc__hr_6_data_rw" {
  role       = aws_iam_role.hr_6_gis_layers_svc.name
  policy_arn = aws_iam_policy.hr_6_data_rw.arn
}

resource "aws_iam_role" "hr_6_gis_layers_svc148" {
  name                 = "hextri-1bmol0-hr-6-gis-layers-svc148"
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

resource "aws_iam_role_policy_attachment" "hr_6_gis_layers_svc148__hr_6_data_rw" {
  role       = aws_iam_role.hr_6_gis_layers_svc148.name
  policy_arn = aws_iam_policy.hr_6_data_rw.arn
}

resource "aws_iam_role" "hr_6_gis_layers_svc228" {
  name                 = "hextri-1bmol0-hr-6-gis-layers-svc228"
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

resource "aws_iam_role_policy_attachment" "hr_6_gis_layers_svc228__hr_6_data_rw" {
  role       = aws_iam_role.hr_6_gis_layers_svc228.name
  policy_arn = aws_iam_policy.hr_6_data_rw.arn
}

resource "aws_iam_role" "hr_6_svc" {
  name                 = "hextri-1bmol0-hr-6-svc"
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

resource "aws_iam_role_policy_attachment" "hr_6_svc__hr_6_data_rw" {
  role       = aws_iam_role.hr_6_svc.name
  policy_arn = aws_iam_policy.hr_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_6_svc__hr_6_ops" {
  role       = aws_iam_role.hr_6_svc.name
  policy_arn = aws_iam_policy.hr_6_ops.arn
}

resource "aws_iam_instance_profile" "hr_6_svc" {
  name = "hextri-1bmol0-hr-6-svc"
  role = aws_iam_role.hr_6_svc.name
}

resource "aws_iam_role" "hr_backups_svc" {
  name                 = "hextri-1bmol0-hr-backups-svc"
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

resource "aws_iam_role_policy_attachment" "hr_backups_svc__hr_data_rw" {
  role       = aws_iam_role.hr_backups_svc.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_role" "hr_deploy" {
  name                 = "hextri-1bmol0-hr-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.rossi2328" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "hr_deploy__hr_ops" {
  role       = aws_iam_role.hr_deploy.name
  policy_arn = aws_iam_policy.hr_ops.arn
}

resource "aws_iam_role_policy_attachment" "hr_deploy__hr_deploy_perms" {
  role       = aws_iam_role.hr_deploy.name
  policy_arn = aws_iam_policy.hr_deploy_perms.arn
}

resource "aws_iam_role" "hr_gis_layers_svc" {
  name                 = "hextri-1bmol0-hr-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "hr_gis_layers_svc__hr_data_rw" {
  role       = aws_iam_role.hr_gis_layers_svc.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_role" "hr_public_data_svc" {
  name                 = "hextri-1bmol0-hr-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "hr_public_data_svc__hr_data_rw" {
  role       = aws_iam_role.hr_public_data_svc.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_role" "hr_stack_role" {
  name                 = "hextri-1bmol0-hr-stack-role"
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

resource "aws_iam_role_policy_attachment" "hr_stack_role__hr_data_rw" {
  role       = aws_iam_role.hr_stack_role.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_stack_role__hr_ops" {
  role       = aws_iam_role.hr_stack_role.name
  policy_arn = aws_iam_policy.hr_ops.arn
}

resource "aws_iam_role" "hr_svc" {
  name                 = "hextri-1bmol0-hr-svc"
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

resource "aws_iam_role_policy_attachment" "hr_svc__hr_data_rw" {
  role       = aws_iam_role.hr_svc.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "hr_svc__hr_ops" {
  role       = aws_iam_role.hr_svc.name
  policy_arn = aws_iam_policy.hr_ops.arn
}

resource "aws_iam_instance_profile" "hr_svc" {
  name = "hextri-1bmol0-hr-svc"
  role = aws_iam_role.hr_svc.name
}

resource "aws_iam_role" "inj_glue_exec_r4" {
  name                 = "hextri-1bmol0-inj-glue-exec-r4"
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

resource "aws_iam_role_policy_attachment" "inj_glue_exec_r4__inj_legacy_p7" {
  role       = aws_iam_role.inj_glue_exec_r4.name
  policy_arn = aws_iam_policy.inj_legacy_p7.arn
}

resource "aws_iam_role_policy_attachment" "inj_glue_exec_r4__inj_pol_p8" {
  role       = aws_iam_role.inj_glue_exec_r4.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_role" "it_ops_2_audit_svc" {
  name                 = "hextri-1bmol0-it-ops-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_2_audit_svc__it_ops_2_data_rw" {
  role       = aws_iam_role.it_ops_2_audit_svc.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_role" "it_ops_2_deploy" {
  name                 = "hextri-1bmol0-it-ops-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-zed.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_2_deploy__it_ops_2_ops" {
  role       = aws_iam_role.it_ops_2_deploy.name
  policy_arn = aws_iam_policy.it_ops_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_2_deploy__it_ops_2_deploy_perms" {
  role       = aws_iam_role.it_ops_2_deploy.name
  policy_arn = aws_iam_policy.it_ops_2_deploy_perms.arn
}

resource "aws_iam_role" "it_ops_2_gis_layers_svc" {
  name                 = "hextri-1bmol0-it-ops-2-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_2_gis_layers_svc__it_ops_2_data_rw" {
  role       = aws_iam_role.it_ops_2_gis_layers_svc.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_role" "it_ops_2_records_svc" {
  name                 = "hextri-1bmol0-it-ops-2-records-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_2_records_svc__it_ops_2_data_rw" {
  role       = aws_iam_role.it_ops_2_records_svc.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_role" "it_ops_2_stack_role" {
  name                 = "hextri-1bmol0-it-ops-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "it_ops_2_stack_role__it_ops_2_data_rw" {
  role       = aws_iam_role.it_ops_2_stack_role.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_2_stack_role__it_ops_2_ops" {
  role       = aws_iam_role.it_ops_2_stack_role.name
  policy_arn = aws_iam_policy.it_ops_2_ops.arn
}

resource "aws_iam_role" "it_ops_2_svc" {
  name                 = "hextri-1bmol0-it-ops-2-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_2_svc__it_ops_2_data_rw" {
  role       = aws_iam_role.it_ops_2_svc.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_2_svc__it_ops_2_ops" {
  role       = aws_iam_role.it_ops_2_svc.name
  policy_arn = aws_iam_policy.it_ops_2_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_2_svc" {
  name = "hextri-1bmol0-it-ops-2-svc"
  role = aws_iam_role.it_ops_2_svc.name
}

resource "aws_iam_role" "it_ops_3_audit_svc" {
  name                 = "hextri-1bmol0-it-ops-3-audit-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_3_audit_svc__it_ops_3_data_rw" {
  role       = aws_iam_role.it_ops_3_audit_svc.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_role" "it_ops_3_deploy" {
  name                 = "hextri-1bmol0-it-ops-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.lopez2145" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.larsen554" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_3_deploy__it_ops_3_ops" {
  role       = aws_iam_role.it_ops_3_deploy.name
  policy_arn = aws_iam_policy.it_ops_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_3_deploy__it_ops_3_deploy_perms" {
  role       = aws_iam_role.it_ops_3_deploy.name
  policy_arn = aws_iam_policy.it_ops_3_deploy_perms.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_3_deploy__inj_pol_p9" {
  role       = aws_iam_role.it_ops_3_deploy.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_role" "it_ops_3_nb_role" {
  name                 = "hextri-1bmol0-it-ops-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "it_ops_3_nb_role__it_ops_3_data_rw" {
  role       = aws_iam_role.it_ops_3_nb_role.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_3_nb_role__it_ops_3_ops" {
  role       = aws_iam_role.it_ops_3_nb_role.name
  policy_arn = aws_iam_policy.it_ops_3_ops.arn
}

resource "aws_iam_role" "it_ops_3_records_svc" {
  name                 = "hextri-1bmol0-it-ops-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_3_records_svc__it_ops_3_data_rw" {
  role       = aws_iam_role.it_ops_3_records_svc.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_role" "it_ops_3_records_svc193" {
  name                 = "hextri-1bmol0-it-ops-3-records-svc193"
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

resource "aws_iam_role_policy_attachment" "it_ops_3_records_svc193__it_ops_3_data_rw" {
  role       = aws_iam_role.it_ops_3_records_svc193.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_role" "it_ops_3_svc" {
  name                 = "hextri-1bmol0-it-ops-3-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_3_svc__it_ops_3_data_rw" {
  role       = aws_iam_role.it_ops_3_svc.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_3_svc__it_ops_3_ops" {
  role       = aws_iam_role.it_ops_3_svc.name
  policy_arn = aws_iam_policy.it_ops_3_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_3_svc" {
  name = "hextri-1bmol0-it-ops-3-svc"
  role = aws_iam_role.it_ops_3_svc.name
}

resource "aws_iam_role" "it_ops_4_deploy" {
  name                 = "hextri-1bmol0-it-ops-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_4_deploy__it_ops_4_ops" {
  role       = aws_iam_role.it_ops_4_deploy.name
  policy_arn = aws_iam_policy.it_ops_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_4_deploy__it_ops_4_deploy_perms" {
  role       = aws_iam_role.it_ops_4_deploy.name
  policy_arn = aws_iam_policy.it_ops_4_deploy_perms.arn
}

resource "aws_iam_role" "it_ops_4_gis_layers_svc" {
  name                 = "hextri-1bmol0-it-ops-4-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_4_gis_layers_svc__it_ops_4_data_rw" {
  role       = aws_iam_role.it_ops_4_gis_layers_svc.name
  policy_arn = aws_iam_policy.it_ops_4_data_rw.arn
}

resource "aws_iam_role" "it_ops_4_gis_layers_svc125" {
  name                 = "hextri-1bmol0-it-ops-4-gis-layers-svc125"
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

resource "aws_iam_role_policy_attachment" "it_ops_4_gis_layers_svc125__it_ops_4_data_rw" {
  role       = aws_iam_role.it_ops_4_gis_layers_svc125.name
  policy_arn = aws_iam_policy.it_ops_4_data_rw.arn
}

resource "aws_iam_role" "it_ops_4_gis_layers_svc205" {
  name                 = "hextri-1bmol0-it-ops-4-gis-layers-svc205"
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

resource "aws_iam_role_policy_attachment" "it_ops_4_gis_layers_svc205__it_ops_4_data_rw" {
  role       = aws_iam_role.it_ops_4_gis_layers_svc205.name
  policy_arn = aws_iam_policy.it_ops_4_data_rw.arn
}

resource "aws_iam_role" "it_ops_4_svc" {
  name                 = "hextri-1bmol0-it-ops-4-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_4_svc__it_ops_4_data_rw" {
  role       = aws_iam_role.it_ops_4_svc.name
  policy_arn = aws_iam_policy.it_ops_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_4_svc__it_ops_4_ops" {
  role       = aws_iam_role.it_ops_4_svc.name
  policy_arn = aws_iam_policy.it_ops_4_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_4_svc" {
  name = "hextri-1bmol0-it-ops-4-svc"
  role = aws_iam_role.it_ops_4_svc.name
}

resource "aws_iam_role" "it_ops_5_deploy" {
  name                 = "hextri-1bmol0-it-ops-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mike.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.dubois5712" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-jun.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_5_deploy__it_ops_5_ops" {
  role       = aws_iam_role.it_ops_5_deploy.name
  policy_arn = aws_iam_policy.it_ops_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_5_deploy__it_ops_5_deploy_perms" {
  role       = aws_iam_role.it_ops_5_deploy.name
  policy_arn = aws_iam_policy.it_ops_5_deploy_perms.arn
}

resource "aws_iam_role" "it_ops_5_filings_svc" {
  name                 = "hextri-1bmol0-it-ops-5-filings-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_5_filings_svc__it_ops_5_data_rw" {
  role       = aws_iam_role.it_ops_5_filings_svc.name
  policy_arn = aws_iam_policy.it_ops_5_data_rw.arn
}

resource "aws_iam_role" "it_ops_5_public_data_svc" {
  name                 = "hextri-1bmol0-it-ops-5-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_5_public_data_svc__it_ops_5_data_rw" {
  role       = aws_iam_role.it_ops_5_public_data_svc.name
  policy_arn = aws_iam_policy.it_ops_5_data_rw.arn
}

resource "aws_iam_role" "it_ops_5_public_data_svc217" {
  name                 = "hextri-1bmol0-it-ops-5-public-data-svc217"
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

resource "aws_iam_role_policy_attachment" "it_ops_5_public_data_svc217__it_ops_5_data_rw" {
  role       = aws_iam_role.it_ops_5_public_data_svc217.name
  policy_arn = aws_iam_policy.it_ops_5_data_rw.arn
}

resource "aws_iam_role" "it_ops_5_svc" {
  name                 = "hextri-1bmol0-it-ops-5-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_5_svc__it_ops_5_data_rw" {
  role       = aws_iam_role.it_ops_5_svc.name
  policy_arn = aws_iam_policy.it_ops_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_5_svc__it_ops_5_ops" {
  role       = aws_iam_role.it_ops_5_svc.name
  policy_arn = aws_iam_policy.it_ops_5_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_5_svc" {
  name = "hextri-1bmol0-it-ops-5-svc"
  role = aws_iam_role.it_ops_5_svc.name
}

resource "aws_iam_role" "it_ops_6_deploy" {
  name                 = "hextri-1bmol0-it-ops-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-vik.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_6_deploy__it_ops_6_ops" {
  role       = aws_iam_role.it_ops_6_deploy.name
  policy_arn = aws_iam_policy.it_ops_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_6_deploy__it_ops_6_deploy_perms" {
  role       = aws_iam_role.it_ops_6_deploy.name
  policy_arn = aws_iam_policy.it_ops_6_deploy_perms.arn
}

resource "aws_iam_role" "it_ops_6_filings_svc" {
  name                 = "hextri-1bmol0-it-ops-6-filings-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_6_filings_svc__it_ops_6_data_rw" {
  role       = aws_iam_role.it_ops_6_filings_svc.name
  policy_arn = aws_iam_policy.it_ops_6_data_rw.arn
}

resource "aws_iam_role" "it_ops_6_gis_layers_svc" {
  name                 = "hextri-1bmol0-it-ops-6-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_6_gis_layers_svc__it_ops_6_data_rw" {
  role       = aws_iam_role.it_ops_6_gis_layers_svc.name
  policy_arn = aws_iam_policy.it_ops_6_data_rw.arn
}

resource "aws_iam_role" "it_ops_6_public_data_svc" {
  name                 = "hextri-1bmol0-it-ops-6-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_6_public_data_svc__it_ops_6_data_rw" {
  role       = aws_iam_role.it_ops_6_public_data_svc.name
  policy_arn = aws_iam_policy.it_ops_6_data_rw.arn
}

resource "aws_iam_role" "it_ops_6_svc" {
  name                 = "hextri-1bmol0-it-ops-6-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_6_svc__it_ops_6_data_rw" {
  role       = aws_iam_role.it_ops_6_svc.name
  policy_arn = aws_iam_policy.it_ops_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_6_svc__it_ops_6_ops" {
  role       = aws_iam_role.it_ops_6_svc.name
  policy_arn = aws_iam_policy.it_ops_6_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_6_svc" {
  name = "hextri-1bmol0-it-ops-6-svc"
  role = aws_iam_role.it_ops_6_svc.name
}

resource "aws_iam_role" "it_ops_audit_svc" {
  name                 = "hextri-1bmol0-it-ops-audit-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_audit_svc__it_ops_data_rw" {
  role       = aws_iam_role.it_ops_audit_svc.name
  policy_arn = aws_iam_policy.it_ops_data_rw.arn
}

resource "aws_iam_role" "it_ops_deploy" {
  name                 = "hextri-1bmol0-it-ops-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-erin.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "it_ops_deploy__it_ops_ops" {
  role       = aws_iam_role.it_ops_deploy.name
  policy_arn = aws_iam_policy.it_ops_ops.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_deploy__it_ops_deploy_perms" {
  role       = aws_iam_role.it_ops_deploy.name
  policy_arn = aws_iam_policy.it_ops_deploy_perms.arn
}

resource "aws_iam_role" "it_ops_filings_svc" {
  name                 = "hextri-1bmol0-it-ops-filings-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_filings_svc__it_ops_data_rw" {
  role       = aws_iam_role.it_ops_filings_svc.name
  policy_arn = aws_iam_policy.it_ops_data_rw.arn
}

resource "aws_iam_role" "it_ops_gis_layers_svc" {
  name                 = "hextri-1bmol0-it-ops-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_gis_layers_svc__it_ops_data_rw" {
  role       = aws_iam_role.it_ops_gis_layers_svc.name
  policy_arn = aws_iam_policy.it_ops_data_rw.arn
}

resource "aws_iam_role" "it_ops_svc" {
  name                 = "hextri-1bmol0-it-ops-svc"
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

resource "aws_iam_role_policy_attachment" "it_ops_svc__it_ops_data_rw" {
  role       = aws_iam_role.it_ops_svc.name
  policy_arn = aws_iam_policy.it_ops_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "it_ops_svc__it_ops_ops" {
  role       = aws_iam_role.it_ops_svc.name
  policy_arn = aws_iam_policy.it_ops_ops.arn
}

resource "aws_iam_instance_profile" "it_ops_svc" {
  name = "hextri-1bmol0-it-ops-svc"
  role = aws_iam_role.it_ops_svc.name
}

resource "aws_iam_role" "licensing_2_backups_svc" {
  name                 = "hextri-1bmol0-licensing-2-backups-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_2_backups_svc__licensing_2_data_rw" {
  role       = aws_iam_role.licensing_2_backups_svc.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_role" "licensing_2_backups_svc174" {
  name                 = "hextri-1bmol0-licensing-2-backups-svc174"
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

resource "aws_iam_role_policy_attachment" "licensing_2_backups_svc174__licensing_2_data_rw" {
  role       = aws_iam_role.licensing_2_backups_svc174.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_role" "licensing_2_deploy" {
  name                 = "hextri-1bmol0-licensing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-gus.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.brown1419" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_2_deploy__licensing_2_ops" {
  role       = aws_iam_role.licensing_2_deploy.name
  policy_arn = aws_iam_policy.licensing_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_2_deploy__licensing_2_deploy_perms" {
  role       = aws_iam_role.licensing_2_deploy.name
  policy_arn = aws_iam_policy.licensing_2_deploy_perms.arn
}

resource "aws_iam_role" "licensing_2_nb_role" {
  name                 = "hextri-1bmol0-licensing-2-nb-role"
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

resource "aws_iam_role_policy_attachment" "licensing_2_nb_role__licensing_2_data_rw" {
  role       = aws_iam_role.licensing_2_nb_role.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_2_nb_role__licensing_2_ops" {
  role       = aws_iam_role.licensing_2_nb_role.name
  policy_arn = aws_iam_policy.licensing_2_ops.arn
}

resource "aws_iam_role" "licensing_2_public_data_svc" {
  name                 = "hextri-1bmol0-licensing-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_2_public_data_svc__licensing_2_data_rw" {
  role       = aws_iam_role.licensing_2_public_data_svc.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_role" "licensing_2_svc" {
  name                 = "hextri-1bmol0-licensing-2-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_2_svc__licensing_2_data_rw" {
  role       = aws_iam_role.licensing_2_svc.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_2_svc__licensing_2_ops" {
  role       = aws_iam_role.licensing_2_svc.name
  policy_arn = aws_iam_policy.licensing_2_ops.arn
}

resource "aws_iam_instance_profile" "licensing_2_svc" {
  name = "hextri-1bmol0-licensing-2-svc"
  role = aws_iam_role.licensing_2_svc.name
}

resource "aws_iam_role" "licensing_3_audit_svc" {
  name                 = "hextri-1bmol0-licensing-3-audit-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_3_audit_svc__licensing_3_data_rw" {
  role       = aws_iam_role.licensing_3_audit_svc.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_role" "licensing_3_backups_svc" {
  name                 = "hextri-1bmol0-licensing-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_3_backups_svc__licensing_3_data_rw" {
  role       = aws_iam_role.licensing_3_backups_svc.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_role" "licensing_3_backups_svc186" {
  name                 = "hextri-1bmol0-licensing-3-backups-svc186"
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

resource "aws_iam_role_policy_attachment" "licensing_3_backups_svc186__licensing_3_data_rw" {
  role       = aws_iam_role.licensing_3_backups_svc186.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_role" "licensing_3_deploy" {
  name                 = "hextri-1bmol0-licensing-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.muller6" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_3_deploy__licensing_3_ops" {
  role       = aws_iam_role.licensing_3_deploy.name
  policy_arn = aws_iam_policy.licensing_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_3_deploy__licensing_3_deploy_perms" {
  role       = aws_iam_role.licensing_3_deploy.name
  policy_arn = aws_iam_policy.licensing_3_deploy_perms.arn
}

resource "aws_iam_role" "licensing_3_nb_role" {
  name                 = "hextri-1bmol0-licensing-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "licensing_3_nb_role__licensing_3_data_rw" {
  role       = aws_iam_role.licensing_3_nb_role.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_3_nb_role__licensing_3_ops" {
  role       = aws_iam_role.licensing_3_nb_role.name
  policy_arn = aws_iam_policy.licensing_3_ops.arn
}

resource "aws_iam_role" "licensing_3_svc" {
  name                 = "hextri-1bmol0-licensing-3-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_3_svc__licensing_3_data_rw" {
  role       = aws_iam_role.licensing_3_svc.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_3_svc__licensing_3_ops" {
  role       = aws_iam_role.licensing_3_svc.name
  policy_arn = aws_iam_policy.licensing_3_ops.arn
}

resource "aws_iam_instance_profile" "licensing_3_svc" {
  name = "hextri-1bmol0-licensing-3-svc"
  role = aws_iam_role.licensing_3_svc.name
}

resource "aws_iam_role" "licensing_4_audit_svc" {
  name                 = "hextri-1bmol0-licensing-4-audit-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_4_audit_svc__licensing_4_data_rw" {
  role       = aws_iam_role.licensing_4_audit_svc.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_role" "licensing_4_audit_svc118" {
  name                 = "hextri-1bmol0-licensing-4-audit-svc118"
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

resource "aws_iam_role_policy_attachment" "licensing_4_audit_svc118__licensing_4_data_rw" {
  role       = aws_iam_role.licensing_4_audit_svc118.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_role" "licensing_4_audit_svc198" {
  name                 = "hextri-1bmol0-licensing-4-audit-svc198"
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

resource "aws_iam_role_policy_attachment" "licensing_4_audit_svc198__licensing_4_data_rw" {
  role       = aws_iam_role.licensing_4_audit_svc198.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_role" "licensing_4_deploy" {
  name                 = "hextri-1bmol0-licensing-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-jun.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.nguyen9898" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.reddy7220" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_4_deploy__licensing_4_ops" {
  role       = aws_iam_role.licensing_4_deploy.name
  policy_arn = aws_iam_policy.licensing_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_4_deploy__licensing_4_deploy_perms" {
  role       = aws_iam_role.licensing_4_deploy.name
  policy_arn = aws_iam_policy.licensing_4_deploy_perms.arn
}

resource "aws_iam_role" "licensing_4_stack_role" {
  name                 = "hextri-1bmol0-licensing-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "licensing_4_stack_role__licensing_4_data_rw" {
  role       = aws_iam_role.licensing_4_stack_role.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_4_stack_role__licensing_4_ops" {
  role       = aws_iam_role.licensing_4_stack_role.name
  policy_arn = aws_iam_policy.licensing_4_ops.arn
}

resource "aws_iam_role" "licensing_4_svc" {
  name                 = "hextri-1bmol0-licensing-4-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_4_svc__licensing_4_data_rw" {
  role       = aws_iam_role.licensing_4_svc.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_4_svc__licensing_4_ops" {
  role       = aws_iam_role.licensing_4_svc.name
  policy_arn = aws_iam_policy.licensing_4_ops.arn
}

resource "aws_iam_instance_profile" "licensing_4_svc" {
  name = "hextri-1bmol0-licensing-4-svc"
  role = aws_iam_role.licensing_4_svc.name
}

resource "aws_iam_role" "licensing_5_deploy" {
  name                 = "hextri-1bmol0-licensing-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.larsen875" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_5_deploy__licensing_5_ops" {
  role       = aws_iam_role.licensing_5_deploy.name
  policy_arn = aws_iam_policy.licensing_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_5_deploy__licensing_5_deploy_perms" {
  role       = aws_iam_role.licensing_5_deploy.name
  policy_arn = aws_iam_policy.licensing_5_deploy_perms.arn
}

resource "aws_iam_role" "licensing_5_gis_layers_svc" {
  name                 = "hextri-1bmol0-licensing-5-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_5_gis_layers_svc__licensing_5_data_rw" {
  role       = aws_iam_role.licensing_5_gis_layers_svc.name
  policy_arn = aws_iam_policy.licensing_5_data_rw.arn
}

resource "aws_iam_role" "licensing_5_gis_layers_svc130" {
  name                 = "hextri-1bmol0-licensing-5-gis-layers-svc130"
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

resource "aws_iam_role_policy_attachment" "licensing_5_gis_layers_svc130__licensing_5_data_rw" {
  role       = aws_iam_role.licensing_5_gis_layers_svc130.name
  policy_arn = aws_iam_policy.licensing_5_data_rw.arn
}

resource "aws_iam_role" "licensing_5_gis_layers_svc210" {
  name                 = "hextri-1bmol0-licensing-5-gis-layers-svc210"
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

resource "aws_iam_role_policy_attachment" "licensing_5_gis_layers_svc210__licensing_5_data_rw" {
  role       = aws_iam_role.licensing_5_gis_layers_svc210.name
  policy_arn = aws_iam_policy.licensing_5_data_rw.arn
}

resource "aws_iam_role" "licensing_5_svc" {
  name                 = "hextri-1bmol0-licensing-5-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_5_svc__licensing_5_data_rw" {
  role       = aws_iam_role.licensing_5_svc.name
  policy_arn = aws_iam_policy.licensing_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_5_svc__licensing_5_ops" {
  role       = aws_iam_role.licensing_5_svc.name
  policy_arn = aws_iam_policy.licensing_5_ops.arn
}

resource "aws_iam_instance_profile" "licensing_5_svc" {
  name = "hextri-1bmol0-licensing-5-svc"
  role = aws_iam_role.licensing_5_svc.name
}

resource "aws_iam_role" "licensing_6_backups_svc" {
  name                 = "hextri-1bmol0-licensing-6-backups-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_6_backups_svc__licensing_6_data_rw" {
  role       = aws_iam_role.licensing_6_backups_svc.name
  policy_arn = aws_iam_policy.licensing_6_data_rw.arn
}

resource "aws_iam_role" "licensing_6_deploy" {
  name                 = "hextri-1bmol0-licensing-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-jun.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.patel972" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_6_deploy__licensing_6_ops" {
  role       = aws_iam_role.licensing_6_deploy.name
  policy_arn = aws_iam_policy.licensing_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_6_deploy__licensing_6_deploy_perms" {
  role       = aws_iam_role.licensing_6_deploy.name
  policy_arn = aws_iam_policy.licensing_6_deploy_perms.arn
}

resource "aws_iam_role" "licensing_6_records_svc" {
  name                 = "hextri-1bmol0-licensing-6-records-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_6_records_svc__licensing_6_data_rw" {
  role       = aws_iam_role.licensing_6_records_svc.name
  policy_arn = aws_iam_policy.licensing_6_data_rw.arn
}

resource "aws_iam_role" "licensing_6_records_svc222" {
  name                 = "hextri-1bmol0-licensing-6-records-svc222"
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

resource "aws_iam_role_policy_attachment" "licensing_6_records_svc222__licensing_6_data_rw" {
  role       = aws_iam_role.licensing_6_records_svc222.name
  policy_arn = aws_iam_policy.licensing_6_data_rw.arn
}

resource "aws_iam_role" "licensing_6_svc" {
  name                 = "hextri-1bmol0-licensing-6-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_6_svc__licensing_6_data_rw" {
  role       = aws_iam_role.licensing_6_svc.name
  policy_arn = aws_iam_policy.licensing_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_6_svc__licensing_6_ops" {
  role       = aws_iam_role.licensing_6_svc.name
  policy_arn = aws_iam_policy.licensing_6_ops.arn
}

resource "aws_iam_instance_profile" "licensing_6_svc" {
  name = "hextri-1bmol0-licensing-6-svc"
  role = aws_iam_role.licensing_6_svc.name
}

resource "aws_iam_role" "licensing_7_audit_svc" {
  name                 = "hextri-1bmol0-licensing-7-audit-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_7_audit_svc__licensing_7_data_rw" {
  role       = aws_iam_role.licensing_7_audit_svc.name
  policy_arn = aws_iam_policy.licensing_7_data_rw.arn
}

resource "aws_iam_role" "licensing_7_backups_svc" {
  name                 = "hextri-1bmol0-licensing-7-backups-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_7_backups_svc__licensing_7_data_rw" {
  role       = aws_iam_role.licensing_7_backups_svc.name
  policy_arn = aws_iam_policy.licensing_7_data_rw.arn
}

resource "aws_iam_role" "licensing_7_backups_svc234" {
  name                 = "hextri-1bmol0-licensing-7-backups-svc234"
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

resource "aws_iam_role_policy_attachment" "licensing_7_backups_svc234__licensing_7_data_rw" {
  role       = aws_iam_role.licensing_7_backups_svc234.name
  policy_arn = aws_iam_policy.licensing_7_data_rw.arn
}

resource "aws_iam_role" "licensing_7_deploy" {
  name                 = "hextri-1bmol0-licensing-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "licensing_7_deploy__licensing_7_ops" {
  role       = aws_iam_role.licensing_7_deploy.name
  policy_arn = aws_iam_policy.licensing_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "licensing_7_deploy__licensing_7_deploy_perms" {
  role       = aws_iam_role.licensing_7_deploy.name
  policy_arn = aws_iam_policy.licensing_7_deploy_perms.arn
}

resource "aws_iam_role" "licensing_7_svc" {
  name                 = "hextri-1bmol0-licensing-7-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_7_svc__licensing_7_data_rw" {
  role       = aws_iam_role.licensing_7_svc.name
  policy_arn = aws_iam_policy.licensing_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "licensing_7_svc__licensing_7_ops" {
  role       = aws_iam_role.licensing_7_svc.name
  policy_arn = aws_iam_policy.licensing_7_ops.arn
}

resource "aws_iam_instance_profile" "licensing_7_svc" {
  name = "hextri-1bmol0-licensing-7-svc"
  role = aws_iam_role.licensing_7_svc.name
}

resource "aws_iam_role" "licensing_backups_svc" {
  name                 = "hextri-1bmol0-licensing-backups-svc"
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
  name                 = "hextri-1bmol0-licensing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.larsen1928" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-zed.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.dubois" }
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

resource "aws_iam_role" "licensing_gis_layers_svc" {
  name                 = "hextri-1bmol0-licensing-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_gis_layers_svc__licensing_data_rw" {
  role       = aws_iam_role.licensing_gis_layers_svc.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_role" "licensing_records_svc" {
  name                 = "hextri-1bmol0-licensing-records-svc"
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

resource "aws_iam_role_policy_attachment" "licensing_records_svc__licensing_data_rw" {
  role       = aws_iam_role.licensing_records_svc.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_role" "licensing_svc" {
  name                 = "hextri-1bmol0-licensing-svc"
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
  name = "hextri-1bmol0-licensing-svc"
  role = aws_iam_role.licensing_svc.name
}

resource "aws_iam_role" "open_data_2_backups_svc" {
  name                 = "hextri-1bmol0-open-data-2-backups-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_2_backups_svc__open_data_2_data_rw" {
  role       = aws_iam_role.open_data_2_backups_svc.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_role" "open_data_2_backups_svc179" {
  name                 = "hextri-1bmol0-open-data-2-backups-svc179"
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

resource "aws_iam_role_policy_attachment" "open_data_2_backups_svc179__open_data_2_data_rw" {
  role       = aws_iam_role.open_data_2_backups_svc179.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_role" "open_data_2_deploy" {
  name                 = "hextri-1bmol0-open-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.okafor7999" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.cohen178" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_2_deploy__open_data_2_ops" {
  role       = aws_iam_role.open_data_2_deploy.name
  policy_arn = aws_iam_policy.open_data_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_2_deploy__open_data_2_deploy_perms" {
  role       = aws_iam_role.open_data_2_deploy.name
  policy_arn = aws_iam_policy.open_data_2_deploy_perms.arn
}

resource "aws_iam_role" "open_data_2_public_data_svc" {
  name                 = "hextri-1bmol0-open-data-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_2_public_data_svc__open_data_2_data_rw" {
  role       = aws_iam_role.open_data_2_public_data_svc.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_role" "open_data_2_stack_role" {
  name                 = "hextri-1bmol0-open-data-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "open_data_2_stack_role__open_data_2_data_rw" {
  role       = aws_iam_role.open_data_2_stack_role.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_2_stack_role__open_data_2_ops" {
  role       = aws_iam_role.open_data_2_stack_role.name
  policy_arn = aws_iam_policy.open_data_2_ops.arn
}

resource "aws_iam_role" "open_data_2_svc" {
  name                 = "hextri-1bmol0-open-data-2-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_2_svc__open_data_2_data_rw" {
  role       = aws_iam_role.open_data_2_svc.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_2_svc__open_data_2_ops" {
  role       = aws_iam_role.open_data_2_svc.name
  policy_arn = aws_iam_policy.open_data_2_ops.arn
}

resource "aws_iam_instance_profile" "open_data_2_svc" {
  name = "hextri-1bmol0-open-data-2-svc"
  role = aws_iam_role.open_data_2_svc.name
}

resource "aws_iam_role" "open_data_3_deploy" {
  name                 = "hextri-1bmol0-open-data-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.mehta5457" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-zed.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_3_deploy__open_data_3_ops" {
  role       = aws_iam_role.open_data_3_deploy.name
  policy_arn = aws_iam_policy.open_data_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_3_deploy__open_data_3_deploy_perms" {
  role       = aws_iam_role.open_data_3_deploy.name
  policy_arn = aws_iam_policy.open_data_3_deploy_perms.arn
}

resource "aws_iam_role" "open_data_3_filings_svc" {
  name                 = "hextri-1bmol0-open-data-3-filings-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_3_filings_svc__open_data_3_data_rw" {
  role       = aws_iam_role.open_data_3_filings_svc.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_role" "open_data_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-open-data-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_3_gis_layers_svc__open_data_3_data_rw" {
  role       = aws_iam_role.open_data_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_role" "open_data_3_nb_role" {
  name                 = "hextri-1bmol0-open-data-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "open_data_3_nb_role__open_data_3_data_rw" {
  role       = aws_iam_role.open_data_3_nb_role.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_3_nb_role__open_data_3_ops" {
  role       = aws_iam_role.open_data_3_nb_role.name
  policy_arn = aws_iam_policy.open_data_3_ops.arn
}

resource "aws_iam_role" "open_data_3_records_svc" {
  name                 = "hextri-1bmol0-open-data-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_3_records_svc__open_data_3_data_rw" {
  role       = aws_iam_role.open_data_3_records_svc.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_role" "open_data_3_svc" {
  name                 = "hextri-1bmol0-open-data-3-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_3_svc__open_data_3_data_rw" {
  role       = aws_iam_role.open_data_3_svc.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_3_svc__open_data_3_ops" {
  role       = aws_iam_role.open_data_3_svc.name
  policy_arn = aws_iam_policy.open_data_3_ops.arn
}

resource "aws_iam_instance_profile" "open_data_3_svc" {
  name = "hextri-1bmol0-open-data-3-svc"
  role = aws_iam_role.open_data_3_svc.name
}

resource "aws_iam_role" "open_data_4_deploy" {
  name                 = "hextri-1bmol0-open-data-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-alice.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-kia.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.sato11" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_4_deploy__open_data_4_ops" {
  role       = aws_iam_role.open_data_4_deploy.name
  policy_arn = aws_iam_policy.open_data_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_4_deploy__open_data_4_deploy_perms" {
  role       = aws_iam_role.open_data_4_deploy.name
  policy_arn = aws_iam_policy.open_data_4_deploy_perms.arn
}

resource "aws_iam_role" "open_data_4_records_svc" {
  name                 = "hextri-1bmol0-open-data-4-records-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_4_records_svc__open_data_4_data_rw" {
  role       = aws_iam_role.open_data_4_records_svc.name
  policy_arn = aws_iam_policy.open_data_4_data_rw.arn
}

resource "aws_iam_role" "open_data_4_records_svc123" {
  name                 = "hextri-1bmol0-open-data-4-records-svc123"
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

resource "aws_iam_role_policy_attachment" "open_data_4_records_svc123__open_data_4_data_rw" {
  role       = aws_iam_role.open_data_4_records_svc123.name
  policy_arn = aws_iam_policy.open_data_4_data_rw.arn
}

resource "aws_iam_role" "open_data_4_records_svc203" {
  name                 = "hextri-1bmol0-open-data-4-records-svc203"
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

resource "aws_iam_role_policy_attachment" "open_data_4_records_svc203__open_data_4_data_rw" {
  role       = aws_iam_role.open_data_4_records_svc203.name
  policy_arn = aws_iam_policy.open_data_4_data_rw.arn
}

resource "aws_iam_role" "open_data_4_svc" {
  name                 = "hextri-1bmol0-open-data-4-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_4_svc__open_data_4_data_rw" {
  role       = aws_iam_role.open_data_4_svc.name
  policy_arn = aws_iam_policy.open_data_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_4_svc__open_data_4_ops" {
  role       = aws_iam_role.open_data_4_svc.name
  policy_arn = aws_iam_policy.open_data_4_ops.arn
}

resource "aws_iam_instance_profile" "open_data_4_svc" {
  name = "hextri-1bmol0-open-data-4-svc"
  role = aws_iam_role.open_data_4_svc.name
}

resource "aws_iam_role" "open_data_5_deploy" {
  name                 = "hextri-1bmol0-open-data-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.dubois9026" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.ivanov" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_5_deploy__open_data_5_ops" {
  role       = aws_iam_role.open_data_5_deploy.name
  policy_arn = aws_iam_policy.open_data_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_5_deploy__open_data_5_deploy_perms" {
  role       = aws_iam_role.open_data_5_deploy.name
  policy_arn = aws_iam_policy.open_data_5_deploy_perms.arn
}

resource "aws_iam_role" "open_data_5_public_data_svc" {
  name                 = "hextri-1bmol0-open-data-5-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_5_public_data_svc__open_data_5_data_rw" {
  role       = aws_iam_role.open_data_5_public_data_svc.name
  policy_arn = aws_iam_policy.open_data_5_data_rw.arn
}

resource "aws_iam_role" "open_data_5_public_data_svc135" {
  name                 = "hextri-1bmol0-open-data-5-public-data-svc135"
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

resource "aws_iam_role_policy_attachment" "open_data_5_public_data_svc135__open_data_5_data_rw" {
  role       = aws_iam_role.open_data_5_public_data_svc135.name
  policy_arn = aws_iam_policy.open_data_5_data_rw.arn
}

resource "aws_iam_role" "open_data_5_public_data_svc215" {
  name                 = "hextri-1bmol0-open-data-5-public-data-svc215"
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

resource "aws_iam_role_policy_attachment" "open_data_5_public_data_svc215__open_data_5_data_rw" {
  role       = aws_iam_role.open_data_5_public_data_svc215.name
  policy_arn = aws_iam_policy.open_data_5_data_rw.arn
}

resource "aws_iam_role" "open_data_5_svc" {
  name                 = "hextri-1bmol0-open-data-5-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_5_svc__open_data_5_data_rw" {
  role       = aws_iam_role.open_data_5_svc.name
  policy_arn = aws_iam_policy.open_data_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_5_svc__open_data_5_ops" {
  role       = aws_iam_role.open_data_5_svc.name
  policy_arn = aws_iam_policy.open_data_5_ops.arn
}

resource "aws_iam_instance_profile" "open_data_5_svc" {
  name = "hextri-1bmol0-open-data-5-svc"
  role = aws_iam_role.open_data_5_svc.name
}

resource "aws_iam_role" "open_data_6_audit_svc" {
  name                 = "hextri-1bmol0-open-data-6-audit-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_6_audit_svc__open_data_6_data_rw" {
  role       = aws_iam_role.open_data_6_audit_svc.name
  policy_arn = aws_iam_policy.open_data_6_data_rw.arn
}

resource "aws_iam_role" "open_data_6_audit_svc147" {
  name                 = "hextri-1bmol0-open-data-6-audit-svc147"
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

resource "aws_iam_role_policy_attachment" "open_data_6_audit_svc147__open_data_6_data_rw" {
  role       = aws_iam_role.open_data_6_audit_svc147.name
  policy_arn = aws_iam_policy.open_data_6_data_rw.arn
}

resource "aws_iam_role" "open_data_6_audit_svc227" {
  name                 = "hextri-1bmol0-open-data-6-audit-svc227"
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

resource "aws_iam_role_policy_attachment" "open_data_6_audit_svc227__open_data_6_data_rw" {
  role       = aws_iam_role.open_data_6_audit_svc227.name
  policy_arn = aws_iam_policy.open_data_6_data_rw.arn
}

resource "aws_iam_role" "open_data_6_deploy" {
  name                 = "hextri-1bmol0-open-data-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.okafor408" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-kia.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-leo.patel2463" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_6_deploy__open_data_6_ops" {
  role       = aws_iam_role.open_data_6_deploy.name
  policy_arn = aws_iam_policy.open_data_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_6_deploy__open_data_6_deploy_perms" {
  role       = aws_iam_role.open_data_6_deploy.name
  policy_arn = aws_iam_policy.open_data_6_deploy_perms.arn
}

resource "aws_iam_role" "open_data_6_svc" {
  name                 = "hextri-1bmol0-open-data-6-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_6_svc__open_data_6_data_rw" {
  role       = aws_iam_role.open_data_6_svc.name
  policy_arn = aws_iam_policy.open_data_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_6_svc__open_data_6_ops" {
  role       = aws_iam_role.open_data_6_svc.name
  policy_arn = aws_iam_policy.open_data_6_ops.arn
}

resource "aws_iam_instance_profile" "open_data_6_svc" {
  name = "hextri-1bmol0-open-data-6-svc"
  role = aws_iam_role.open_data_6_svc.name
}

resource "aws_iam_role" "open_data_7_deploy" {
  name                 = "hextri-1bmol0-open-data-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-karl.brown1903" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-kia.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_7_deploy__open_data_7_ops" {
  role       = aws_iam_role.open_data_7_deploy.name
  policy_arn = aws_iam_policy.open_data_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_7_deploy__open_data_7_deploy_perms" {
  role       = aws_iam_role.open_data_7_deploy.name
  policy_arn = aws_iam_policy.open_data_7_deploy_perms.arn
}

resource "aws_iam_role" "open_data_7_public_data_svc" {
  name                 = "hextri-1bmol0-open-data-7-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_7_public_data_svc__open_data_7_data_rw" {
  role       = aws_iam_role.open_data_7_public_data_svc.name
  policy_arn = aws_iam_policy.open_data_7_data_rw.arn
}

resource "aws_iam_role" "open_data_7_public_data_svc159" {
  name                 = "hextri-1bmol0-open-data-7-public-data-svc159"
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

resource "aws_iam_role_policy_attachment" "open_data_7_public_data_svc159__open_data_7_data_rw" {
  role       = aws_iam_role.open_data_7_public_data_svc159.name
  policy_arn = aws_iam_policy.open_data_7_data_rw.arn
}

resource "aws_iam_role" "open_data_7_svc" {
  name                 = "hextri-1bmol0-open-data-7-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_7_svc__open_data_7_data_rw" {
  role       = aws_iam_role.open_data_7_svc.name
  policy_arn = aws_iam_policy.open_data_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_7_svc__open_data_7_ops" {
  role       = aws_iam_role.open_data_7_svc.name
  policy_arn = aws_iam_policy.open_data_7_ops.arn
}

resource "aws_iam_instance_profile" "open_data_7_svc" {
  name = "hextri-1bmol0-open-data-7-svc"
  role = aws_iam_role.open_data_7_svc.name
}

resource "aws_iam_role" "open_data_backups_svc" {
  name                 = "hextri-1bmol0-open-data-backups-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_backups_svc__open_data_data_rw" {
  role       = aws_iam_role.open_data_backups_svc.name
  policy_arn = aws_iam_policy.open_data_data_rw.arn
}

resource "aws_iam_role" "open_data_deploy" {
  name                 = "hextri-1bmol0-open-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.jones570" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "open_data_deploy__open_data_ops" {
  role       = aws_iam_role.open_data_deploy.name
  policy_arn = aws_iam_policy.open_data_ops.arn
}

resource "aws_iam_role_policy_attachment" "open_data_deploy__open_data_deploy_perms" {
  role       = aws_iam_role.open_data_deploy.name
  policy_arn = aws_iam_policy.open_data_deploy_perms.arn
}

resource "aws_iam_role" "open_data_public_data_svc" {
  name                 = "hextri-1bmol0-open-data-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_public_data_svc__open_data_data_rw" {
  role       = aws_iam_role.open_data_public_data_svc.name
  policy_arn = aws_iam_policy.open_data_data_rw.arn
}

resource "aws_iam_role" "open_data_records_svc" {
  name                 = "hextri-1bmol0-open-data-records-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_records_svc__open_data_data_rw" {
  role       = aws_iam_role.open_data_records_svc.name
  policy_arn = aws_iam_policy.open_data_data_rw.arn
}

resource "aws_iam_role" "open_data_svc" {
  name                 = "hextri-1bmol0-open-data-svc"
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

resource "aws_iam_role_policy_attachment" "open_data_svc__open_data_data_rw" {
  role       = aws_iam_role.open_data_svc.name
  policy_arn = aws_iam_policy.open_data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "open_data_svc__open_data_ops" {
  role       = aws_iam_role.open_data_svc.name
  policy_arn = aws_iam_policy.open_data_ops.arn
}

resource "aws_iam_instance_profile" "open_data_svc" {
  name = "hextri-1bmol0-open-data-svc"
  role = aws_iam_role.open_data_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "hextri-1bmol0-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-adm-amit.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-adm-judy.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "procurement_2_deploy" {
  name                 = "hextri-1bmol0-procurement-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.nguyen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_2_deploy__procurement_2_ops" {
  role       = aws_iam_role.procurement_2_deploy.name
  policy_arn = aws_iam_policy.procurement_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_2_deploy__procurement_2_deploy_perms" {
  role       = aws_iam_role.procurement_2_deploy.name
  policy_arn = aws_iam_policy.procurement_2_deploy_perms.arn
}

resource "aws_iam_role" "procurement_2_gis_layers_svc" {
  name                 = "hextri-1bmol0-procurement-2-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_2_gis_layers_svc__procurement_2_data_rw" {
  role       = aws_iam_role.procurement_2_gis_layers_svc.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_role" "procurement_2_gis_layers_svc176" {
  name                 = "hextri-1bmol0-procurement-2-gis-layers-svc176"
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

resource "aws_iam_role_policy_attachment" "procurement_2_gis_layers_svc176__procurement_2_data_rw" {
  role       = aws_iam_role.procurement_2_gis_layers_svc176.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_role" "procurement_2_glue_role" {
  name                 = "hextri-1bmol0-procurement-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "procurement_2_glue_role__procurement_2_data_rw" {
  role       = aws_iam_role.procurement_2_glue_role.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_2_glue_role__procurement_2_ops" {
  role       = aws_iam_role.procurement_2_glue_role.name
  policy_arn = aws_iam_policy.procurement_2_ops.arn
}

resource "aws_iam_role" "procurement_2_public_data_svc" {
  name                 = "hextri-1bmol0-procurement-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_2_public_data_svc__procurement_2_data_rw" {
  role       = aws_iam_role.procurement_2_public_data_svc.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_role" "procurement_2_svc" {
  name                 = "hextri-1bmol0-procurement-2-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_2_svc__procurement_2_data_rw" {
  role       = aws_iam_role.procurement_2_svc.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_2_svc__procurement_2_ops" {
  role       = aws_iam_role.procurement_2_svc.name
  policy_arn = aws_iam_policy.procurement_2_ops.arn
}

resource "aws_iam_instance_profile" "procurement_2_svc" {
  name = "hextri-1bmol0-procurement-2-svc"
  role = aws_iam_role.procurement_2_svc.name
}

resource "aws_iam_role" "procurement_3_audit_svc" {
  name                 = "hextri-1bmol0-procurement-3-audit-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_3_audit_svc__procurement_3_data_rw" {
  role       = aws_iam_role.procurement_3_audit_svc.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_role" "procurement_3_deploy" {
  name                 = "hextri-1bmol0-procurement-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-raj.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_3_deploy__procurement_3_ops" {
  role       = aws_iam_role.procurement_3_deploy.name
  policy_arn = aws_iam_policy.procurement_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_3_deploy__procurement_3_deploy_perms" {
  role       = aws_iam_role.procurement_3_deploy.name
  policy_arn = aws_iam_policy.procurement_3_deploy_perms.arn
}

resource "aws_iam_role" "procurement_3_nb_role" {
  name                 = "hextri-1bmol0-procurement-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "procurement_3_nb_role__procurement_3_data_rw" {
  role       = aws_iam_role.procurement_3_nb_role.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_3_nb_role__procurement_3_ops" {
  role       = aws_iam_role.procurement_3_nb_role.name
  policy_arn = aws_iam_policy.procurement_3_ops.arn
}

resource "aws_iam_role" "procurement_3_public_data_svc" {
  name                 = "hextri-1bmol0-procurement-3-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_3_public_data_svc__procurement_3_data_rw" {
  role       = aws_iam_role.procurement_3_public_data_svc.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_role" "procurement_3_records_svc" {
  name                 = "hextri-1bmol0-procurement-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_3_records_svc__procurement_3_data_rw" {
  role       = aws_iam_role.procurement_3_records_svc.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_role" "procurement_3_svc" {
  name                 = "hextri-1bmol0-procurement-3-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_3_svc__procurement_3_data_rw" {
  role       = aws_iam_role.procurement_3_svc.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_3_svc__procurement_3_ops" {
  role       = aws_iam_role.procurement_3_svc.name
  policy_arn = aws_iam_policy.procurement_3_ops.arn
}

resource "aws_iam_instance_profile" "procurement_3_svc" {
  name = "hextri-1bmol0-procurement-3-svc"
  role = aws_iam_role.procurement_3_svc.name
}

resource "aws_iam_role" "procurement_4_audit_svc" {
  name                 = "hextri-1bmol0-procurement-4-audit-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_4_audit_svc__procurement_4_data_rw" {
  role       = aws_iam_role.procurement_4_audit_svc.name
  policy_arn = aws_iam_policy.procurement_4_data_rw.arn
}

resource "aws_iam_role" "procurement_4_audit_svc200" {
  name                 = "hextri-1bmol0-procurement-4-audit-svc200"
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

resource "aws_iam_role_policy_attachment" "procurement_4_audit_svc200__procurement_4_data_rw" {
  role       = aws_iam_role.procurement_4_audit_svc200.name
  policy_arn = aws_iam_policy.procurement_4_data_rw.arn
}

resource "aws_iam_role" "procurement_4_deploy" {
  name                 = "hextri-1bmol0-procurement-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.lopez" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_4_deploy__procurement_4_ops" {
  role       = aws_iam_role.procurement_4_deploy.name
  policy_arn = aws_iam_policy.procurement_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_4_deploy__procurement_4_deploy_perms" {
  role       = aws_iam_role.procurement_4_deploy.name
  policy_arn = aws_iam_policy.procurement_4_deploy_perms.arn
}

resource "aws_iam_role" "procurement_4_gis_layers_svc" {
  name                 = "hextri-1bmol0-procurement-4-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_4_gis_layers_svc__procurement_4_data_rw" {
  role       = aws_iam_role.procurement_4_gis_layers_svc.name
  policy_arn = aws_iam_policy.procurement_4_data_rw.arn
}

resource "aws_iam_role" "procurement_4_svc" {
  name                 = "hextri-1bmol0-procurement-4-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_4_svc__procurement_4_data_rw" {
  role       = aws_iam_role.procurement_4_svc.name
  policy_arn = aws_iam_policy.procurement_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_4_svc__procurement_4_ops" {
  role       = aws_iam_role.procurement_4_svc.name
  policy_arn = aws_iam_policy.procurement_4_ops.arn
}

resource "aws_iam_instance_profile" "procurement_4_svc" {
  name = "hextri-1bmol0-procurement-4-svc"
  role = aws_iam_role.procurement_4_svc.name
}

resource "aws_iam_role" "procurement_5_audit_svc" {
  name                 = "hextri-1bmol0-procurement-5-audit-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_5_audit_svc__procurement_5_data_rw" {
  role       = aws_iam_role.procurement_5_audit_svc.name
  policy_arn = aws_iam_policy.procurement_5_data_rw.arn
}

resource "aws_iam_role" "procurement_5_deploy" {
  name                 = "hextri-1bmol0-procurement-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-kia.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_5_deploy__procurement_5_ops" {
  role       = aws_iam_role.procurement_5_deploy.name
  policy_arn = aws_iam_policy.procurement_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_5_deploy__procurement_5_deploy_perms" {
  role       = aws_iam_role.procurement_5_deploy.name
  policy_arn = aws_iam_policy.procurement_5_deploy_perms.arn
}

resource "aws_iam_role" "procurement_5_records_svc" {
  name                 = "hextri-1bmol0-procurement-5-records-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_5_records_svc__procurement_5_data_rw" {
  role       = aws_iam_role.procurement_5_records_svc.name
  policy_arn = aws_iam_policy.procurement_5_data_rw.arn
}

resource "aws_iam_role" "procurement_5_records_svc212" {
  name                 = "hextri-1bmol0-procurement-5-records-svc212"
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

resource "aws_iam_role_policy_attachment" "procurement_5_records_svc212__procurement_5_data_rw" {
  role       = aws_iam_role.procurement_5_records_svc212.name
  policy_arn = aws_iam_policy.procurement_5_data_rw.arn
}

resource "aws_iam_role" "procurement_5_svc" {
  name                 = "hextri-1bmol0-procurement-5-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_5_svc__procurement_5_data_rw" {
  role       = aws_iam_role.procurement_5_svc.name
  policy_arn = aws_iam_policy.procurement_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_5_svc__procurement_5_ops" {
  role       = aws_iam_role.procurement_5_svc.name
  policy_arn = aws_iam_policy.procurement_5_ops.arn
}

resource "aws_iam_instance_profile" "procurement_5_svc" {
  name = "hextri-1bmol0-procurement-5-svc"
  role = aws_iam_role.procurement_5_svc.name
}

resource "aws_iam_role" "procurement_6_deploy" {
  name                 = "hextri-1bmol0-procurement-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-vik.silva9681" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-sara.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_6_deploy__procurement_6_ops" {
  role       = aws_iam_role.procurement_6_deploy.name
  policy_arn = aws_iam_policy.procurement_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_6_deploy__procurement_6_deploy_perms" {
  role       = aws_iam_role.procurement_6_deploy.name
  policy_arn = aws_iam_policy.procurement_6_deploy_perms.arn
}

resource "aws_iam_role" "procurement_6_filings_svc" {
  name                 = "hextri-1bmol0-procurement-6-filings-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_6_filings_svc__procurement_6_data_rw" {
  role       = aws_iam_role.procurement_6_filings_svc.name
  policy_arn = aws_iam_policy.procurement_6_data_rw.arn
}

resource "aws_iam_role" "procurement_6_filings_svc144" {
  name                 = "hextri-1bmol0-procurement-6-filings-svc144"
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

resource "aws_iam_role_policy_attachment" "procurement_6_filings_svc144__procurement_6_data_rw" {
  role       = aws_iam_role.procurement_6_filings_svc144.name
  policy_arn = aws_iam_policy.procurement_6_data_rw.arn
}

resource "aws_iam_role" "procurement_6_filings_svc224" {
  name                 = "hextri-1bmol0-procurement-6-filings-svc224"
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

resource "aws_iam_role_policy_attachment" "procurement_6_filings_svc224__procurement_6_data_rw" {
  role       = aws_iam_role.procurement_6_filings_svc224.name
  policy_arn = aws_iam_policy.procurement_6_data_rw.arn
}

resource "aws_iam_role" "procurement_6_svc" {
  name                 = "hextri-1bmol0-procurement-6-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_6_svc__procurement_6_data_rw" {
  role       = aws_iam_role.procurement_6_svc.name
  policy_arn = aws_iam_policy.procurement_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_6_svc__procurement_6_ops" {
  role       = aws_iam_role.procurement_6_svc.name
  policy_arn = aws_iam_policy.procurement_6_ops.arn
}

resource "aws_iam_instance_profile" "procurement_6_svc" {
  name = "hextri-1bmol0-procurement-6-svc"
  role = aws_iam_role.procurement_6_svc.name
}

resource "aws_iam_role" "procurement_7_deploy" {
  name                 = "hextri-1bmol0-procurement-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.haddad8962" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-gus.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_7_deploy__procurement_7_ops" {
  role       = aws_iam_role.procurement_7_deploy.name
  policy_arn = aws_iam_policy.procurement_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_7_deploy__procurement_7_deploy_perms" {
  role       = aws_iam_role.procurement_7_deploy.name
  policy_arn = aws_iam_policy.procurement_7_deploy_perms.arn
}

resource "aws_iam_role" "procurement_7_gis_layers_svc" {
  name                 = "hextri-1bmol0-procurement-7-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_7_gis_layers_svc__procurement_7_data_rw" {
  role       = aws_iam_role.procurement_7_gis_layers_svc.name
  policy_arn = aws_iam_policy.procurement_7_data_rw.arn
}

resource "aws_iam_role" "procurement_7_gis_layers_svc156" {
  name                 = "hextri-1bmol0-procurement-7-gis-layers-svc156"
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

resource "aws_iam_role_policy_attachment" "procurement_7_gis_layers_svc156__procurement_7_data_rw" {
  role       = aws_iam_role.procurement_7_gis_layers_svc156.name
  policy_arn = aws_iam_policy.procurement_7_data_rw.arn
}

resource "aws_iam_role" "procurement_7_svc" {
  name                 = "hextri-1bmol0-procurement-7-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_7_svc__procurement_7_data_rw" {
  role       = aws_iam_role.procurement_7_svc.name
  policy_arn = aws_iam_policy.procurement_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_7_svc__procurement_7_ops" {
  role       = aws_iam_role.procurement_7_svc.name
  policy_arn = aws_iam_policy.procurement_7_ops.arn
}

resource "aws_iam_instance_profile" "procurement_7_svc" {
  name = "hextri-1bmol0-procurement-7-svc"
  role = aws_iam_role.procurement_7_svc.name
}

resource "aws_iam_role" "procurement_deploy" {
  name                 = "hextri-1bmol0-procurement-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "procurement_deploy__procurement_ops" {
  role       = aws_iam_role.procurement_deploy.name
  policy_arn = aws_iam_policy.procurement_ops.arn
}

resource "aws_iam_role_policy_attachment" "procurement_deploy__procurement_deploy_perms" {
  role       = aws_iam_role.procurement_deploy.name
  policy_arn = aws_iam_policy.procurement_deploy_perms.arn
}

resource "aws_iam_role" "procurement_gis_layers_svc" {
  name                 = "hextri-1bmol0-procurement-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_gis_layers_svc__procurement_data_rw" {
  role       = aws_iam_role.procurement_gis_layers_svc.name
  policy_arn = aws_iam_policy.procurement_data_rw.arn
}

resource "aws_iam_role" "procurement_gis_layers_svc164" {
  name                 = "hextri-1bmol0-procurement-gis-layers-svc164"
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

resource "aws_iam_role_policy_attachment" "procurement_gis_layers_svc164__procurement_data_rw" {
  role       = aws_iam_role.procurement_gis_layers_svc164.name
  policy_arn = aws_iam_policy.procurement_data_rw.arn
}

resource "aws_iam_role" "procurement_gis_layers_svc84" {
  name                 = "hextri-1bmol0-procurement-gis-layers-svc84"
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

resource "aws_iam_role_policy_attachment" "procurement_gis_layers_svc84__procurement_data_rw" {
  role       = aws_iam_role.procurement_gis_layers_svc84.name
  policy_arn = aws_iam_policy.procurement_data_rw.arn
}

resource "aws_iam_role" "procurement_svc" {
  name                 = "hextri-1bmol0-procurement-svc"
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

resource "aws_iam_role_policy_attachment" "procurement_svc__procurement_data_rw" {
  role       = aws_iam_role.procurement_svc.name
  policy_arn = aws_iam_policy.procurement_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "procurement_svc__procurement_ops" {
  role       = aws_iam_role.procurement_svc.name
  policy_arn = aws_iam_policy.procurement_ops.arn
}

resource "aws_iam_instance_profile" "procurement_svc" {
  name = "hextri-1bmol0-procurement-svc"
  role = aws_iam_role.procurement_svc.name
}

resource "aws_iam_role" "public_safety_2_backups_svc" {
  name                 = "hextri-1bmol0-public-safety-2-backups-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_2_backups_svc__public_safety_2_data_rw" {
  role       = aws_iam_role.public_safety_2_backups_svc.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_role" "public_safety_2_deploy" {
  name                 = "hextri-1bmol0-public-safety-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.okafor8141" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_2_deploy__public_safety_2_ops" {
  role       = aws_iam_role.public_safety_2_deploy.name
  policy_arn = aws_iam_policy.public_safety_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_2_deploy__public_safety_2_deploy_perms" {
  role       = aws_iam_role.public_safety_2_deploy.name
  policy_arn = aws_iam_policy.public_safety_2_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_2_gis_layers_svc" {
  name                 = "hextri-1bmol0-public-safety-2-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_2_gis_layers_svc__public_safety_2_data_rw" {
  role       = aws_iam_role.public_safety_2_gis_layers_svc.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_role" "public_safety_2_glue_role" {
  name                 = "hextri-1bmol0-public-safety-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "public_safety_2_glue_role__public_safety_2_data_rw" {
  role       = aws_iam_role.public_safety_2_glue_role.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_2_glue_role__public_safety_2_ops" {
  role       = aws_iam_role.public_safety_2_glue_role.name
  policy_arn = aws_iam_policy.public_safety_2_ops.arn
}

resource "aws_iam_role" "public_safety_2_public_data_svc" {
  name                 = "hextri-1bmol0-public-safety-2-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_2_public_data_svc__public_safety_2_data_rw" {
  role       = aws_iam_role.public_safety_2_public_data_svc.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_role" "public_safety_2_svc" {
  name                 = "hextri-1bmol0-public-safety-2-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_2_svc__public_safety_2_data_rw" {
  role       = aws_iam_role.public_safety_2_svc.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_2_svc__public_safety_2_ops" {
  role       = aws_iam_role.public_safety_2_svc.name
  policy_arn = aws_iam_policy.public_safety_2_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_2_svc" {
  name = "hextri-1bmol0-public-safety-2-svc"
  role = aws_iam_role.public_safety_2_svc.name
}

resource "aws_iam_role" "public_safety_3_backups_svc" {
  name                 = "hextri-1bmol0-public-safety-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_3_backups_svc__public_safety_3_data_rw" {
  role       = aws_iam_role.public_safety_3_backups_svc.name
  policy_arn = aws_iam_policy.public_safety_3_data_rw.arn
}

resource "aws_iam_role" "public_safety_3_deploy" {
  name                 = "hextri-1bmol0-public-safety-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-fay.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-mei.ivanov" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_3_deploy__public_safety_3_ops" {
  role       = aws_iam_role.public_safety_3_deploy.name
  policy_arn = aws_iam_policy.public_safety_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_3_deploy__public_safety_3_deploy_perms" {
  role       = aws_iam_role.public_safety_3_deploy.name
  policy_arn = aws_iam_policy.public_safety_3_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-public-safety-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_3_gis_layers_svc__public_safety_3_data_rw" {
  role       = aws_iam_role.public_safety_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.public_safety_3_data_rw.arn
}

resource "aws_iam_role" "public_safety_3_public_data_svc" {
  name                 = "hextri-1bmol0-public-safety-3-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_3_public_data_svc__public_safety_3_data_rw" {
  role       = aws_iam_role.public_safety_3_public_data_svc.name
  policy_arn = aws_iam_policy.public_safety_3_data_rw.arn
}

resource "aws_iam_role" "public_safety_3_svc" {
  name                 = "hextri-1bmol0-public-safety-3-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_3_svc__public_safety_3_data_rw" {
  role       = aws_iam_role.public_safety_3_svc.name
  policy_arn = aws_iam_policy.public_safety_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_3_svc__public_safety_3_ops" {
  role       = aws_iam_role.public_safety_3_svc.name
  policy_arn = aws_iam_policy.public_safety_3_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_3_svc" {
  name = "hextri-1bmol0-public-safety-3-svc"
  role = aws_iam_role.public_safety_3_svc.name
}

resource "aws_iam_role" "public_safety_4_audit_svc" {
  name                 = "hextri-1bmol0-public-safety-4-audit-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_4_audit_svc__public_safety_4_data_rw" {
  role       = aws_iam_role.public_safety_4_audit_svc.name
  policy_arn = aws_iam_policy.public_safety_4_data_rw.arn
}

resource "aws_iam_role" "public_safety_4_deploy" {
  name                 = "hextri-1bmol0-public-safety-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_4_deploy__public_safety_4_ops" {
  role       = aws_iam_role.public_safety_4_deploy.name
  policy_arn = aws_iam_policy.public_safety_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_4_deploy__public_safety_4_deploy_perms" {
  role       = aws_iam_role.public_safety_4_deploy.name
  policy_arn = aws_iam_policy.public_safety_4_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_4_filings_svc" {
  name                 = "hextri-1bmol0-public-safety-4-filings-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_4_filings_svc__public_safety_4_data_rw" {
  role       = aws_iam_role.public_safety_4_filings_svc.name
  policy_arn = aws_iam_policy.public_safety_4_data_rw.arn
}

resource "aws_iam_role" "public_safety_4_gis_layers_svc" {
  name                 = "hextri-1bmol0-public-safety-4-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_4_gis_layers_svc__public_safety_4_data_rw" {
  role       = aws_iam_role.public_safety_4_gis_layers_svc.name
  policy_arn = aws_iam_policy.public_safety_4_data_rw.arn
}

resource "aws_iam_role" "public_safety_4_svc" {
  name                 = "hextri-1bmol0-public-safety-4-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_4_svc__public_safety_4_data_rw" {
  role       = aws_iam_role.public_safety_4_svc.name
  policy_arn = aws_iam_policy.public_safety_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_4_svc__public_safety_4_ops" {
  role       = aws_iam_role.public_safety_4_svc.name
  policy_arn = aws_iam_policy.public_safety_4_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_4_svc" {
  name = "hextri-1bmol0-public-safety-4-svc"
  role = aws_iam_role.public_safety_4_svc.name
}

resource "aws_iam_role" "public_safety_5_deploy" {
  name                 = "hextri-1bmol0-public-safety-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-yara.rossi5371" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_5_deploy__public_safety_5_ops" {
  role       = aws_iam_role.public_safety_5_deploy.name
  policy_arn = aws_iam_policy.public_safety_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_5_deploy__public_safety_5_deploy_perms" {
  role       = aws_iam_role.public_safety_5_deploy.name
  policy_arn = aws_iam_policy.public_safety_5_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_5_filings_svc" {
  name                 = "hextri-1bmol0-public-safety-5-filings-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_5_filings_svc__public_safety_5_data_rw" {
  role       = aws_iam_role.public_safety_5_filings_svc.name
  policy_arn = aws_iam_policy.public_safety_5_data_rw.arn
}

resource "aws_iam_role" "public_safety_5_filings_svc214" {
  name                 = "hextri-1bmol0-public-safety-5-filings-svc214"
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

resource "aws_iam_role_policy_attachment" "public_safety_5_filings_svc214__public_safety_5_data_rw" {
  role       = aws_iam_role.public_safety_5_filings_svc214.name
  policy_arn = aws_iam_policy.public_safety_5_data_rw.arn
}

resource "aws_iam_role" "public_safety_5_gis_layers_svc" {
  name                 = "hextri-1bmol0-public-safety-5-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_5_gis_layers_svc__public_safety_5_data_rw" {
  role       = aws_iam_role.public_safety_5_gis_layers_svc.name
  policy_arn = aws_iam_policy.public_safety_5_data_rw.arn
}

resource "aws_iam_role" "public_safety_5_svc" {
  name                 = "hextri-1bmol0-public-safety-5-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_5_svc__public_safety_5_data_rw" {
  role       = aws_iam_role.public_safety_5_svc.name
  policy_arn = aws_iam_policy.public_safety_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_5_svc__public_safety_5_ops" {
  role       = aws_iam_role.public_safety_5_svc.name
  policy_arn = aws_iam_policy.public_safety_5_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_5_svc" {
  name = "hextri-1bmol0-public-safety-5-svc"
  role = aws_iam_role.public_safety_5_svc.name
}

resource "aws_iam_role" "public_safety_6_deploy" {
  name                 = "hextri-1bmol0-public-safety-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-frank.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.larsen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_6_deploy__public_safety_6_ops" {
  role       = aws_iam_role.public_safety_6_deploy.name
  policy_arn = aws_iam_policy.public_safety_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_6_deploy__public_safety_6_deploy_perms" {
  role       = aws_iam_role.public_safety_6_deploy.name
  policy_arn = aws_iam_policy.public_safety_6_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_6_filings_svc" {
  name                 = "hextri-1bmol0-public-safety-6-filings-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_6_filings_svc__public_safety_6_data_rw" {
  role       = aws_iam_role.public_safety_6_filings_svc.name
  policy_arn = aws_iam_policy.public_safety_6_data_rw.arn
}

resource "aws_iam_role" "public_safety_6_gis_layers_svc" {
  name                 = "hextri-1bmol0-public-safety-6-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_6_gis_layers_svc__public_safety_6_data_rw" {
  role       = aws_iam_role.public_safety_6_gis_layers_svc.name
  policy_arn = aws_iam_policy.public_safety_6_data_rw.arn
}

resource "aws_iam_role" "public_safety_6_records_svc" {
  name                 = "hextri-1bmol0-public-safety-6-records-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_6_records_svc__public_safety_6_data_rw" {
  role       = aws_iam_role.public_safety_6_records_svc.name
  policy_arn = aws_iam_policy.public_safety_6_data_rw.arn
}

resource "aws_iam_role" "public_safety_6_svc" {
  name                 = "hextri-1bmol0-public-safety-6-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_6_svc__public_safety_6_data_rw" {
  role       = aws_iam_role.public_safety_6_svc.name
  policy_arn = aws_iam_policy.public_safety_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_6_svc__public_safety_6_ops" {
  role       = aws_iam_role.public_safety_6_svc.name
  policy_arn = aws_iam_policy.public_safety_6_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_6_svc" {
  name = "hextri-1bmol0-public-safety-6-svc"
  role = aws_iam_role.public_safety_6_svc.name
}

resource "aws_iam_role" "public_safety_7_backups_svc" {
  name                 = "hextri-1bmol0-public-safety-7-backups-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_7_backups_svc__public_safety_7_data_rw" {
  role       = aws_iam_role.public_safety_7_backups_svc.name
  policy_arn = aws_iam_policy.public_safety_7_data_rw.arn
}

resource "aws_iam_role" "public_safety_7_deploy" {
  name                 = "hextri-1bmol0-public-safety-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-priya.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bela.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-wen.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_7_deploy__public_safety_7_ops" {
  role       = aws_iam_role.public_safety_7_deploy.name
  policy_arn = aws_iam_policy.public_safety_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_7_deploy__public_safety_7_deploy_perms" {
  role       = aws_iam_role.public_safety_7_deploy.name
  policy_arn = aws_iam_policy.public_safety_7_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_7_records_svc" {
  name                 = "hextri-1bmol0-public-safety-7-records-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_7_records_svc__public_safety_7_data_rw" {
  role       = aws_iam_role.public_safety_7_records_svc.name
  policy_arn = aws_iam_policy.public_safety_7_data_rw.arn
}

resource "aws_iam_role" "public_safety_7_svc" {
  name                 = "hextri-1bmol0-public-safety-7-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_7_svc__public_safety_7_data_rw" {
  role       = aws_iam_role.public_safety_7_svc.name
  policy_arn = aws_iam_policy.public_safety_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_7_svc__public_safety_7_ops" {
  role       = aws_iam_role.public_safety_7_svc.name
  policy_arn = aws_iam_policy.public_safety_7_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_7_svc" {
  name = "hextri-1bmol0-public-safety-7-svc"
  role = aws_iam_role.public_safety_7_svc.name
}

resource "aws_iam_role" "public_safety_backups_svc" {
  name                 = "hextri-1bmol0-public-safety-backups-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_backups_svc__public_safety_data_rw" {
  role       = aws_iam_role.public_safety_backups_svc.name
  policy_arn = aws_iam_policy.public_safety_data_rw.arn
}

resource "aws_iam_role" "public_safety_deploy" {
  name                 = "hextri-1bmol0-public-safety-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.patel1247" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "public_safety_deploy__public_safety_ops" {
  role       = aws_iam_role.public_safety_deploy.name
  policy_arn = aws_iam_policy.public_safety_ops.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_deploy__public_safety_deploy_perms" {
  role       = aws_iam_role.public_safety_deploy.name
  policy_arn = aws_iam_policy.public_safety_deploy_perms.arn
}

resource "aws_iam_role" "public_safety_records_svc" {
  name                 = "hextri-1bmol0-public-safety-records-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_records_svc__public_safety_data_rw" {
  role       = aws_iam_role.public_safety_records_svc.name
  policy_arn = aws_iam_policy.public_safety_data_rw.arn
}

resource "aws_iam_role" "public_safety_records_svc166" {
  name                 = "hextri-1bmol0-public-safety-records-svc166"
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

resource "aws_iam_role_policy_attachment" "public_safety_records_svc166__public_safety_data_rw" {
  role       = aws_iam_role.public_safety_records_svc166.name
  policy_arn = aws_iam_policy.public_safety_data_rw.arn
}

resource "aws_iam_role" "public_safety_svc" {
  name                 = "hextri-1bmol0-public-safety-svc"
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

resource "aws_iam_role_policy_attachment" "public_safety_svc__public_safety_data_rw" {
  role       = aws_iam_role.public_safety_svc.name
  policy_arn = aws_iam_policy.public_safety_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "public_safety_svc__public_safety_ops" {
  role       = aws_iam_role.public_safety_svc.name
  policy_arn = aws_iam_policy.public_safety_ops.arn
}

resource "aws_iam_instance_profile" "public_safety_svc" {
  name = "hextri-1bmol0-public-safety-svc"
  role = aws_iam_role.public_safety_svc.name
}

resource "aws_iam_role" "records_2_audit_svc" {
  name                 = "hextri-1bmol0-records-2-audit-svc"
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

resource "aws_iam_role_policy_attachment" "records_2_audit_svc__records_2_data_rw" {
  role       = aws_iam_role.records_2_audit_svc.name
  policy_arn = aws_iam_policy.records_2_data_rw.arn
}

resource "aws_iam_role" "records_2_backups_svc" {
  name                 = "hextri-1bmol0-records-2-backups-svc"
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

resource "aws_iam_role_policy_attachment" "records_2_backups_svc__records_2_data_rw" {
  role       = aws_iam_role.records_2_backups_svc.name
  policy_arn = aws_iam_policy.records_2_data_rw.arn
}

resource "aws_iam_role" "records_2_deploy" {
  name                 = "hextri-1bmol0-records-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_2_deploy__records_2_ops" {
  role       = aws_iam_role.records_2_deploy.name
  policy_arn = aws_iam_policy.records_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_2_deploy__records_2_deploy_perms" {
  role       = aws_iam_role.records_2_deploy.name
  policy_arn = aws_iam_policy.records_2_deploy_perms.arn
}

resource "aws_iam_role" "records_2_records_svc" {
  name                 = "hextri-1bmol0-records-2-records-svc"
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

resource "aws_iam_role_policy_attachment" "records_2_records_svc__records_2_data_rw" {
  role       = aws_iam_role.records_2_records_svc.name
  policy_arn = aws_iam_policy.records_2_data_rw.arn
}

resource "aws_iam_role" "records_2_svc" {
  name                 = "hextri-1bmol0-records-2-svc"
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

resource "aws_iam_role_policy_attachment" "records_2_svc__records_2_data_rw" {
  role       = aws_iam_role.records_2_svc.name
  policy_arn = aws_iam_policy.records_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_2_svc__records_2_ops" {
  role       = aws_iam_role.records_2_svc.name
  policy_arn = aws_iam_policy.records_2_ops.arn
}

resource "aws_iam_instance_profile" "records_2_svc" {
  name = "hextri-1bmol0-records-2-svc"
  role = aws_iam_role.records_2_svc.name
}

resource "aws_iam_role" "records_3_backups_svc" {
  name                 = "hextri-1bmol0-records-3-backups-svc"
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

resource "aws_iam_role_policy_attachment" "records_3_backups_svc__records_3_data_rw" {
  role       = aws_iam_role.records_3_backups_svc.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_role" "records_3_deploy" {
  name                 = "hextri-1bmol0-records-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-vik.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-noor.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_3_deploy__records_3_ops" {
  role       = aws_iam_role.records_3_deploy.name
  policy_arn = aws_iam_policy.records_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_3_deploy__records_3_deploy_perms" {
  role       = aws_iam_role.records_3_deploy.name
  policy_arn = aws_iam_policy.records_3_deploy_perms.arn
}

resource "aws_iam_role" "records_3_filings_svc" {
  name                 = "hextri-1bmol0-records-3-filings-svc"
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

resource "aws_iam_role_policy_attachment" "records_3_filings_svc__records_3_data_rw" {
  role       = aws_iam_role.records_3_filings_svc.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_role" "records_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-records-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "records_3_gis_layers_svc__records_3_data_rw" {
  role       = aws_iam_role.records_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_role" "records_3_glue_role" {
  name                 = "hextri-1bmol0-records-3-glue-role"
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

resource "aws_iam_role_policy_attachment" "records_3_glue_role__records_3_data_rw" {
  role       = aws_iam_role.records_3_glue_role.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_3_glue_role__records_3_ops" {
  role       = aws_iam_role.records_3_glue_role.name
  policy_arn = aws_iam_policy.records_3_ops.arn
}

resource "aws_iam_role" "records_3_svc" {
  name                 = "hextri-1bmol0-records-3-svc"
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

resource "aws_iam_role_policy_attachment" "records_3_svc__records_3_data_rw" {
  role       = aws_iam_role.records_3_svc.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_3_svc__records_3_ops" {
  role       = aws_iam_role.records_3_svc.name
  policy_arn = aws_iam_policy.records_3_ops.arn
}

resource "aws_iam_instance_profile" "records_3_svc" {
  name = "hextri-1bmol0-records-3-svc"
  role = aws_iam_role.records_3_svc.name
}

resource "aws_iam_role" "records_4_backups_svc" {
  name                 = "hextri-1bmol0-records-4-backups-svc"
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

resource "aws_iam_role_policy_attachment" "records_4_backups_svc__records_4_data_rw" {
  role       = aws_iam_role.records_4_backups_svc.name
  policy_arn = aws_iam_policy.records_4_data_rw.arn
}

resource "aws_iam_role" "records_4_backups_svc197" {
  name                 = "hextri-1bmol0-records-4-backups-svc197"
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

resource "aws_iam_role_policy_attachment" "records_4_backups_svc197__records_4_data_rw" {
  role       = aws_iam_role.records_4_backups_svc197.name
  policy_arn = aws_iam_policy.records_4_data_rw.arn
}

resource "aws_iam_role" "records_4_deploy" {
  name                 = "hextri-1bmol0-records-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-xia.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-judy.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-xia.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.miller3620" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_4_deploy__records_4_ops" {
  role       = aws_iam_role.records_4_deploy.name
  policy_arn = aws_iam_policy.records_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_4_deploy__records_4_deploy_perms" {
  role       = aws_iam_role.records_4_deploy.name
  policy_arn = aws_iam_policy.records_4_deploy_perms.arn
}

resource "aws_iam_role" "records_4_records_svc" {
  name                 = "hextri-1bmol0-records-4-records-svc"
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

resource "aws_iam_role_policy_attachment" "records_4_records_svc__records_4_data_rw" {
  role       = aws_iam_role.records_4_records_svc.name
  policy_arn = aws_iam_policy.records_4_data_rw.arn
}

resource "aws_iam_role" "records_4_svc" {
  name                 = "hextri-1bmol0-records-4-svc"
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

resource "aws_iam_role_policy_attachment" "records_4_svc__records_4_data_rw" {
  role       = aws_iam_role.records_4_svc.name
  policy_arn = aws_iam_policy.records_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_4_svc__records_4_ops" {
  role       = aws_iam_role.records_4_svc.name
  policy_arn = aws_iam_policy.records_4_ops.arn
}

resource "aws_iam_instance_profile" "records_4_svc" {
  name = "hextri-1bmol0-records-4-svc"
  role = aws_iam_role.records_4_svc.name
}

resource "aws_iam_role" "records_5_deploy" {
  name                 = "hextri-1bmol0-records-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.garcia1956" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-chen.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-tom.nguyen6513" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_5_deploy__records_5_ops" {
  role       = aws_iam_role.records_5_deploy.name
  policy_arn = aws_iam_policy.records_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_5_deploy__records_5_deploy_perms" {
  role       = aws_iam_role.records_5_deploy.name
  policy_arn = aws_iam_policy.records_5_deploy_perms.arn
}

resource "aws_iam_role" "records_5_gis_layers_svc" {
  name                 = "hextri-1bmol0-records-5-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "records_5_gis_layers_svc__records_5_data_rw" {
  role       = aws_iam_role.records_5_gis_layers_svc.name
  policy_arn = aws_iam_policy.records_5_data_rw.arn
}

resource "aws_iam_role" "records_5_public_data_svc" {
  name                 = "hextri-1bmol0-records-5-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "records_5_public_data_svc__records_5_data_rw" {
  role       = aws_iam_role.records_5_public_data_svc.name
  policy_arn = aws_iam_policy.records_5_data_rw.arn
}

resource "aws_iam_role" "records_5_records_svc" {
  name                 = "hextri-1bmol0-records-5-records-svc"
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

resource "aws_iam_role_policy_attachment" "records_5_records_svc__records_5_data_rw" {
  role       = aws_iam_role.records_5_records_svc.name
  policy_arn = aws_iam_policy.records_5_data_rw.arn
}

resource "aws_iam_role" "records_5_svc" {
  name                 = "hextri-1bmol0-records-5-svc"
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

resource "aws_iam_role_policy_attachment" "records_5_svc__records_5_data_rw" {
  role       = aws_iam_role.records_5_svc.name
  policy_arn = aws_iam_policy.records_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_5_svc__records_5_ops" {
  role       = aws_iam_role.records_5_svc.name
  policy_arn = aws_iam_policy.records_5_ops.arn
}

resource "aws_iam_instance_profile" "records_5_svc" {
  name = "hextri-1bmol0-records-5-svc"
  role = aws_iam_role.records_5_svc.name
}

resource "aws_iam_role" "records_6_audit_svc" {
  name                 = "hextri-1bmol0-records-6-audit-svc"
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

resource "aws_iam_role_policy_attachment" "records_6_audit_svc__records_6_data_rw" {
  role       = aws_iam_role.records_6_audit_svc.name
  policy_arn = aws_iam_policy.records_6_data_rw.arn
}

resource "aws_iam_role" "records_6_audit_svc141" {
  name                 = "hextri-1bmol0-records-6-audit-svc141"
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

resource "aws_iam_role_policy_attachment" "records_6_audit_svc141__records_6_data_rw" {
  role       = aws_iam_role.records_6_audit_svc141.name
  policy_arn = aws_iam_policy.records_6_data_rw.arn
}

resource "aws_iam_role" "records_6_audit_svc221" {
  name                 = "hextri-1bmol0-records-6-audit-svc221"
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

resource "aws_iam_role_policy_attachment" "records_6_audit_svc221__records_6_data_rw" {
  role       = aws_iam_role.records_6_audit_svc221.name
  policy_arn = aws_iam_policy.records_6_data_rw.arn
}

resource "aws_iam_role" "records_6_deploy" {
  name                 = "hextri-1bmol0-records-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-eli.brown8445" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-carol.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_6_deploy__records_6_ops" {
  role       = aws_iam_role.records_6_deploy.name
  policy_arn = aws_iam_policy.records_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_6_deploy__records_6_deploy_perms" {
  role       = aws_iam_role.records_6_deploy.name
  policy_arn = aws_iam_policy.records_6_deploy_perms.arn
}

resource "aws_iam_role" "records_6_svc" {
  name                 = "hextri-1bmol0-records-6-svc"
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

resource "aws_iam_role_policy_attachment" "records_6_svc__records_6_data_rw" {
  role       = aws_iam_role.records_6_svc.name
  policy_arn = aws_iam_policy.records_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_6_svc__records_6_ops" {
  role       = aws_iam_role.records_6_svc.name
  policy_arn = aws_iam_policy.records_6_ops.arn
}

resource "aws_iam_instance_profile" "records_6_svc" {
  name = "hextri-1bmol0-records-6-svc"
  role = aws_iam_role.records_6_svc.name
}

resource "aws_iam_role" "records_7_deploy" {
  name                 = "hextri-1bmol0-records-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-nina.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.wong5359" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.garcia7554" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "records_7_deploy__records_7_ops" {
  role       = aws_iam_role.records_7_deploy.name
  policy_arn = aws_iam_policy.records_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "records_7_deploy__records_7_deploy_perms" {
  role       = aws_iam_role.records_7_deploy.name
  policy_arn = aws_iam_policy.records_7_deploy_perms.arn
}

resource "aws_iam_role" "records_7_filings_svc" {
  name                 = "hextri-1bmol0-records-7-filings-svc"
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

resource "aws_iam_role_policy_attachment" "records_7_filings_svc__records_7_data_rw" {
  role       = aws_iam_role.records_7_filings_svc.name
  policy_arn = aws_iam_policy.records_7_data_rw.arn
}

resource "aws_iam_role" "records_7_filings_svc153" {
  name                 = "hextri-1bmol0-records-7-filings-svc153"
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

resource "aws_iam_role_policy_attachment" "records_7_filings_svc153__records_7_data_rw" {
  role       = aws_iam_role.records_7_filings_svc153.name
  policy_arn = aws_iam_policy.records_7_data_rw.arn
}

resource "aws_iam_role" "records_7_filings_svc233" {
  name                 = "hextri-1bmol0-records-7-filings-svc233"
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

resource "aws_iam_role_policy_attachment" "records_7_filings_svc233__records_7_data_rw" {
  role       = aws_iam_role.records_7_filings_svc233.name
  policy_arn = aws_iam_policy.records_7_data_rw.arn
}

resource "aws_iam_role" "records_7_svc" {
  name                 = "hextri-1bmol0-records-7-svc"
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

resource "aws_iam_role_policy_attachment" "records_7_svc__records_7_data_rw" {
  role       = aws_iam_role.records_7_svc.name
  policy_arn = aws_iam_policy.records_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_7_svc__records_7_ops" {
  role       = aws_iam_role.records_7_svc.name
  policy_arn = aws_iam_policy.records_7_ops.arn
}

resource "aws_iam_instance_profile" "records_7_svc" {
  name = "hextri-1bmol0-records-7-svc"
  role = aws_iam_role.records_7_svc.name
}

resource "aws_iam_role" "records_deploy" {
  name                 = "hextri-1bmol0-records-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-sara.brown" }
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

resource "aws_iam_role" "records_records_svc" {
  name                 = "hextri-1bmol0-records-records-svc"
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

resource "aws_iam_role_policy_attachment" "records_records_svc__records_data_rw" {
  role       = aws_iam_role.records_records_svc.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role" "records_records_svc161" {
  name                 = "hextri-1bmol0-records-records-svc161"
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

resource "aws_iam_role_policy_attachment" "records_records_svc161__records_data_rw" {
  role       = aws_iam_role.records_records_svc161.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role" "records_records_svc81" {
  name                 = "hextri-1bmol0-records-records-svc81"
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

resource "aws_iam_role_policy_attachment" "records_records_svc81__records_data_rw" {
  role       = aws_iam_role.records_records_svc81.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role" "records_stack_role" {
  name                 = "hextri-1bmol0-records-stack-role"
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

resource "aws_iam_role_policy_attachment" "records_stack_role__records_data_rw" {
  role       = aws_iam_role.records_stack_role.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "records_stack_role__records_ops" {
  role       = aws_iam_role.records_stack_role.name
  policy_arn = aws_iam_policy.records_ops.arn
}

resource "aws_iam_role" "records_svc" {
  name                 = "hextri-1bmol0-records-svc"
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
  name = "hextri-1bmol0-records-svc"
  role = aws_iam_role.records_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "hextri-1bmol0-security-audit-role"
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

resource "aws_iam_role" "tax_2_deploy" {
  name                 = "hextri-1bmol0-tax-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-quinn.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-grace.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.novak5387" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-heidi.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_2_deploy__tax_2_ops" {
  role       = aws_iam_role.tax_2_deploy.name
  policy_arn = aws_iam_policy.tax_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_2_deploy__tax_2_deploy_perms" {
  role       = aws_iam_role.tax_2_deploy.name
  policy_arn = aws_iam_policy.tax_2_deploy_perms.arn
}

resource "aws_iam_role" "tax_2_gis_layers_svc" {
  name                 = "hextri-1bmol0-tax-2-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "tax_2_gis_layers_svc__tax_2_data_rw" {
  role       = aws_iam_role.tax_2_gis_layers_svc.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_role" "tax_2_gis_layers_svc177" {
  name                 = "hextri-1bmol0-tax-2-gis-layers-svc177"
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

resource "aws_iam_role_policy_attachment" "tax_2_gis_layers_svc177__tax_2_data_rw" {
  role       = aws_iam_role.tax_2_gis_layers_svc177.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_role" "tax_2_gis_layers_svc97" {
  name                 = "hextri-1bmol0-tax-2-gis-layers-svc97"
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

resource "aws_iam_role_policy_attachment" "tax_2_gis_layers_svc97__tax_2_data_rw" {
  role       = aws_iam_role.tax_2_gis_layers_svc97.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_role" "tax_2_stack_role" {
  name                 = "hextri-1bmol0-tax-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "tax_2_stack_role__tax_2_data_rw" {
  role       = aws_iam_role.tax_2_stack_role.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_2_stack_role__tax_2_ops" {
  role       = aws_iam_role.tax_2_stack_role.name
  policy_arn = aws_iam_policy.tax_2_ops.arn
}

resource "aws_iam_role" "tax_2_svc" {
  name                 = "hextri-1bmol0-tax-2-svc"
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

resource "aws_iam_role_policy_attachment" "tax_2_svc__tax_2_data_rw" {
  role       = aws_iam_role.tax_2_svc.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_2_svc__tax_2_ops" {
  role       = aws_iam_role.tax_2_svc.name
  policy_arn = aws_iam_policy.tax_2_ops.arn
}

resource "aws_iam_instance_profile" "tax_2_svc" {
  name = "hextri-1bmol0-tax-2-svc"
  role = aws_iam_role.tax_2_svc.name
}

resource "aws_iam_role" "tax_3_deploy" {
  name                 = "hextri-1bmol0-tax-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dave.patel3621" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_3_deploy__tax_3_ops" {
  role       = aws_iam_role.tax_3_deploy.name
  policy_arn = aws_iam_policy.tax_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_3_deploy__tax_3_deploy_perms" {
  role       = aws_iam_role.tax_3_deploy.name
  policy_arn = aws_iam_policy.tax_3_deploy_perms.arn
}

resource "aws_iam_role" "tax_3_gis_layers_svc" {
  name                 = "hextri-1bmol0-tax-3-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "tax_3_gis_layers_svc__tax_3_data_rw" {
  role       = aws_iam_role.tax_3_gis_layers_svc.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_role" "tax_3_gis_layers_svc189" {
  name                 = "hextri-1bmol0-tax-3-gis-layers-svc189"
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

resource "aws_iam_role_policy_attachment" "tax_3_gis_layers_svc189__tax_3_data_rw" {
  role       = aws_iam_role.tax_3_gis_layers_svc189.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_role" "tax_3_glue_role" {
  name                 = "hextri-1bmol0-tax-3-glue-role"
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

resource "aws_iam_role_policy_attachment" "tax_3_glue_role__tax_3_data_rw" {
  role       = aws_iam_role.tax_3_glue_role.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_3_glue_role__tax_3_ops" {
  role       = aws_iam_role.tax_3_glue_role.name
  policy_arn = aws_iam_policy.tax_3_ops.arn
}

resource "aws_iam_role" "tax_3_records_svc" {
  name                 = "hextri-1bmol0-tax-3-records-svc"
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

resource "aws_iam_role_policy_attachment" "tax_3_records_svc__tax_3_data_rw" {
  role       = aws_iam_role.tax_3_records_svc.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_role" "tax_3_svc" {
  name                 = "hextri-1bmol0-tax-3-svc"
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

resource "aws_iam_role_policy_attachment" "tax_3_svc__tax_3_data_rw" {
  role       = aws_iam_role.tax_3_svc.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_3_svc__tax_3_ops" {
  role       = aws_iam_role.tax_3_svc.name
  policy_arn = aws_iam_policy.tax_3_ops.arn
}

resource "aws_iam_instance_profile" "tax_3_svc" {
  name = "hextri-1bmol0-tax-3-svc"
  role = aws_iam_role.tax_3_svc.name
}

resource "aws_iam_role" "tax_4_audit_svc" {
  name                 = "hextri-1bmol0-tax-4-audit-svc"
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

resource "aws_iam_role_policy_attachment" "tax_4_audit_svc__tax_4_data_rw" {
  role       = aws_iam_role.tax_4_audit_svc.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_role" "tax_4_deploy" {
  name                 = "hextri-1bmol0-tax-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-alice.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-xia.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-dara.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_4_deploy__tax_4_ops" {
  role       = aws_iam_role.tax_4_deploy.name
  policy_arn = aws_iam_policy.tax_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_4_deploy__tax_4_deploy_perms" {
  role       = aws_iam_role.tax_4_deploy.name
  policy_arn = aws_iam_policy.tax_4_deploy_perms.arn
}

resource "aws_iam_role" "tax_4_filings_svc" {
  name                 = "hextri-1bmol0-tax-4-filings-svc"
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

resource "aws_iam_role_policy_attachment" "tax_4_filings_svc__tax_4_data_rw" {
  role       = aws_iam_role.tax_4_filings_svc.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_role" "tax_4_glue_role" {
  name                 = "hextri-1bmol0-tax-4-glue-role"
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

resource "aws_iam_role_policy_attachment" "tax_4_glue_role__tax_4_data_rw" {
  role       = aws_iam_role.tax_4_glue_role.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_4_glue_role__tax_4_ops" {
  role       = aws_iam_role.tax_4_glue_role.name
  policy_arn = aws_iam_policy.tax_4_ops.arn
}

resource "aws_iam_role" "tax_4_public_data_svc" {
  name                 = "hextri-1bmol0-tax-4-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "tax_4_public_data_svc__tax_4_data_rw" {
  role       = aws_iam_role.tax_4_public_data_svc.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_role" "tax_4_svc" {
  name                 = "hextri-1bmol0-tax-4-svc"
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

resource "aws_iam_role_policy_attachment" "tax_4_svc__tax_4_data_rw" {
  role       = aws_iam_role.tax_4_svc.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_4_svc__tax_4_ops" {
  role       = aws_iam_role.tax_4_svc.name
  policy_arn = aws_iam_policy.tax_4_ops.arn
}

resource "aws_iam_instance_profile" "tax_4_svc" {
  name = "hextri-1bmol0-tax-4-svc"
  role = aws_iam_role.tax_4_svc.name
}

resource "aws_iam_role" "tax_5_backups_svc" {
  name                 = "hextri-1bmol0-tax-5-backups-svc"
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

resource "aws_iam_role_policy_attachment" "tax_5_backups_svc__tax_5_data_rw" {
  role       = aws_iam_role.tax_5_backups_svc.name
  policy_arn = aws_iam_policy.tax_5_data_rw.arn
}

resource "aws_iam_role" "tax_5_backups_svc213" {
  name                 = "hextri-1bmol0-tax-5-backups-svc213"
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

resource "aws_iam_role_policy_attachment" "tax_5_backups_svc213__tax_5_data_rw" {
  role       = aws_iam_role.tax_5_backups_svc213.name
  policy_arn = aws_iam_policy.tax_5_data_rw.arn
}

resource "aws_iam_role" "tax_5_deploy" {
  name                 = "hextri-1bmol0-tax-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-bob.novak8597" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-uma.smith6864" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_5_deploy__tax_5_ops" {
  role       = aws_iam_role.tax_5_deploy.name
  policy_arn = aws_iam_policy.tax_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_5_deploy__tax_5_deploy_perms" {
  role       = aws_iam_role.tax_5_deploy.name
  policy_arn = aws_iam_policy.tax_5_deploy_perms.arn
}

resource "aws_iam_role" "tax_5_public_data_svc" {
  name                 = "hextri-1bmol0-tax-5-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "tax_5_public_data_svc__tax_5_data_rw" {
  role       = aws_iam_role.tax_5_public_data_svc.name
  policy_arn = aws_iam_policy.tax_5_data_rw.arn
}

resource "aws_iam_role" "tax_5_svc" {
  name                 = "hextri-1bmol0-tax-5-svc"
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

resource "aws_iam_role_policy_attachment" "tax_5_svc__tax_5_data_rw" {
  role       = aws_iam_role.tax_5_svc.name
  policy_arn = aws_iam_policy.tax_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_5_svc__tax_5_ops" {
  role       = aws_iam_role.tax_5_svc.name
  policy_arn = aws_iam_policy.tax_5_ops.arn
}

resource "aws_iam_instance_profile" "tax_5_svc" {
  name = "hextri-1bmol0-tax-5-svc"
  role = aws_iam_role.tax_5_svc.name
}

resource "aws_iam_role" "tax_6_deploy" {
  name                 = "hextri-1bmol0-tax-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-alice.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-hana.singh8167" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-sara.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_6_deploy__tax_6_ops" {
  role       = aws_iam_role.tax_6_deploy.name
  policy_arn = aws_iam_policy.tax_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_6_deploy__tax_6_deploy_perms" {
  role       = aws_iam_role.tax_6_deploy.name
  policy_arn = aws_iam_policy.tax_6_deploy_perms.arn
}

resource "aws_iam_role" "tax_6_public_data_svc" {
  name                 = "hextri-1bmol0-tax-6-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "tax_6_public_data_svc__tax_6_data_rw" {
  role       = aws_iam_role.tax_6_public_data_svc.name
  policy_arn = aws_iam_policy.tax_6_data_rw.arn
}

resource "aws_iam_role" "tax_6_public_data_svc145" {
  name                 = "hextri-1bmol0-tax-6-public-data-svc145"
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

resource "aws_iam_role_policy_attachment" "tax_6_public_data_svc145__tax_6_data_rw" {
  role       = aws_iam_role.tax_6_public_data_svc145.name
  policy_arn = aws_iam_policy.tax_6_data_rw.arn
}

resource "aws_iam_role" "tax_6_public_data_svc225" {
  name                 = "hextri-1bmol0-tax-6-public-data-svc225"
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

resource "aws_iam_role_policy_attachment" "tax_6_public_data_svc225__tax_6_data_rw" {
  role       = aws_iam_role.tax_6_public_data_svc225.name
  policy_arn = aws_iam_policy.tax_6_data_rw.arn
}

resource "aws_iam_role" "tax_6_svc" {
  name                 = "hextri-1bmol0-tax-6-svc"
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

resource "aws_iam_role_policy_attachment" "tax_6_svc__tax_6_data_rw" {
  role       = aws_iam_role.tax_6_svc.name
  policy_arn = aws_iam_policy.tax_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_6_svc__tax_6_ops" {
  role       = aws_iam_role.tax_6_svc.name
  policy_arn = aws_iam_policy.tax_6_ops.arn
}

resource "aws_iam_instance_profile" "tax_6_svc" {
  name = "hextri-1bmol0-tax-6-svc"
  role = aws_iam_role.tax_6_svc.name
}

resource "aws_iam_role" "tax_7_deploy" {
  name                 = "hextri-1bmol0-tax-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/hextri-1bmol0-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ivan.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-noor.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-lena.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-omar.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_7_deploy__tax_7_ops" {
  role       = aws_iam_role.tax_7_deploy.name
  policy_arn = aws_iam_policy.tax_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_7_deploy__tax_7_deploy_perms" {
  role       = aws_iam_role.tax_7_deploy.name
  policy_arn = aws_iam_policy.tax_7_deploy_perms.arn
}

resource "aws_iam_role" "tax_7_public_data_svc" {
  name                 = "hextri-1bmol0-tax-7-public-data-svc"
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

resource "aws_iam_role_policy_attachment" "tax_7_public_data_svc__tax_7_data_rw" {
  role       = aws_iam_role.tax_7_public_data_svc.name
  policy_arn = aws_iam_policy.tax_7_data_rw.arn
}

resource "aws_iam_role" "tax_7_public_data_svc157" {
  name                 = "hextri-1bmol0-tax-7-public-data-svc157"
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

resource "aws_iam_role_policy_attachment" "tax_7_public_data_svc157__tax_7_data_rw" {
  role       = aws_iam_role.tax_7_public_data_svc157.name
  policy_arn = aws_iam_policy.tax_7_data_rw.arn
}

resource "aws_iam_role" "tax_7_svc" {
  name                 = "hextri-1bmol0-tax-7-svc"
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

resource "aws_iam_role_policy_attachment" "tax_7_svc__tax_7_data_rw" {
  role       = aws_iam_role.tax_7_svc.name
  policy_arn = aws_iam_policy.tax_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_7_svc__tax_7_ops" {
  role       = aws_iam_role.tax_7_svc.name
  policy_arn = aws_iam_policy.tax_7_ops.arn
}

resource "aws_iam_instance_profile" "tax_7_svc" {
  name = "hextri-1bmol0-tax-7-svc"
  role = aws_iam_role.tax_7_svc.name
}

resource "aws_iam_role" "tax_audit_svc" {
  name                 = "hextri-1bmol0-tax-audit-svc"
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

resource "aws_iam_role_policy_attachment" "tax_audit_svc__tax_data_rw" {
  role       = aws_iam_role.tax_audit_svc.name
  policy_arn = aws_iam_policy.tax_data_rw.arn
}

resource "aws_iam_role" "tax_audit_svc165" {
  name                 = "hextri-1bmol0-tax-audit-svc165"
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

resource "aws_iam_role_policy_attachment" "tax_audit_svc165__tax_data_rw" {
  role       = aws_iam_role.tax_audit_svc165.name
  policy_arn = aws_iam_policy.tax_data_rw.arn
}

resource "aws_iam_role" "tax_deploy" {
  name                 = "hextri-1bmol0-tax-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-ian.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-amit.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-priya.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/hextri-1bmol0-gus.nguyen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "tax_deploy__tax_ops" {
  role       = aws_iam_role.tax_deploy.name
  policy_arn = aws_iam_policy.tax_ops.arn
}

resource "aws_iam_role_policy_attachment" "tax_deploy__tax_deploy_perms" {
  role       = aws_iam_role.tax_deploy.name
  policy_arn = aws_iam_policy.tax_deploy_perms.arn
}

resource "aws_iam_role" "tax_gis_layers_svc" {
  name                 = "hextri-1bmol0-tax-gis-layers-svc"
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

resource "aws_iam_role_policy_attachment" "tax_gis_layers_svc__tax_data_rw" {
  role       = aws_iam_role.tax_gis_layers_svc.name
  policy_arn = aws_iam_policy.tax_data_rw.arn
}

resource "aws_iam_role" "tax_svc" {
  name                 = "hextri-1bmol0-tax-svc"
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

resource "aws_iam_role_policy_attachment" "tax_svc__tax_data_rw" {
  role       = aws_iam_role.tax_svc.name
  policy_arn = aws_iam_policy.tax_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "tax_svc__tax_ops" {
  role       = aws_iam_role.tax_svc.name
  policy_arn = aws_iam_policy.tax_ops.arn
}

resource "aws_iam_instance_profile" "tax_svc" {
  name = "hextri-1bmol0-tax-svc"
  role = aws_iam_role.tax_svc.name
}
