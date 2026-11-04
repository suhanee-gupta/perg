resource "aws_iam_role" "api_2_analytics_svc" {
  name                 = "axvel-1bmofe-api-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_analytics_svc__api_2_data_rw" {
  role       = aws_iam_role.api_2_analytics_svc.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_analytics_svc173" {
  name                 = "axvel-1bmofe-api-2-analytics-svc173"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_analytics_svc173__api_2_data_rw" {
  role       = aws_iam_role.api_2_analytics_svc173.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_analytics_svc93" {
  name                 = "axvel-1bmofe-api-2-analytics-svc93"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_2_analytics_svc93__api_2_data_rw" {
  role       = aws_iam_role.api_2_analytics_svc93.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role" "api_2_deploy" {
  name                 = "axvel-1bmofe-api-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.larsen5584" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.smith" }
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

resource "aws_iam_role" "api_2_nb_role" {
  name                 = "axvel-1bmofe-api-2-nb-role"
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

resource "aws_iam_role_policy_attachment" "api_2_nb_role__api_2_data_rw" {
  role       = aws_iam_role.api_2_nb_role.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_2_nb_role__api_2_ops" {
  role       = aws_iam_role.api_2_nb_role.name
  policy_arn = aws_iam_policy.api_2_ops.arn
}

resource "aws_iam_role" "api_2_svc" {
  name                 = "axvel-1bmofe-api-2-svc"
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
  name = "axvel-1bmofe-api-2-svc"
  role = aws_iam_role.api_2_svc.name
}

resource "aws_iam_role" "api_3_assets_svc" {
  name                 = "axvel-1bmofe-api-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_assets_svc__api_3_data_rw" {
  role       = aws_iam_role.api_3_assets_svc.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role" "api_3_assets_svc105" {
  name                 = "axvel-1bmofe-api-3-assets-svc105"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_assets_svc105__api_3_data_rw" {
  role       = aws_iam_role.api_3_assets_svc105.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role" "api_3_assets_svc185" {
  name                 = "axvel-1bmofe-api-3-assets-svc185"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_3_assets_svc185__api_3_data_rw" {
  role       = aws_iam_role.api_3_assets_svc185.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_role" "api_3_deploy" {
  name                 = "axvel-1bmofe-api-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.miller" }
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

resource "aws_iam_role" "api_3_svc" {
  name                 = "axvel-1bmofe-api-3-svc"
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
  name = "axvel-1bmofe-api-3-svc"
  role = aws_iam_role.api_3_svc.name
}

resource "aws_iam_role" "api_4_backups_svc" {
  name                 = "axvel-1bmofe-api-4-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_4_backups_svc__api_4_data_rw" {
  role       = aws_iam_role.api_4_backups_svc.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_role" "api_4_deploy" {
  name                 = "axvel-1bmofe-api-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_4_deploy__api_4_ops" {
  role       = aws_iam_role.api_4_deploy.name
  policy_arn = aws_iam_policy.api_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_4_deploy__api_4_deploy_perms" {
  role       = aws_iam_role.api_4_deploy.name
  policy_arn = aws_iam_policy.api_4_deploy_perms.arn
}

resource "aws_iam_role" "api_4_exports_svc" {
  name                 = "axvel-1bmofe-api-4-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_4_exports_svc__api_4_data_rw" {
  role       = aws_iam_role.api_4_exports_svc.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_role" "api_4_exports_svc197" {
  name                 = "axvel-1bmofe-api-4-exports-svc197"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_4_exports_svc197__api_4_data_rw" {
  role       = aws_iam_role.api_4_exports_svc197.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_role" "api_4_glue_role" {
  name                 = "axvel-1bmofe-api-4-glue-role"
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

resource "aws_iam_role_policy_attachment" "api_4_glue_role__api_4_data_rw" {
  role       = aws_iam_role.api_4_glue_role.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_4_glue_role__api_4_ops" {
  role       = aws_iam_role.api_4_glue_role.name
  policy_arn = aws_iam_policy.api_4_ops.arn
}

resource "aws_iam_role" "api_4_svc" {
  name                 = "axvel-1bmofe-api-4-svc"
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

resource "aws_iam_role_policy_attachment" "api_4_svc__api_4_data_rw" {
  role       = aws_iam_role.api_4_svc.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_4_svc__api_4_ops" {
  role       = aws_iam_role.api_4_svc.name
  policy_arn = aws_iam_policy.api_4_ops.arn
}

resource "aws_iam_instance_profile" "api_4_svc" {
  name = "axvel-1bmofe-api-4-svc"
  role = aws_iam_role.api_4_svc.name
}

resource "aws_iam_role" "api_5_analytics_svc" {
  name                 = "axvel-1bmofe-api-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_5_analytics_svc__api_5_data_rw" {
  role       = aws_iam_role.api_5_analytics_svc.name
  policy_arn = aws_iam_policy.api_5_data_rw.arn
}

resource "aws_iam_role" "api_5_deploy" {
  name                 = "axvel-1bmofe-api-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.larsen9674" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.larsen8951" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_5_deploy__api_5_ops" {
  role       = aws_iam_role.api_5_deploy.name
  policy_arn = aws_iam_policy.api_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_5_deploy__api_5_deploy_perms" {
  role       = aws_iam_role.api_5_deploy.name
  policy_arn = aws_iam_policy.api_5_deploy_perms.arn
}

resource "aws_iam_role" "api_5_svc" {
  name                 = "axvel-1bmofe-api-5-svc"
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

resource "aws_iam_role_policy_attachment" "api_5_svc__api_5_data_rw" {
  role       = aws_iam_role.api_5_svc.name
  policy_arn = aws_iam_policy.api_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_5_svc__api_5_ops" {
  role       = aws_iam_role.api_5_svc.name
  policy_arn = aws_iam_policy.api_5_ops.arn
}

resource "aws_iam_instance_profile" "api_5_svc" {
  name = "axvel-1bmofe-api-5-svc"
  role = aws_iam_role.api_5_svc.name
}

resource "aws_iam_role" "api_5_uploads_svc" {
  name                 = "axvel-1bmofe-api-5-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_5_uploads_svc__api_5_data_rw" {
  role       = aws_iam_role.api_5_uploads_svc.name
  policy_arn = aws_iam_policy.api_5_data_rw.arn
}

resource "aws_iam_role" "api_5_uploads_svc209" {
  name                 = "axvel-1bmofe-api-5-uploads-svc209"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_5_uploads_svc209__api_5_data_rw" {
  role       = aws_iam_role.api_5_uploads_svc209.name
  policy_arn = aws_iam_policy.api_5_data_rw.arn
}

resource "aws_iam_role" "api_6_analytics_svc" {
  name                 = "axvel-1bmofe-api-6-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_6_analytics_svc__api_6_data_rw" {
  role       = aws_iam_role.api_6_analytics_svc.name
  policy_arn = aws_iam_policy.api_6_data_rw.arn
}

resource "aws_iam_role" "api_6_analytics_svc141" {
  name                 = "axvel-1bmofe-api-6-analytics-svc141"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_6_analytics_svc141__api_6_data_rw" {
  role       = aws_iam_role.api_6_analytics_svc141.name
  policy_arn = aws_iam_policy.api_6_data_rw.arn
}

resource "aws_iam_role" "api_6_analytics_svc221" {
  name                 = "axvel-1bmofe-api-6-analytics-svc221"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_6_analytics_svc221__api_6_data_rw" {
  role       = aws_iam_role.api_6_analytics_svc221.name
  policy_arn = aws_iam_policy.api_6_data_rw.arn
}

resource "aws_iam_role" "api_6_deploy" {
  name                 = "axvel-1bmofe-api-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-sara.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.brown5678" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_6_deploy__api_6_ops" {
  role       = aws_iam_role.api_6_deploy.name
  policy_arn = aws_iam_policy.api_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_6_deploy__api_6_deploy_perms" {
  role       = aws_iam_role.api_6_deploy.name
  policy_arn = aws_iam_policy.api_6_deploy_perms.arn
}

resource "aws_iam_role" "api_6_svc" {
  name                 = "axvel-1bmofe-api-6-svc"
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

resource "aws_iam_role_policy_attachment" "api_6_svc__api_6_data_rw" {
  role       = aws_iam_role.api_6_svc.name
  policy_arn = aws_iam_policy.api_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_6_svc__api_6_ops" {
  role       = aws_iam_role.api_6_svc.name
  policy_arn = aws_iam_policy.api_6_ops.arn
}

resource "aws_iam_instance_profile" "api_6_svc" {
  name = "axvel-1bmofe-api-6-svc"
  role = aws_iam_role.api_6_svc.name
}

resource "aws_iam_role" "api_7_analytics_svc" {
  name                 = "axvel-1bmofe-api-7-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_7_analytics_svc__api_7_data_rw" {
  role       = aws_iam_role.api_7_analytics_svc.name
  policy_arn = aws_iam_policy.api_7_data_rw.arn
}

resource "aws_iam_role" "api_7_backups_svc" {
  name                 = "axvel-1bmofe-api-7-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_7_backups_svc__api_7_data_rw" {
  role       = aws_iam_role.api_7_backups_svc.name
  policy_arn = aws_iam_policy.api_7_data_rw.arn
}

resource "aws_iam_role" "api_7_deploy" {
  name                 = "axvel-1bmofe-api-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_7_deploy__api_7_ops" {
  role       = aws_iam_role.api_7_deploy.name
  policy_arn = aws_iam_policy.api_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "api_7_deploy__api_7_deploy_perms" {
  role       = aws_iam_role.api_7_deploy.name
  policy_arn = aws_iam_policy.api_7_deploy_perms.arn
}

resource "aws_iam_role" "api_7_svc" {
  name                 = "axvel-1bmofe-api-7-svc"
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

resource "aws_iam_role_policy_attachment" "api_7_svc__api_7_data_rw" {
  role       = aws_iam_role.api_7_svc.name
  policy_arn = aws_iam_policy.api_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_7_svc__api_7_ops" {
  role       = aws_iam_role.api_7_svc.name
  policy_arn = aws_iam_policy.api_7_ops.arn
}

resource "aws_iam_instance_profile" "api_7_svc" {
  name = "axvel-1bmofe-api-7-svc"
  role = aws_iam_role.api_7_svc.name
}

resource "aws_iam_role" "api_7_uploads_svc" {
  name                 = "axvel-1bmofe-api-7-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_7_uploads_svc__api_7_data_rw" {
  role       = aws_iam_role.api_7_uploads_svc.name
  policy_arn = aws_iam_policy.api_7_data_rw.arn
}

resource "aws_iam_role" "api_analytics_svc" {
  name                 = "axvel-1bmofe-api-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "api_analytics_svc241" {
  name                 = "axvel-1bmofe-api-analytics-svc241"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_analytics_svc241__api_data_rw" {
  role       = aws_iam_role.api_analytics_svc241.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "api_deploy" {
  name                 = "axvel-1bmofe-api-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.cohen7491" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mike.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.chen" }
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

resource "aws_iam_role" "api_glue_role" {
  name                 = "axvel-1bmofe-api-glue-role"
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

resource "aws_iam_role_policy_attachment" "api_glue_role__api_data_rw" {
  role       = aws_iam_role.api_glue_role.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "api_glue_role__api_ops" {
  role       = aws_iam_role.api_glue_role.name
  policy_arn = aws_iam_policy.api_ops.arn
}

resource "aws_iam_role" "api_svc" {
  name                 = "axvel-1bmofe-api-svc"
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
  name = "axvel-1bmofe-api-svc"
  role = aws_iam_role.api_svc.name
}

resource "aws_iam_role" "api_uploads_svc" {
  name                 = "axvel-1bmofe-api-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "api_uploads_svc161" {
  name                 = "axvel-1bmofe-api-uploads-svc161"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "api_uploads_svc161__api_data_rw" {
  role       = aws_iam_role.api_uploads_svc161.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_role" "auth_2_assets_svc" {
  name                 = "axvel-1bmofe-auth-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "auth_2_backups_svc" {
  name                 = "axvel-1bmofe-auth-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_backups_svc__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_backups_svc.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_2_backups_svc181" {
  name                 = "axvel-1bmofe-auth-2-backups-svc181"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_2_backups_svc181__auth_2_data_rw" {
  role       = aws_iam_role.auth_2_backups_svc181.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_role" "auth_2_deploy" {
  name                 = "axvel-1bmofe-auth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-vik.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-fay.jones" }
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
  name                 = "axvel-1bmofe-auth-2-svc"
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
  name = "axvel-1bmofe-auth-2-svc"
  role = aws_iam_role.auth_2_svc.name
}

resource "aws_iam_role" "auth_3_deploy" {
  name                 = "axvel-1bmofe-auth-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-sara.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-sara.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.patel" }
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

resource "aws_iam_role" "auth_3_exports_svc" {
  name                 = "axvel-1bmofe-auth-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_exports_svc__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_exports_svc.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role" "auth_3_exports_svc113" {
  name                 = "axvel-1bmofe-auth-3-exports-svc113"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_exports_svc113__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_exports_svc113.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role" "auth_3_exports_svc193" {
  name                 = "axvel-1bmofe-auth-3-exports-svc193"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_3_exports_svc193__auth_3_data_rw" {
  role       = aws_iam_role.auth_3_exports_svc193.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_role" "auth_3_svc" {
  name                 = "axvel-1bmofe-auth-3-svc"
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
  name = "axvel-1bmofe-auth-3-svc"
  role = aws_iam_role.auth_3_svc.name
}

resource "aws_iam_role" "auth_4_deploy" {
  name                 = "axvel-1bmofe-auth-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.nguyen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_4_deploy__auth_4_ops" {
  role       = aws_iam_role.auth_4_deploy.name
  policy_arn = aws_iam_policy.auth_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_4_deploy__auth_4_deploy_perms" {
  role       = aws_iam_role.auth_4_deploy.name
  policy_arn = aws_iam_policy.auth_4_deploy_perms.arn
}

resource "aws_iam_role" "auth_4_exports_svc" {
  name                 = "axvel-1bmofe-auth-4-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_4_exports_svc__auth_4_data_rw" {
  role       = aws_iam_role.auth_4_exports_svc.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_role" "auth_4_exports_svc125" {
  name                 = "axvel-1bmofe-auth-4-exports-svc125"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_4_exports_svc125__auth_4_data_rw" {
  role       = aws_iam_role.auth_4_exports_svc125.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_role" "auth_4_exports_svc205" {
  name                 = "axvel-1bmofe-auth-4-exports-svc205"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_4_exports_svc205__auth_4_data_rw" {
  role       = aws_iam_role.auth_4_exports_svc205.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_role" "auth_4_stack_role" {
  name                 = "axvel-1bmofe-auth-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "auth_4_stack_role__auth_4_data_rw" {
  role       = aws_iam_role.auth_4_stack_role.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_4_stack_role__auth_4_ops" {
  role       = aws_iam_role.auth_4_stack_role.name
  policy_arn = aws_iam_policy.auth_4_ops.arn
}

resource "aws_iam_role" "auth_4_svc" {
  name                 = "axvel-1bmofe-auth-4-svc"
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

resource "aws_iam_role_policy_attachment" "auth_4_svc__auth_4_data_rw" {
  role       = aws_iam_role.auth_4_svc.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_4_svc__auth_4_ops" {
  role       = aws_iam_role.auth_4_svc.name
  policy_arn = aws_iam_policy.auth_4_ops.arn
}

resource "aws_iam_instance_profile" "auth_4_svc" {
  name = "axvel-1bmofe-auth-4-svc"
  role = aws_iam_role.auth_4_svc.name
}

resource "aws_iam_role" "auth_5_assets_svc" {
  name                 = "axvel-1bmofe-auth-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_5_assets_svc__auth_5_data_rw" {
  role       = aws_iam_role.auth_5_assets_svc.name
  policy_arn = aws_iam_policy.auth_5_data_rw.arn
}

resource "aws_iam_role" "auth_5_deploy" {
  name                 = "axvel-1bmofe-auth-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-sara.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_5_deploy__auth_5_ops" {
  role       = aws_iam_role.auth_5_deploy.name
  policy_arn = aws_iam_policy.auth_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_5_deploy__auth_5_deploy_perms" {
  role       = aws_iam_role.auth_5_deploy.name
  policy_arn = aws_iam_policy.auth_5_deploy_perms.arn
}

resource "aws_iam_role" "auth_5_exports_svc" {
  name                 = "axvel-1bmofe-auth-5-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_5_exports_svc__auth_5_data_rw" {
  role       = aws_iam_role.auth_5_exports_svc.name
  policy_arn = aws_iam_policy.auth_5_data_rw.arn
}

resource "aws_iam_role" "auth_5_logs_svc" {
  name                 = "axvel-1bmofe-auth-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_5_logs_svc__auth_5_data_rw" {
  role       = aws_iam_role.auth_5_logs_svc.name
  policy_arn = aws_iam_policy.auth_5_data_rw.arn
}

resource "aws_iam_role" "auth_5_svc" {
  name                 = "axvel-1bmofe-auth-5-svc"
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

resource "aws_iam_role_policy_attachment" "auth_5_svc__auth_5_data_rw" {
  role       = aws_iam_role.auth_5_svc.name
  policy_arn = aws_iam_policy.auth_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_5_svc__auth_5_ops" {
  role       = aws_iam_role.auth_5_svc.name
  policy_arn = aws_iam_policy.auth_5_ops.arn
}

resource "aws_iam_instance_profile" "auth_5_svc" {
  name = "axvel-1bmofe-auth-5-svc"
  role = aws_iam_role.auth_5_svc.name
}

resource "aws_iam_role" "auth_6_analytics_svc" {
  name                 = "axvel-1bmofe-auth-6-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_6_analytics_svc__auth_6_data_rw" {
  role       = aws_iam_role.auth_6_analytics_svc.name
  policy_arn = aws_iam_policy.auth_6_data_rw.arn
}

resource "aws_iam_role" "auth_6_assets_svc" {
  name                 = "axvel-1bmofe-auth-6-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_6_assets_svc__auth_6_data_rw" {
  role       = aws_iam_role.auth_6_assets_svc.name
  policy_arn = aws_iam_policy.auth_6_data_rw.arn
}

resource "aws_iam_role" "auth_6_deploy" {
  name                 = "axvel-1bmofe-auth-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_6_deploy__auth_6_ops" {
  role       = aws_iam_role.auth_6_deploy.name
  policy_arn = aws_iam_policy.auth_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "auth_6_deploy__auth_6_deploy_perms" {
  role       = aws_iam_role.auth_6_deploy.name
  policy_arn = aws_iam_policy.auth_6_deploy_perms.arn
}

resource "aws_iam_role" "auth_6_logs_svc" {
  name                 = "axvel-1bmofe-auth-6-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_6_logs_svc__auth_6_data_rw" {
  role       = aws_iam_role.auth_6_logs_svc.name
  policy_arn = aws_iam_policy.auth_6_data_rw.arn
}

resource "aws_iam_role" "auth_6_svc" {
  name                 = "axvel-1bmofe-auth-6-svc"
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

resource "aws_iam_role_policy_attachment" "auth_6_svc__auth_6_data_rw" {
  role       = aws_iam_role.auth_6_svc.name
  policy_arn = aws_iam_policy.auth_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_6_svc__auth_6_ops" {
  role       = aws_iam_role.auth_6_svc.name
  policy_arn = aws_iam_policy.auth_6_ops.arn
}

resource "aws_iam_instance_profile" "auth_6_svc" {
  name = "axvel-1bmofe-auth-6-svc"
  role = aws_iam_role.auth_6_svc.name
}

resource "aws_iam_role" "auth_analytics_svc" {
  name                 = "axvel-1bmofe-auth-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "auth_backups_svc" {
  name                 = "axvel-1bmofe-auth-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_backups_svc__auth_data_rw" {
  role       = aws_iam_role.auth_backups_svc.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_deploy" {
  name                 = "axvel-1bmofe-auth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.sato" }
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
  name                 = "axvel-1bmofe-auth-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "auth_exports_svc249" {
  name                 = "axvel-1bmofe-auth-exports-svc249"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "auth_exports_svc249__auth_data_rw" {
  role       = aws_iam_role.auth_exports_svc249.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role" "auth_glue_role" {
  name                 = "axvel-1bmofe-auth-glue-role"
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

resource "aws_iam_role_policy_attachment" "auth_glue_role__auth_data_rw" {
  role       = aws_iam_role.auth_glue_role.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "auth_glue_role__auth_ops" {
  role       = aws_iam_role.auth_glue_role.name
  policy_arn = aws_iam_policy.auth_ops.arn
}

resource "aws_iam_role" "auth_svc" {
  name                 = "axvel-1bmofe-auth-svc"
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
  name = "axvel-1bmofe-auth-svc"
  role = aws_iam_role.auth_svc.name
}

resource "aws_iam_role" "billing_2_assets_svc" {
  name                 = "axvel-1bmofe-billing-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_assets_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_assets_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_backups_svc" {
  name                 = "axvel-1bmofe-billing-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_backups_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_backups_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_deploy" {
  name                 = "axvel-1bmofe-billing-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-grace.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-uma.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dara.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.silva" }
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

resource "aws_iam_role" "billing_2_exports_svc" {
  name                 = "axvel-1bmofe-billing-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_2_exports_svc__billing_2_data_rw" {
  role       = aws_iam_role.billing_2_exports_svc.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_role" "billing_2_svc" {
  name                 = "axvel-1bmofe-billing-2-svc"
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
  name = "axvel-1bmofe-billing-2-svc"
  role = aws_iam_role.billing_2_svc.name
}

resource "aws_iam_role" "billing_3_assets_svc" {
  name                 = "axvel-1bmofe-billing-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_3_assets_svc__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_assets_svc.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role" "billing_3_assets_svc187" {
  name                 = "axvel-1bmofe-billing-3-assets-svc187"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_3_assets_svc187__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_assets_svc187.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role" "billing_3_backups_svc" {
  name                 = "axvel-1bmofe-billing-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_3_deploy" {
  name                 = "axvel-1bmofe-billing-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.gupta9176" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.mehta6062" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.sato" }
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

resource "aws_iam_role" "billing_3_stack_role" {
  name                 = "axvel-1bmofe-billing-3-stack-role"
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

resource "aws_iam_role_policy_attachment" "billing_3_stack_role__billing_3_data_rw" {
  role       = aws_iam_role.billing_3_stack_role.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_3_stack_role__billing_3_ops" {
  role       = aws_iam_role.billing_3_stack_role.name
  policy_arn = aws_iam_policy.billing_3_ops.arn
}

resource "aws_iam_role" "billing_3_svc" {
  name                 = "axvel-1bmofe-billing-3-svc"
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
  name = "axvel-1bmofe-billing-3-svc"
  role = aws_iam_role.billing_3_svc.name
}

resource "aws_iam_role" "billing_4_analytics_svc" {
  name                 = "axvel-1bmofe-billing-4-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_4_analytics_svc__billing_4_data_rw" {
  role       = aws_iam_role.billing_4_analytics_svc.name
  policy_arn = aws_iam_policy.billing_4_data_rw.arn
}

resource "aws_iam_role" "billing_4_deploy" {
  name                 = "axvel-1bmofe-billing-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.jones1557" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_4_deploy__billing_4_ops" {
  role       = aws_iam_role.billing_4_deploy.name
  policy_arn = aws_iam_policy.billing_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_4_deploy__billing_4_deploy_perms" {
  role       = aws_iam_role.billing_4_deploy.name
  policy_arn = aws_iam_policy.billing_4_deploy_perms.arn
}

resource "aws_iam_role" "billing_4_svc" {
  name                 = "axvel-1bmofe-billing-4-svc"
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

resource "aws_iam_role_policy_attachment" "billing_4_svc__billing_4_data_rw" {
  role       = aws_iam_role.billing_4_svc.name
  policy_arn = aws_iam_policy.billing_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_4_svc__billing_4_ops" {
  role       = aws_iam_role.billing_4_svc.name
  policy_arn = aws_iam_policy.billing_4_ops.arn
}

resource "aws_iam_instance_profile" "billing_4_svc" {
  name = "axvel-1bmofe-billing-4-svc"
  role = aws_iam_role.billing_4_svc.name
}

resource "aws_iam_role" "billing_4_uploads_svc" {
  name                 = "axvel-1bmofe-billing-4-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_4_uploads_svc__billing_4_data_rw" {
  role       = aws_iam_role.billing_4_uploads_svc.name
  policy_arn = aws_iam_policy.billing_4_data_rw.arn
}

resource "aws_iam_role" "billing_4_uploads_svc199" {
  name                 = "axvel-1bmofe-billing-4-uploads-svc199"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_4_uploads_svc199__billing_4_data_rw" {
  role       = aws_iam_role.billing_4_uploads_svc199.name
  policy_arn = aws_iam_policy.billing_4_data_rw.arn
}

resource "aws_iam_role" "billing_5_assets_svc" {
  name                 = "axvel-1bmofe-billing-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_5_assets_svc__billing_5_data_rw" {
  role       = aws_iam_role.billing_5_assets_svc.name
  policy_arn = aws_iam_policy.billing_5_data_rw.arn
}

resource "aws_iam_role" "billing_5_deploy" {
  name                 = "axvel-1bmofe-billing-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.rossi7995" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_5_deploy__billing_5_ops" {
  role       = aws_iam_role.billing_5_deploy.name
  policy_arn = aws_iam_policy.billing_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_5_deploy__billing_5_deploy_perms" {
  role       = aws_iam_role.billing_5_deploy.name
  policy_arn = aws_iam_policy.billing_5_deploy_perms.arn
}

resource "aws_iam_role" "billing_5_exports_svc" {
  name                 = "axvel-1bmofe-billing-5-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_5_exports_svc__billing_5_data_rw" {
  role       = aws_iam_role.billing_5_exports_svc.name
  policy_arn = aws_iam_policy.billing_5_data_rw.arn
}

resource "aws_iam_role" "billing_5_logs_svc" {
  name                 = "axvel-1bmofe-billing-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_5_logs_svc__billing_5_data_rw" {
  role       = aws_iam_role.billing_5_logs_svc.name
  policy_arn = aws_iam_policy.billing_5_data_rw.arn
}

resource "aws_iam_role" "billing_5_svc" {
  name                 = "axvel-1bmofe-billing-5-svc"
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

resource "aws_iam_role_policy_attachment" "billing_5_svc__billing_5_data_rw" {
  role       = aws_iam_role.billing_5_svc.name
  policy_arn = aws_iam_policy.billing_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_5_svc__billing_5_ops" {
  role       = aws_iam_role.billing_5_svc.name
  policy_arn = aws_iam_policy.billing_5_ops.arn
}

resource "aws_iam_instance_profile" "billing_5_svc" {
  name = "axvel-1bmofe-billing-5-svc"
  role = aws_iam_role.billing_5_svc.name
}

resource "aws_iam_role" "billing_6_assets_svc" {
  name                 = "axvel-1bmofe-billing-6-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_6_assets_svc__billing_6_data_rw" {
  role       = aws_iam_role.billing_6_assets_svc.name
  policy_arn = aws_iam_policy.billing_6_data_rw.arn
}

resource "aws_iam_role" "billing_6_assets_svc223" {
  name                 = "axvel-1bmofe-billing-6-assets-svc223"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_6_assets_svc223__billing_6_data_rw" {
  role       = aws_iam_role.billing_6_assets_svc223.name
  policy_arn = aws_iam_policy.billing_6_data_rw.arn
}

resource "aws_iam_role" "billing_6_deploy" {
  name                 = "axvel-1bmofe-billing-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_6_deploy__billing_6_ops" {
  role       = aws_iam_role.billing_6_deploy.name
  policy_arn = aws_iam_policy.billing_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_6_deploy__billing_6_deploy_perms" {
  role       = aws_iam_role.billing_6_deploy.name
  policy_arn = aws_iam_policy.billing_6_deploy_perms.arn
}

resource "aws_iam_role" "billing_6_logs_svc" {
  name                 = "axvel-1bmofe-billing-6-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_6_logs_svc__billing_6_data_rw" {
  role       = aws_iam_role.billing_6_logs_svc.name
  policy_arn = aws_iam_policy.billing_6_data_rw.arn
}

resource "aws_iam_role" "billing_6_svc" {
  name                 = "axvel-1bmofe-billing-6-svc"
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

resource "aws_iam_role_policy_attachment" "billing_6_svc__billing_6_data_rw" {
  role       = aws_iam_role.billing_6_svc.name
  policy_arn = aws_iam_policy.billing_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_6_svc__billing_6_ops" {
  role       = aws_iam_role.billing_6_svc.name
  policy_arn = aws_iam_policy.billing_6_ops.arn
}

resource "aws_iam_instance_profile" "billing_6_svc" {
  name = "axvel-1bmofe-billing-6-svc"
  role = aws_iam_role.billing_6_svc.name
}

resource "aws_iam_role" "billing_7_analytics_svc" {
  name                 = "axvel-1bmofe-billing-7-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_7_analytics_svc__billing_7_data_rw" {
  role       = aws_iam_role.billing_7_analytics_svc.name
  policy_arn = aws_iam_policy.billing_7_data_rw.arn
}

resource "aws_iam_role" "billing_7_analytics_svc155" {
  name                 = "axvel-1bmofe-billing-7-analytics-svc155"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_7_analytics_svc155__billing_7_data_rw" {
  role       = aws_iam_role.billing_7_analytics_svc155.name
  policy_arn = aws_iam_policy.billing_7_data_rw.arn
}

resource "aws_iam_role" "billing_7_analytics_svc235" {
  name                 = "axvel-1bmofe-billing-7-analytics-svc235"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_7_analytics_svc235__billing_7_data_rw" {
  role       = aws_iam_role.billing_7_analytics_svc235.name
  policy_arn = aws_iam_policy.billing_7_data_rw.arn
}

resource "aws_iam_role" "billing_7_deploy" {
  name                 = "axvel-1bmofe-billing-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ian.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.khan1721" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.davis5946" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_7_deploy__billing_7_ops" {
  role       = aws_iam_role.billing_7_deploy.name
  policy_arn = aws_iam_policy.billing_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "billing_7_deploy__billing_7_deploy_perms" {
  role       = aws_iam_role.billing_7_deploy.name
  policy_arn = aws_iam_policy.billing_7_deploy_perms.arn
}

resource "aws_iam_role" "billing_7_svc" {
  name                 = "axvel-1bmofe-billing-7-svc"
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

resource "aws_iam_role_policy_attachment" "billing_7_svc__billing_7_data_rw" {
  role       = aws_iam_role.billing_7_svc.name
  policy_arn = aws_iam_policy.billing_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "billing_7_svc__billing_7_ops" {
  role       = aws_iam_role.billing_7_svc.name
  policy_arn = aws_iam_policy.billing_7_ops.arn
}

resource "aws_iam_instance_profile" "billing_7_svc" {
  name = "axvel-1bmofe-billing-7-svc"
  role = aws_iam_role.billing_7_svc.name
}

resource "aws_iam_role" "billing_deploy" {
  name                 = "axvel-1bmofe-billing-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-noor.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-uma.wong6158" }
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

resource "aws_iam_role" "billing_svc" {
  name                 = "axvel-1bmofe-billing-svc"
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
  name = "axvel-1bmofe-billing-svc"
  role = aws_iam_role.billing_svc.name
}

resource "aws_iam_role" "billing_uploads_svc" {
  name                 = "axvel-1bmofe-billing-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "billing_uploads_svc163" {
  name                 = "axvel-1bmofe-billing-uploads-svc163"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_uploads_svc163__billing_data_rw" {
  role       = aws_iam_role.billing_uploads_svc163.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_uploads_svc243" {
  name                 = "axvel-1bmofe-billing-uploads-svc243"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_uploads_svc243__billing_data_rw" {
  role       = aws_iam_role.billing_uploads_svc243.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "billing_uploads_svc83" {
  name                 = "axvel-1bmofe-billing-uploads-svc83"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "billing_uploads_svc83__billing_data_rw" {
  role       = aws_iam_role.billing_uploads_svc83.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_role" "ci_runner" {
  name                 = "axvel-1bmofe-ci-runner"
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

resource "aws_iam_role" "data_2_assets_svc" {
  name                 = "axvel-1bmofe-data-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_2_assets_svc__data_2_data_rw" {
  role       = aws_iam_role.data_2_assets_svc.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_role" "data_2_deploy" {
  name                 = "axvel-1bmofe-data-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-fay.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.dubois3448" }
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
  name                 = "axvel-1bmofe-data-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-data-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-data-2-svc"
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
  name = "axvel-1bmofe-data-2-svc"
  role = aws_iam_role.data_2_svc.name
}

resource "aws_iam_role" "data_3_analytics_svc" {
  name                 = "axvel-1bmofe-data-3-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_analytics_svc__data_3_data_rw" {
  role       = aws_iam_role.data_3_analytics_svc.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role" "data_3_deploy" {
  name                 = "axvel-1bmofe-data-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-sara.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.brown8169" }
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

resource "aws_iam_role" "data_3_glue_role" {
  name                 = "axvel-1bmofe-data-3-glue-role"
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

resource "aws_iam_role_policy_attachment" "data_3_glue_role__data_3_data_rw" {
  role       = aws_iam_role.data_3_glue_role.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_3_glue_role__data_3_ops" {
  role       = aws_iam_role.data_3_glue_role.name
  policy_arn = aws_iam_policy.data_3_ops.arn
}

resource "aws_iam_role" "data_3_svc" {
  name                 = "axvel-1bmofe-data-3-svc"
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
  name = "axvel-1bmofe-data-3-svc"
  role = aws_iam_role.data_3_svc.name
}

resource "aws_iam_role" "data_3_uploads_svc" {
  name                 = "axvel-1bmofe-data-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_uploads_svc__data_3_data_rw" {
  role       = aws_iam_role.data_3_uploads_svc.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role" "data_3_uploads_svc191" {
  name                 = "axvel-1bmofe-data-3-uploads-svc191"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_3_uploads_svc191__data_3_data_rw" {
  role       = aws_iam_role.data_3_uploads_svc191.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_role" "data_4_deploy" {
  name                 = "axvel-1bmofe-data-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-fay.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_4_deploy__data_4_ops" {
  role       = aws_iam_role.data_4_deploy.name
  policy_arn = aws_iam_policy.data_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_4_deploy__data_4_deploy_perms" {
  role       = aws_iam_role.data_4_deploy.name
  policy_arn = aws_iam_policy.data_4_deploy_perms.arn
}

resource "aws_iam_role" "data_4_logs_svc" {
  name                 = "axvel-1bmofe-data-4-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_4_logs_svc__data_4_data_rw" {
  role       = aws_iam_role.data_4_logs_svc.name
  policy_arn = aws_iam_policy.data_4_data_rw.arn
}

resource "aws_iam_role" "data_4_svc" {
  name                 = "axvel-1bmofe-data-4-svc"
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

resource "aws_iam_role_policy_attachment" "data_4_svc__data_4_data_rw" {
  role       = aws_iam_role.data_4_svc.name
  policy_arn = aws_iam_policy.data_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_4_svc__data_4_ops" {
  role       = aws_iam_role.data_4_svc.name
  policy_arn = aws_iam_policy.data_4_ops.arn
}

resource "aws_iam_instance_profile" "data_4_svc" {
  name = "axvel-1bmofe-data-4-svc"
  role = aws_iam_role.data_4_svc.name
}

resource "aws_iam_role" "data_4_uploads_svc" {
  name                 = "axvel-1bmofe-data-4-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_4_uploads_svc__data_4_data_rw" {
  role       = aws_iam_role.data_4_uploads_svc.name
  policy_arn = aws_iam_policy.data_4_data_rw.arn
}

resource "aws_iam_role" "data_4_uploads_svc203" {
  name                 = "axvel-1bmofe-data-4-uploads-svc203"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_4_uploads_svc203__data_4_data_rw" {
  role       = aws_iam_role.data_4_uploads_svc203.name
  policy_arn = aws_iam_policy.data_4_data_rw.arn
}

resource "aws_iam_role" "data_5_analytics_svc" {
  name                 = "axvel-1bmofe-data-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_5_analytics_svc__data_5_data_rw" {
  role       = aws_iam_role.data_5_analytics_svc.name
  policy_arn = aws_iam_policy.data_5_data_rw.arn
}

resource "aws_iam_role" "data_5_deploy" {
  name                 = "axvel-1bmofe-data-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.chen4075" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_5_deploy__data_5_ops" {
  role       = aws_iam_role.data_5_deploy.name
  policy_arn = aws_iam_policy.data_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_5_deploy__data_5_deploy_perms" {
  role       = aws_iam_role.data_5_deploy.name
  policy_arn = aws_iam_policy.data_5_deploy_perms.arn
}

resource "aws_iam_role" "data_5_svc" {
  name                 = "axvel-1bmofe-data-5-svc"
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

resource "aws_iam_role_policy_attachment" "data_5_svc__data_5_data_rw" {
  role       = aws_iam_role.data_5_svc.name
  policy_arn = aws_iam_policy.data_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_5_svc__data_5_ops" {
  role       = aws_iam_role.data_5_svc.name
  policy_arn = aws_iam_policy.data_5_ops.arn
}

resource "aws_iam_instance_profile" "data_5_svc" {
  name = "axvel-1bmofe-data-5-svc"
  role = aws_iam_role.data_5_svc.name
}

resource "aws_iam_role" "data_5_uploads_svc" {
  name                 = "axvel-1bmofe-data-5-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_5_uploads_svc__data_5_data_rw" {
  role       = aws_iam_role.data_5_uploads_svc.name
  policy_arn = aws_iam_policy.data_5_data_rw.arn
}

resource "aws_iam_role" "data_5_uploads_svc215" {
  name                 = "axvel-1bmofe-data-5-uploads-svc215"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_5_uploads_svc215__data_5_data_rw" {
  role       = aws_iam_role.data_5_uploads_svc215.name
  policy_arn = aws_iam_policy.data_5_data_rw.arn
}

resource "aws_iam_role" "data_6_deploy" {
  name                 = "axvel-1bmofe-data-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.larsen390" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.tanaka" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_6_deploy__data_6_ops" {
  role       = aws_iam_role.data_6_deploy.name
  policy_arn = aws_iam_policy.data_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_6_deploy__data_6_deploy_perms" {
  role       = aws_iam_role.data_6_deploy.name
  policy_arn = aws_iam_policy.data_6_deploy_perms.arn
}

resource "aws_iam_role" "data_6_exports_svc" {
  name                 = "axvel-1bmofe-data-6-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_6_exports_svc__data_6_data_rw" {
  role       = aws_iam_role.data_6_exports_svc.name
  policy_arn = aws_iam_policy.data_6_data_rw.arn
}

resource "aws_iam_role" "data_6_logs_svc" {
  name                 = "axvel-1bmofe-data-6-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_6_logs_svc__data_6_data_rw" {
  role       = aws_iam_role.data_6_logs_svc.name
  policy_arn = aws_iam_policy.data_6_data_rw.arn
}

resource "aws_iam_role" "data_6_svc" {
  name                 = "axvel-1bmofe-data-6-svc"
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

resource "aws_iam_role_policy_attachment" "data_6_svc__data_6_data_rw" {
  role       = aws_iam_role.data_6_svc.name
  policy_arn = aws_iam_policy.data_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_6_svc__data_6_ops" {
  role       = aws_iam_role.data_6_svc.name
  policy_arn = aws_iam_policy.data_6_ops.arn
}

resource "aws_iam_instance_profile" "data_6_svc" {
  name = "axvel-1bmofe-data-6-svc"
  role = aws_iam_role.data_6_svc.name
}

resource "aws_iam_role" "data_6_uploads_svc" {
  name                 = "axvel-1bmofe-data-6-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_6_uploads_svc__data_6_data_rw" {
  role       = aws_iam_role.data_6_uploads_svc.name
  policy_arn = aws_iam_policy.data_6_data_rw.arn
}

resource "aws_iam_role" "data_7_deploy" {
  name                 = "axvel-1bmofe-data-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-fay.jones67" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.sato9463" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.davis1158" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_7_deploy__data_7_ops" {
  role       = aws_iam_role.data_7_deploy.name
  policy_arn = aws_iam_policy.data_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_7_deploy__data_7_deploy_perms" {
  role       = aws_iam_role.data_7_deploy.name
  policy_arn = aws_iam_policy.data_7_deploy_perms.arn
}

resource "aws_iam_role" "data_7_exports_svc" {
  name                 = "axvel-1bmofe-data-7-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_7_exports_svc__data_7_data_rw" {
  role       = aws_iam_role.data_7_exports_svc.name
  policy_arn = aws_iam_policy.data_7_data_rw.arn
}

resource "aws_iam_role" "data_7_exports_svc159" {
  name                 = "axvel-1bmofe-data-7-exports-svc159"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_7_exports_svc159__data_7_data_rw" {
  role       = aws_iam_role.data_7_exports_svc159.name
  policy_arn = aws_iam_policy.data_7_data_rw.arn
}

resource "aws_iam_role" "data_7_exports_svc239" {
  name                 = "axvel-1bmofe-data-7-exports-svc239"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_7_exports_svc239__data_7_data_rw" {
  role       = aws_iam_role.data_7_exports_svc239.name
  policy_arn = aws_iam_policy.data_7_data_rw.arn
}

resource "aws_iam_role" "data_7_svc" {
  name                 = "axvel-1bmofe-data-7-svc"
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

resource "aws_iam_role_policy_attachment" "data_7_svc__data_7_data_rw" {
  role       = aws_iam_role.data_7_svc.name
  policy_arn = aws_iam_policy.data_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_7_svc__data_7_ops" {
  role       = aws_iam_role.data_7_svc.name
  policy_arn = aws_iam_policy.data_7_ops.arn
}

resource "aws_iam_instance_profile" "data_7_svc" {
  name = "axvel-1bmofe-data-7-svc"
  role = aws_iam_role.data_7_svc.name
}

resource "aws_iam_role" "data_deploy" {
  name                 = "axvel-1bmofe-data-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.lopez3056" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.larsen" }
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

resource "aws_iam_role" "data_exports_svc" {
  name                 = "axvel-1bmofe-data-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_exports_svc__data_data_rw" {
  role       = aws_iam_role.data_exports_svc.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_exports_svc167" {
  name                 = "axvel-1bmofe-data-exports-svc167"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_exports_svc167__data_data_rw" {
  role       = aws_iam_role.data_exports_svc167.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_glue_role" {
  name                 = "axvel-1bmofe-data-glue-role"
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

resource "aws_iam_role" "data_logs_svc" {
  name                 = "axvel-1bmofe-data-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "data_logs_svc247" {
  name                 = "axvel-1bmofe-data-logs-svc247"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_logs_svc247__data_data_rw" {
  role       = aws_iam_role.data_logs_svc247.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_role" "data_svc" {
  name                 = "axvel-1bmofe-data-svc"
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
  name = "axvel-1bmofe-data-svc"
  role = aws_iam_role.data_svc.name
}

resource "aws_iam_role" "growth_2_analytics_svc" {
  name                 = "axvel-1bmofe-growth-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "growth_2_analytics_svc174" {
  name                 = "axvel-1bmofe-growth-2-analytics-svc174"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_analytics_svc174__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_analytics_svc174.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_analytics_svc94" {
  name                 = "axvel-1bmofe-growth-2-analytics-svc94"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_2_analytics_svc94__growth_2_data_rw" {
  role       = aws_iam_role.growth_2_analytics_svc94.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_role" "growth_2_deploy" {
  name                 = "axvel-1bmofe-growth-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.smith" }
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
  name                 = "axvel-1bmofe-growth-2-svc"
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
  name = "axvel-1bmofe-growth-2-svc"
  role = aws_iam_role.growth_2_svc.name
}

resource "aws_iam_role" "growth_3_deploy" {
  name                 = "axvel-1bmofe-growth-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.sato" }
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

resource "aws_iam_role" "growth_3_logs_svc" {
  name                 = "axvel-1bmofe-growth-3-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_logs_svc__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_logs_svc.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role" "growth_3_logs_svc106" {
  name                 = "axvel-1bmofe-growth-3-logs-svc106"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_logs_svc106__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_logs_svc106.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role" "growth_3_logs_svc186" {
  name                 = "axvel-1bmofe-growth-3-logs-svc186"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_3_logs_svc186__growth_3_data_rw" {
  role       = aws_iam_role.growth_3_logs_svc186.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_role" "growth_3_svc" {
  name                 = "axvel-1bmofe-growth-3-svc"
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
  name = "axvel-1bmofe-growth-3-svc"
  role = aws_iam_role.growth_3_svc.name
}

resource "aws_iam_role" "growth_4_deploy" {
  name                 = "axvel-1bmofe-growth-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.larsen3682" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_4_deploy__growth_4_ops" {
  role       = aws_iam_role.growth_4_deploy.name
  policy_arn = aws_iam_policy.growth_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_4_deploy__growth_4_deploy_perms" {
  role       = aws_iam_role.growth_4_deploy.name
  policy_arn = aws_iam_policy.growth_4_deploy_perms.arn
}

resource "aws_iam_role" "growth_4_exports_svc" {
  name                 = "axvel-1bmofe-growth-4-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_4_exports_svc__growth_4_data_rw" {
  role       = aws_iam_role.growth_4_exports_svc.name
  policy_arn = aws_iam_policy.growth_4_data_rw.arn
}

resource "aws_iam_role" "growth_4_exports_svc118" {
  name                 = "axvel-1bmofe-growth-4-exports-svc118"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_4_exports_svc118__growth_4_data_rw" {
  role       = aws_iam_role.growth_4_exports_svc118.name
  policy_arn = aws_iam_policy.growth_4_data_rw.arn
}

resource "aws_iam_role" "growth_4_exports_svc198" {
  name                 = "axvel-1bmofe-growth-4-exports-svc198"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_4_exports_svc198__growth_4_data_rw" {
  role       = aws_iam_role.growth_4_exports_svc198.name
  policy_arn = aws_iam_policy.growth_4_data_rw.arn
}

resource "aws_iam_role" "growth_4_svc" {
  name                 = "axvel-1bmofe-growth-4-svc"
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

resource "aws_iam_role_policy_attachment" "growth_4_svc__growth_4_data_rw" {
  role       = aws_iam_role.growth_4_svc.name
  policy_arn = aws_iam_policy.growth_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_4_svc__growth_4_ops" {
  role       = aws_iam_role.growth_4_svc.name
  policy_arn = aws_iam_policy.growth_4_ops.arn
}

resource "aws_iam_instance_profile" "growth_4_svc" {
  name = "axvel-1bmofe-growth-4-svc"
  role = aws_iam_role.growth_4_svc.name
}

resource "aws_iam_role" "growth_5_assets_svc" {
  name                 = "axvel-1bmofe-growth-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_5_assets_svc__growth_5_data_rw" {
  role       = aws_iam_role.growth_5_assets_svc.name
  policy_arn = aws_iam_policy.growth_5_data_rw.arn
}

resource "aws_iam_role" "growth_5_deploy" {
  name                 = "axvel-1bmofe-growth-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.gupta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_5_deploy__growth_5_ops" {
  role       = aws_iam_role.growth_5_deploy.name
  policy_arn = aws_iam_policy.growth_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_5_deploy__growth_5_deploy_perms" {
  role       = aws_iam_role.growth_5_deploy.name
  policy_arn = aws_iam_policy.growth_5_deploy_perms.arn
}

resource "aws_iam_role" "growth_5_exports_svc" {
  name                 = "axvel-1bmofe-growth-5-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_5_exports_svc__growth_5_data_rw" {
  role       = aws_iam_role.growth_5_exports_svc.name
  policy_arn = aws_iam_policy.growth_5_data_rw.arn
}

resource "aws_iam_role" "growth_5_logs_svc" {
  name                 = "axvel-1bmofe-growth-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_5_logs_svc__growth_5_data_rw" {
  role       = aws_iam_role.growth_5_logs_svc.name
  policy_arn = aws_iam_policy.growth_5_data_rw.arn
}

resource "aws_iam_role" "growth_5_svc" {
  name                 = "axvel-1bmofe-growth-5-svc"
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

resource "aws_iam_role_policy_attachment" "growth_5_svc__growth_5_data_rw" {
  role       = aws_iam_role.growth_5_svc.name
  policy_arn = aws_iam_policy.growth_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_5_svc__growth_5_ops" {
  role       = aws_iam_role.growth_5_svc.name
  policy_arn = aws_iam_policy.growth_5_ops.arn
}

resource "aws_iam_instance_profile" "growth_5_svc" {
  name = "axvel-1bmofe-growth-5-svc"
  role = aws_iam_role.growth_5_svc.name
}

resource "aws_iam_role" "growth_6_analytics_svc" {
  name                 = "axvel-1bmofe-growth-6-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_6_analytics_svc__growth_6_data_rw" {
  role       = aws_iam_role.growth_6_analytics_svc.name
  policy_arn = aws_iam_policy.growth_6_data_rw.arn
}

resource "aws_iam_role" "growth_6_assets_svc" {
  name                 = "axvel-1bmofe-growth-6-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_6_assets_svc__growth_6_data_rw" {
  role       = aws_iam_role.growth_6_assets_svc.name
  policy_arn = aws_iam_policy.growth_6_data_rw.arn
}

resource "aws_iam_role" "growth_6_deploy" {
  name                 = "axvel-1bmofe-growth-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_6_deploy__growth_6_ops" {
  role       = aws_iam_role.growth_6_deploy.name
  policy_arn = aws_iam_policy.growth_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_6_deploy__growth_6_deploy_perms" {
  role       = aws_iam_role.growth_6_deploy.name
  policy_arn = aws_iam_policy.growth_6_deploy_perms.arn
}

resource "aws_iam_role" "growth_6_exports_svc" {
  name                 = "axvel-1bmofe-growth-6-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_6_exports_svc__growth_6_data_rw" {
  role       = aws_iam_role.growth_6_exports_svc.name
  policy_arn = aws_iam_policy.growth_6_data_rw.arn
}

resource "aws_iam_role" "growth_6_svc" {
  name                 = "axvel-1bmofe-growth-6-svc"
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

resource "aws_iam_role_policy_attachment" "growth_6_svc__growth_6_data_rw" {
  role       = aws_iam_role.growth_6_svc.name
  policy_arn = aws_iam_policy.growth_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_6_svc__growth_6_ops" {
  role       = aws_iam_role.growth_6_svc.name
  policy_arn = aws_iam_policy.growth_6_ops.arn
}

resource "aws_iam_instance_profile" "growth_6_svc" {
  name = "axvel-1bmofe-growth-6-svc"
  role = aws_iam_role.growth_6_svc.name
}

resource "aws_iam_role" "growth_7_assets_svc" {
  name                 = "axvel-1bmofe-growth-7-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_7_assets_svc__growth_7_data_rw" {
  role       = aws_iam_role.growth_7_assets_svc.name
  policy_arn = aws_iam_policy.growth_7_data_rw.arn
}

resource "aws_iam_role" "growth_7_deploy" {
  name                 = "axvel-1bmofe-growth-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.lopez7825" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_7_deploy__growth_7_ops" {
  role       = aws_iam_role.growth_7_deploy.name
  policy_arn = aws_iam_policy.growth_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "growth_7_deploy__growth_7_deploy_perms" {
  role       = aws_iam_role.growth_7_deploy.name
  policy_arn = aws_iam_policy.growth_7_deploy_perms.arn
}

resource "aws_iam_role" "growth_7_exports_svc" {
  name                 = "axvel-1bmofe-growth-7-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_7_exports_svc__growth_7_data_rw" {
  role       = aws_iam_role.growth_7_exports_svc.name
  policy_arn = aws_iam_policy.growth_7_data_rw.arn
}

resource "aws_iam_role" "growth_7_svc" {
  name                 = "axvel-1bmofe-growth-7-svc"
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

resource "aws_iam_role_policy_attachment" "growth_7_svc__growth_7_data_rw" {
  role       = aws_iam_role.growth_7_svc.name
  policy_arn = aws_iam_policy.growth_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_7_svc__growth_7_ops" {
  role       = aws_iam_role.growth_7_svc.name
  policy_arn = aws_iam_policy.growth_7_ops.arn
}

resource "aws_iam_instance_profile" "growth_7_svc" {
  name = "axvel-1bmofe-growth-7-svc"
  role = aws_iam_role.growth_7_svc.name
}

resource "aws_iam_role" "growth_7_uploads_svc" {
  name                 = "axvel-1bmofe-growth-7-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_7_uploads_svc__growth_7_data_rw" {
  role       = aws_iam_role.growth_7_uploads_svc.name
  policy_arn = aws_iam_policy.growth_7_data_rw.arn
}

resource "aws_iam_role" "growth_assets_svc" {
  name                 = "axvel-1bmofe-growth-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_assets_svc__growth_data_rw" {
  role       = aws_iam_role.growth_assets_svc.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_assets_svc242" {
  name                 = "axvel-1bmofe-growth-assets-svc242"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_assets_svc242__growth_data_rw" {
  role       = aws_iam_role.growth_assets_svc242.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_backups_svc" {
  name                 = "axvel-1bmofe-growth-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "growth_backups_svc162" {
  name                 = "axvel-1bmofe-growth-backups-svc162"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "growth_backups_svc162__growth_data_rw" {
  role       = aws_iam_role.growth_backups_svc162.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role" "growth_deploy" {
  name                 = "axvel-1bmofe-growth-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.tanaka7267" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-grace.wong4302" }
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

resource "aws_iam_role" "growth_nb_role" {
  name                 = "axvel-1bmofe-growth-nb-role"
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

resource "aws_iam_role_policy_attachment" "growth_nb_role__growth_data_rw" {
  role       = aws_iam_role.growth_nb_role.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "growth_nb_role__growth_ops" {
  role       = aws_iam_role.growth_nb_role.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_role" "growth_svc" {
  name                 = "axvel-1bmofe-growth-svc"
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
  name = "axvel-1bmofe-growth-svc"
  role = aws_iam_role.growth_svc.name
}

resource "aws_iam_role" "infra_2_analytics_svc" {
  name                 = "axvel-1bmofe-infra-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-infra-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-infra-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-hana.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.jones" }
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
  name                 = "axvel-1bmofe-infra-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "infra_2_glue_role" {
  name                 = "axvel-1bmofe-infra-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "infra_2_glue_role__infra_2_data_rw" {
  role       = aws_iam_role.infra_2_glue_role.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_2_glue_role__infra_2_ops" {
  role       = aws_iam_role.infra_2_glue_role.name
  policy_arn = aws_iam_policy.infra_2_ops.arn
}

resource "aws_iam_role" "infra_2_svc" {
  name                 = "axvel-1bmofe-infra-2-svc"
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
  name = "axvel-1bmofe-infra-2-svc"
  role = aws_iam_role.infra_2_svc.name
}

resource "aws_iam_role" "infra_3_assets_svc" {
  name                 = "axvel-1bmofe-infra-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_assets_svc__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_assets_svc.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role" "infra_3_backups_svc" {
  name                 = "axvel-1bmofe-infra-3-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_backups_svc__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_backups_svc.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role" "infra_3_backups_svc189" {
  name                 = "axvel-1bmofe-infra-3-backups-svc189"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_3_backups_svc189__infra_3_data_rw" {
  role       = aws_iam_role.infra_3_backups_svc189.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_role" "infra_3_deploy" {
  name                 = "axvel-1bmofe-infra-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.lopez364" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.miller1427" }
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

resource "aws_iam_role" "infra_3_svc" {
  name                 = "axvel-1bmofe-infra-3-svc"
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
  name = "axvel-1bmofe-infra-3-svc"
  role = aws_iam_role.infra_3_svc.name
}

resource "aws_iam_role" "infra_4_analytics_svc" {
  name                 = "axvel-1bmofe-infra-4-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_4_analytics_svc__infra_4_data_rw" {
  role       = aws_iam_role.infra_4_analytics_svc.name
  policy_arn = aws_iam_policy.infra_4_data_rw.arn
}

resource "aws_iam_role" "infra_4_analytics_svc201" {
  name                 = "axvel-1bmofe-infra-4-analytics-svc201"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_4_analytics_svc201__infra_4_data_rw" {
  role       = aws_iam_role.infra_4_analytics_svc201.name
  policy_arn = aws_iam_policy.infra_4_data_rw.arn
}

resource "aws_iam_role" "infra_4_deploy" {
  name                 = "axvel-1bmofe-infra-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.ali4552" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_4_deploy__infra_4_ops" {
  role       = aws_iam_role.infra_4_deploy.name
  policy_arn = aws_iam_policy.infra_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_4_deploy__infra_4_deploy_perms" {
  role       = aws_iam_role.infra_4_deploy.name
  policy_arn = aws_iam_policy.infra_4_deploy_perms.arn
}

resource "aws_iam_role" "infra_4_logs_svc" {
  name                 = "axvel-1bmofe-infra-4-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_4_logs_svc__infra_4_data_rw" {
  role       = aws_iam_role.infra_4_logs_svc.name
  policy_arn = aws_iam_policy.infra_4_data_rw.arn
}

resource "aws_iam_role" "infra_4_svc" {
  name                 = "axvel-1bmofe-infra-4-svc"
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

resource "aws_iam_role_policy_attachment" "infra_4_svc__infra_4_data_rw" {
  role       = aws_iam_role.infra_4_svc.name
  policy_arn = aws_iam_policy.infra_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_4_svc__infra_4_ops" {
  role       = aws_iam_role.infra_4_svc.name
  policy_arn = aws_iam_policy.infra_4_ops.arn
}

resource "aws_iam_instance_profile" "infra_4_svc" {
  name = "axvel-1bmofe-infra-4-svc"
  role = aws_iam_role.infra_4_svc.name
}

resource "aws_iam_role" "infra_5_analytics_svc" {
  name                 = "axvel-1bmofe-infra-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_5_analytics_svc__infra_5_data_rw" {
  role       = aws_iam_role.infra_5_analytics_svc.name
  policy_arn = aws_iam_policy.infra_5_data_rw.arn
}

resource "aws_iam_role" "infra_5_assets_svc" {
  name                 = "axvel-1bmofe-infra-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_5_assets_svc__infra_5_data_rw" {
  role       = aws_iam_role.infra_5_assets_svc.name
  policy_arn = aws_iam_policy.infra_5_data_rw.arn
}

resource "aws_iam_role" "infra_5_deploy" {
  name                 = "axvel-1bmofe-infra-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.cohen7491" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_5_deploy__infra_5_ops" {
  role       = aws_iam_role.infra_5_deploy.name
  policy_arn = aws_iam_policy.infra_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_5_deploy__infra_5_deploy_perms" {
  role       = aws_iam_role.infra_5_deploy.name
  policy_arn = aws_iam_policy.infra_5_deploy_perms.arn
}

resource "aws_iam_role" "infra_5_exports_svc" {
  name                 = "axvel-1bmofe-infra-5-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_5_exports_svc__infra_5_data_rw" {
  role       = aws_iam_role.infra_5_exports_svc.name
  policy_arn = aws_iam_policy.infra_5_data_rw.arn
}

resource "aws_iam_role" "infra_5_svc" {
  name                 = "axvel-1bmofe-infra-5-svc"
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

resource "aws_iam_role_policy_attachment" "infra_5_svc__infra_5_data_rw" {
  role       = aws_iam_role.infra_5_svc.name
  policy_arn = aws_iam_policy.infra_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_5_svc__infra_5_ops" {
  role       = aws_iam_role.infra_5_svc.name
  policy_arn = aws_iam_policy.infra_5_ops.arn
}

resource "aws_iam_instance_profile" "infra_5_svc" {
  name = "axvel-1bmofe-infra-5-svc"
  role = aws_iam_role.infra_5_svc.name
}

resource "aws_iam_role" "infra_6_backups_svc" {
  name                 = "axvel-1bmofe-infra-6-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_6_backups_svc__infra_6_data_rw" {
  role       = aws_iam_role.infra_6_backups_svc.name
  policy_arn = aws_iam_policy.infra_6_data_rw.arn
}

resource "aws_iam_role" "infra_6_backups_svc145" {
  name                 = "axvel-1bmofe-infra-6-backups-svc145"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_6_backups_svc145__infra_6_data_rw" {
  role       = aws_iam_role.infra_6_backups_svc145.name
  policy_arn = aws_iam_policy.infra_6_data_rw.arn
}

resource "aws_iam_role" "infra_6_backups_svc225" {
  name                 = "axvel-1bmofe-infra-6-backups-svc225"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_6_backups_svc225__infra_6_data_rw" {
  role       = aws_iam_role.infra_6_backups_svc225.name
  policy_arn = aws_iam_policy.infra_6_data_rw.arn
}

resource "aws_iam_role" "infra_6_deploy" {
  name                 = "axvel-1bmofe-infra-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.kim9378" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.lopez9883" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_6_deploy__infra_6_ops" {
  role       = aws_iam_role.infra_6_deploy.name
  policy_arn = aws_iam_policy.infra_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_6_deploy__infra_6_deploy_perms" {
  role       = aws_iam_role.infra_6_deploy.name
  policy_arn = aws_iam_policy.infra_6_deploy_perms.arn
}

resource "aws_iam_role" "infra_6_svc" {
  name                 = "axvel-1bmofe-infra-6-svc"
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

resource "aws_iam_role_policy_attachment" "infra_6_svc__infra_6_data_rw" {
  role       = aws_iam_role.infra_6_svc.name
  policy_arn = aws_iam_policy.infra_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_6_svc__infra_6_ops" {
  role       = aws_iam_role.infra_6_svc.name
  policy_arn = aws_iam_policy.infra_6_ops.arn
}

resource "aws_iam_instance_profile" "infra_6_svc" {
  name = "axvel-1bmofe-infra-6-svc"
  role = aws_iam_role.infra_6_svc.name
}

resource "aws_iam_role" "infra_7_deploy" {
  name                 = "axvel-1bmofe-infra-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-noor.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_7_deploy__infra_7_ops" {
  role       = aws_iam_role.infra_7_deploy.name
  policy_arn = aws_iam_policy.infra_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "infra_7_deploy__infra_7_deploy_perms" {
  role       = aws_iam_role.infra_7_deploy.name
  policy_arn = aws_iam_policy.infra_7_deploy_perms.arn
}

resource "aws_iam_role" "infra_7_exports_svc" {
  name                 = "axvel-1bmofe-infra-7-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_7_exports_svc__infra_7_data_rw" {
  role       = aws_iam_role.infra_7_exports_svc.name
  policy_arn = aws_iam_policy.infra_7_data_rw.arn
}

resource "aws_iam_role" "infra_7_exports_svc157" {
  name                 = "axvel-1bmofe-infra-7-exports-svc157"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_7_exports_svc157__infra_7_data_rw" {
  role       = aws_iam_role.infra_7_exports_svc157.name
  policy_arn = aws_iam_policy.infra_7_data_rw.arn
}

resource "aws_iam_role" "infra_7_exports_svc237" {
  name                 = "axvel-1bmofe-infra-7-exports-svc237"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_7_exports_svc237__infra_7_data_rw" {
  role       = aws_iam_role.infra_7_exports_svc237.name
  policy_arn = aws_iam_policy.infra_7_data_rw.arn
}

resource "aws_iam_role" "infra_7_svc" {
  name                 = "axvel-1bmofe-infra-7-svc"
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

resource "aws_iam_role_policy_attachment" "infra_7_svc__infra_7_data_rw" {
  role       = aws_iam_role.infra_7_svc.name
  policy_arn = aws_iam_policy.infra_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "infra_7_svc__infra_7_ops" {
  role       = aws_iam_role.infra_7_svc.name
  policy_arn = aws_iam_policy.infra_7_ops.arn
}

resource "aws_iam_instance_profile" "infra_7_svc" {
  name = "axvel-1bmofe-infra-7-svc"
  role = aws_iam_role.infra_7_svc.name
}

resource "aws_iam_role" "infra_analytics_svc" {
  name                 = "axvel-1bmofe-infra-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "infra_assets_svc" {
  name                 = "axvel-1bmofe-infra-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_assets_svc__infra_data_rw" {
  role       = aws_iam_role.infra_assets_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "infra_deploy" {
  name                 = "axvel-1bmofe-infra-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mike.davis" }
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
  name                 = "axvel-1bmofe-infra-svc"
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
  name = "axvel-1bmofe-infra-svc"
  role = aws_iam_role.infra_svc.name
}

resource "aws_iam_role" "infra_uploads_svc" {
  name                 = "axvel-1bmofe-infra-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_uploads_svc__infra_data_rw" {
  role       = aws_iam_role.infra_uploads_svc.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "infra_uploads_svc245" {
  name                 = "axvel-1bmofe-infra-uploads-svc245"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "infra_uploads_svc245__infra_data_rw" {
  role       = aws_iam_role.infra_uploads_svc245.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_role" "inj_assume_r1" {
  name                 = "axvel-1bmofe-inj-assume-r1"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ext-vik.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_assume_r1__inj_pol_p2" {
  role       = aws_iam_role.inj_assume_r1.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_role" "ml_2_analytics_svc" {
  name                 = "axvel-1bmofe-ml-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "ml_2_deploy" {
  name                 = "axvel-1bmofe-ml-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-judy.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.larsen" }
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
  name                 = "axvel-1bmofe-ml-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-ml-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-ml-2-svc"
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
  name = "axvel-1bmofe-ml-2-svc"
  role = aws_iam_role.ml_2_svc.name
}

resource "aws_iam_role" "ml_3_analytics_svc" {
  name                 = "axvel-1bmofe-ml-3-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_3_analytics_svc__ml_3_data_rw" {
  role       = aws_iam_role.ml_3_analytics_svc.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_role" "ml_3_assets_svc" {
  name                 = "axvel-1bmofe-ml-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_3_assets_svc__ml_3_data_rw" {
  role       = aws_iam_role.ml_3_assets_svc.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_role" "ml_3_deploy" {
  name                 = "axvel-1bmofe-ml-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.khan7505" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.miller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_3_deploy__ml_3_ops" {
  role       = aws_iam_role.ml_3_deploy.name
  policy_arn = aws_iam_policy.ml_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_3_deploy__ml_3_deploy_perms" {
  role       = aws_iam_role.ml_3_deploy.name
  policy_arn = aws_iam_policy.ml_3_deploy_perms.arn
}

resource "aws_iam_role" "ml_3_exports_svc" {
  name                 = "axvel-1bmofe-ml-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_3_exports_svc__ml_3_data_rw" {
  role       = aws_iam_role.ml_3_exports_svc.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_role" "ml_3_nb_role" {
  name                 = "axvel-1bmofe-ml-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "ml_3_nb_role__ml_3_data_rw" {
  role       = aws_iam_role.ml_3_nb_role.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_3_nb_role__ml_3_ops" {
  role       = aws_iam_role.ml_3_nb_role.name
  policy_arn = aws_iam_policy.ml_3_ops.arn
}

resource "aws_iam_role" "ml_3_svc" {
  name                 = "axvel-1bmofe-ml-3-svc"
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

resource "aws_iam_role_policy_attachment" "ml_3_svc__ml_3_data_rw" {
  role       = aws_iam_role.ml_3_svc.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_3_svc__ml_3_ops" {
  role       = aws_iam_role.ml_3_svc.name
  policy_arn = aws_iam_policy.ml_3_ops.arn
}

resource "aws_iam_instance_profile" "ml_3_svc" {
  name = "axvel-1bmofe-ml-3-svc"
  role = aws_iam_role.ml_3_svc.name
}

resource "aws_iam_role" "ml_4_analytics_svc" {
  name                 = "axvel-1bmofe-ml-4-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_4_analytics_svc__ml_4_data_rw" {
  role       = aws_iam_role.ml_4_analytics_svc.name
  policy_arn = aws_iam_policy.ml_4_data_rw.arn
}

resource "aws_iam_role" "ml_4_backups_svc" {
  name                 = "axvel-1bmofe-ml-4-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_4_backups_svc__ml_4_data_rw" {
  role       = aws_iam_role.ml_4_backups_svc.name
  policy_arn = aws_iam_policy.ml_4_data_rw.arn
}

resource "aws_iam_role" "ml_4_backups_svc207" {
  name                 = "axvel-1bmofe-ml-4-backups-svc207"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_4_backups_svc207__ml_4_data_rw" {
  role       = aws_iam_role.ml_4_backups_svc207.name
  policy_arn = aws_iam_policy.ml_4_data_rw.arn
}

resource "aws_iam_role" "ml_4_deploy" {
  name                 = "axvel-1bmofe-ml-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-uma.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-nina.davis5673" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_4_deploy__ml_4_ops" {
  role       = aws_iam_role.ml_4_deploy.name
  policy_arn = aws_iam_policy.ml_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_4_deploy__ml_4_deploy_perms" {
  role       = aws_iam_role.ml_4_deploy.name
  policy_arn = aws_iam_policy.ml_4_deploy_perms.arn
}

resource "aws_iam_role" "ml_4_svc" {
  name                 = "axvel-1bmofe-ml-4-svc"
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

resource "aws_iam_role_policy_attachment" "ml_4_svc__ml_4_data_rw" {
  role       = aws_iam_role.ml_4_svc.name
  policy_arn = aws_iam_policy.ml_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_4_svc__ml_4_ops" {
  role       = aws_iam_role.ml_4_svc.name
  policy_arn = aws_iam_policy.ml_4_ops.arn
}

resource "aws_iam_instance_profile" "ml_4_svc" {
  name = "axvel-1bmofe-ml-4-svc"
  role = aws_iam_role.ml_4_svc.name
}

resource "aws_iam_role" "ml_5_deploy" {
  name                 = "axvel-1bmofe-ml-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.okafor817" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_5_deploy__ml_5_ops" {
  role       = aws_iam_role.ml_5_deploy.name
  policy_arn = aws_iam_policy.ml_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_5_deploy__ml_5_deploy_perms" {
  role       = aws_iam_role.ml_5_deploy.name
  policy_arn = aws_iam_policy.ml_5_deploy_perms.arn
}

resource "aws_iam_role" "ml_5_logs_svc" {
  name                 = "axvel-1bmofe-ml-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_5_logs_svc__ml_5_data_rw" {
  role       = aws_iam_role.ml_5_logs_svc.name
  policy_arn = aws_iam_policy.ml_5_data_rw.arn
}

resource "aws_iam_role" "ml_5_logs_svc139" {
  name                 = "axvel-1bmofe-ml-5-logs-svc139"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_5_logs_svc139__ml_5_data_rw" {
  role       = aws_iam_role.ml_5_logs_svc139.name
  policy_arn = aws_iam_policy.ml_5_data_rw.arn
}

resource "aws_iam_role" "ml_5_logs_svc219" {
  name                 = "axvel-1bmofe-ml-5-logs-svc219"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_5_logs_svc219__ml_5_data_rw" {
  role       = aws_iam_role.ml_5_logs_svc219.name
  policy_arn = aws_iam_policy.ml_5_data_rw.arn
}

resource "aws_iam_role" "ml_5_svc" {
  name                 = "axvel-1bmofe-ml-5-svc"
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

resource "aws_iam_role_policy_attachment" "ml_5_svc__ml_5_data_rw" {
  role       = aws_iam_role.ml_5_svc.name
  policy_arn = aws_iam_policy.ml_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_5_svc__ml_5_ops" {
  role       = aws_iam_role.ml_5_svc.name
  policy_arn = aws_iam_policy.ml_5_ops.arn
}

resource "aws_iam_instance_profile" "ml_5_svc" {
  name = "axvel-1bmofe-ml-5-svc"
  role = aws_iam_role.ml_5_svc.name
}

resource "aws_iam_role" "ml_6_backups_svc" {
  name                 = "axvel-1bmofe-ml-6-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_6_backups_svc__ml_6_data_rw" {
  role       = aws_iam_role.ml_6_backups_svc.name
  policy_arn = aws_iam_policy.ml_6_data_rw.arn
}

resource "aws_iam_role" "ml_6_backups_svc151" {
  name                 = "axvel-1bmofe-ml-6-backups-svc151"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_6_backups_svc151__ml_6_data_rw" {
  role       = aws_iam_role.ml_6_backups_svc151.name
  policy_arn = aws_iam_policy.ml_6_data_rw.arn
}

resource "aws_iam_role" "ml_6_backups_svc231" {
  name                 = "axvel-1bmofe-ml-6-backups-svc231"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_6_backups_svc231__ml_6_data_rw" {
  role       = aws_iam_role.ml_6_backups_svc231.name
  policy_arn = aws_iam_policy.ml_6_data_rw.arn
}

resource "aws_iam_role" "ml_6_deploy" {
  name                 = "axvel-1bmofe-ml-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-uma.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-grace.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_6_deploy__ml_6_ops" {
  role       = aws_iam_role.ml_6_deploy.name
  policy_arn = aws_iam_policy.ml_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "ml_6_deploy__ml_6_deploy_perms" {
  role       = aws_iam_role.ml_6_deploy.name
  policy_arn = aws_iam_policy.ml_6_deploy_perms.arn
}

resource "aws_iam_role" "ml_6_svc" {
  name                 = "axvel-1bmofe-ml-6-svc"
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

resource "aws_iam_role_policy_attachment" "ml_6_svc__ml_6_data_rw" {
  role       = aws_iam_role.ml_6_svc.name
  policy_arn = aws_iam_policy.ml_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ml_6_svc__ml_6_ops" {
  role       = aws_iam_role.ml_6_svc.name
  policy_arn = aws_iam_policy.ml_6_ops.arn
}

resource "aws_iam_instance_profile" "ml_6_svc" {
  name = "axvel-1bmofe-ml-6-svc"
  role = aws_iam_role.ml_6_svc.name
}

resource "aws_iam_role" "ml_analytics_svc" {
  name                 = "axvel-1bmofe-ml-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-ml-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "ml_backups_svc251" {
  name                 = "axvel-1bmofe-ml-backups-svc251"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ml_backups_svc251__ml_data_rw" {
  role       = aws_iam_role.ml_backups_svc251.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_role" "ml_deploy" {
  name                 = "axvel-1bmofe-ml-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.smith2433" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.tanaka" }
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
  name                 = "axvel-1bmofe-ml-svc"
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
  name = "axvel-1bmofe-ml-svc"
  role = aws_iam_role.ml_svc.name
}

resource "aws_iam_role" "ml_uploads_svc" {
  name                 = "axvel-1bmofe-ml-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-mobile-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-mobile-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.wong" }
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

resource "aws_iam_role" "mobile_2_exports_svc" {
  name                 = "axvel-1bmofe-mobile-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_exports_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_exports_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_svc" {
  name                 = "axvel-1bmofe-mobile-2-svc"
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
  name = "axvel-1bmofe-mobile-2-svc"
  role = aws_iam_role.mobile_2_svc.name
}

resource "aws_iam_role" "mobile_2_uploads_svc" {
  name                 = "axvel-1bmofe-mobile-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "mobile_3_analytics_svc" {
  name                 = "axvel-1bmofe-mobile-3-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_analytics_svc__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_analytics_svc.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_analytics_svc190" {
  name                 = "axvel-1bmofe-mobile-3-analytics-svc190"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_analytics_svc190__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_analytics_svc190.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_deploy" {
  name                 = "axvel-1bmofe-mobile-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-noor.singh" }
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

resource "aws_iam_role" "mobile_3_stack_role" {
  name                 = "axvel-1bmofe-mobile-3-stack-role"
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

resource "aws_iam_role_policy_attachment" "mobile_3_stack_role__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_stack_role.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_3_stack_role__mobile_3_ops" {
  role       = aws_iam_role.mobile_3_stack_role.name
  policy_arn = aws_iam_policy.mobile_3_ops.arn
}

resource "aws_iam_role" "mobile_3_svc" {
  name                 = "axvel-1bmofe-mobile-3-svc"
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
  name = "axvel-1bmofe-mobile-3-svc"
  role = aws_iam_role.mobile_3_svc.name
}

resource "aws_iam_role" "mobile_3_uploads_svc" {
  name                 = "axvel-1bmofe-mobile-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_uploads_svc__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_uploads_svc.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_4_deploy" {
  name                 = "axvel-1bmofe-mobile-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ian.haddad6877" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_deploy__mobile_4_ops" {
  role       = aws_iam_role.mobile_4_deploy.name
  policy_arn = aws_iam_policy.mobile_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_4_deploy__mobile_4_deploy_perms" {
  role       = aws_iam_role.mobile_4_deploy.name
  policy_arn = aws_iam_policy.mobile_4_deploy_perms.arn
}

resource "aws_iam_role" "mobile_4_glue_role" {
  name                 = "axvel-1bmofe-mobile-4-glue-role"
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

resource "aws_iam_role_policy_attachment" "mobile_4_glue_role__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_glue_role.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_4_glue_role__mobile_4_ops" {
  role       = aws_iam_role.mobile_4_glue_role.name
  policy_arn = aws_iam_policy.mobile_4_ops.arn
}

resource "aws_iam_role" "mobile_4_logs_svc" {
  name                 = "axvel-1bmofe-mobile-4-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_logs_svc__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_logs_svc.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_logs_svc122" {
  name                 = "axvel-1bmofe-mobile-4-logs-svc122"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_logs_svc122__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_logs_svc122.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_logs_svc202" {
  name                 = "axvel-1bmofe-mobile-4-logs-svc202"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_logs_svc202__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_logs_svc202.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_svc" {
  name                 = "axvel-1bmofe-mobile-4-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_4_svc__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_svc.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_4_svc__mobile_4_ops" {
  role       = aws_iam_role.mobile_4_svc.name
  policy_arn = aws_iam_policy.mobile_4_ops.arn
}

resource "aws_iam_instance_profile" "mobile_4_svc" {
  name = "axvel-1bmofe-mobile-4-svc"
  role = aws_iam_role.mobile_4_svc.name
}

resource "aws_iam_role" "mobile_5_assets_svc" {
  name                 = "axvel-1bmofe-mobile-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_assets_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_assets_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_backups_svc" {
  name                 = "axvel-1bmofe-mobile-5-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_backups_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_backups_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_deploy" {
  name                 = "axvel-1bmofe-mobile-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-hana.mehta6429" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mike.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_deploy__mobile_5_ops" {
  role       = aws_iam_role.mobile_5_deploy.name
  policy_arn = aws_iam_policy.mobile_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_5_deploy__mobile_5_deploy_perms" {
  role       = aws_iam_role.mobile_5_deploy.name
  policy_arn = aws_iam_policy.mobile_5_deploy_perms.arn
}

resource "aws_iam_role" "mobile_5_logs_svc" {
  name                 = "axvel-1bmofe-mobile-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_logs_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_logs_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_svc" {
  name                 = "axvel-1bmofe-mobile-5-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_5_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_5_svc__mobile_5_ops" {
  role       = aws_iam_role.mobile_5_svc.name
  policy_arn = aws_iam_policy.mobile_5_ops.arn
}

resource "aws_iam_instance_profile" "mobile_5_svc" {
  name = "axvel-1bmofe-mobile-5-svc"
  role = aws_iam_role.mobile_5_svc.name
}

resource "aws_iam_role" "mobile_6_deploy" {
  name                 = "axvel-1bmofe-mobile-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ian.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_deploy__mobile_6_ops" {
  role       = aws_iam_role.mobile_6_deploy.name
  policy_arn = aws_iam_policy.mobile_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_6_deploy__mobile_6_deploy_perms" {
  role       = aws_iam_role.mobile_6_deploy.name
  policy_arn = aws_iam_policy.mobile_6_deploy_perms.arn
}

resource "aws_iam_role" "mobile_6_exports_svc" {
  name                 = "axvel-1bmofe-mobile-6-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_exports_svc__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_exports_svc.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_exports_svc226" {
  name                 = "axvel-1bmofe-mobile-6-exports-svc226"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_exports_svc226__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_exports_svc226.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_svc" {
  name                 = "axvel-1bmofe-mobile-6-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_6_svc__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_svc.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_6_svc__mobile_6_ops" {
  role       = aws_iam_role.mobile_6_svc.name
  policy_arn = aws_iam_policy.mobile_6_ops.arn
}

resource "aws_iam_instance_profile" "mobile_6_svc" {
  name = "axvel-1bmofe-mobile-6-svc"
  role = aws_iam_role.mobile_6_svc.name
}

resource "aws_iam_role" "mobile_6_uploads_svc" {
  name                 = "axvel-1bmofe-mobile-6-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_uploads_svc__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_uploads_svc.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_7_deploy" {
  name                 = "axvel-1bmofe-mobile-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.chen3010" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-vik.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.gupta3689" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_7_deploy__mobile_7_ops" {
  role       = aws_iam_role.mobile_7_deploy.name
  policy_arn = aws_iam_policy.mobile_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "mobile_7_deploy__mobile_7_deploy_perms" {
  role       = aws_iam_role.mobile_7_deploy.name
  policy_arn = aws_iam_policy.mobile_7_deploy_perms.arn
}

resource "aws_iam_role" "mobile_7_logs_svc" {
  name                 = "axvel-1bmofe-mobile-7-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_7_logs_svc__mobile_7_data_rw" {
  role       = aws_iam_role.mobile_7_logs_svc.name
  policy_arn = aws_iam_policy.mobile_7_data_rw.arn
}

resource "aws_iam_role" "mobile_7_logs_svc158" {
  name                 = "axvel-1bmofe-mobile-7-logs-svc158"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_7_logs_svc158__mobile_7_data_rw" {
  role       = aws_iam_role.mobile_7_logs_svc158.name
  policy_arn = aws_iam_policy.mobile_7_data_rw.arn
}

resource "aws_iam_role" "mobile_7_logs_svc238" {
  name                 = "axvel-1bmofe-mobile-7-logs-svc238"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_7_logs_svc238__mobile_7_data_rw" {
  role       = aws_iam_role.mobile_7_logs_svc238.name
  policy_arn = aws_iam_policy.mobile_7_data_rw.arn
}

resource "aws_iam_role" "mobile_7_svc" {
  name                 = "axvel-1bmofe-mobile-7-svc"
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

resource "aws_iam_role_policy_attachment" "mobile_7_svc__mobile_7_data_rw" {
  role       = aws_iam_role.mobile_7_svc.name
  policy_arn = aws_iam_policy.mobile_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_7_svc__mobile_7_ops" {
  role       = aws_iam_role.mobile_7_svc.name
  policy_arn = aws_iam_policy.mobile_7_ops.arn
}

resource "aws_iam_instance_profile" "mobile_7_svc" {
  name = "axvel-1bmofe-mobile-7-svc"
  role = aws_iam_role.mobile_7_svc.name
}

resource "aws_iam_role" "mobile_assets_svc" {
  name                 = "axvel-1bmofe-mobile-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "mobile_assets_svc246" {
  name                 = "axvel-1bmofe-mobile-assets-svc246"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_assets_svc246__mobile_data_rw" {
  role       = aws_iam_role.mobile_assets_svc246.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_backups_svc" {
  name                 = "axvel-1bmofe-mobile-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-mobile-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.tanaka" }
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

resource "aws_iam_role" "mobile_logs_svc" {
  name                 = "axvel-1bmofe-mobile-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_logs_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_logs_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_svc" {
  name                 = "axvel-1bmofe-mobile-svc"
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
  name = "axvel-1bmofe-mobile-svc"
  role = aws_iam_role.mobile_svc.name
}

resource "aws_iam_role" "notifications_2_analytics_svc" {
  name                 = "axvel-1bmofe-notifications-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_2_analytics_svc__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_analytics_svc.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role" "notifications_2_assets_svc" {
  name                 = "axvel-1bmofe-notifications-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-notifications-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ian.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-frank.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.jones" }
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

resource "aws_iam_role" "notifications_2_glue_role" {
  name                 = "axvel-1bmofe-notifications-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "notifications_2_glue_role__notifications_2_data_rw" {
  role       = aws_iam_role.notifications_2_glue_role.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_2_glue_role__notifications_2_ops" {
  role       = aws_iam_role.notifications_2_glue_role.name
  policy_arn = aws_iam_policy.notifications_2_ops.arn
}

resource "aws_iam_role" "notifications_2_svc" {
  name                 = "axvel-1bmofe-notifications-2-svc"
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
  name = "axvel-1bmofe-notifications-2-svc"
  role = aws_iam_role.notifications_2_svc.name
}

resource "aws_iam_role" "notifications_2_uploads_svc" {
  name                 = "axvel-1bmofe-notifications-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "notifications_3_assets_svc" {
  name                 = "axvel-1bmofe-notifications-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_3_assets_svc__notifications_3_data_rw" {
  role       = aws_iam_role.notifications_3_assets_svc.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_role" "notifications_3_assets_svc194" {
  name                 = "axvel-1bmofe-notifications-3-assets-svc194"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_3_assets_svc194__notifications_3_data_rw" {
  role       = aws_iam_role.notifications_3_assets_svc194.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_role" "notifications_3_deploy" {
  name                 = "axvel-1bmofe-notifications-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-hana.reddy" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_3_deploy__notifications_3_ops" {
  role       = aws_iam_role.notifications_3_deploy.name
  policy_arn = aws_iam_policy.notifications_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_3_deploy__notifications_3_deploy_perms" {
  role       = aws_iam_role.notifications_3_deploy.name
  policy_arn = aws_iam_policy.notifications_3_deploy_perms.arn
}

resource "aws_iam_role" "notifications_3_nb_role" {
  name                 = "axvel-1bmofe-notifications-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "notifications_3_nb_role__notifications_3_data_rw" {
  role       = aws_iam_role.notifications_3_nb_role.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_3_nb_role__notifications_3_ops" {
  role       = aws_iam_role.notifications_3_nb_role.name
  policy_arn = aws_iam_policy.notifications_3_ops.arn
}

resource "aws_iam_role" "notifications_3_svc" {
  name                 = "axvel-1bmofe-notifications-3-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_3_svc__notifications_3_data_rw" {
  role       = aws_iam_role.notifications_3_svc.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_3_svc__notifications_3_ops" {
  role       = aws_iam_role.notifications_3_svc.name
  policy_arn = aws_iam_policy.notifications_3_ops.arn
}

resource "aws_iam_instance_profile" "notifications_3_svc" {
  name = "axvel-1bmofe-notifications-3-svc"
  role = aws_iam_role.notifications_3_svc.name
}

resource "aws_iam_role" "notifications_3_uploads_svc" {
  name                 = "axvel-1bmofe-notifications-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_3_uploads_svc__notifications_3_data_rw" {
  role       = aws_iam_role.notifications_3_uploads_svc.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_role" "notifications_4_analytics_svc" {
  name                 = "axvel-1bmofe-notifications-4-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_4_analytics_svc__notifications_4_data_rw" {
  role       = aws_iam_role.notifications_4_analytics_svc.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_role" "notifications_4_backups_svc" {
  name                 = "axvel-1bmofe-notifications-4-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_4_backups_svc__notifications_4_data_rw" {
  role       = aws_iam_role.notifications_4_backups_svc.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_role" "notifications_4_deploy" {
  name                 = "axvel-1bmofe-notifications-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.ivanov5675" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_4_deploy__notifications_4_ops" {
  role       = aws_iam_role.notifications_4_deploy.name
  policy_arn = aws_iam_policy.notifications_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_4_deploy__notifications_4_deploy_perms" {
  role       = aws_iam_role.notifications_4_deploy.name
  policy_arn = aws_iam_policy.notifications_4_deploy_perms.arn
}

resource "aws_iam_role" "notifications_4_logs_svc" {
  name                 = "axvel-1bmofe-notifications-4-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_4_logs_svc__notifications_4_data_rw" {
  role       = aws_iam_role.notifications_4_logs_svc.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_role" "notifications_4_nb_role" {
  name                 = "axvel-1bmofe-notifications-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "notifications_4_nb_role__notifications_4_data_rw" {
  role       = aws_iam_role.notifications_4_nb_role.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_4_nb_role__notifications_4_ops" {
  role       = aws_iam_role.notifications_4_nb_role.name
  policy_arn = aws_iam_policy.notifications_4_ops.arn
}

resource "aws_iam_role" "notifications_4_svc" {
  name                 = "axvel-1bmofe-notifications-4-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_4_svc__notifications_4_data_rw" {
  role       = aws_iam_role.notifications_4_svc.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_4_svc__notifications_4_ops" {
  role       = aws_iam_role.notifications_4_svc.name
  policy_arn = aws_iam_policy.notifications_4_ops.arn
}

resource "aws_iam_instance_profile" "notifications_4_svc" {
  name = "axvel-1bmofe-notifications-4-svc"
  role = aws_iam_role.notifications_4_svc.name
}

resource "aws_iam_role" "notifications_5_analytics_svc" {
  name                 = "axvel-1bmofe-notifications-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_5_analytics_svc__notifications_5_data_rw" {
  role       = aws_iam_role.notifications_5_analytics_svc.name
  policy_arn = aws_iam_policy.notifications_5_data_rw.arn
}

resource "aws_iam_role" "notifications_5_analytics_svc138" {
  name                 = "axvel-1bmofe-notifications-5-analytics-svc138"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_5_analytics_svc138__notifications_5_data_rw" {
  role       = aws_iam_role.notifications_5_analytics_svc138.name
  policy_arn = aws_iam_policy.notifications_5_data_rw.arn
}

resource "aws_iam_role" "notifications_5_analytics_svc218" {
  name                 = "axvel-1bmofe-notifications-5-analytics-svc218"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_5_analytics_svc218__notifications_5_data_rw" {
  role       = aws_iam_role.notifications_5_analytics_svc218.name
  policy_arn = aws_iam_policy.notifications_5_data_rw.arn
}

resource "aws_iam_role" "notifications_5_deploy" {
  name                 = "axvel-1bmofe-notifications-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-jun.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mike.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.larsen7480" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_5_deploy__notifications_5_ops" {
  role       = aws_iam_role.notifications_5_deploy.name
  policy_arn = aws_iam_policy.notifications_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_5_deploy__notifications_5_deploy_perms" {
  role       = aws_iam_role.notifications_5_deploy.name
  policy_arn = aws_iam_policy.notifications_5_deploy_perms.arn
}

resource "aws_iam_role" "notifications_5_svc" {
  name                 = "axvel-1bmofe-notifications-5-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_5_svc__notifications_5_data_rw" {
  role       = aws_iam_role.notifications_5_svc.name
  policy_arn = aws_iam_policy.notifications_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_5_svc__notifications_5_ops" {
  role       = aws_iam_role.notifications_5_svc.name
  policy_arn = aws_iam_policy.notifications_5_ops.arn
}

resource "aws_iam_instance_profile" "notifications_5_svc" {
  name = "axvel-1bmofe-notifications-5-svc"
  role = aws_iam_role.notifications_5_svc.name
}

resource "aws_iam_role" "notifications_6_deploy" {
  name                 = "axvel-1bmofe-notifications-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-nina.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_6_deploy__notifications_6_ops" {
  role       = aws_iam_role.notifications_6_deploy.name
  policy_arn = aws_iam_policy.notifications_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "notifications_6_deploy__notifications_6_deploy_perms" {
  role       = aws_iam_role.notifications_6_deploy.name
  policy_arn = aws_iam_policy.notifications_6_deploy_perms.arn
}

resource "aws_iam_role" "notifications_6_exports_svc" {
  name                 = "axvel-1bmofe-notifications-6-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_6_exports_svc__notifications_6_data_rw" {
  role       = aws_iam_role.notifications_6_exports_svc.name
  policy_arn = aws_iam_policy.notifications_6_data_rw.arn
}

resource "aws_iam_role" "notifications_6_exports_svc230" {
  name                 = "axvel-1bmofe-notifications-6-exports-svc230"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_6_exports_svc230__notifications_6_data_rw" {
  role       = aws_iam_role.notifications_6_exports_svc230.name
  policy_arn = aws_iam_policy.notifications_6_data_rw.arn
}

resource "aws_iam_role" "notifications_6_logs_svc" {
  name                 = "axvel-1bmofe-notifications-6-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_6_logs_svc__notifications_6_data_rw" {
  role       = aws_iam_role.notifications_6_logs_svc.name
  policy_arn = aws_iam_policy.notifications_6_data_rw.arn
}

resource "aws_iam_role" "notifications_6_svc" {
  name                 = "axvel-1bmofe-notifications-6-svc"
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

resource "aws_iam_role_policy_attachment" "notifications_6_svc__notifications_6_data_rw" {
  role       = aws_iam_role.notifications_6_svc.name
  policy_arn = aws_iam_policy.notifications_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "notifications_6_svc__notifications_6_ops" {
  role       = aws_iam_role.notifications_6_svc.name
  policy_arn = aws_iam_policy.notifications_6_ops.arn
}

resource "aws_iam_instance_profile" "notifications_6_svc" {
  name = "axvel-1bmofe-notifications-6-svc"
  role = aws_iam_role.notifications_6_svc.name
}

resource "aws_iam_role" "notifications_analytics_svc" {
  name                 = "axvel-1bmofe-notifications-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_analytics_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_analytics_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_assets_svc" {
  name                 = "axvel-1bmofe-notifications-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_assets_svc__notifications_data_rw" {
  role       = aws_iam_role.notifications_assets_svc.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_assets_svc250" {
  name                 = "axvel-1bmofe-notifications-assets-svc250"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "notifications_assets_svc250__notifications_data_rw" {
  role       = aws_iam_role.notifications_assets_svc250.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_role" "notifications_deploy" {
  name                 = "axvel-1bmofe-notifications-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.reddy1150" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.chen" }
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
  name                 = "axvel-1bmofe-notifications-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "notifications_svc" {
  name                 = "axvel-1bmofe-notifications-svc"
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
  name = "axvel-1bmofe-notifications-svc"
  role = aws_iam_role.notifications_svc.name
}

resource "aws_iam_role" "org_admin" {
  name                 = "axvel-1bmofe-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-adm-grace.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-adm-leo.sato" }
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
  name                 = "axvel-1bmofe-search-2-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "search_2_assets_svc" {
  name                 = "axvel-1bmofe-search-2-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_2_assets_svc__search_2_data_rw" {
  role       = aws_iam_role.search_2_assets_svc.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_role" "search_2_deploy" {
  name                 = "axvel-1bmofe-search-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-uma.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-erin.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.singh3196" }
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
  name                 = "axvel-1bmofe-search-2-svc"
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
  name = "axvel-1bmofe-search-2-svc"
  role = aws_iam_role.search_2_svc.name
}

resource "aws_iam_role" "search_2_uploads_svc" {
  name                 = "axvel-1bmofe-search-2-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "search_3_assets_svc" {
  name                 = "axvel-1bmofe-search-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_assets_svc__search_3_data_rw" {
  role       = aws_iam_role.search_3_assets_svc.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role" "search_3_deploy" {
  name                 = "axvel-1bmofe-search-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-tom.jones2137" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.smith3518" }
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

resource "aws_iam_role" "search_3_nb_role" {
  name                 = "axvel-1bmofe-search-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "search_3_nb_role__search_3_data_rw" {
  role       = aws_iam_role.search_3_nb_role.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_3_nb_role__search_3_ops" {
  role       = aws_iam_role.search_3_nb_role.name
  policy_arn = aws_iam_policy.search_3_ops.arn
}

resource "aws_iam_role" "search_3_svc" {
  name                 = "axvel-1bmofe-search-3-svc"
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
  name = "axvel-1bmofe-search-3-svc"
  role = aws_iam_role.search_3_svc.name
}

resource "aws_iam_role" "search_3_uploads_svc" {
  name                 = "axvel-1bmofe-search-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_uploads_svc__search_3_data_rw" {
  role       = aws_iam_role.search_3_uploads_svc.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role" "search_3_uploads_svc188" {
  name                 = "axvel-1bmofe-search-3-uploads-svc188"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_3_uploads_svc188__search_3_data_rw" {
  role       = aws_iam_role.search_3_uploads_svc188.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_role" "search_4_deploy" {
  name                 = "axvel-1bmofe-search-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.ali3283" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-grace.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_4_deploy__search_4_ops" {
  role       = aws_iam_role.search_4_deploy.name
  policy_arn = aws_iam_policy.search_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_4_deploy__search_4_deploy_perms" {
  role       = aws_iam_role.search_4_deploy.name
  policy_arn = aws_iam_policy.search_4_deploy_perms.arn
}

resource "aws_iam_role" "search_4_exports_svc" {
  name                 = "axvel-1bmofe-search-4-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_4_exports_svc__search_4_data_rw" {
  role       = aws_iam_role.search_4_exports_svc.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_role" "search_4_exports_svc120" {
  name                 = "axvel-1bmofe-search-4-exports-svc120"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_4_exports_svc120__search_4_data_rw" {
  role       = aws_iam_role.search_4_exports_svc120.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_role" "search_4_exports_svc200" {
  name                 = "axvel-1bmofe-search-4-exports-svc200"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_4_exports_svc200__search_4_data_rw" {
  role       = aws_iam_role.search_4_exports_svc200.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_role" "search_4_nb_role" {
  name                 = "axvel-1bmofe-search-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "search_4_nb_role__search_4_data_rw" {
  role       = aws_iam_role.search_4_nb_role.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_4_nb_role__search_4_ops" {
  role       = aws_iam_role.search_4_nb_role.name
  policy_arn = aws_iam_policy.search_4_ops.arn
}

resource "aws_iam_role" "search_4_svc" {
  name                 = "axvel-1bmofe-search-4-svc"
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

resource "aws_iam_role_policy_attachment" "search_4_svc__search_4_data_rw" {
  role       = aws_iam_role.search_4_svc.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_4_svc__search_4_ops" {
  role       = aws_iam_role.search_4_svc.name
  policy_arn = aws_iam_policy.search_4_ops.arn
}

resource "aws_iam_instance_profile" "search_4_svc" {
  name = "axvel-1bmofe-search-4-svc"
  role = aws_iam_role.search_4_svc.name
}

resource "aws_iam_role" "search_5_backups_svc" {
  name                 = "axvel-1bmofe-search-5-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_5_backups_svc__search_5_data_rw" {
  role       = aws_iam_role.search_5_backups_svc.name
  policy_arn = aws_iam_policy.search_5_data_rw.arn
}

resource "aws_iam_role" "search_5_backups_svc212" {
  name                 = "axvel-1bmofe-search-5-backups-svc212"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_5_backups_svc212__search_5_data_rw" {
  role       = aws_iam_role.search_5_backups_svc212.name
  policy_arn = aws_iam_policy.search_5_data_rw.arn
}

resource "aws_iam_role" "search_5_deploy" {
  name                 = "axvel-1bmofe-search-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.patel9988" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_5_deploy__search_5_ops" {
  role       = aws_iam_role.search_5_deploy.name
  policy_arn = aws_iam_policy.search_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_5_deploy__search_5_deploy_perms" {
  role       = aws_iam_role.search_5_deploy.name
  policy_arn = aws_iam_policy.search_5_deploy_perms.arn
}

resource "aws_iam_role" "search_5_logs_svc" {
  name                 = "axvel-1bmofe-search-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_5_logs_svc__search_5_data_rw" {
  role       = aws_iam_role.search_5_logs_svc.name
  policy_arn = aws_iam_policy.search_5_data_rw.arn
}

resource "aws_iam_role" "search_5_svc" {
  name                 = "axvel-1bmofe-search-5-svc"
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

resource "aws_iam_role_policy_attachment" "search_5_svc__search_5_data_rw" {
  role       = aws_iam_role.search_5_svc.name
  policy_arn = aws_iam_policy.search_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_5_svc__search_5_ops" {
  role       = aws_iam_role.search_5_svc.name
  policy_arn = aws_iam_policy.search_5_ops.arn
}

resource "aws_iam_instance_profile" "search_5_svc" {
  name = "axvel-1bmofe-search-5-svc"
  role = aws_iam_role.search_5_svc.name
}

resource "aws_iam_role" "search_6_deploy" {
  name                 = "axvel-1bmofe-search-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dara.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.lopez" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_6_deploy__search_6_ops" {
  role       = aws_iam_role.search_6_deploy.name
  policy_arn = aws_iam_policy.search_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_6_deploy__search_6_deploy_perms" {
  role       = aws_iam_role.search_6_deploy.name
  policy_arn = aws_iam_policy.search_6_deploy_perms.arn
}

resource "aws_iam_role" "search_6_svc" {
  name                 = "axvel-1bmofe-search-6-svc"
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

resource "aws_iam_role_policy_attachment" "search_6_svc__search_6_data_rw" {
  role       = aws_iam_role.search_6_svc.name
  policy_arn = aws_iam_policy.search_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_6_svc__search_6_ops" {
  role       = aws_iam_role.search_6_svc.name
  policy_arn = aws_iam_policy.search_6_ops.arn
}

resource "aws_iam_instance_profile" "search_6_svc" {
  name = "axvel-1bmofe-search-6-svc"
  role = aws_iam_role.search_6_svc.name
}

resource "aws_iam_role" "search_6_uploads_svc" {
  name                 = "axvel-1bmofe-search-6-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_6_uploads_svc__search_6_data_rw" {
  role       = aws_iam_role.search_6_uploads_svc.name
  policy_arn = aws_iam_policy.search_6_data_rw.arn
}

resource "aws_iam_role" "search_6_uploads_svc144" {
  name                 = "axvel-1bmofe-search-6-uploads-svc144"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_6_uploads_svc144__search_6_data_rw" {
  role       = aws_iam_role.search_6_uploads_svc144.name
  policy_arn = aws_iam_policy.search_6_data_rw.arn
}

resource "aws_iam_role" "search_6_uploads_svc224" {
  name                 = "axvel-1bmofe-search-6-uploads-svc224"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_6_uploads_svc224__search_6_data_rw" {
  role       = aws_iam_role.search_6_uploads_svc224.name
  policy_arn = aws_iam_policy.search_6_data_rw.arn
}

resource "aws_iam_role" "search_7_analytics_svc" {
  name                 = "axvel-1bmofe-search-7-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_7_analytics_svc__search_7_data_rw" {
  role       = aws_iam_role.search_7_analytics_svc.name
  policy_arn = aws_iam_policy.search_7_data_rw.arn
}

resource "aws_iam_role" "search_7_backups_svc" {
  name                 = "axvel-1bmofe-search-7-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_7_backups_svc__search_7_data_rw" {
  role       = aws_iam_role.search_7_backups_svc.name
  policy_arn = aws_iam_policy.search_7_data_rw.arn
}

resource "aws_iam_role" "search_7_backups_svc236" {
  name                 = "axvel-1bmofe-search-7-backups-svc236"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_7_backups_svc236__search_7_data_rw" {
  role       = aws_iam_role.search_7_backups_svc236.name
  policy_arn = aws_iam_policy.search_7_data_rw.arn
}

resource "aws_iam_role" "search_7_deploy" {
  name                 = "axvel-1bmofe-search-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_7_deploy__search_7_ops" {
  role       = aws_iam_role.search_7_deploy.name
  policy_arn = aws_iam_policy.search_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "search_7_deploy__search_7_deploy_perms" {
  role       = aws_iam_role.search_7_deploy.name
  policy_arn = aws_iam_policy.search_7_deploy_perms.arn
}

resource "aws_iam_role" "search_7_svc" {
  name                 = "axvel-1bmofe-search-7-svc"
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

resource "aws_iam_role_policy_attachment" "search_7_svc__search_7_data_rw" {
  role       = aws_iam_role.search_7_svc.name
  policy_arn = aws_iam_policy.search_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_7_svc__search_7_ops" {
  role       = aws_iam_role.search_7_svc.name
  policy_arn = aws_iam_policy.search_7_ops.arn
}

resource "aws_iam_instance_profile" "search_7_svc" {
  name = "axvel-1bmofe-search-7-svc"
  role = aws_iam_role.search_7_svc.name
}

resource "aws_iam_role" "search_deploy" {
  name                 = "axvel-1bmofe-search-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.cohen761" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.rossi" }
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
  name                 = "axvel-1bmofe-search-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "search_exports_svc164" {
  name                 = "axvel-1bmofe-search-exports-svc164"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc164__search_data_rw" {
  role       = aws_iam_role.search_exports_svc164.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_exports_svc244" {
  name                 = "axvel-1bmofe-search-exports-svc244"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc244__search_data_rw" {
  role       = aws_iam_role.search_exports_svc244.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_exports_svc84" {
  name                 = "axvel-1bmofe-search-exports-svc84"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "search_exports_svc84__search_data_rw" {
  role       = aws_iam_role.search_exports_svc84.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role" "search_glue_role" {
  name                 = "axvel-1bmofe-search-glue-role"
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

resource "aws_iam_role_policy_attachment" "search_glue_role__search_data_rw" {
  role       = aws_iam_role.search_glue_role.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "search_glue_role__search_ops" {
  role       = aws_iam_role.search_glue_role.name
  policy_arn = aws_iam_policy.search_ops.arn
}

resource "aws_iam_role" "search_svc" {
  name                 = "axvel-1bmofe-search-svc"
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
  name = "axvel-1bmofe-search-svc"
  role = aws_iam_role.search_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "axvel-1bmofe-security-audit-role"
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

resource "aws_iam_role" "support_2_deploy" {
  name                 = "axvel-1bmofe-support-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.garcia6489" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.davis" }
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
  name                 = "axvel-1bmofe-support-2-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "support_2_logs_svc100" {
  name                 = "axvel-1bmofe-support-2-logs-svc100"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_logs_svc100__support_2_data_rw" {
  role       = aws_iam_role.support_2_logs_svc100.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_logs_svc180" {
  name                 = "axvel-1bmofe-support-2-logs-svc180"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_2_logs_svc180__support_2_data_rw" {
  role       = aws_iam_role.support_2_logs_svc180.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role" "support_2_stack_role" {
  name                 = "axvel-1bmofe-support-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "support_2_stack_role__support_2_data_rw" {
  role       = aws_iam_role.support_2_stack_role.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_2_stack_role__support_2_ops" {
  role       = aws_iam_role.support_2_stack_role.name
  policy_arn = aws_iam_policy.support_2_ops.arn
}

resource "aws_iam_role" "support_2_svc" {
  name                 = "axvel-1bmofe-support-2-svc"
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
  name = "axvel-1bmofe-support-2-svc"
  role = aws_iam_role.support_2_svc.name
}

resource "aws_iam_role" "support_3_assets_svc" {
  name                 = "axvel-1bmofe-support-3-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_assets_svc__support_3_data_rw" {
  role       = aws_iam_role.support_3_assets_svc.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role" "support_3_assets_svc112" {
  name                 = "axvel-1bmofe-support-3-assets-svc112"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_assets_svc112__support_3_data_rw" {
  role       = aws_iam_role.support_3_assets_svc112.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role" "support_3_assets_svc192" {
  name                 = "axvel-1bmofe-support-3-assets-svc192"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_3_assets_svc192__support_3_data_rw" {
  role       = aws_iam_role.support_3_assets_svc192.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_role" "support_3_deploy" {
  name                 = "axvel-1bmofe-support-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-leo.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.sato1666" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.davis1863" }
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
  name                 = "axvel-1bmofe-support-3-svc"
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
  name = "axvel-1bmofe-support-3-svc"
  role = aws_iam_role.support_3_svc.name
}

resource "aws_iam_role" "support_4_analytics_svc" {
  name                 = "axvel-1bmofe-support-4-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_4_analytics_svc__support_4_data_rw" {
  role       = aws_iam_role.support_4_analytics_svc.name
  policy_arn = aws_iam_policy.support_4_data_rw.arn
}

resource "aws_iam_role" "support_4_backups_svc" {
  name                 = "axvel-1bmofe-support-4-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_4_backups_svc__support_4_data_rw" {
  role       = aws_iam_role.support_4_backups_svc.name
  policy_arn = aws_iam_policy.support_4_data_rw.arn
}

resource "aws_iam_role" "support_4_deploy" {
  name                 = "axvel-1bmofe-support-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-nina.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-zed.kim2468" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-mei.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_4_deploy__support_4_ops" {
  role       = aws_iam_role.support_4_deploy.name
  policy_arn = aws_iam_policy.support_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_4_deploy__support_4_deploy_perms" {
  role       = aws_iam_role.support_4_deploy.name
  policy_arn = aws_iam_policy.support_4_deploy_perms.arn
}

resource "aws_iam_role" "support_4_svc" {
  name                 = "axvel-1bmofe-support-4-svc"
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

resource "aws_iam_role_policy_attachment" "support_4_svc__support_4_data_rw" {
  role       = aws_iam_role.support_4_svc.name
  policy_arn = aws_iam_policy.support_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_4_svc__support_4_ops" {
  role       = aws_iam_role.support_4_svc.name
  policy_arn = aws_iam_policy.support_4_ops.arn
}

resource "aws_iam_instance_profile" "support_4_svc" {
  name = "axvel-1bmofe-support-4-svc"
  role = aws_iam_role.support_4_svc.name
}

resource "aws_iam_role" "support_4_uploads_svc" {
  name                 = "axvel-1bmofe-support-4-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_4_uploads_svc__support_4_data_rw" {
  role       = aws_iam_role.support_4_uploads_svc.name
  policy_arn = aws_iam_policy.support_4_data_rw.arn
}

resource "aws_iam_role" "support_5_analytics_svc" {
  name                 = "axvel-1bmofe-support-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_5_analytics_svc__support_5_data_rw" {
  role       = aws_iam_role.support_5_analytics_svc.name
  policy_arn = aws_iam_policy.support_5_data_rw.arn
}

resource "aws_iam_role" "support_5_assets_svc" {
  name                 = "axvel-1bmofe-support-5-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_5_assets_svc__support_5_data_rw" {
  role       = aws_iam_role.support_5_assets_svc.name
  policy_arn = aws_iam_policy.support_5_data_rw.arn
}

resource "aws_iam_role" "support_5_deploy" {
  name                 = "axvel-1bmofe-support-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-chen.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-noor.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-vik.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_5_deploy__support_5_ops" {
  role       = aws_iam_role.support_5_deploy.name
  policy_arn = aws_iam_policy.support_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_5_deploy__support_5_deploy_perms" {
  role       = aws_iam_role.support_5_deploy.name
  policy_arn = aws_iam_policy.support_5_deploy_perms.arn
}

resource "aws_iam_role" "support_5_exports_svc" {
  name                 = "axvel-1bmofe-support-5-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_5_exports_svc__support_5_data_rw" {
  role       = aws_iam_role.support_5_exports_svc.name
  policy_arn = aws_iam_policy.support_5_data_rw.arn
}

resource "aws_iam_role" "support_5_svc" {
  name                 = "axvel-1bmofe-support-5-svc"
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

resource "aws_iam_role_policy_attachment" "support_5_svc__support_5_data_rw" {
  role       = aws_iam_role.support_5_svc.name
  policy_arn = aws_iam_policy.support_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_5_svc__support_5_ops" {
  role       = aws_iam_role.support_5_svc.name
  policy_arn = aws_iam_policy.support_5_ops.arn
}

resource "aws_iam_instance_profile" "support_5_svc" {
  name = "axvel-1bmofe-support-5-svc"
  role = aws_iam_role.support_5_svc.name
}

resource "aws_iam_role" "support_6_assets_svc" {
  name                 = "axvel-1bmofe-support-6-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_6_assets_svc__support_6_data_rw" {
  role       = aws_iam_role.support_6_assets_svc.name
  policy_arn = aws_iam_policy.support_6_data_rw.arn
}

resource "aws_iam_role" "support_6_deploy" {
  name                 = "axvel-1bmofe-support-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-grace.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-gus.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dave.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_6_deploy__support_6_ops" {
  role       = aws_iam_role.support_6_deploy.name
  policy_arn = aws_iam_policy.support_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "support_6_deploy__support_6_deploy_perms" {
  role       = aws_iam_role.support_6_deploy.name
  policy_arn = aws_iam_policy.support_6_deploy_perms.arn
}

resource "aws_iam_role" "support_6_logs_svc" {
  name                 = "axvel-1bmofe-support-6-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_6_logs_svc__support_6_data_rw" {
  role       = aws_iam_role.support_6_logs_svc.name
  policy_arn = aws_iam_policy.support_6_data_rw.arn
}

resource "aws_iam_role" "support_6_svc" {
  name                 = "axvel-1bmofe-support-6-svc"
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

resource "aws_iam_role_policy_attachment" "support_6_svc__support_6_data_rw" {
  role       = aws_iam_role.support_6_svc.name
  policy_arn = aws_iam_policy.support_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "support_6_svc__support_6_ops" {
  role       = aws_iam_role.support_6_svc.name
  policy_arn = aws_iam_policy.support_6_ops.arn
}

resource "aws_iam_instance_profile" "support_6_svc" {
  name = "axvel-1bmofe-support-6-svc"
  role = aws_iam_role.support_6_svc.name
}

resource "aws_iam_role" "support_6_uploads_svc" {
  name                 = "axvel-1bmofe-support-6-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_6_uploads_svc__support_6_data_rw" {
  role       = aws_iam_role.support_6_uploads_svc.name
  policy_arn = aws_iam_policy.support_6_data_rw.arn
}

resource "aws_iam_role" "support_deploy" {
  name                 = "axvel-1bmofe-support-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-fay.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-quinn.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-alice.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dara.ali5801" }
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

resource "aws_iam_role" "support_logs_svc" {
  name                 = "axvel-1bmofe-support-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_logs_svc__support_data_rw" {
  role       = aws_iam_role.support_logs_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_logs_svc248" {
  name                 = "axvel-1bmofe-support-logs-svc248"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_logs_svc248__support_data_rw" {
  role       = aws_iam_role.support_logs_svc248.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_nb_role" {
  name                 = "axvel-1bmofe-support-nb-role"
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
  name                 = "axvel-1bmofe-support-svc"
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
  name = "axvel-1bmofe-support-svc"
  role = aws_iam_role.support_svc.name
}

resource "aws_iam_role" "support_uploads_svc" {
  name                 = "axvel-1bmofe-support-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_uploads_svc__support_data_rw" {
  role       = aws_iam_role.support_uploads_svc.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "support_uploads_svc168" {
  name                 = "axvel-1bmofe-support-uploads-svc168"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "support_uploads_svc168__support_data_rw" {
  role       = aws_iam_role.support_uploads_svc168.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_role" "web_2_backups_svc" {
  name                 = "axvel-1bmofe-web-2-backups-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name                 = "axvel-1bmofe-web-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.mehta2848" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-lena.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-omar.wong" }
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

resource "aws_iam_role" "web_2_exports_svc" {
  name                 = "axvel-1bmofe-web-2-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_exports_svc__web_2_data_rw" {
  role       = aws_iam_role.web_2_exports_svc.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_2_exports_svc172" {
  name                 = "axvel-1bmofe-web-2-exports-svc172"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_2_exports_svc172__web_2_data_rw" {
  role       = aws_iam_role.web_2_exports_svc172.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role" "web_2_glue_role" {
  name                 = "axvel-1bmofe-web-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "web_2_glue_role__web_2_data_rw" {
  role       = aws_iam_role.web_2_glue_role.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_2_glue_role__web_2_ops" {
  role       = aws_iam_role.web_2_glue_role.name
  policy_arn = aws_iam_policy.web_2_ops.arn
}

resource "aws_iam_role" "web_2_svc" {
  name                 = "axvel-1bmofe-web-2-svc"
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
  name = "axvel-1bmofe-web-2-svc"
  role = aws_iam_role.web_2_svc.name
}

resource "aws_iam_role" "web_3_deploy" {
  name                 = "axvel-1bmofe-web-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-carol.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-karl.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-yara.khan1590" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-priya.smith3960" }
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

resource "aws_iam_role" "web_3_exports_svc" {
  name                 = "axvel-1bmofe-web-3-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_exports_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_exports_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role" "web_3_logs_svc" {
  name                 = "axvel-1bmofe-web-3-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_logs_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_logs_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role" "web_3_svc" {
  name                 = "axvel-1bmofe-web-3-svc"
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
  name = "axvel-1bmofe-web-3-svc"
  role = aws_iam_role.web_3_svc.name
}

resource "aws_iam_role" "web_3_uploads_svc" {
  name                 = "axvel-1bmofe-web-3-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_3_uploads_svc__web_3_data_rw" {
  role       = aws_iam_role.web_3_uploads_svc.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_role" "web_4_assets_svc" {
  name                 = "axvel-1bmofe-web-4-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_4_assets_svc__web_4_data_rw" {
  role       = aws_iam_role.web_4_assets_svc.name
  policy_arn = aws_iam_policy.web_4_data_rw.arn
}

resource "aws_iam_role" "web_4_deploy" {
  name                 = "axvel-1bmofe-web-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-hana.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-kia.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-raj.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-judy.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_4_deploy__web_4_ops" {
  role       = aws_iam_role.web_4_deploy.name
  policy_arn = aws_iam_policy.web_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_4_deploy__web_4_deploy_perms" {
  role       = aws_iam_role.web_4_deploy.name
  policy_arn = aws_iam_policy.web_4_deploy_perms.arn
}

resource "aws_iam_role" "web_4_exports_svc" {
  name                 = "axvel-1bmofe-web-4-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_4_exports_svc__web_4_data_rw" {
  role       = aws_iam_role.web_4_exports_svc.name
  policy_arn = aws_iam_policy.web_4_data_rw.arn
}

resource "aws_iam_role" "web_4_logs_svc" {
  name                 = "axvel-1bmofe-web-4-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_4_logs_svc__web_4_data_rw" {
  role       = aws_iam_role.web_4_logs_svc.name
  policy_arn = aws_iam_policy.web_4_data_rw.arn
}

resource "aws_iam_role" "web_4_svc" {
  name                 = "axvel-1bmofe-web-4-svc"
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

resource "aws_iam_role_policy_attachment" "web_4_svc__web_4_data_rw" {
  role       = aws_iam_role.web_4_svc.name
  policy_arn = aws_iam_policy.web_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_4_svc__web_4_ops" {
  role       = aws_iam_role.web_4_svc.name
  policy_arn = aws_iam_policy.web_4_ops.arn
}

resource "aws_iam_instance_profile" "web_4_svc" {
  name = "axvel-1bmofe-web-4-svc"
  role = aws_iam_role.web_4_svc.name
}

resource "aws_iam_role" "web_5_analytics_svc" {
  name                 = "axvel-1bmofe-web-5-analytics-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_5_analytics_svc__web_5_data_rw" {
  role       = aws_iam_role.web_5_analytics_svc.name
  policy_arn = aws_iam_policy.web_5_data_rw.arn
}

resource "aws_iam_role" "web_5_deploy" {
  name                 = "axvel-1bmofe-web-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-dara.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bob.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_5_deploy__web_5_ops" {
  role       = aws_iam_role.web_5_deploy.name
  policy_arn = aws_iam_policy.web_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_5_deploy__web_5_deploy_perms" {
  role       = aws_iam_role.web_5_deploy.name
  policy_arn = aws_iam_policy.web_5_deploy_perms.arn
}

resource "aws_iam_role" "web_5_logs_svc" {
  name                 = "axvel-1bmofe-web-5-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_5_logs_svc__web_5_data_rw" {
  role       = aws_iam_role.web_5_logs_svc.name
  policy_arn = aws_iam_policy.web_5_data_rw.arn
}

resource "aws_iam_role" "web_5_svc" {
  name                 = "axvel-1bmofe-web-5-svc"
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

resource "aws_iam_role_policy_attachment" "web_5_svc__web_5_data_rw" {
  role       = aws_iam_role.web_5_svc.name
  policy_arn = aws_iam_policy.web_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_5_svc__web_5_ops" {
  role       = aws_iam_role.web_5_svc.name
  policy_arn = aws_iam_policy.web_5_ops.arn
}

resource "aws_iam_instance_profile" "web_5_svc" {
  name = "axvel-1bmofe-web-5-svc"
  role = aws_iam_role.web_5_svc.name
}

resource "aws_iam_role" "web_5_uploads_svc" {
  name                 = "axvel-1bmofe-web-5-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_5_uploads_svc__web_5_data_rw" {
  role       = aws_iam_role.web_5_uploads_svc.name
  policy_arn = aws_iam_policy.web_5_data_rw.arn
}

resource "aws_iam_role" "web_6_assets_svc" {
  name                 = "axvel-1bmofe-web-6-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_6_assets_svc__web_6_data_rw" {
  role       = aws_iam_role.web_6_assets_svc.name
  policy_arn = aws_iam_policy.web_6_data_rw.arn
}

resource "aws_iam_role" "web_6_assets_svc140" {
  name                 = "axvel-1bmofe-web-6-assets-svc140"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_6_assets_svc140__web_6_data_rw" {
  role       = aws_iam_role.web_6_assets_svc140.name
  policy_arn = aws_iam_policy.web_6_data_rw.arn
}

resource "aws_iam_role" "web_6_assets_svc220" {
  name                 = "axvel-1bmofe-web-6-assets-svc220"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_6_assets_svc220__web_6_data_rw" {
  role       = aws_iam_role.web_6_assets_svc220.name
  policy_arn = aws_iam_policy.web_6_data_rw.arn
}

resource "aws_iam_role" "web_6_deploy" {
  name                 = "axvel-1bmofe-web-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ivan.lopez911" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_6_deploy__web_6_ops" {
  role       = aws_iam_role.web_6_deploy.name
  policy_arn = aws_iam_policy.web_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_6_deploy__web_6_deploy_perms" {
  role       = aws_iam_role.web_6_deploy.name
  policy_arn = aws_iam_policy.web_6_deploy_perms.arn
}

resource "aws_iam_role" "web_6_svc" {
  name                 = "axvel-1bmofe-web-6-svc"
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

resource "aws_iam_role_policy_attachment" "web_6_svc__web_6_data_rw" {
  role       = aws_iam_role.web_6_svc.name
  policy_arn = aws_iam_policy.web_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_6_svc__web_6_ops" {
  role       = aws_iam_role.web_6_svc.name
  policy_arn = aws_iam_policy.web_6_ops.arn
}

resource "aws_iam_instance_profile" "web_6_svc" {
  name = "axvel-1bmofe-web-6-svc"
  role = aws_iam_role.web_6_svc.name
}

resource "aws_iam_role" "web_7_assets_svc" {
  name                 = "axvel-1bmofe-web-7-assets-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_7_assets_svc__web_7_data_rw" {
  role       = aws_iam_role.web_7_assets_svc.name
  policy_arn = aws_iam_policy.web_7_data_rw.arn
}

resource "aws_iam_role" "web_7_assets_svc152" {
  name                 = "axvel-1bmofe-web-7-assets-svc152"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_7_assets_svc152__web_7_data_rw" {
  role       = aws_iam_role.web_7_assets_svc152.name
  policy_arn = aws_iam_policy.web_7_data_rw.arn
}

resource "aws_iam_role" "web_7_assets_svc232" {
  name                 = "axvel-1bmofe-web-7-assets-svc232"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_7_assets_svc232__web_7_data_rw" {
  role       = aws_iam_role.web_7_assets_svc232.name
  policy_arn = aws_iam_policy.web_7_data_rw.arn
}

resource "aws_iam_role" "web_7_deploy" {
  name                 = "axvel-1bmofe-web-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-heidi.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_7_deploy__web_7_ops" {
  role       = aws_iam_role.web_7_deploy.name
  policy_arn = aws_iam_policy.web_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "web_7_deploy__web_7_deploy_perms" {
  role       = aws_iam_role.web_7_deploy.name
  policy_arn = aws_iam_policy.web_7_deploy_perms.arn
}

resource "aws_iam_role" "web_7_svc" {
  name                 = "axvel-1bmofe-web-7-svc"
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

resource "aws_iam_role_policy_attachment" "web_7_svc__web_7_data_rw" {
  role       = aws_iam_role.web_7_svc.name
  policy_arn = aws_iam_policy.web_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "web_7_svc__web_7_ops" {
  role       = aws_iam_role.web_7_svc.name
  policy_arn = aws_iam_policy.web_7_ops.arn
}

resource "aws_iam_instance_profile" "web_7_svc" {
  name = "axvel-1bmofe-web-7-svc"
  role = aws_iam_role.web_7_svc.name
}

resource "aws_iam_role" "web_deploy" {
  name                 = "axvel-1bmofe-web-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-bela.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-wen.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-eli.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/axvel-1bmofe-amit.kim" }
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
  name                 = "axvel-1bmofe-web-exports-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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

resource "aws_iam_role" "web_exports_svc240" {
  name                 = "axvel-1bmofe-web-exports-svc240"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_exports_svc240__web_data_rw" {
  role       = aws_iam_role.web_exports_svc240.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_glue_role" {
  name                 = "axvel-1bmofe-web-glue-role"
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

resource "aws_iam_role" "web_logs_svc" {
  name                 = "axvel-1bmofe-web-logs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_logs_svc__web_data_rw" {
  role       = aws_iam_role.web_logs_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_role" "web_svc" {
  name                 = "axvel-1bmofe-web-svc"
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
  name = "axvel-1bmofe-web-svc"
  role = aws_iam_role.web_svc.name
}

resource "aws_iam_role" "web_uploads_svc" {
  name                 = "axvel-1bmofe-web-uploads-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "web_uploads_svc__web_data_rw" {
  role       = aws_iam_role.web_uploads_svc.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}
