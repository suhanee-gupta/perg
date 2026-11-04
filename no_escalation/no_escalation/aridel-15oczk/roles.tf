resource "aws_iam_role" "api_2_deploy" {
  name                 = "aridel-15oczk-api-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-tom.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-ivan.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-wen.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-uma.kim" }
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

resource "aws_iam_role" "api_2_svc" {
  name                 = "aridel-15oczk-api-2-svc"
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
  name = "aridel-15oczk-api-2-svc"
  role = aws_iam_role.api_2_svc.name
}

resource "aws_iam_role" "api_2_uploads_svc" {
  name                 = "aridel-15oczk-api-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_uploads_svc__api_2_data_rw" {
  role       = aws_iam_role.api_2_uploads_svc.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_uploads_svc37" {
  name                 = "aridel-15oczk-api-2-uploads-svc37"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_uploads_svc37__api_2_data_rw" {
  role       = aws_iam_role.api_2_uploads_svc37.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_analytics_svc" {
  name                 = "aridel-15oczk-api-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_analytics_svc__api_data_rw" {
  role       = aws_iam_role.api_analytics_svc.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_analytics_svc49" {
  name                 = "aridel-15oczk-api-analytics-svc49"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_analytics_svc49__api_data_rw" {
  role       = aws_iam_role.api_analytics_svc49.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_deploy" {
  name                 = "aridel-15oczk-api-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-hana.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-uma.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-nina.chen" }
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

resource "aws_iam_role" "api_nb_role" {
  name                 = "aridel-15oczk-api-nb-role"
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
  name                 = "aridel-15oczk-api-svc"
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
  name = "aridel-15oczk-api-svc"
  role = aws_iam_role.api_svc.name
}

resource "aws_iam_role" "api_uploads_svc" {
  name                 = "aridel-15oczk-api-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-auth-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "auth_2_assets_svc45" {
  name                 = "aridel-15oczk-auth-2-assets-svc45"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_assets_svc45__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_assets_svc45.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_2_deploy" {
  name                 = "aridel-15oczk-auth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-lena.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-nina.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-leo.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-tom.reddy" }
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
  name                 = "aridel-15oczk-auth-2-svc"
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
  name = "aridel-15oczk-auth-2-svc"
  role = aws_iam_role.auth_2_svc.name
}

resource "aws_iam_role" "auth_analytics_svc" {
  name                 = "aridel-15oczk-auth-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_analytics_svc__auth_data_rw" {
  role       = aws_iam_role.auth_analytics_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_deploy" {
  name                 = "aridel-15oczk-auth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-chen.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-carol.muller" }
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

resource "aws_iam_role" "auth_exports_svc" {
  name                 = "aridel-15oczk-auth-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_exports_svc__auth_data_rw" {
  role       = aws_iam_role.auth_exports_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_stack_role" {
  name                 = "aridel-15oczk-auth-stack-role"
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

resource "aws_iam_role_policy_attachment" "auth_stack_role__auth_data_rw" {
  role       = aws_iam_role.auth_stack_role.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_stack_role__auth_ops" {
  role       = aws_iam_role.auth_stack_role.name
  policy_arn = aws_iam_policy.auth_ops.arn
}

resource "aws_iam_role" "auth_svc" {
  name                 = "aridel-15oczk-auth-svc"
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
  name = "aridel-15oczk-auth-svc"
  role = aws_iam_role.auth_svc.name
}

resource "aws_iam_role" "billing_2_analytics_svc" {
  name                 = "aridel-15oczk-billing-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_analytics_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_analytics_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "aridel-15oczk-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-bob.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-fay.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-bela.chen" }
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
  name                 = "aridel-15oczk-billing-2-svc"
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
  name = "aridel-15oczk-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_2_uploads_svc" {
  name                 = "aridel-15oczk-billing-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_analytics_svc" {
  name                 = "aridel-15oczk-billing-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_analytics_svc__billing_data_rw" {
  role       = aws_iam_role.billing_analytics_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_assets_svc" {
  name                 = "aridel-15oczk-billing-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_deploy" {
  name                 = "aridel-15oczk-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-sara.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-dave.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-heidi.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-ivan.kim" }
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

resource "aws_iam_role" "billing_nb_role" {
  name                 = "aridel-15oczk-billing-nb-role"
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

resource "aws_iam_role_policy_attachment" "billing_nb_role__billing_data_rw" {
  role       = aws_iam_role.billing_nb_role.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_nb_role__billing_ops" {
  role       = aws_iam_role.billing_nb_role.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_role" "billing_svc" {
  name                 = "aridel-15oczk-billing-svc"
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
  name = "aridel-15oczk-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "billing_uploads_svc" {
  name                 = "aridel-15oczk-billing-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_uploads_svc__billing_data_rw" {
  role       = aws_iam_role.billing_uploads_svc.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "ci_runner" {
  name                 = "aridel-15oczk-ci-runner"
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
  name                 = "aridel-15oczk-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-ian.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-hana.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-leo.garcia977" }
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
  name                 = "aridel-15oczk-data-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "data_2_logs_svc" {
  name                 = "aridel-15oczk-data-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "data_2_svc" {
  name                 = "aridel-15oczk-data-2-svc"
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
  name = "aridel-15oczk-data-2-svc"
  role = aws_iam_role.data_2_svc.name
}

resource "aws_iam_role" "data_assets_svc" {
  name                 = "aridel-15oczk-data-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_assets_svc__data_data_rw" {
  role       = aws_iam_role.data_assets_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_deploy" {
  name                 = "aridel-15oczk-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-ian.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-omar.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-grace.ivanov" }
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

resource "aws_iam_role" "data_logs_svc" {
  name                 = "aridel-15oczk-data-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_logs_svc__data_data_rw" {
  role       = aws_iam_role.data_logs_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_nb_role" {
  name                 = "aridel-15oczk-data-nb-role"
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

resource "aws_iam_role_policy_attachment" "data_nb_role__data_data_rw" {
  role       = aws_iam_role.data_nb_role.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_nb_role__data_ops" {
  role       = aws_iam_role.data_nb_role.name
  policy_arn = aws_iam_policy.data_ops.arn
}

resource "aws_iam_role" "data_svc" {
  name                 = "aridel-15oczk-data-svc"
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
  name = "aridel-15oczk-data-svc"
  role = aws_iam_role.data_svc.name
}

resource "aws_iam_role" "growth_2_deploy" {
  name                 = "aridel-15oczk-growth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-gus.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-uma.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-xia.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-dave.rossi" }
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
  name                 = "aridel-15oczk-growth-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "growth_2_logs_svc38" {
  name                 = "aridel-15oczk-growth-2-logs-svc38"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_logs_svc38__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_logs_svc38.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_svc" {
  name                 = "aridel-15oczk-growth-2-svc"
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
  name = "aridel-15oczk-growth-2-svc"
  role = aws_iam_role.growth_2_svc.name
}

resource "aws_iam_role" "growth_deploy" {
  name                 = "aridel-15oczk-growth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-grace.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-priya.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-carol.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-hana.cohen" }
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

resource "aws_iam_role" "growth_logs_svc" {
  name                 = "aridel-15oczk-growth-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_logs_svc__growth_data_rw" {
  role       = aws_iam_role.growth_logs_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_logs_svc26" {
  name                 = "aridel-15oczk-growth-logs-svc26"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_logs_svc26__growth_data_rw" {
  role       = aws_iam_role.growth_logs_svc26.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_logs_svc50" {
  name                 = "aridel-15oczk-growth-logs-svc50"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_logs_svc50__growth_data_rw" {
  role       = aws_iam_role.growth_logs_svc50.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_stack_role" {
  name                 = "aridel-15oczk-growth-stack-role"
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

resource "aws_iam_role_policy_attachment" "growth_stack_role__growth_data_rw" {
  role       = aws_iam_role.growth_stack_role.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_stack_role__growth_ops" {
  role       = aws_iam_role.growth_stack_role.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_role" "growth_svc" {
  name                 = "aridel-15oczk-growth-svc"
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
  name = "aridel-15oczk-growth-svc"
  role = aws_iam_role.growth_svc.name
}

resource "aws_iam_role" "infra_2_analytics_svc" {
  name                 = "aridel-15oczk-infra-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-infra-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-omar.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-yara.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-yara.sato" }
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

resource "aws_iam_role" "infra_2_exports_svc" {
  name                 = "aridel-15oczk-infra-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_2_exports_svc__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_exports_svc.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role" "infra_2_svc" {
  name                 = "aridel-15oczk-infra-2-svc"
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
  name = "aridel-15oczk-infra-2-svc"
  role = aws_iam_role.infra_2_svc.name
}

resource "aws_iam_role" "infra_backups_svc" {
  name                 = "aridel-15oczk-infra-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-infra-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-bob.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-hana.ali58" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-fay.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-judy.gupta" }
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

resource "aws_iam_role" "infra_logs_svc" {
  name                 = "aridel-15oczk-infra-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_logs_svc__infra_data_rw" {
  role       = aws_iam_role.infra_logs_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "infra_svc" {
  name                 = "aridel-15oczk-infra-svc"
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
  name = "aridel-15oczk-infra-svc"
  role = aws_iam_role.infra_svc.name
}

resource "aws_iam_role" "inj_assume_r10" {
  name                 = "aridel-15oczk-inj-assume-r10"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-sagemaker-exec-r8" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_assume_r10__inj_legacy_p11" {
  role       = aws_iam_role.inj_assume_r10.name
  policy_arn = aws_iam_policy.inj_legacy_p11.arn
}

resource "aws_iam_role_policy_attachment" "inj_assume_r10__inj_pol_p12" {
  role       = aws_iam_role.inj_assume_r10.name
  policy_arn = aws_iam_policy.inj_pol_p12.arn
}

resource "aws_iam_role" "inj_assume_r18" {
  name                 = "aridel-15oczk-inj-assume-r18"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-growth-2-svc" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_assume_r18__inj_pol_p20" {
  role       = aws_iam_role.inj_assume_r18.name
  policy_arn = aws_iam_policy.inj_pol_p20.arn
}

resource "aws_iam_role" "inj_datapipeline_exec_r5" {
  name                 = "aridel-15oczk-inj-datapipeline-exec-r5"
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

resource "aws_iam_role_policy_attachment" "inj_datapipeline_exec_r5__inj_pol_p9" {
  role       = aws_iam_role.inj_datapipeline_exec_r5.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_role" "inj_ec2_exec_r13" {
  name                 = "aridel-15oczk-inj-ec2-exec-r13"
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

resource "aws_iam_role_policy_attachment" "inj_ec2_exec_r13__inj_pol_p16" {
  role       = aws_iam_role.inj_ec2_exec_r13.name
  policy_arn = aws_iam_policy.inj_pol_p16.arn
}

resource "aws_iam_instance_profile" "inj_ec2_exec_r13" {
  name = "aridel-15oczk-inj-ec2-exec-r13"
  role = aws_iam_role.inj_ec2_exec_r13.name
}

resource "aws_iam_role" "inj_lambda_exec_r1" {
  name                 = "aridel-15oczk-inj-lambda-exec-r1"
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

resource "aws_iam_role_policy_attachment" "inj_lambda_exec_r1__inj_legacy_p3" {
  role       = aws_iam_role.inj_lambda_exec_r1.name
  policy_arn = aws_iam_policy.inj_legacy_p3.arn
}

resource "aws_iam_role_policy_attachment" "inj_lambda_exec_r1__inj_pol_p4" {
  role       = aws_iam_role.inj_lambda_exec_r1.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_role" "inj_sagemaker_exec_r8" {
  name                 = "aridel-15oczk-inj-sagemaker-exec-r8"
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

resource "aws_iam_role" "inj_trust_edit_r19" {
  name                 = "aridel-15oczk-inj-trust-edit-r19"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-assume-r18" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_trust_edit_r19__inj_pol_p21" {
  role       = aws_iam_role.inj_trust_edit_r19.name
  policy_arn = aws_iam_policy.inj_pol_p21.arn
}

resource "aws_iam_role" "ml_2_deploy" {
  name                 = "aridel-15oczk-ml-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-chen.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-kia.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-gus.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-uma.jones344" }
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

resource "aws_iam_role" "ml_2_exports_svc" {
  name                 = "aridel-15oczk-ml-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_2_exports_svc__ml_2_data_rw" {
  role       = aws_iam_role.ml_2_exports_svc.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_role" "ml_2_logs_svc" {
  name                 = "aridel-15oczk-ml-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_2_logs_svc__ml_2_data_rw" {
  role       = aws_iam_role.ml_2_logs_svc.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_role" "ml_2_svc" {
  name                 = "aridel-15oczk-ml-2-svc"
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
  name = "aridel-15oczk-ml-2-svc"
  role = aws_iam_role.ml_2_svc.name
}

resource "aws_iam_role" "ml_analytics_svc" {
  name                 = "aridel-15oczk-ml-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_analytics_svc__ml_data_rw" {
  role       = aws_iam_role.ml_analytics_svc.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "ml_backups_svc" {
  name                 = "aridel-15oczk-ml-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_backups_svc__ml_data_rw" {
  role       = aws_iam_role.ml_backups_svc.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "ml_deploy" {
  name                 = "aridel-15oczk-ml-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-quinn.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-hana.cohen" }
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
  name                 = "aridel-15oczk-ml-svc"
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
  name = "aridel-15oczk-ml-svc"
  role = aws_iam_role.ml_svc.name
}

resource "aws_iam_role" "mobile_2_backups_svc" {
  name                 = "aridel-15oczk-mobile-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_backups_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_backups_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_deploy" {
  name                 = "aridel-15oczk-mobile-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-ivan.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-amit.ali" }
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

resource "aws_iam_role" "mobile_2_svc" {
  name                 = "aridel-15oczk-mobile-2-svc"
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
  name = "aridel-15oczk-mobile-2-svc"
  role = aws_iam_role.mobile_2_svc.name
}

resource "aws_iam_role" "mobile_2_uploads_svc" {
  name                 = "aridel-15oczk-mobile-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_uploads_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_uploads_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_backups_svc" {
  name                 = "aridel-15oczk-mobile-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-mobile-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-priya.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-frank.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-omar.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-grace.chen617" }
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

resource "aws_iam_role" "mobile_exports_svc" {
  name                 = "aridel-15oczk-mobile-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_exports_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_exports_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_glue_role" {
  name                 = "aridel-15oczk-mobile-glue-role"
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

resource "aws_iam_role_policy_attachment" "mobile_glue_role__mobile_data_rw" {
  role       = aws_iam_role.mobile_glue_role.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_glue_role__mobile_ops" {
  role       = aws_iam_role.mobile_glue_role.name
  policy_arn = aws_iam_policy.mobile_ops.arn
}

resource "aws_iam_role" "mobile_svc" {
  name                 = "aridel-15oczk-mobile-svc"
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
  name = "aridel-15oczk-mobile-svc"
  role = aws_iam_role.mobile_svc.name
}

resource "aws_iam_role" "notifications_2_deploy" {
  name                 = "aridel-15oczk-notifications-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-wen.haddad" }
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
  name                 = "aridel-15oczk-notifications-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-notifications-2-svc"
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
  name = "aridel-15oczk-notifications-2-svc"
  role = aws_iam_role.notifications_2_svc.name
}

resource "aws_iam_role" "notifications_2_uploads_svc" {
  name                 = "aridel-15oczk-notifications-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_uploads_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_uploads_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role" "notifications_deploy" {
  name                 = "aridel-15oczk-notifications-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-wen.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-mei.dubois" }
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

resource "aws_iam_role" "notifications_logs_svc" {
  name                 = "aridel-15oczk-notifications-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_logs_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_logs_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_stack_role" {
  name                 = "aridel-15oczk-notifications-stack-role"
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
  name                 = "aridel-15oczk-notifications-svc"
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
  name = "aridel-15oczk-notifications-svc"
  role = aws_iam_role.notifications_svc.name
}

resource "aws_iam_role" "notifications_uploads_svc" {
  name                 = "aridel-15oczk-notifications-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_uploads_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_uploads_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "org_admin" {
  name                 = "aridel-15oczk-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-adm-noor.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-adm-grace.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-adm-lena.mehta" }
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
  name                 = "aridel-15oczk-search-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-search-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-carol.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-alice.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-erin.novak" }
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

resource "aws_iam_role" "search_2_exports_svc" {
  name                 = "aridel-15oczk-search-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_exports_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_exports_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_2_svc" {
  name                 = "aridel-15oczk-search-2-svc"
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
  name = "aridel-15oczk-search-2-svc"
  role = aws_iam_role.search_2_svc.name
}

resource "aws_iam_role" "search_analytics_svc" {
  name                 = "aridel-15oczk-search-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "search_analytics_svc28" {
  name                 = "aridel-15oczk-search-analytics-svc28"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_analytics_svc28__search_data_rw" {
  role       = aws_iam_role.search_analytics_svc28.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_deploy" {
  name                 = "aridel-15oczk-search-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-noor.jones" }
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

resource "aws_iam_role" "search_svc" {
  name                 = "aridel-15oczk-search-svc"
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
  name = "aridel-15oczk-search-svc"
  role = aws_iam_role.search_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "aridel-15oczk-security-audit-role"
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

resource "aws_iam_role" "support_2_assets_svc" {
  name                 = "aridel-15oczk-support-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_assets_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_assets_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_deploy" {
  name                 = "aridel-15oczk-support-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-amit.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-wen.ali591" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-zed.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-quinn.rossi" }
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

resource "aws_iam_role" "support_2_exports_svc" {
  name                 = "aridel-15oczk-support-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_exports_svc__support_2_data_rw" {
  role       = aws_iam_role.support_2_exports_svc.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_svc" {
  name                 = "aridel-15oczk-support-2-svc"
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
  name = "aridel-15oczk-support-2-svc"
  role = aws_iam_role.support_2_svc.name
}

resource "aws_iam_role" "support_assets_svc" {
  name                 = "aridel-15oczk-support-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-support-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/aridel-15oczk-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-grace.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-chen.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-yara.gupta" }
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

resource "aws_iam_role" "support_exports_svc" {
  name                 = "aridel-15oczk-support-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_exports_svc__support_data_rw" {
  role       = aws_iam_role.support_exports_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_nb_role" {
  name                 = "aridel-15oczk-support-nb-role"
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

resource "aws_iam_role_policy_attachment" "support_nb_role__support_data_rw" {
  role       = aws_iam_role.support_nb_role.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_nb_role__support_ops" {
  role       = aws_iam_role.support_nb_role.name
  policy_arn = aws_iam_policy.support_ops.arn
}

resource "aws_iam_role" "support_svc" {
  name                 = "aridel-15oczk-support-svc"
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
  name = "aridel-15oczk-support-svc"
  role = aws_iam_role.support_svc.name
}

resource "aws_iam_role" "web_2_analytics_svc" {
  name                 = "aridel-15oczk-web-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "web_2_deploy" {
  name                 = "aridel-15oczk-web-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-wen.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-heidi.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-uma.tanaka" }
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

resource "aws_iam_role_policy_attachment" "web_2_deploy__inj_pol_p17" {
  role       = aws_iam_role.web_2_deploy.name
  policy_arn = aws_iam_policy.inj_pol_p17.arn
}

resource "aws_iam_role" "web_2_svc" {
  name                 = "aridel-15oczk-web-2-svc"
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
  name = "aridel-15oczk-web-2-svc"
  role = aws_iam_role.web_2_svc.name
}

resource "aws_iam_role" "web_2_uploads_svc" {
  name                 = "aridel-15oczk-web-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "aridel-15oczk-web-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "web_analytics_svc48" {
  name                 = "aridel-15oczk-web-analytics-svc48"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_analytics_svc48__web_data_rw" {
  role       = aws_iam_role.web_analytics_svc48.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_deploy" {
  name                 = "aridel-15oczk-web-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-dara.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-eli.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-omar.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/aridel-15oczk-lena.lopez" }
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
  name                 = "aridel-15oczk-web-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "web_svc" {
  name                 = "aridel-15oczk-web-svc"
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
  name = "aridel-15oczk-web-svc"
  role = aws_iam_role.web_svc.name
}
