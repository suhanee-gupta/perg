resource "aws_iam_role" "api_2_backups_svc" {
  name                 = "lumzen-15ocuk-api-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_backups_svc__api_2_data_rw" {
  role       = aws_iam_role.api_2_backups_svc.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_deploy" {
  name                 = "lumzen-15ocuk-api-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-heidi.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-alice.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-bela.ivanov" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_deploy__api_2_ops" {
  role       = aws_iam_role.api_2_deploy.name
  policy_arn = aws_iam_policy.api_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_2_deploy__api_2_deploy_perms" {
  role       = aws_iam_role.api_2_deploy.name
  policy_arn = aws_iam_policy.api_2_deploy_perms.arn
}

resource "aws_iam_role" "api_2_exports_svc" {
  name                 = "lumzen-15ocuk-api-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_exports_svc__api_2_data_rw" {
  role       = aws_iam_role.api_2_exports_svc.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_svc" {
  name                 = "lumzen-15ocuk-api-2-svc"
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

resource "aws_iam_role_policy_attachment" "api_2_svc__api_2_data_rw" {
  role       = aws_iam_role.api_2_svc.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_2_svc__api_2_ops" {
  role       = aws_iam_role.api_2_svc.name
  policy_arn = aws_iam_policy.api_2_ops.arn
}

resource "aws_iam_instance_profile" "api_2_svc" {
  name = "lumzen-15ocuk-api-2-svc"
  role = aws_iam_role.api_2_svc.name
}

resource "aws_iam_role" "api_deploy" {
  name                 = "lumzen-15ocuk-api-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-nina.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-judy.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-gus.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-dara.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_deploy__api_ops" {
  role       = aws_iam_role.api_deploy.name
  policy_arn = aws_iam_policy.api_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_deploy__api_deploy_perms" {
  role       = aws_iam_role.api_deploy.name
  policy_arn = aws_iam_policy.api_deploy_perms.arn
}

resource "aws_iam_role" "api_logs_svc" {
  name                 = "lumzen-15ocuk-api-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_logs_svc__api_data_rw" {
  role       = aws_iam_role.api_logs_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_logs_svc24" {
  name                 = "lumzen-15ocuk-api-logs-svc24"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_logs_svc24__api_data_rw" {
  role       = aws_iam_role.api_logs_svc24.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_logs_svc47" {
  name                 = "lumzen-15ocuk-api-logs-svc47"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_logs_svc47__api_data_rw" {
  role       = aws_iam_role.api_logs_svc47.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_nb_role" {
  name                 = "lumzen-15ocuk-api-nb-role"
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

resource "aws_iam_role_policy_attachment" "api_nb_role__api_data_rw" {
  role       = aws_iam_role.api_nb_role.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_nb_role__api_ops" {
  role       = aws_iam_role.api_nb_role.name
  policy_arn = aws_iam_policy.api_ops.arn
}

resource "aws_iam_role" "api_svc" {
  name                 = "lumzen-15ocuk-api-svc"
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

resource "aws_iam_role_policy_attachment" "api_svc__api_data_rw" {
  role       = aws_iam_role.api_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_svc__api_ops" {
  role       = aws_iam_role.api_svc.name
  policy_arn = aws_iam_policy.api_ops.arn
}

resource "aws_iam_instance_profile" "api_svc" {
  name = "lumzen-15ocuk-api-svc"
  role = aws_iam_role.api_svc.name
}

resource "aws_iam_role" "auth_2_assets_svc" {
  name                 = "lumzen-15ocuk-auth-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_assets_svc__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_assets_svc.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_2_deploy" {
  name                 = "lumzen-15ocuk-auth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-noor.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-tom.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_deploy__auth_2_ops" {
  role       = aws_iam_role.auth_2_deploy.name
  policy_arn = aws_iam_policy.auth_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_2_deploy__auth_2_deploy_perms" {
  role       = aws_iam_role.auth_2_deploy.name
  policy_arn = aws_iam_policy.auth_2_deploy_perms.arn
}

resource "aws_iam_role" "auth_2_svc" {
  name                 = "lumzen-15ocuk-auth-2-svc"
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

resource "aws_iam_role_policy_attachment" "auth_2_svc__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_svc.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_2_svc__auth_2_ops" {
  role       = aws_iam_role.auth_2_svc.name
  policy_arn = aws_iam_policy.auth_2_ops.arn
}

resource "aws_iam_instance_profile" "auth_2_svc" {
  name = "lumzen-15ocuk-auth-2-svc"
  role = aws_iam_role.auth_2_svc.name
}

resource "aws_iam_role" "auth_2_uploads_svc" {
  name                 = "lumzen-15ocuk-auth-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_uploads_svc__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_uploads_svc.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_assets_svc" {
  name                 = "lumzen-15ocuk-auth-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_assets_svc__auth_data_rw" {
  role       = aws_iam_role.auth_assets_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_deploy" {
  name                 = "lumzen-15ocuk-auth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-omar.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_deploy__auth_ops" {
  role       = aws_iam_role.auth_deploy.name
  policy_arn = aws_iam_policy.auth_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_deploy__auth_deploy_perms" {
  role       = aws_iam_role.auth_deploy.name
  policy_arn = aws_iam_policy.auth_deploy_perms.arn
}

resource "aws_iam_role" "auth_logs_svc" {
  name                 = "lumzen-15ocuk-auth-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_logs_svc__auth_data_rw" {
  role       = aws_iam_role.auth_logs_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_svc" {
  name                 = "lumzen-15ocuk-auth-svc"
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

resource "aws_iam_role_policy_attachment" "auth_svc__auth_data_rw" {
  role       = aws_iam_role.auth_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_svc__auth_ops" {
  role       = aws_iam_role.auth_svc.name
  policy_arn = aws_iam_policy.auth_ops.arn
}

resource "aws_iam_instance_profile" "auth_svc" {
  name = "lumzen-15ocuk-auth-svc"
  role = aws_iam_role.auth_svc.name
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "lumzen-15ocuk-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-sara.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-gus.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-noor.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-chen.cohen" }
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

resource "aws_iam_role" "billing_2_logs_svc" {
  name                 = "lumzen-15ocuk-billing-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_logs_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_logs_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_svc" {
  name                 = "lumzen-15ocuk-billing-2-svc"
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
  name = "lumzen-15ocuk-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_2_uploads_svc" {
  name                 = "lumzen-15ocuk-billing-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_uploads_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_uploads_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_assets_svc" {
  name                 = "lumzen-15ocuk-billing-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_assets_svc__billing_data_rw" {
  role       = aws_iam_role.billing_assets_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_backups_svc" {
  name                 = "lumzen-15ocuk-billing-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_backups_svc__billing_data_rw" {
  role       = aws_iam_role.billing_backups_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_deploy" {
  name                 = "lumzen-15ocuk-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-tom.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-amit.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-amit.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ivan.mehta" }
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

resource "aws_iam_role" "billing_glue_role" {
  name                 = "lumzen-15ocuk-billing-glue-role"
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

resource "aws_iam_role_policy_attachment" "billing_glue_role__billing_data_rw" {
  role       = aws_iam_role.billing_glue_role.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_glue_role__billing_ops" {
  role       = aws_iam_role.billing_glue_role.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_role" "billing_logs_svc" {
  name                 = "lumzen-15ocuk-billing-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_logs_svc__billing_data_rw" {
  role       = aws_iam_role.billing_logs_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_svc" {
  name                 = "lumzen-15ocuk-billing-svc"
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
  name = "lumzen-15ocuk-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "lumzen-15ocuk-ci-runner"
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

resource "aws_iam_role" "data_2_deploy" {
  name                 = "lumzen-15ocuk-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-mike.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-carol.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-alice.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_deploy__data_2_ops" {
  role       = aws_iam_role.data_2_deploy.name
  policy_arn = aws_iam_policy.data_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_2_deploy__data_2_deploy_perms" {
  role       = aws_iam_role.data_2_deploy.name
  policy_arn = aws_iam_policy.data_2_deploy_perms.arn
}

resource "aws_iam_role" "data_2_logs_svc" {
  name                 = "lumzen-15ocuk-data-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_logs_svc__data_2_data_rw" {
  role       = aws_iam_role.data_2_logs_svc.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role" "data_2_logs_svc42" {
  name                 = "lumzen-15ocuk-data-2-logs-svc42"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_logs_svc42__data_2_data_rw" {
  role       = aws_iam_role.data_2_logs_svc42.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role" "data_2_svc" {
  name                 = "lumzen-15ocuk-data-2-svc"
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

resource "aws_iam_role_policy_attachment" "data_2_svc__data_2_data_rw" {
  role       = aws_iam_role.data_2_svc.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_2_svc__data_2_ops" {
  role       = aws_iam_role.data_2_svc.name
  policy_arn = aws_iam_policy.data_2_ops.arn
}

resource "aws_iam_instance_profile" "data_2_svc" {
  name = "lumzen-15ocuk-data-2-svc"
  role = aws_iam_role.data_2_svc.name
}

resource "aws_iam_role" "data_analytics_svc" {
  name                 = "lumzen-15ocuk-data-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_analytics_svc__data_data_rw" {
  role       = aws_iam_role.data_analytics_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_backups_svc" {
  name                 = "lumzen-15ocuk-data-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_backups_svc__data_data_rw" {
  role       = aws_iam_role.data_backups_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_deploy" {
  name                 = "lumzen-15ocuk-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-fay.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-lena.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-erin.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-dara.chen6149" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_deploy__data_ops" {
  role       = aws_iam_role.data_deploy.name
  policy_arn = aws_iam_policy.data_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_deploy__data_deploy_perms" {
  role       = aws_iam_role.data_deploy.name
  policy_arn = aws_iam_policy.data_deploy_perms.arn
}

resource "aws_iam_role" "data_svc" {
  name                 = "lumzen-15ocuk-data-svc"
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

resource "aws_iam_role_policy_attachment" "data_svc__data_data_rw" {
  role       = aws_iam_role.data_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_svc__data_ops" {
  role       = aws_iam_role.data_svc.name
  policy_arn = aws_iam_policy.data_ops.arn
}

resource "aws_iam_instance_profile" "data_svc" {
  name = "lumzen-15ocuk-data-svc"
  role = aws_iam_role.data_svc.name
}

resource "aws_iam_role" "growth_2_analytics_svc" {
  name                 = "lumzen-15ocuk-growth-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_analytics_svc__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_analytics_svc.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_deploy" {
  name                 = "lumzen-15ocuk-growth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-lena.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-frank.cohen3373" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-grace.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-judy.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_deploy__growth_2_ops" {
  role       = aws_iam_role.growth_2_deploy.name
  policy_arn = aws_iam_policy.growth_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_2_deploy__growth_2_deploy_perms" {
  role       = aws_iam_role.growth_2_deploy.name
  policy_arn = aws_iam_policy.growth_2_deploy_perms.arn
}

resource "aws_iam_role" "growth_2_logs_svc" {
  name                 = "lumzen-15ocuk-growth-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_logs_svc__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_logs_svc.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_svc" {
  name                 = "lumzen-15ocuk-growth-2-svc"
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

resource "aws_iam_role_policy_attachment" "growth_2_svc__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_svc.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_2_svc__growth_2_ops" {
  role       = aws_iam_role.growth_2_svc.name
  policy_arn = aws_iam_policy.growth_2_ops.arn
}

resource "aws_iam_instance_profile" "growth_2_svc" {
  name = "lumzen-15ocuk-growth-2-svc"
  role = aws_iam_role.growth_2_svc.name
}

resource "aws_iam_role" "growth_analytics_svc" {
  name                 = "lumzen-15ocuk-growth-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_analytics_svc__growth_data_rw" {
  role       = aws_iam_role.growth_analytics_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_backups_svc" {
  name                 = "lumzen-15ocuk-growth-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_backups_svc__growth_data_rw" {
  role       = aws_iam_role.growth_backups_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_deploy" {
  name                 = "lumzen-15ocuk-growth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-jun.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-nina.patel2934" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-mei.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ian.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_deploy__growth_ops" {
  role       = aws_iam_role.growth_deploy.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_deploy__growth_deploy_perms" {
  role       = aws_iam_role.growth_deploy.name
  policy_arn = aws_iam_policy.growth_deploy_perms.arn
}

resource "aws_iam_role" "growth_exports_svc" {
  name                 = "lumzen-15ocuk-growth-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_exports_svc__growth_data_rw" {
  role       = aws_iam_role.growth_exports_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_svc" {
  name                 = "lumzen-15ocuk-growth-svc"
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

resource "aws_iam_role_policy_attachment" "growth_svc__growth_data_rw" {
  role       = aws_iam_role.growth_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_svc__growth_ops" {
  role       = aws_iam_role.growth_svc.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_instance_profile" "growth_svc" {
  name = "lumzen-15ocuk-growth-svc"
  role = aws_iam_role.growth_svc.name
}

resource "aws_iam_role" "infra_2_analytics_svc" {
  name                 = "lumzen-15ocuk-infra-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_2_analytics_svc__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_analytics_svc.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role" "infra_2_deploy" {
  name                 = "lumzen-15ocuk-infra-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-amit.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_2_deploy__infra_2_ops" {
  role       = aws_iam_role.infra_2_deploy.name
  policy_arn = aws_iam_policy.infra_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_2_deploy__infra_2_deploy_perms" {
  role       = aws_iam_role.infra_2_deploy.name
  policy_arn = aws_iam_policy.infra_2_deploy_perms.arn
}

resource "aws_iam_role" "infra_2_svc" {
  name                 = "lumzen-15ocuk-infra-2-svc"
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

resource "aws_iam_role_policy_attachment" "infra_2_svc__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_svc.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_2_svc__infra_2_ops" {
  role       = aws_iam_role.infra_2_svc.name
  policy_arn = aws_iam_policy.infra_2_ops.arn
}

resource "aws_iam_instance_profile" "infra_2_svc" {
  name = "lumzen-15ocuk-infra-2-svc"
  role = aws_iam_role.infra_2_svc.name
}

resource "aws_iam_role" "infra_2_uploads_svc" {
  name                 = "lumzen-15ocuk-infra-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_2_uploads_svc__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_uploads_svc.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role" "infra_analytics_svc" {
  name                 = "lumzen-15ocuk-infra-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_analytics_svc__infra_data_rw" {
  role       = aws_iam_role.infra_analytics_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "infra_backups_svc" {
  name                 = "lumzen-15ocuk-infra-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_backups_svc__infra_data_rw" {
  role       = aws_iam_role.infra_backups_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "infra_deploy" {
  name                 = "lumzen-15ocuk-infra-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-mike.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_deploy__infra_ops" {
  role       = aws_iam_role.infra_deploy.name
  policy_arn = aws_iam_policy.infra_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_deploy__infra_deploy_perms" {
  role       = aws_iam_role.infra_deploy.name
  policy_arn = aws_iam_policy.infra_deploy_perms.arn
}

resource "aws_iam_role" "infra_svc" {
  name                 = "lumzen-15ocuk-infra-svc"
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

resource "aws_iam_role_policy_attachment" "infra_svc__infra_data_rw" {
  role       = aws_iam_role.infra_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_svc__infra_ops" {
  role       = aws_iam_role.infra_svc.name
  policy_arn = aws_iam_policy.infra_ops.arn
}

resource "aws_iam_instance_profile" "infra_svc" {
  name = "lumzen-15ocuk-infra-svc"
  role = aws_iam_role.infra_svc.name
}

resource "aws_iam_role" "inj_fn_exec_r10" {
  name                 = "lumzen-15ocuk-inj-fn-exec-r10"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role" "inj_trust_edit_r8" {
  name                 = "lumzen-15ocuk-inj-trust-edit-r8"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    # no trust principals (unreachable via assume-role)
    ]
  })
}

resource "aws_iam_role" "ml_assets_svc" {
  name                 = "lumzen-15ocuk-ml-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_assets_svc__ml_data_rw" {
  role       = aws_iam_role.ml_assets_svc.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "ml_deploy" {
  name                 = "lumzen-15ocuk-ml-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-quinn.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-frank.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-eli.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-bob.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_deploy__ml_ops" {
  role       = aws_iam_role.ml_deploy.name
  policy_arn = aws_iam_policy.ml_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_deploy__ml_deploy_perms" {
  role       = aws_iam_role.ml_deploy.name
  policy_arn = aws_iam_policy.ml_deploy_perms.arn
}

resource "aws_iam_role" "ml_svc" {
  name                 = "lumzen-15ocuk-ml-svc"
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

resource "aws_iam_role_policy_attachment" "ml_svc__ml_data_rw" {
  role       = aws_iam_role.ml_svc.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_svc__ml_ops" {
  role       = aws_iam_role.ml_svc.name
  policy_arn = aws_iam_policy.ml_ops.arn
}

resource "aws_iam_instance_profile" "ml_svc" {
  name = "lumzen-15ocuk-ml-svc"
  role = aws_iam_role.ml_svc.name
}

resource "aws_iam_role" "ml_uploads_svc" {
  name                 = "lumzen-15ocuk-ml-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_uploads_svc__ml_data_rw" {
  role       = aws_iam_role.ml_uploads_svc.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "mobile_2_analytics_svc" {
  name                 = "lumzen-15ocuk-mobile-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_analytics_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_analytics_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_deploy" {
  name                 = "lumzen-15ocuk-mobile-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-karl.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-judy.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-dara.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_deploy__mobile_2_ops" {
  role       = aws_iam_role.mobile_2_deploy.name
  policy_arn = aws_iam_policy.mobile_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_2_deploy__mobile_2_deploy_perms" {
  role       = aws_iam_role.mobile_2_deploy.name
  policy_arn = aws_iam_policy.mobile_2_deploy_perms.arn
}

resource "aws_iam_role" "mobile_2_logs_svc" {
  name                 = "lumzen-15ocuk-mobile-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_logs_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_logs_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_svc" {
  name                 = "lumzen-15ocuk-mobile-2-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_2_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_2_svc__mobile_2_ops" {
  role       = aws_iam_role.mobile_2_svc.name
  policy_arn = aws_iam_policy.mobile_2_ops.arn
}

resource "aws_iam_instance_profile" "mobile_2_svc" {
  name = "lumzen-15ocuk-mobile-2-svc"
  role = aws_iam_role.mobile_2_svc.name
}

resource "aws_iam_role" "mobile_deploy" {
  name                 = "lumzen-15ocuk-mobile-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-dave.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-uma.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_deploy__mobile_ops" {
  role       = aws_iam_role.mobile_deploy.name
  policy_arn = aws_iam_policy.mobile_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_deploy__mobile_deploy_perms" {
  role       = aws_iam_role.mobile_deploy.name
  policy_arn = aws_iam_policy.mobile_deploy_perms.arn
}

resource "aws_iam_role" "mobile_svc" {
  name                 = "lumzen-15ocuk-mobile-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_svc__mobile_ops" {
  role       = aws_iam_role.mobile_svc.name
  policy_arn = aws_iam_policy.mobile_ops.arn
}

resource "aws_iam_instance_profile" "mobile_svc" {
  name = "lumzen-15ocuk-mobile-svc"
  role = aws_iam_role.mobile_svc.name
}

resource "aws_iam_role" "mobile_uploads_svc" {
  name                 = "lumzen-15ocuk-mobile-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_uploads_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_uploads_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_uploads_svc29" {
  name                 = "lumzen-15ocuk-mobile-uploads-svc29"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_uploads_svc29__mobile_data_rw" {
  role       = aws_iam_role.mobile_uploads_svc29.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "notifications_2_assets_svc" {
  name                 = "lumzen-15ocuk-notifications-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_assets_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_assets_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role" "notifications_2_deploy" {
  name                 = "lumzen-15ocuk-notifications-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-grace.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-fay.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-sara.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ivan.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_deploy__notifications_2_ops" {
  role       = aws_iam_role.notifications_2_deploy.name
  policy_arn = aws_iam_policy.notifications_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_2_deploy__notifications_2_deploy_perms" {
  role       = aws_iam_role.notifications_2_deploy.name
  policy_arn = aws_iam_policy.notifications_2_deploy_perms.arn
}

resource "aws_iam_role" "notifications_2_logs_svc" {
  name                 = "lumzen-15ocuk-notifications-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_logs_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_logs_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role" "notifications_2_svc" {
  name                 = "lumzen-15ocuk-notifications-2-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_2_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_2_svc__notifications_2_ops" {
  role       = aws_iam_role.notifications_2_svc.name
  policy_arn = aws_iam_policy.notifications_2_ops.arn
}

resource "aws_iam_instance_profile" "notifications_2_svc" {
  name = "lumzen-15ocuk-notifications-2-svc"
  role = aws_iam_role.notifications_2_svc.name
}

resource "aws_iam_role" "notifications_backups_svc" {
  name                 = "lumzen-15ocuk-notifications-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_backups_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_backups_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_backups_svc33" {
  name                 = "lumzen-15ocuk-notifications-backups-svc33"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_backups_svc33__notifications_data_rw" {
  role       = aws_iam_role.notifications_backups_svc33.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_deploy" {
  name                 = "lumzen-15ocuk-notifications-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-raj.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ian.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-gus.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-tom.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_deploy__notifications_ops" {
  role       = aws_iam_role.notifications_deploy.name
  policy_arn = aws_iam_policy.notifications_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_deploy__notifications_deploy_perms" {
  role       = aws_iam_role.notifications_deploy.name
  policy_arn = aws_iam_policy.notifications_deploy_perms.arn
}

resource "aws_iam_role" "notifications_nb_role" {
  name                 = "lumzen-15ocuk-notifications-nb-role"
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

resource "aws_iam_role_policy_attachment" "notifications_nb_role__notifications_data_rw" {
  role       = aws_iam_role.notifications_nb_role.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_nb_role__notifications_ops" {
  role       = aws_iam_role.notifications_nb_role.name
  policy_arn = aws_iam_policy.notifications_ops.arn
}

resource "aws_iam_role" "notifications_svc" {
  name                 = "lumzen-15ocuk-notifications-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_svc__notifications_ops" {
  role       = aws_iam_role.notifications_svc.name
  policy_arn = aws_iam_policy.notifications_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_svc__inj_pol_p13" {
  role       = aws_iam_role.notifications_svc.name
  policy_arn = aws_iam_policy.inj_pol_p13.arn
}

resource "aws_iam_instance_profile" "notifications_svc" {
  name = "lumzen-15ocuk-notifications-svc"
  role = aws_iam_role.notifications_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "lumzen-15ocuk-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-adm-yara.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-adm-ian.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "search_2_analytics_svc" {
  name                 = "lumzen-15ocuk-search-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_analytics_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_analytics_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_2_deploy" {
  name                 = "lumzen-15ocuk-search-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-tom.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-tom.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-priya.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-noor.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_deploy__search_2_ops" {
  role       = aws_iam_role.search_2_deploy.name
  policy_arn = aws_iam_policy.search_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_2_deploy__search_2_deploy_perms" {
  role       = aws_iam_role.search_2_deploy.name
  policy_arn = aws_iam_policy.search_2_deploy_perms.arn
}

resource "aws_iam_role" "search_2_logs_svc" {
  name                 = "lumzen-15ocuk-search-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_logs_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_logs_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_2_svc" {
  name                 = "lumzen-15ocuk-search-2-svc"
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

resource "aws_iam_role_policy_attachment" "search_2_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_2_svc__search_2_ops" {
  role       = aws_iam_role.search_2_svc.name
  policy_arn = aws_iam_policy.search_2_ops.arn
}

resource "aws_iam_instance_profile" "search_2_svc" {
  name = "lumzen-15ocuk-search-2-svc"
  role = aws_iam_role.search_2_svc.name
}

resource "aws_iam_role" "search_analytics_svc" {
  name                 = "lumzen-15ocuk-search-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_analytics_svc__search_data_rw" {
  role       = aws_iam_role.search_analytics_svc.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_deploy" {
  name                 = "lumzen-15ocuk-search-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-grace.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-quinn.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-grace.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_deploy__search_ops" {
  role       = aws_iam_role.search_deploy.name
  policy_arn = aws_iam_policy.search_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_deploy__search_deploy_perms" {
  role       = aws_iam_role.search_deploy.name
  policy_arn = aws_iam_policy.search_deploy_perms.arn
}

resource "aws_iam_role" "search_exports_svc" {
  name                 = "lumzen-15ocuk-search-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc__search_data_rw" {
  role       = aws_iam_role.search_exports_svc.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_logs_svc" {
  name                 = "lumzen-15ocuk-search-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_logs_svc__search_data_rw" {
  role       = aws_iam_role.search_logs_svc.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_svc" {
  name                 = "lumzen-15ocuk-search-svc"
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

resource "aws_iam_role_policy_attachment" "search_svc__search_data_rw" {
  role       = aws_iam_role.search_svc.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_svc__search_ops" {
  role       = aws_iam_role.search_svc.name
  policy_arn = aws_iam_policy.search_ops.arn
}

resource "aws_iam_instance_profile" "search_svc" {
  name = "lumzen-15ocuk-search-svc"
  role = aws_iam_role.search_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "lumzen-15ocuk-security-audit-role"
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

resource "aws_iam_role" "support_2_backups_svc" {
  name                 = "lumzen-15ocuk-support-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_backups_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_backups_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_backups_svc43" {
  name                 = "lumzen-15ocuk-support-2-backups-svc43"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_backups_svc43__support_2_data_rw" {
  role       = aws_iam_role.support_2_backups_svc43.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_deploy" {
  name                 = "lumzen-15ocuk-support-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-mike.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-sara.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-bob.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-amit.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_deploy__support_2_ops" {
  role       = aws_iam_role.support_2_deploy.name
  policy_arn = aws_iam_policy.support_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_2_deploy__support_2_deploy_perms" {
  role       = aws_iam_role.support_2_deploy.name
  policy_arn = aws_iam_policy.support_2_deploy_perms.arn
}

resource "aws_iam_role" "support_2_svc" {
  name                 = "lumzen-15ocuk-support-2-svc"
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

resource "aws_iam_role_policy_attachment" "support_2_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_2_svc__support_2_ops" {
  role       = aws_iam_role.support_2_svc.name
  policy_arn = aws_iam_policy.support_2_ops.arn
}

resource "aws_iam_instance_profile" "support_2_svc" {
  name = "lumzen-15ocuk-support-2-svc"
  role = aws_iam_role.support_2_svc.name
}

resource "aws_iam_role" "support_analytics_svc" {
  name                 = "lumzen-15ocuk-support-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_analytics_svc__support_data_rw" {
  role       = aws_iam_role.support_analytics_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_analytics_svc31" {
  name                 = "lumzen-15ocuk-support-analytics-svc31"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_analytics_svc31__support_data_rw" {
  role       = aws_iam_role.support_analytics_svc31.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_deploy" {
  name                 = "lumzen-15ocuk-support-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ian.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-grace.haddad" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_deploy__support_ops" {
  role       = aws_iam_role.support_deploy.name
  policy_arn = aws_iam_policy.support_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_deploy__support_deploy_perms" {
  role       = aws_iam_role.support_deploy.name
  policy_arn = aws_iam_policy.support_deploy_perms.arn
}

resource "aws_iam_role" "support_stack_role" {
  name                 = "lumzen-15ocuk-support-stack-role"
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

resource "aws_iam_role_policy_attachment" "support_stack_role__support_data_rw" {
  role       = aws_iam_role.support_stack_role.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_stack_role__support_ops" {
  role       = aws_iam_role.support_stack_role.name
  policy_arn = aws_iam_policy.support_ops.arn
}

resource "aws_iam_role" "support_svc" {
  name                 = "lumzen-15ocuk-support-svc"
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

resource "aws_iam_role_policy_attachment" "support_svc__support_data_rw" {
  role       = aws_iam_role.support_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_svc__support_ops" {
  role       = aws_iam_role.support_svc.name
  policy_arn = aws_iam_policy.support_ops.arn
}

resource "aws_iam_instance_profile" "support_svc" {
  name = "lumzen-15ocuk-support-svc"
  role = aws_iam_role.support_svc.name
}

resource "aws_iam_role" "web_2_backups_svc" {
  name                 = "lumzen-15ocuk-web-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_backups_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_backups_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_2_deploy" {
  name                 = "lumzen-15ocuk-web-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-nina.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-wen.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-xia.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-ivan.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_deploy__web_2_ops" {
  role       = aws_iam_role.web_2_deploy.name
  policy_arn = aws_iam_policy.web_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_2_deploy__web_2_deploy_perms" {
  role       = aws_iam_role.web_2_deploy.name
  policy_arn = aws_iam_policy.web_2_deploy_perms.arn
}

resource "aws_iam_role" "web_2_svc" {
  name                 = "lumzen-15ocuk-web-2-svc"
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

resource "aws_iam_role_policy_attachment" "web_2_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_2_svc__web_2_ops" {
  role       = aws_iam_role.web_2_svc.name
  policy_arn = aws_iam_policy.web_2_ops.arn
}

resource "aws_iam_instance_profile" "web_2_svc" {
  name = "lumzen-15ocuk-web-2-svc"
  role = aws_iam_role.web_2_svc.name
}

resource "aws_iam_role" "web_2_uploads_svc" {
  name                 = "lumzen-15ocuk-web-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_uploads_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_uploads_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_analytics_svc" {
  name                 = "lumzen-15ocuk-web-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_analytics_svc__web_data_rw" {
  role       = aws_iam_role.web_analytics_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_backups_svc" {
  name                 = "lumzen-15ocuk-web-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_backups_svc__web_data_rw" {
  role       = aws_iam_role.web_backups_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_backups_svc46" {
  name                 = "lumzen-15ocuk-web-backups-svc46"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_backups_svc46__web_data_rw" {
  role       = aws_iam_role.web_backups_svc46.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_deploy" {
  name                 = "lumzen-15ocuk-web-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-eli.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-wen.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-wen.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-noor.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_deploy__web_ops" {
  role       = aws_iam_role.web_deploy.name
  policy_arn = aws_iam_policy.web_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_deploy__web_deploy_perms" {
  role       = aws_iam_role.web_deploy.name
  policy_arn = aws_iam_policy.web_deploy_perms.arn
}

resource "aws_iam_role" "web_glue_role" {
  name                 = "lumzen-15ocuk-web-glue-role"
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

resource "aws_iam_role_policy_attachment" "web_glue_role__web_data_rw" {
  role       = aws_iam_role.web_glue_role.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_glue_role__web_ops" {
  role       = aws_iam_role.web_glue_role.name
  policy_arn = aws_iam_policy.web_ops.arn
}

resource "aws_iam_role" "web_svc" {
  name                 = "lumzen-15ocuk-web-svc"
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

resource "aws_iam_role_policy_attachment" "web_svc__web_data_rw" {
  role       = aws_iam_role.web_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_svc__web_ops" {
  role       = aws_iam_role.web_svc.name
  policy_arn = aws_iam_policy.web_ops.arn
}

resource "aws_iam_instance_profile" "web_svc" {
  name = "lumzen-15ocuk-web-svc"
  role = aws_iam_role.web_svc.name
}
