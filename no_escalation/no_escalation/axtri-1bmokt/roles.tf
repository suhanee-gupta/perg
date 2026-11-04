resource "aws_iam_role" "api_2_backups_svc" {
  name                 = "axtri-1bmokt-api-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-api-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-fay.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-carol.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-fay.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.khan" }
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
  name                 = "axtri-1bmokt-api-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-api-2-svc"
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
  name = "axtri-1bmokt-api-2-svc"
  role = aws_iam_role.api_2_svc.name
}

resource "aws_iam_role" "api_3_deploy" {
  name                 = "axtri-1bmokt-api-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-dara.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-noor.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-wen.rossi" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_deploy__api_3_ops" {
  role       = aws_iam_role.api_3_deploy.name
  policy_arn = aws_iam_policy.api_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_3_deploy__api_3_deploy_perms" {
  role       = aws_iam_role.api_3_deploy.name
  policy_arn = aws_iam_policy.api_3_deploy_perms.arn
}

resource "aws_iam_role" "api_3_exports_svc" {
  name                 = "axtri-1bmokt-api-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_exports_svc__api_3_data_rw" {
  role       = aws_iam_role.api_3_exports_svc.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role" "api_3_exports_svc59" {
  name                 = "axtri-1bmokt-api-3-exports-svc59"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_exports_svc59__api_3_data_rw" {
  role       = aws_iam_role.api_3_exports_svc59.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role" "api_3_svc" {
  name                 = "axtri-1bmokt-api-3-svc"
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

resource "aws_iam_role_policy_attachment" "api_3_svc__api_3_data_rw" {
  role       = aws_iam_role.api_3_svc.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_3_svc__api_3_ops" {
  role       = aws_iam_role.api_3_svc.name
  policy_arn = aws_iam_policy.api_3_ops.arn
}

resource "aws_iam_instance_profile" "api_3_svc" {
  name = "axtri-1bmokt-api-3-svc"
  role = aws_iam_role.api_3_svc.name
}

resource "aws_iam_role" "api_backups_svc" {
  name                 = "axtri-1bmokt-api-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_backups_svc__api_data_rw" {
  role       = aws_iam_role.api_backups_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_deploy" {
  name                 = "axtri-1bmokt-api-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-raj.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-chen.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.miller" }
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

resource "aws_iam_role" "api_exports_svc" {
  name                 = "axtri-1bmokt-api-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_exports_svc__api_data_rw" {
  role       = aws_iam_role.api_exports_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_nb_role" {
  name                 = "axtri-1bmokt-api-nb-role"
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
  name                 = "axtri-1bmokt-api-svc"
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
  name = "axtri-1bmokt-api-svc"
  role = aws_iam_role.api_svc.name
}

resource "aws_iam_role" "api_uploads_svc" {
  name                 = "axtri-1bmokt-api-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_uploads_svc__api_data_rw" {
  role       = aws_iam_role.api_uploads_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "auth_2_assets_svc" {
  name                 = "axtri-1bmokt-auth-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "auth_2_assets_svc55" {
  name                 = "axtri-1bmokt-auth-2-assets-svc55"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_assets_svc55__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_assets_svc55.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_2_deploy" {
  name                 = "axtri-1bmokt-auth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-mike.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-erin.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-priya.dubois" }
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
  name                 = "axtri-1bmokt-auth-2-svc"
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
  name = "axtri-1bmokt-auth-2-svc"
  role = aws_iam_role.auth_2_svc.name
}

resource "aws_iam_role" "auth_3_analytics_svc" {
  name                 = "axtri-1bmokt-auth-3-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_analytics_svc__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_analytics_svc.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role" "auth_3_analytics_svc67" {
  name                 = "axtri-1bmokt-auth-3-analytics-svc67"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_analytics_svc67__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_analytics_svc67.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role" "auth_3_deploy" {
  name                 = "axtri-1bmokt-auth-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-quinn.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-frank.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-judy.garcia9967" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_deploy__auth_3_ops" {
  role       = aws_iam_role.auth_3_deploy.name
  policy_arn = aws_iam_policy.auth_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_3_deploy__auth_3_deploy_perms" {
  role       = aws_iam_role.auth_3_deploy.name
  policy_arn = aws_iam_policy.auth_3_deploy_perms.arn
}

resource "aws_iam_role" "auth_3_svc" {
  name                 = "axtri-1bmokt-auth-3-svc"
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

resource "aws_iam_role_policy_attachment" "auth_3_svc__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_svc.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_3_svc__auth_3_ops" {
  role       = aws_iam_role.auth_3_svc.name
  policy_arn = aws_iam_policy.auth_3_ops.arn
}

resource "aws_iam_instance_profile" "auth_3_svc" {
  name = "axtri-1bmokt-auth-3-svc"
  role = aws_iam_role.auth_3_svc.name
}

resource "aws_iam_role" "auth_assets_svc" {
  name                 = "axtri-1bmokt-auth-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-auth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-amit.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-kia.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-judy.miller" }
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

resource "aws_iam_role" "auth_svc" {
  name                 = "axtri-1bmokt-auth-svc"
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
  name = "axtri-1bmokt-auth-svc"
  role = aws_iam_role.auth_svc.name
}

resource "aws_iam_role" "auth_uploads_svc" {
  name                 = "axtri-1bmokt-auth-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_uploads_svc__auth_data_rw" {
  role       = aws_iam_role.auth_uploads_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "axtri-1bmokt-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-noor.gupta" }
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

resource "aws_iam_role" "billing_2_svc" {
  name                 = "axtri-1bmokt-billing-2-svc"
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
  name = "axtri-1bmokt-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_2_uploads_svc" {
  name                 = "axtri-1bmokt-billing-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_2_uploads_svc49" {
  name                 = "axtri-1bmokt-billing-2-uploads-svc49"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_uploads_svc49__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_uploads_svc49.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_3_backups_svc" {
  name                 = "axtri-1bmokt-billing-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_3_backups_svc__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_backups_svc.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role" "billing_3_backups_svc61" {
  name                 = "axtri-1bmokt-billing-3-backups-svc61"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_3_backups_svc61__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_backups_svc61.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role" "billing_3_deploy" {
  name                 = "axtri-1bmokt-billing-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-hana.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-karl.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_3_deploy__billing_3_ops" {
  role       = aws_iam_role.billing_3_deploy.name
  policy_arn = aws_iam_policy.billing_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_3_deploy__billing_3_deploy_perms" {
  role       = aws_iam_role.billing_3_deploy.name
  policy_arn = aws_iam_policy.billing_3_deploy_perms.arn
}

resource "aws_iam_role" "billing_3_svc" {
  name                 = "axtri-1bmokt-billing-3-svc"
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

resource "aws_iam_role_policy_attachment" "billing_3_svc__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_svc.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_3_svc__billing_3_ops" {
  role       = aws_iam_role.billing_3_svc.name
  policy_arn = aws_iam_policy.billing_3_ops.arn
}

resource "aws_iam_instance_profile" "billing_3_svc" {
  name = "axtri-1bmokt-billing-3-svc"
  role = aws_iam_role.billing_3_svc.name
}

resource "aws_iam_role" "billing_backups_svc" {
  name                 = "axtri-1bmokt-billing-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_backups_svc71" {
  name                 = "axtri-1bmokt-billing-backups-svc71"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_backups_svc71__billing_data_rw" {
  role       = aws_iam_role.billing_backups_svc71.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_deploy" {
  name                 = "axtri-1bmokt-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-omar.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-uma.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-raj.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-judy.garcia" }
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

resource "aws_iam_role" "billing_exports_svc" {
  name                 = "axtri-1bmokt-billing-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_exports_svc__billing_data_rw" {
  role       = aws_iam_role.billing_exports_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_stack_role" {
  name                 = "axtri-1bmokt-billing-stack-role"
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

resource "aws_iam_role_policy_attachment" "billing_stack_role__billing_data_rw" {
  role       = aws_iam_role.billing_stack_role.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_stack_role__billing_ops" {
  role       = aws_iam_role.billing_stack_role.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_role" "billing_svc" {
  name                 = "axtri-1bmokt-billing-svc"
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

resource "aws_iam_role_policy_attachment" "billing_svc__inj_pol_p12" {
  role       = aws_iam_role.billing_svc.name
  policy_arn = aws_iam_policy.inj_pol_p12.arn
}

resource "aws_iam_instance_profile" "billing_svc" {
  name = "axtri-1bmokt-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "ci_runner" {
  name                 = "axtri-1bmokt-ci-runner"
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
  name                 = "axtri-1bmokt-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-erin.novak" }
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

resource "aws_iam_role" "data_2_exports_svc" {
  name                 = "axtri-1bmokt-data-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_exports_svc__data_2_data_rw" {
  role       = aws_iam_role.data_2_exports_svc.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role" "data_2_exports_svc53" {
  name                 = "axtri-1bmokt-data-2-exports-svc53"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_exports_svc53__data_2_data_rw" {
  role       = aws_iam_role.data_2_exports_svc53.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role" "data_2_svc" {
  name                 = "axtri-1bmokt-data-2-svc"
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
  name = "axtri-1bmokt-data-2-svc"
  role = aws_iam_role.data_2_svc.name
}

resource "aws_iam_role" "data_3_backups_svc" {
  name                 = "axtri-1bmokt-data-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_backups_svc__data_3_data_rw" {
  role       = aws_iam_role.data_3_backups_svc.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role" "data_3_deploy" {
  name                 = "axtri-1bmokt-data-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-eli.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-bela.chen2524" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-dave.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_deploy__data_3_ops" {
  role       = aws_iam_role.data_3_deploy.name
  policy_arn = aws_iam_policy.data_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_3_deploy__data_3_deploy_perms" {
  role       = aws_iam_role.data_3_deploy.name
  policy_arn = aws_iam_policy.data_3_deploy_perms.arn
}

resource "aws_iam_role" "data_3_exports_svc" {
  name                 = "axtri-1bmokt-data-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_exports_svc__data_3_data_rw" {
  role       = aws_iam_role.data_3_exports_svc.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role" "data_3_svc" {
  name                 = "axtri-1bmokt-data-3-svc"
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

resource "aws_iam_role_policy_attachment" "data_3_svc__data_3_data_rw" {
  role       = aws_iam_role.data_3_svc.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_3_svc__data_3_ops" {
  role       = aws_iam_role.data_3_svc.name
  policy_arn = aws_iam_policy.data_3_ops.arn
}

resource "aws_iam_instance_profile" "data_3_svc" {
  name = "axtri-1bmokt-data-3-svc"
  role = aws_iam_role.data_3_svc.name
}

resource "aws_iam_role" "data_analytics_svc" {
  name                 = "axtri-1bmokt-data-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-data-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-raj.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-karl.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-hana.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-alice.silva" }
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

resource "aws_iam_role" "data_glue_role" {
  name                 = "axtri-1bmokt-data-glue-role"
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

resource "aws_iam_role_policy_attachment" "data_glue_role__data_data_rw" {
  role       = aws_iam_role.data_glue_role.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_glue_role__data_ops" {
  role       = aws_iam_role.data_glue_role.name
  policy_arn = aws_iam_policy.data_ops.arn
}

resource "aws_iam_role" "data_svc" {
  name                 = "axtri-1bmokt-data-svc"
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
  name = "axtri-1bmokt-data-svc"
  role = aws_iam_role.data_svc.name
}

resource "aws_iam_role" "growth_2_deploy" {
  name                 = "axtri-1bmokt-growth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-bela.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-gus.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.mehta" }
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

resource "aws_iam_role" "growth_2_svc" {
  name                 = "axtri-1bmokt-growth-2-svc"
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
  name = "axtri-1bmokt-growth-2-svc"
  role = aws_iam_role.growth_2_svc.name
}

resource "aws_iam_role" "growth_2_uploads_svc" {
  name                 = "axtri-1bmokt-growth-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_uploads_svc__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_uploads_svc.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_uploads_svc48" {
  name                 = "axtri-1bmokt-growth-2-uploads-svc48"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_uploads_svc48__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_uploads_svc48.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_3_assets_svc" {
  name                 = "axtri-1bmokt-growth-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_assets_svc__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_assets_svc.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role" "growth_3_deploy" {
  name                 = "axtri-1bmokt-growth-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-hana.reddy1353" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_deploy__growth_3_ops" {
  role       = aws_iam_role.growth_3_deploy.name
  policy_arn = aws_iam_policy.growth_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_3_deploy__growth_3_deploy_perms" {
  role       = aws_iam_role.growth_3_deploy.name
  policy_arn = aws_iam_policy.growth_3_deploy_perms.arn
}

resource "aws_iam_role" "growth_3_svc" {
  name                 = "axtri-1bmokt-growth-3-svc"
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

resource "aws_iam_role_policy_attachment" "growth_3_svc__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_svc.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_3_svc__growth_3_ops" {
  role       = aws_iam_role.growth_3_svc.name
  policy_arn = aws_iam_policy.growth_3_ops.arn
}

resource "aws_iam_instance_profile" "growth_3_svc" {
  name = "axtri-1bmokt-growth-3-svc"
  role = aws_iam_role.growth_3_svc.name
}

resource "aws_iam_role" "growth_3_uploads_svc" {
  name                 = "axtri-1bmokt-growth-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_uploads_svc__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_uploads_svc.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role" "growth_backups_svc" {
  name                 = "axtri-1bmokt-growth-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-growth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-frank.nguyen" }
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

resource "aws_iam_role_policy_attachment" "growth_deploy__inj_pol_p16" {
  role       = aws_iam_role.growth_deploy.name
  policy_arn = aws_iam_policy.inj_pol_p16.arn
}

resource "aws_iam_role" "growth_exports_svc" {
  name                 = "axtri-1bmokt-growth-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "growth_glue_role" {
  name                 = "axtri-1bmokt-growth-glue-role"
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

resource "aws_iam_role_policy_attachment" "growth_glue_role__growth_data_rw" {
  role       = aws_iam_role.growth_glue_role.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_glue_role__growth_ops" {
  role       = aws_iam_role.growth_glue_role.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_role" "growth_svc" {
  name                 = "axtri-1bmokt-growth-svc"
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
  name = "axtri-1bmokt-growth-svc"
  role = aws_iam_role.growth_svc.name
}

resource "aws_iam_role" "growth_uploads_svc" {
  name                 = "axtri-1bmokt-growth-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_uploads_svc__growth_data_rw" {
  role       = aws_iam_role.growth_uploads_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "infra_2_analytics_svc" {
  name                 = "axtri-1bmokt-infra-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "infra_2_assets_svc" {
  name                 = "axtri-1bmokt-infra-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_2_assets_svc__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_assets_svc.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role" "infra_2_deploy" {
  name                 = "axtri-1bmokt-infra-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-dave.jones2592" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-nina.brown" }
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
  name                 = "axtri-1bmokt-infra-2-svc"
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
  name = "axtri-1bmokt-infra-2-svc"
  role = aws_iam_role.infra_2_svc.name
}

resource "aws_iam_role" "infra_3_deploy" {
  name                 = "axtri-1bmokt-infra-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-vik.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ian.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_deploy__infra_3_ops" {
  role       = aws_iam_role.infra_3_deploy.name
  policy_arn = aws_iam_policy.infra_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_3_deploy__infra_3_deploy_perms" {
  role       = aws_iam_role.infra_3_deploy.name
  policy_arn = aws_iam_policy.infra_3_deploy_perms.arn
}

resource "aws_iam_role" "infra_3_exports_svc" {
  name                 = "axtri-1bmokt-infra-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_exports_svc__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_exports_svc.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role" "infra_3_svc" {
  name                 = "axtri-1bmokt-infra-3-svc"
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

resource "aws_iam_role_policy_attachment" "infra_3_svc__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_svc.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_3_svc__infra_3_ops" {
  role       = aws_iam_role.infra_3_svc.name
  policy_arn = aws_iam_policy.infra_3_ops.arn
}

resource "aws_iam_instance_profile" "infra_3_svc" {
  name = "axtri-1bmokt-infra-3-svc"
  role = aws_iam_role.infra_3_svc.name
}

resource "aws_iam_role" "infra_3_uploads_svc" {
  name                 = "axtri-1bmokt-infra-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_uploads_svc__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_uploads_svc.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role" "infra_analytics_svc" {
  name                 = "axtri-1bmokt-infra-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-infra-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-infra-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-gus.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-priya.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-erin.davis" }
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

resource "aws_iam_role" "infra_stack_role" {
  name                 = "axtri-1bmokt-infra-stack-role"
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

resource "aws_iam_role_policy_attachment" "infra_stack_role__infra_data_rw" {
  role       = aws_iam_role.infra_stack_role.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_stack_role__infra_ops" {
  role       = aws_iam_role.infra_stack_role.name
  policy_arn = aws_iam_policy.infra_ops.arn
}

resource "aws_iam_role" "infra_svc" {
  name                 = "axtri-1bmokt-infra-svc"
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
  name = "axtri-1bmokt-infra-svc"
  role = aws_iam_role.infra_svc.name
}

resource "aws_iam_role" "inj_datapipeline_exec_r3" {
  name                 = "axtri-1bmokt-inj-datapipeline-exec-r3"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "datapipeline.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role" "inj_ec2_exec_r10" {
  name                 = "axtri-1bmokt-inj-ec2-exec-r10"
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

resource "aws_iam_role_policy_attachment" "inj_ec2_exec_r10__inj_pol_p13" {
  role       = aws_iam_role.inj_ec2_exec_r10.name
  policy_arn = aws_iam_policy.inj_pol_p13.arn
}

resource "aws_iam_instance_profile" "inj_ec2_exec_r10" {
  name = "axtri-1bmokt-inj-ec2-exec-r10"
  role = aws_iam_role.inj_ec2_exec_r10.name
}

resource "aws_iam_role" "inj_glue_exec_r14" {
  name                 = "axtri-1bmokt-inj-glue-exec-r14"
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

resource "aws_iam_role_policy_attachment" "inj_glue_exec_r14__inj_pol_p17" {
  role       = aws_iam_role.inj_glue_exec_r14.name
  policy_arn = aws_iam_policy.inj_pol_p17.arn
}

resource "aws_iam_role" "inj_trust_edit_r1" {
  name                 = "axtri-1bmokt-inj-trust-edit-r1"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ext-grace.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_trust_edit_r1__inj_pol_p4" {
  role       = aws_iam_role.inj_trust_edit_r1.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_role_policy_attachment" "inj_trust_edit_r1__inj_pol_p5" {
  role       = aws_iam_role.inj_trust_edit_r1.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_role" "ml_2_analytics_svc" {
  name                 = "axtri-1bmokt-ml-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_2_analytics_svc__ml_2_data_rw" {
  role       = aws_iam_role.ml_2_analytics_svc.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_role" "ml_2_assets_svc" {
  name                 = "axtri-1bmokt-ml-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_2_assets_svc__ml_2_data_rw" {
  role       = aws_iam_role.ml_2_assets_svc.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_role" "ml_2_deploy" {
  name                 = "axtri-1bmokt-ml-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-chen.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-priya.nguyen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_2_deploy__ml_2_ops" {
  role       = aws_iam_role.ml_2_deploy.name
  policy_arn = aws_iam_policy.ml_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_2_deploy__ml_2_deploy_perms" {
  role       = aws_iam_role.ml_2_deploy.name
  policy_arn = aws_iam_policy.ml_2_deploy_perms.arn
}

resource "aws_iam_role" "ml_2_svc" {
  name                 = "axtri-1bmokt-ml-2-svc"
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

resource "aws_iam_role_policy_attachment" "ml_2_svc__ml_2_data_rw" {
  role       = aws_iam_role.ml_2_svc.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_2_svc__ml_2_ops" {
  role       = aws_iam_role.ml_2_svc.name
  policy_arn = aws_iam_policy.ml_2_ops.arn
}

resource "aws_iam_instance_profile" "ml_2_svc" {
  name = "axtri-1bmokt-ml-2-svc"
  role = aws_iam_role.ml_2_svc.name
}

resource "aws_iam_role" "ml_deploy" {
  name                 = "axtri-1bmokt-ml-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-tom.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-noor.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-karl.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.garcia" }
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
  name                 = "axtri-1bmokt-ml-svc"
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
  name = "axtri-1bmokt-ml-svc"
  role = aws_iam_role.ml_svc.name
}

resource "aws_iam_role" "ml_uploads_svc" {
  name                 = "axtri-1bmokt-ml-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "ml_uploads_svc45" {
  name                 = "axtri-1bmokt-ml-uploads-svc45"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_uploads_svc45__ml_data_rw" {
  role       = aws_iam_role.ml_uploads_svc45.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "mobile_2_assets_svc" {
  name                 = "axtri-1bmokt-mobile-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_assets_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_assets_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_deploy" {
  name                 = "axtri-1bmokt-mobile-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-priya.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-zed.tanaka" }
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
  name                 = "axtri-1bmokt-mobile-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-mobile-2-svc"
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
  name = "axtri-1bmokt-mobile-2-svc"
  role = aws_iam_role.mobile_2_svc.name
}

resource "aws_iam_role" "mobile_3_backups_svc" {
  name                 = "axtri-1bmokt-mobile-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_backups_svc__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_backups_svc.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_backups_svc64" {
  name                 = "axtri-1bmokt-mobile-3-backups-svc64"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_backups_svc64__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_backups_svc64.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_deploy" {
  name                 = "axtri-1bmokt-mobile-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-hana.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-omar.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.wong3258" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_deploy__mobile_3_ops" {
  role       = aws_iam_role.mobile_3_deploy.name
  policy_arn = aws_iam_policy.mobile_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_3_deploy__mobile_3_deploy_perms" {
  role       = aws_iam_role.mobile_3_deploy.name
  policy_arn = aws_iam_policy.mobile_3_deploy_perms.arn
}

resource "aws_iam_role" "mobile_3_svc" {
  name                 = "axtri-1bmokt-mobile-3-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_3_svc__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_svc.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_3_svc__mobile_3_ops" {
  role       = aws_iam_role.mobile_3_svc.name
  policy_arn = aws_iam_policy.mobile_3_ops.arn
}

resource "aws_iam_instance_profile" "mobile_3_svc" {
  name = "axtri-1bmokt-mobile-3-svc"
  role = aws_iam_role.mobile_3_svc.name
}

resource "aws_iam_role" "mobile_assets_svc" {
  name                 = "axtri-1bmokt-mobile-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_assets_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_assets_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_backups_svc" {
  name                 = "axtri-1bmokt-mobile-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_backups_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_backups_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_deploy" {
  name                 = "axtri-1bmokt-mobile-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-carol.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-kia.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-vik.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.tanaka" }
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
  name                 = "axtri-1bmokt-mobile-svc"
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
  name = "axtri-1bmokt-mobile-svc"
  role = aws_iam_role.mobile_svc.name
}

resource "aws_iam_role" "notifications_2_assets_svc" {
  name                 = "axtri-1bmokt-notifications-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-notifications-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ian.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-eli.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-nina.tanaka" }
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

resource "aws_iam_role" "notifications_2_exports_svc" {
  name                 = "axtri-1bmokt-notifications-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_exports_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_exports_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role" "notifications_2_svc" {
  name                 = "axtri-1bmokt-notifications-2-svc"
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
  name = "axtri-1bmokt-notifications-2-svc"
  role = aws_iam_role.notifications_2_svc.name
}

resource "aws_iam_role" "notifications_deploy" {
  name                 = "axtri-1bmokt-notifications-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-leo.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ian.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-dave.singh" }
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

resource "aws_iam_role" "notifications_exports_svc" {
  name                 = "axtri-1bmokt-notifications-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_exports_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_exports_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_exports_svc44" {
  name                 = "axtri-1bmokt-notifications-exports-svc44"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_exports_svc44__notifications_data_rw" {
  role       = aws_iam_role.notifications_exports_svc44.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_stack_role" {
  name                 = "axtri-1bmokt-notifications-stack-role"
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

resource "aws_iam_role_policy_attachment" "notifications_stack_role__notifications_data_rw" {
  role       = aws_iam_role.notifications_stack_role.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_stack_role__notifications_ops" {
  role       = aws_iam_role.notifications_stack_role.name
  policy_arn = aws_iam_policy.notifications_ops.arn
}

resource "aws_iam_role" "notifications_svc" {
  name                 = "axtri-1bmokt-notifications-svc"
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

resource "aws_iam_instance_profile" "notifications_svc" {
  name = "axtri-1bmokt-notifications-svc"
  role = aws_iam_role.notifications_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "axtri-1bmokt-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-adm-wen.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-adm-zed.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-adm-wen.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "search_2_backups_svc" {
  name                 = "axtri-1bmokt-search-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_backups_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_backups_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_2_deploy" {
  name                 = "axtri-1bmokt-search-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.tanaka" }
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

resource "aws_iam_role" "search_2_svc" {
  name                 = "axtri-1bmokt-search-2-svc"
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
  name = "axtri-1bmokt-search-2-svc"
  role = aws_iam_role.search_2_svc.name
}

resource "aws_iam_role" "search_2_uploads_svc" {
  name                 = "axtri-1bmokt-search-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_uploads_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_uploads_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_3_deploy" {
  name                 = "axtri-1bmokt-search-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-xia.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-quinn.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-bob.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-chen.lopez" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_deploy__search_3_ops" {
  role       = aws_iam_role.search_3_deploy.name
  policy_arn = aws_iam_policy.search_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_3_deploy__search_3_deploy_perms" {
  role       = aws_iam_role.search_3_deploy.name
  policy_arn = aws_iam_policy.search_3_deploy_perms.arn
}

resource "aws_iam_role" "search_3_exports_svc" {
  name                 = "axtri-1bmokt-search-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_exports_svc__search_3_data_rw" {
  role       = aws_iam_role.search_3_exports_svc.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role" "search_3_logs_svc" {
  name                 = "axtri-1bmokt-search-3-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_logs_svc__search_3_data_rw" {
  role       = aws_iam_role.search_3_logs_svc.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role" "search_3_svc" {
  name                 = "axtri-1bmokt-search-3-svc"
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

resource "aws_iam_role_policy_attachment" "search_3_svc__search_3_data_rw" {
  role       = aws_iam_role.search_3_svc.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_3_svc__search_3_ops" {
  role       = aws_iam_role.search_3_svc.name
  policy_arn = aws_iam_policy.search_3_ops.arn
}

resource "aws_iam_instance_profile" "search_3_svc" {
  name = "axtri-1bmokt-search-3-svc"
  role = aws_iam_role.search_3_svc.name
}

resource "aws_iam_role" "search_deploy" {
  name                 = "axtri-1bmokt-search-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.ivanov" }
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
  name                 = "axtri-1bmokt-search-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "search_exports_svc38" {
  name                 = "axtri-1bmokt-search-exports-svc38"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc38__search_data_rw" {
  role       = aws_iam_role.search_exports_svc38.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_exports_svc72" {
  name                 = "axtri-1bmokt-search-exports-svc72"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc72__search_data_rw" {
  role       = aws_iam_role.search_exports_svc72.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_svc" {
  name                 = "axtri-1bmokt-search-svc"
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
  name = "axtri-1bmokt-search-svc"
  role = aws_iam_role.search_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "axtri-1bmokt-security-audit-role"
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

resource "aws_iam_role" "support_2_analytics_svc" {
  name                 = "axtri-1bmokt-support-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_analytics_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_analytics_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_deploy" {
  name                 = "axtri-1bmokt-support-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-carol.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-gus.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-omar.mehta" }
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

resource "aws_iam_role" "support_2_logs_svc" {
  name                 = "axtri-1bmokt-support-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_logs_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_logs_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_svc" {
  name                 = "axtri-1bmokt-support-2-svc"
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
  name = "axtri-1bmokt-support-2-svc"
  role = aws_iam_role.support_2_svc.name
}

resource "aws_iam_role" "support_3_backups_svc" {
  name                 = "axtri-1bmokt-support-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_backups_svc__support_3_data_rw" {
  role       = aws_iam_role.support_3_backups_svc.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role" "support_3_backups_svc66" {
  name                 = "axtri-1bmokt-support-3-backups-svc66"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_backups_svc66__support_3_data_rw" {
  role       = aws_iam_role.support_3_backups_svc66.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role" "support_3_deploy" {
  name                 = "axtri-1bmokt-support-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-omar.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-yara.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-bela.singh" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_deploy__support_3_ops" {
  role       = aws_iam_role.support_3_deploy.name
  policy_arn = aws_iam_policy.support_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_3_deploy__support_3_deploy_perms" {
  role       = aws_iam_role.support_3_deploy.name
  policy_arn = aws_iam_policy.support_3_deploy_perms.arn
}

resource "aws_iam_role" "support_3_svc" {
  name                 = "axtri-1bmokt-support-3-svc"
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

resource "aws_iam_role_policy_attachment" "support_3_svc__support_3_data_rw" {
  role       = aws_iam_role.support_3_svc.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_3_svc__support_3_ops" {
  role       = aws_iam_role.support_3_svc.name
  policy_arn = aws_iam_policy.support_3_ops.arn
}

resource "aws_iam_instance_profile" "support_3_svc" {
  name = "axtri-1bmokt-support-3-svc"
  role = aws_iam_role.support_3_svc.name
}

resource "aws_iam_role" "support_analytics_svc" {
  name                 = "axtri-1bmokt-support-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "support_assets_svc" {
  name                 = "axtri-1bmokt-support-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_assets_svc__support_data_rw" {
  role       = aws_iam_role.support_assets_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_deploy" {
  name                 = "axtri-1bmokt-support-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.larsen3038" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-zed.lopez" }
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
  name                 = "axtri-1bmokt-support-stack-role"
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
  name                 = "axtri-1bmokt-support-svc"
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
  name = "axtri-1bmokt-support-svc"
  role = aws_iam_role.support_svc.name
}

resource "aws_iam_role" "web_2_analytics_svc" {
  name                 = "axtri-1bmokt-web-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_analytics_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_analytics_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_2_assets_svc" {
  name                 = "axtri-1bmokt-web-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_assets_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_assets_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_2_deploy" {
  name                 = "axtri-1bmokt-web-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ian.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-nina.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-mei.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-bela.chen" }
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

resource "aws_iam_role" "web_2_stack_role" {
  name                 = "axtri-1bmokt-web-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "web_2_stack_role__web_2_data_rw" {
  role       = aws_iam_role.web_2_stack_role.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_2_stack_role__web_2_ops" {
  role       = aws_iam_role.web_2_stack_role.name
  policy_arn = aws_iam_policy.web_2_ops.arn
}

resource "aws_iam_role" "web_2_svc" {
  name                 = "axtri-1bmokt-web-2-svc"
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
  name = "axtri-1bmokt-web-2-svc"
  role = aws_iam_role.web_2_svc.name
}

resource "aws_iam_role" "web_3_analytics_svc" {
  name                 = "axtri-1bmokt-web-3-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_analytics_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_analytics_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role" "web_3_backups_svc" {
  name                 = "axtri-1bmokt-web-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_backups_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_backups_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role" "web_3_deploy" {
  name                 = "axtri-1bmokt-web-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-erin.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-lena.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-leo.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-alice.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_deploy__web_3_ops" {
  role       = aws_iam_role.web_3_deploy.name
  policy_arn = aws_iam_policy.web_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_3_deploy__web_3_deploy_perms" {
  role       = aws_iam_role.web_3_deploy.name
  policy_arn = aws_iam_policy.web_3_deploy_perms.arn
}

resource "aws_iam_role" "web_3_svc" {
  name                 = "axtri-1bmokt-web-3-svc"
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

resource "aws_iam_role_policy_attachment" "web_3_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_3_svc__web_3_ops" {
  role       = aws_iam_role.web_3_svc.name
  policy_arn = aws_iam_policy.web_3_ops.arn
}

resource "aws_iam_instance_profile" "web_3_svc" {
  name = "axtri-1bmokt-web-3-svc"
  role = aws_iam_role.web_3_svc.name
}

resource "aws_iam_role" "web_analytics_svc" {
  name                 = "axtri-1bmokt-web-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axtri-1bmokt-web-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "web_deploy" {
  name                 = "axtri-1bmokt-web-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axtri-1bmokt-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-grace.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-sara.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-ian.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axtri-1bmokt-hana.garcia" }
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

resource "aws_iam_role" "web_exports_svc" {
  name                 = "axtri-1bmokt-web-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_exports_svc__web_data_rw" {
  role       = aws_iam_role.web_exports_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_stack_role" {
  name                 = "axtri-1bmokt-web-stack-role"
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

resource "aws_iam_role_policy_attachment" "web_stack_role__web_data_rw" {
  role       = aws_iam_role.web_stack_role.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_stack_role__web_ops" {
  role       = aws_iam_role.web_stack_role.name
  policy_arn = aws_iam_policy.web_ops.arn
}

resource "aws_iam_role" "web_svc" {
  name                 = "axtri-1bmokt-web-svc"
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
  name = "axtri-1bmokt-web-svc"
  role = aws_iam_role.web_svc.name
}
