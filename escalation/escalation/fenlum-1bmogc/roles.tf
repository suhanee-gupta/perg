resource "aws_iam_role" "ci_runner" {
  name                 = "fenlum-1bmogc-ci-runner"
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

resource "aws_iam_role" "data_eng_2_audit_svc" {
  name                 = "fenlum-1bmogc-data-eng-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_audit_svc__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_audit_svc.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_audit_svc263" {
  name                 = "fenlum-1bmogc-data-eng-2-audit-svc263"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_audit_svc263__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_audit_svc263.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_audit_svc503" {
  name                 = "fenlum-1bmogc-data-eng-2-audit-svc503"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_audit_svc503__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_audit_svc503.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_deploy" {
  name                 = "fenlum-1bmogc-data-eng-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.lopez" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_deploy__data_eng_2_ops" {
  role       = aws_iam_role.data_eng_2_deploy.name
  policy_arn = aws_iam_policy.data_eng_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_2_deploy__data_eng_2_deploy_perms" {
  role       = aws_iam_role.data_eng_2_deploy.name
  policy_arn = aws_iam_policy.data_eng_2_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_2_ledger_svc" {
  name                 = "fenlum-1bmogc-data-eng-2-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_ledger_svc__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_ledger_svc.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_ledger_svc423" {
  name                 = "fenlum-1bmogc-data-eng-2-ledger-svc423"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_ledger_svc423__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_ledger_svc423.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_risk_models_svc" {
  name                 = "fenlum-1bmogc-data-eng-2-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_risk_models_svc__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_risk_models_svc.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_risk_models_svc343" {
  name                 = "fenlum-1bmogc-data-eng-2-risk-models-svc343"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_risk_models_svc343__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_risk_models_svc343.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role" "data_eng_2_stack_role" {
  name                 = "fenlum-1bmogc-data-eng-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "data_eng_2_stack_role__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_stack_role.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_2_stack_role__data_eng_2_ops" {
  role       = aws_iam_role.data_eng_2_stack_role.name
  policy_arn = aws_iam_policy.data_eng_2_ops.arn
}

resource "aws_iam_role" "data_eng_2_svc" {
  name                 = "fenlum-1bmogc-data-eng-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_2_svc__data_eng_2_data_rw" {
  role       = aws_iam_role.data_eng_2_svc.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_2_svc__data_eng_2_ops" {
  role       = aws_iam_role.data_eng_2_svc.name
  policy_arn = aws_iam_policy.data_eng_2_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_2_svc" {
  name = "fenlum-1bmogc-data-eng-2-svc"
  role = aws_iam_role.data_eng_2_svc.name
}

resource "aws_iam_role" "data_eng_3_deploy" {
  name                 = "fenlum-1bmogc-data-eng-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-frank.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_deploy__data_eng_3_ops" {
  role       = aws_iam_role.data_eng_3_deploy.name
  policy_arn = aws_iam_policy.data_eng_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_3_deploy__data_eng_3_deploy_perms" {
  role       = aws_iam_role.data_eng_3_deploy.name
  policy_arn = aws_iam_policy.data_eng_3_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc115" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc115"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc115__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc115.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc195" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc195"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc195__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc195.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc275" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc275"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc275__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc275.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc355" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc355"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc355__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc355.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc435" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc435"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc435__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc435.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_statements_svc515" {
  name                 = "fenlum-1bmogc-data-eng-3-statements-svc515"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_statements_svc515__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_statements_svc515.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role" "data_eng_3_svc" {
  name                 = "fenlum-1bmogc-data-eng-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_3_svc__data_eng_3_data_rw" {
  role       = aws_iam_role.data_eng_3_svc.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_3_svc__data_eng_3_ops" {
  role       = aws_iam_role.data_eng_3_svc.name
  policy_arn = aws_iam_policy.data_eng_3_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_3_svc" {
  name = "fenlum-1bmogc-data-eng-3-svc"
  role = aws_iam_role.data_eng_3_svc.name
}

resource "aws_iam_role" "data_eng_4_deploy" {
  name                 = "fenlum-1bmogc-data-eng-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.muller2067" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.khan" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_deploy__data_eng_4_ops" {
  role       = aws_iam_role.data_eng_4_deploy.name
  policy_arn = aws_iam_policy.data_eng_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_4_deploy__data_eng_4_deploy_perms" {
  role       = aws_iam_role.data_eng_4_deploy.name
  policy_arn = aws_iam_policy.data_eng_4_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_4_nb_role" {
  name                 = "fenlum-1bmogc-data-eng-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "data_eng_4_nb_role__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_nb_role.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_4_nb_role__data_eng_4_ops" {
  role       = aws_iam_role.data_eng_4_nb_role.name
  policy_arn = aws_iam_policy.data_eng_4_ops.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc127" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc127"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc127__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc127.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc207" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc207"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc207__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc207.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc287" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc287"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc287__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc287.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc367" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc367"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc367__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc367.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc447" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc447"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc447__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc447.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_statements_svc527" {
  name                 = "fenlum-1bmogc-data-eng-4-statements-svc527"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_statements_svc527__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_statements_svc527.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role" "data_eng_4_svc" {
  name                 = "fenlum-1bmogc-data-eng-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_4_svc__data_eng_4_data_rw" {
  role       = aws_iam_role.data_eng_4_svc.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_4_svc__data_eng_4_ops" {
  role       = aws_iam_role.data_eng_4_svc.name
  policy_arn = aws_iam_policy.data_eng_4_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_4_svc" {
  name = "fenlum-1bmogc-data-eng-4-svc"
  role = aws_iam_role.data_eng_4_svc.name
}

resource "aws_iam_role" "data_eng_5_deploy" {
  name                 = "fenlum-1bmogc-data-eng-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.gupta3512" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_deploy__data_eng_5_ops" {
  role       = aws_iam_role.data_eng_5_deploy.name
  policy_arn = aws_iam_policy.data_eng_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_5_deploy__data_eng_5_deploy_perms" {
  role       = aws_iam_role.data_eng_5_deploy.name
  policy_arn = aws_iam_policy.data_eng_5_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_5_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-data-eng-5-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_kyc_docs_svc__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_kyc_docs_svc.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_5_kyc_docs_svc219" {
  name                 = "fenlum-1bmogc-data-eng-5-kyc-docs-svc219"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_kyc_docs_svc219__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_kyc_docs_svc219.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_5_kyc_docs_svc379" {
  name                 = "fenlum-1bmogc-data-eng-5-kyc-docs-svc379"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_kyc_docs_svc379__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_kyc_docs_svc379.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_5_nb_role" {
  name                 = "fenlum-1bmogc-data-eng-5-nb-role"
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

resource "aws_iam_role_policy_attachment" "data_eng_5_nb_role__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_nb_role.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_5_nb_role__data_eng_5_ops" {
  role       = aws_iam_role.data_eng_5_nb_role.name
  policy_arn = aws_iam_policy.data_eng_5_ops.arn
}

resource "aws_iam_role" "data_eng_5_svc" {
  name                 = "fenlum-1bmogc-data-eng-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_svc__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_svc.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_5_svc__data_eng_5_ops" {
  role       = aws_iam_role.data_eng_5_svc.name
  policy_arn = aws_iam_policy.data_eng_5_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_5_svc" {
  name = "fenlum-1bmogc-data-eng-5-svc"
  role = aws_iam_role.data_eng_5_svc.name
}

resource "aws_iam_role" "data_eng_5_tx_archive_svc" {
  name                 = "fenlum-1bmogc-data-eng-5-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_tx_archive_svc__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_tx_archive_svc.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_5_tx_archive_svc299" {
  name                 = "fenlum-1bmogc-data-eng-5-tx-archive-svc299"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_tx_archive_svc299__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_tx_archive_svc299.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_5_tx_archive_svc459" {
  name                 = "fenlum-1bmogc-data-eng-5-tx-archive-svc459"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_5_tx_archive_svc459__data_eng_5_data_rw" {
  role       = aws_iam_role.data_eng_5_tx_archive_svc459.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_deploy" {
  name                 = "fenlum-1bmogc-data-eng-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-judy.rossi4698" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.ali744" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_deploy__data_eng_6_ops" {
  role       = aws_iam_role.data_eng_6_deploy.name
  policy_arn = aws_iam_policy.data_eng_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_6_deploy__data_eng_6_deploy_perms" {
  role       = aws_iam_role.data_eng_6_deploy.name
  policy_arn = aws_iam_policy.data_eng_6_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc151" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc151"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc151__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc151.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc231" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc231"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc231__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc231.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc311" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc311"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc311__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc311.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc391" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc391"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc391__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc391.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_ledger_svc471" {
  name                 = "fenlum-1bmogc-data-eng-6-ledger-svc471"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_ledger_svc471__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_ledger_svc471.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role" "data_eng_6_svc" {
  name                 = "fenlum-1bmogc-data-eng-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_6_svc__data_eng_6_data_rw" {
  role       = aws_iam_role.data_eng_6_svc.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_6_svc__data_eng_6_ops" {
  role       = aws_iam_role.data_eng_6_svc.name
  policy_arn = aws_iam_policy.data_eng_6_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_6_svc" {
  name = "fenlum-1bmogc-data-eng-6-svc"
  role = aws_iam_role.data_eng_6_svc.name
}

resource "aws_iam_role" "data_eng_deploy" {
  name                 = "fenlum-1bmogc-data-eng-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-sara.sato2547" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.khan6308" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_deploy__data_eng_ops" {
  role       = aws_iam_role.data_eng_deploy.name
  policy_arn = aws_iam_policy.data_eng_ops.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_deploy__data_eng_deploy_perms" {
  role       = aws_iam_role.data_eng_deploy.name
  policy_arn = aws_iam_policy.data_eng_deploy_perms.arn
}

resource "aws_iam_role" "data_eng_ledger_svc" {
  name                 = "fenlum-1bmogc-data-eng-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_ledger_svc__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_ledger_svc.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_ledger_svc171" {
  name                 = "fenlum-1bmogc-data-eng-ledger-svc171"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_ledger_svc171__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_ledger_svc171.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_ledger_svc331" {
  name                 = "fenlum-1bmogc-data-eng-ledger-svc331"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_ledger_svc331__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_ledger_svc331.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_ledger_svc491" {
  name                 = "fenlum-1bmogc-data-eng-ledger-svc491"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_ledger_svc491__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_ledger_svc491.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_risk_models_svc" {
  name                 = "fenlum-1bmogc-data-eng-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_risk_models_svc__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_risk_models_svc.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_risk_models_svc251" {
  name                 = "fenlum-1bmogc-data-eng-risk-models-svc251"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_risk_models_svc251__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_risk_models_svc251.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_risk_models_svc411" {
  name                 = "fenlum-1bmogc-data-eng-risk-models-svc411"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_risk_models_svc411__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_risk_models_svc411.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role" "data_eng_svc" {
  name                 = "fenlum-1bmogc-data-eng-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "data_eng_svc__data_eng_data_rw" {
  role       = aws_iam_role.data_eng_svc.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "data_eng_svc__data_eng_ops" {
  role       = aws_iam_role.data_eng_svc.name
  policy_arn = aws_iam_policy.data_eng_ops.arn
}

resource "aws_iam_instance_profile" "data_eng_svc" {
  name = "fenlum-1bmogc-data-eng-svc"
  role = aws_iam_role.data_eng_svc.name
}

resource "aws_iam_role" "fraud_2_deploy" {
  name                 = "fenlum-1bmogc-fraud-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bob.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.wong1590" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_deploy__fraud_2_ops" {
  role       = aws_iam_role.fraud_2_deploy.name
  policy_arn = aws_iam_policy.fraud_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_2_deploy__fraud_2_deploy_perms" {
  role       = aws_iam_role.fraud_2_deploy.name
  policy_arn = aws_iam_policy.fraud_2_deploy_perms.arn
}

resource "aws_iam_role" "fraud_2_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-fraud-2-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_kyc_docs_svc__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_kyc_docs_svc.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_kyc_docs_svc258" {
  name                 = "fenlum-1bmogc-fraud-2-kyc-docs-svc258"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_kyc_docs_svc258__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_kyc_docs_svc258.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_kyc_docs_svc418" {
  name                 = "fenlum-1bmogc-fraud-2-kyc-docs-svc418"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_kyc_docs_svc418__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_kyc_docs_svc418.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_nb_role" {
  name                 = "fenlum-1bmogc-fraud-2-nb-role"
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

resource "aws_iam_role_policy_attachment" "fraud_2_nb_role__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_nb_role.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_2_nb_role__fraud_2_ops" {
  role       = aws_iam_role.fraud_2_nb_role.name
  policy_arn = aws_iam_policy.fraud_2_ops.arn
}

resource "aws_iam_role" "fraud_2_statements_svc" {
  name                 = "fenlum-1bmogc-fraud-2-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_statements_svc__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_statements_svc.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_statements_svc178" {
  name                 = "fenlum-1bmogc-fraud-2-statements-svc178"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_statements_svc178__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_statements_svc178.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_statements_svc338" {
  name                 = "fenlum-1bmogc-fraud-2-statements-svc338"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_statements_svc338__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_statements_svc338.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_statements_svc498" {
  name                 = "fenlum-1bmogc-fraud-2-statements-svc498"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_statements_svc498__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_statements_svc498.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role" "fraud_2_svc" {
  name                 = "fenlum-1bmogc-fraud-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_2_svc__fraud_2_data_rw" {
  role       = aws_iam_role.fraud_2_svc.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_2_svc__fraud_2_ops" {
  role       = aws_iam_role.fraud_2_svc.name
  policy_arn = aws_iam_policy.fraud_2_ops.arn
}

resource "aws_iam_instance_profile" "fraud_2_svc" {
  name = "fenlum-1bmogc-fraud-2-svc"
  role = aws_iam_role.fraud_2_svc.name
}

resource "aws_iam_role" "fraud_3_deploy" {
  name                 = "fenlum-1bmogc-fraud-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.miller6180" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-erin.rossi" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_deploy__fraud_3_ops" {
  role       = aws_iam_role.fraud_3_deploy.name
  policy_arn = aws_iam_policy.fraud_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_3_deploy__fraud_3_deploy_perms" {
  role       = aws_iam_role.fraud_3_deploy.name
  policy_arn = aws_iam_policy.fraud_3_deploy_perms.arn
}

resource "aws_iam_role" "fraud_3_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-fraud-3-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_kyc_docs_svc__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_kyc_docs_svc.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_kyc_docs_svc350" {
  name                 = "fenlum-1bmogc-fraud-3-kyc-docs-svc350"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_kyc_docs_svc350__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_kyc_docs_svc350.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_nb_role" {
  name                 = "fenlum-1bmogc-fraud-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "fraud_3_nb_role__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_nb_role.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_3_nb_role__fraud_3_ops" {
  role       = aws_iam_role.fraud_3_nb_role.name
  policy_arn = aws_iam_policy.fraud_3_ops.arn
}

resource "aws_iam_role" "fraud_3_statements_svc" {
  name                 = "fenlum-1bmogc-fraud-3-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_statements_svc__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_statements_svc.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_statements_svc270" {
  name                 = "fenlum-1bmogc-fraud-3-statements-svc270"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_statements_svc270__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_statements_svc270.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_statements_svc510" {
  name                 = "fenlum-1bmogc-fraud-3-statements-svc510"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_statements_svc510__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_statements_svc510.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_svc" {
  name                 = "fenlum-1bmogc-fraud-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_svc__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_svc.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_3_svc__fraud_3_ops" {
  role       = aws_iam_role.fraud_3_svc.name
  policy_arn = aws_iam_policy.fraud_3_ops.arn
}

resource "aws_iam_instance_profile" "fraud_3_svc" {
  name = "fenlum-1bmogc-fraud-3-svc"
  role = aws_iam_role.fraud_3_svc.name
}

resource "aws_iam_role" "fraud_3_tx_archive_svc" {
  name                 = "fenlum-1bmogc-fraud-3-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_tx_archive_svc__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_tx_archive_svc.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_3_tx_archive_svc430" {
  name                 = "fenlum-1bmogc-fraud-3-tx-archive-svc430"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_3_tx_archive_svc430__fraud_3_data_rw" {
  role       = aws_iam_role.fraud_3_tx_archive_svc430.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc122" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc122"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc122__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc122.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc202" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc202"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc202__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc202.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc282" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc282"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc282__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc282.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc362" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc362"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc362__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc362.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc442" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc442"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc442__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc442.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_audit_svc522" {
  name                 = "fenlum-1bmogc-fraud-4-audit-svc522"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_audit_svc522__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_audit_svc522.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role" "fraud_4_deploy" {
  name                 = "fenlum-1bmogc-fraud-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.ivanov5904" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_deploy__fraud_4_ops" {
  role       = aws_iam_role.fraud_4_deploy.name
  policy_arn = aws_iam_policy.fraud_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_4_deploy__fraud_4_deploy_perms" {
  role       = aws_iam_role.fraud_4_deploy.name
  policy_arn = aws_iam_policy.fraud_4_deploy_perms.arn
}

resource "aws_iam_role" "fraud_4_nb_role" {
  name                 = "fenlum-1bmogc-fraud-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "fraud_4_nb_role__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_nb_role.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_4_nb_role__fraud_4_ops" {
  role       = aws_iam_role.fraud_4_nb_role.name
  policy_arn = aws_iam_policy.fraud_4_ops.arn
}

resource "aws_iam_role" "fraud_4_svc" {
  name                 = "fenlum-1bmogc-fraud-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_4_svc__fraud_4_data_rw" {
  role       = aws_iam_role.fraud_4_svc.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_4_svc__fraud_4_ops" {
  role       = aws_iam_role.fraud_4_svc.name
  policy_arn = aws_iam_policy.fraud_4_ops.arn
}

resource "aws_iam_instance_profile" "fraud_4_svc" {
  name = "fenlum-1bmogc-fraud-4-svc"
  role = aws_iam_role.fraud_4_svc.name
}

resource "aws_iam_role" "fraud_5_deploy" {
  name                 = "fenlum-1bmogc-fraud-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.tanaka" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_deploy__fraud_5_ops" {
  role       = aws_iam_role.fraud_5_deploy.name
  policy_arn = aws_iam_policy.fraud_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_5_deploy__fraud_5_deploy_perms" {
  role       = aws_iam_role.fraud_5_deploy.name
  policy_arn = aws_iam_policy.fraud_5_deploy_perms.arn
}

resource "aws_iam_role" "fraud_5_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-fraud-5-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_kyc_docs_svc__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_kyc_docs_svc.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_kyc_docs_svc214" {
  name                 = "fenlum-1bmogc-fraud-5-kyc-docs-svc214"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_kyc_docs_svc214__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_kyc_docs_svc214.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_kyc_docs_svc374" {
  name                 = "fenlum-1bmogc-fraud-5-kyc-docs-svc374"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_kyc_docs_svc374__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_kyc_docs_svc374.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_ledger_svc" {
  name                 = "fenlum-1bmogc-fraud-5-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_ledger_svc__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_ledger_svc.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_ledger_svc294" {
  name                 = "fenlum-1bmogc-fraud-5-ledger-svc294"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_ledger_svc294__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_ledger_svc294.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_ledger_svc454" {
  name                 = "fenlum-1bmogc-fraud-5-ledger-svc454"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_ledger_svc454__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_ledger_svc454.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role" "fraud_5_stack_role" {
  name                 = "fenlum-1bmogc-fraud-5-stack-role"
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

resource "aws_iam_role_policy_attachment" "fraud_5_stack_role__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_stack_role.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_5_stack_role__fraud_5_ops" {
  role       = aws_iam_role.fraud_5_stack_role.name
  policy_arn = aws_iam_policy.fraud_5_ops.arn
}

resource "aws_iam_role" "fraud_5_svc" {
  name                 = "fenlum-1bmogc-fraud-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_5_svc__fraud_5_data_rw" {
  role       = aws_iam_role.fraud_5_svc.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_5_svc__fraud_5_ops" {
  role       = aws_iam_role.fraud_5_svc.name
  policy_arn = aws_iam_policy.fraud_5_ops.arn
}

resource "aws_iam_instance_profile" "fraud_5_svc" {
  name = "fenlum-1bmogc-fraud-5-svc"
  role = aws_iam_role.fraud_5_svc.name
}

resource "aws_iam_role" "fraud_6_deploy" {
  name                 = "fenlum-1bmogc-fraud-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-sara.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.jones" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_deploy__fraud_6_ops" {
  role       = aws_iam_role.fraud_6_deploy.name
  policy_arn = aws_iam_policy.fraud_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_6_deploy__fraud_6_deploy_perms" {
  role       = aws_iam_role.fraud_6_deploy.name
  policy_arn = aws_iam_policy.fraud_6_deploy_perms.arn
}

resource "aws_iam_role" "fraud_6_ledger_svc" {
  name                 = "fenlum-1bmogc-fraud-6-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_ledger_svc__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_ledger_svc.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_6_ledger_svc386" {
  name                 = "fenlum-1bmogc-fraud-6-ledger-svc386"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_ledger_svc386__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_ledger_svc386.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_6_risk_models_svc" {
  name                 = "fenlum-1bmogc-fraud-6-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_risk_models_svc__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_risk_models_svc.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_6_risk_models_svc466" {
  name                 = "fenlum-1bmogc-fraud-6-risk-models-svc466"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_risk_models_svc466__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_risk_models_svc466.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_6_svc" {
  name                 = "fenlum-1bmogc-fraud-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_svc__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_svc.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_6_svc__fraud_6_ops" {
  role       = aws_iam_role.fraud_6_svc.name
  policy_arn = aws_iam_policy.fraud_6_ops.arn
}

resource "aws_iam_instance_profile" "fraud_6_svc" {
  name = "fenlum-1bmogc-fraud-6-svc"
  role = aws_iam_role.fraud_6_svc.name
}

resource "aws_iam_role" "fraud_6_tx_archive_svc" {
  name                 = "fenlum-1bmogc-fraud-6-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_tx_archive_svc__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_tx_archive_svc.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_6_tx_archive_svc306" {
  name                 = "fenlum-1bmogc-fraud-6-tx-archive-svc306"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_6_tx_archive_svc306__fraud_6_data_rw" {
  role       = aws_iam_role.fraud_6_tx_archive_svc306.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_role" "fraud_7_deploy" {
  name                 = "fenlum-1bmogc-fraud-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.mehta242" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-sara.mehta9990" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_deploy__fraud_7_ops" {
  role       = aws_iam_role.fraud_7_deploy.name
  policy_arn = aws_iam_policy.fraud_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_7_deploy__fraud_7_deploy_perms" {
  role       = aws_iam_role.fraud_7_deploy.name
  policy_arn = aws_iam_policy.fraud_7_deploy_perms.arn
}

resource "aws_iam_role" "fraud_7_svc" {
  name                 = "fenlum-1bmogc-fraud-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_svc__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_svc.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_7_svc__fraud_7_ops" {
  role       = aws_iam_role.fraud_7_svc.name
  policy_arn = aws_iam_policy.fraud_7_ops.arn
}

resource "aws_iam_instance_profile" "fraud_7_svc" {
  name = "fenlum-1bmogc-fraud-7-svc"
  role = aws_iam_role.fraud_7_svc.name
}

resource "aws_iam_role" "fraud_7_tx_archive_svc" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_7_tx_archive_svc158" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc158"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc158__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc158.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_7_tx_archive_svc238" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc238"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc238__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc238.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_7_tx_archive_svc318" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc318"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc318__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc318.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_7_tx_archive_svc398" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc398"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc398__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc398.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_7_tx_archive_svc478" {
  name                 = "fenlum-1bmogc-fraud-7-tx-archive-svc478"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_7_tx_archive_svc478__fraud_7_data_rw" {
  role       = aws_iam_role.fraud_7_tx_archive_svc478.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_role" "fraud_deploy" {
  name                 = "fenlum-1bmogc-fraud-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.okafor6149" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-yara.dubois9745" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_deploy__fraud_ops" {
  role       = aws_iam_role.fraud_deploy.name
  policy_arn = aws_iam_policy.fraud_ops.arn
}

resource "aws_iam_role_policy_attachment" "fraud_deploy__fraud_deploy_perms" {
  role       = aws_iam_role.fraud_deploy.name
  policy_arn = aws_iam_policy.fraud_deploy_perms.arn
}

resource "aws_iam_role" "fraud_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-fraud-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_kyc_docs_svc__fraud_data_rw" {
  role       = aws_iam_role.fraud_kyc_docs_svc.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_kyc_docs_svc246" {
  name                 = "fenlum-1bmogc-fraud-kyc-docs-svc246"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_kyc_docs_svc246__fraud_data_rw" {
  role       = aws_iam_role.fraud_kyc_docs_svc246.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_kyc_docs_svc406" {
  name                 = "fenlum-1bmogc-fraud-kyc-docs-svc406"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_kyc_docs_svc406__fraud_data_rw" {
  role       = aws_iam_role.fraud_kyc_docs_svc406.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_stack_role" {
  name                 = "fenlum-1bmogc-fraud-stack-role"
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

resource "aws_iam_role_policy_attachment" "fraud_stack_role__fraud_data_rw" {
  role       = aws_iam_role.fraud_stack_role.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_stack_role__fraud_ops" {
  role       = aws_iam_role.fraud_stack_role.name
  policy_arn = aws_iam_policy.fraud_ops.arn
}

resource "aws_iam_role" "fraud_statements_svc" {
  name                 = "fenlum-1bmogc-fraud-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_statements_svc__fraud_data_rw" {
  role       = aws_iam_role.fraud_statements_svc.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_statements_svc166" {
  name                 = "fenlum-1bmogc-fraud-statements-svc166"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_statements_svc166__fraud_data_rw" {
  role       = aws_iam_role.fraud_statements_svc166.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_statements_svc326" {
  name                 = "fenlum-1bmogc-fraud-statements-svc326"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_statements_svc326__fraud_data_rw" {
  role       = aws_iam_role.fraud_statements_svc326.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_statements_svc486" {
  name                 = "fenlum-1bmogc-fraud-statements-svc486"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_statements_svc486__fraud_data_rw" {
  role       = aws_iam_role.fraud_statements_svc486.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role" "fraud_svc" {
  name                 = "fenlum-1bmogc-fraud-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fraud_svc__fraud_data_rw" {
  role       = aws_iam_role.fraud_svc.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "fraud_svc__fraud_ops" {
  role       = aws_iam_role.fraud_svc.name
  policy_arn = aws_iam_policy.fraud_ops.arn
}

resource "aws_iam_instance_profile" "fraud_svc" {
  name = "fenlum-1bmogc-fraud-svc"
  role = aws_iam_role.fraud_svc.name
}

resource "aws_iam_role" "inj_assume_r4" {
  name                 = "fenlum-1bmogc-inj-assume-r4"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ext-gus.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "inj_assume_r4__inj_pol_p6" {
  role       = aws_iam_role.inj_assume_r4.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_role_policy_attachment" "inj_assume_r4__inj_pol_p7" {
  role       = aws_iam_role.inj_assume_r4.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_role" "inj_datapipeline_exec_r5" {
  name                 = "fenlum-1bmogc-inj-datapipeline-exec-r5"
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

resource "aws_iam_role_policy_attachment" "inj_datapipeline_exec_r5__inj_legacy_p8" {
  role       = aws_iam_role.inj_datapipeline_exec_r5.name
  policy_arn = aws_iam_policy.inj_legacy_p8.arn
}

resource "aws_iam_role_policy_attachment" "inj_datapipeline_exec_r5__inj_pol_p9" {
  role       = aws_iam_role.inj_datapipeline_exec_r5.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_role" "inj_ec2_exec_r10" {
  name                 = "fenlum-1bmogc-inj-ec2-exec-r10"
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
  name = "fenlum-1bmogc-inj-ec2-exec-r10"
  role = aws_iam_role.inj_ec2_exec_r10.name
}

resource "aws_iam_role" "inj_trust_edit_r2" {
  name                 = "fenlum-1bmogc-inj-trust-edit-r2"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    # no trust principals (unreachable via assume-role)
    ]
  })
}

resource "aws_iam_role" "kyc_2_deploy" {
  name                 = "fenlum-1bmogc-kyc-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.mehta667" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.haddad935" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.reddy3128" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_deploy__kyc_2_ops" {
  role       = aws_iam_role.kyc_2_deploy.name
  policy_arn = aws_iam_policy.kyc_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_2_deploy__kyc_2_deploy_perms" {
  role       = aws_iam_role.kyc_2_deploy.name
  policy_arn = aws_iam_policy.kyc_2_deploy_perms.arn
}

resource "aws_iam_role" "kyc_2_ledger_svc" {
  name                 = "fenlum-1bmogc-kyc-2-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_ledger_svc__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_ledger_svc.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_ledger_svc255" {
  name                 = "fenlum-1bmogc-kyc-2-ledger-svc255"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_ledger_svc255__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_ledger_svc255.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_ledger_svc495" {
  name                 = "fenlum-1bmogc-kyc-2-ledger-svc495"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_ledger_svc495__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_ledger_svc495.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_risk_models_svc" {
  name                 = "fenlum-1bmogc-kyc-2-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_risk_models_svc__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_risk_models_svc.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_risk_models_svc415" {
  name                 = "fenlum-1bmogc-kyc-2-risk-models-svc415"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_risk_models_svc415__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_risk_models_svc415.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_svc" {
  name                 = "fenlum-1bmogc-kyc-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_svc__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_svc.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_2_svc__kyc_2_ops" {
  role       = aws_iam_role.kyc_2_svc.name
  policy_arn = aws_iam_policy.kyc_2_ops.arn
}

resource "aws_iam_instance_profile" "kyc_2_svc" {
  name = "fenlum-1bmogc-kyc-2-svc"
  role = aws_iam_role.kyc_2_svc.name
}

resource "aws_iam_role" "kyc_2_tx_archive_svc" {
  name                 = "fenlum-1bmogc-kyc-2-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_tx_archive_svc__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_tx_archive_svc.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_2_tx_archive_svc335" {
  name                 = "fenlum-1bmogc-kyc-2-tx-archive-svc335"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_2_tx_archive_svc335__kyc_2_data_rw" {
  role       = aws_iam_role.kyc_2_tx_archive_svc335.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_role" "kyc_3_deploy" {
  name                 = "fenlum-1bmogc-kyc-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.miller433" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_deploy__kyc_3_ops" {
  role       = aws_iam_role.kyc_3_deploy.name
  policy_arn = aws_iam_policy.kyc_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_3_deploy__kyc_3_deploy_perms" {
  role       = aws_iam_role.kyc_3_deploy.name
  policy_arn = aws_iam_policy.kyc_3_deploy_perms.arn
}

resource "aws_iam_role" "kyc_3_ledger_svc" {
  name                 = "fenlum-1bmogc-kyc-3-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_ledger_svc__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_ledger_svc.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_ledger_svc187" {
  name                 = "fenlum-1bmogc-kyc-3-ledger-svc187"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_ledger_svc187__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_ledger_svc187.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_ledger_svc347" {
  name                 = "fenlum-1bmogc-kyc-3-ledger-svc347"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_ledger_svc347__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_ledger_svc347.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_ledger_svc507" {
  name                 = "fenlum-1bmogc-kyc-3-ledger-svc507"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_ledger_svc507__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_ledger_svc507.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_svc" {
  name                 = "fenlum-1bmogc-kyc-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_svc__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_svc.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_3_svc__kyc_3_ops" {
  role       = aws_iam_role.kyc_3_svc.name
  policy_arn = aws_iam_policy.kyc_3_ops.arn
}

resource "aws_iam_instance_profile" "kyc_3_svc" {
  name = "fenlum-1bmogc-kyc-3-svc"
  role = aws_iam_role.kyc_3_svc.name
}

resource "aws_iam_role" "kyc_3_tx_archive_svc" {
  name                 = "fenlum-1bmogc-kyc-3-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_tx_archive_svc__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_tx_archive_svc.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_tx_archive_svc267" {
  name                 = "fenlum-1bmogc-kyc-3-tx-archive-svc267"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_tx_archive_svc267__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_tx_archive_svc267.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_3_tx_archive_svc427" {
  name                 = "fenlum-1bmogc-kyc-3-tx-archive-svc427"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_3_tx_archive_svc427__kyc_3_data_rw" {
  role       = aws_iam_role.kyc_3_tx_archive_svc427.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_role" "kyc_4_deploy" {
  name                 = "fenlum-1bmogc-kyc-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.cohen7806" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_deploy__kyc_4_ops" {
  role       = aws_iam_role.kyc_4_deploy.name
  policy_arn = aws_iam_policy.kyc_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_4_deploy__kyc_4_deploy_perms" {
  role       = aws_iam_role.kyc_4_deploy.name
  policy_arn = aws_iam_policy.kyc_4_deploy_perms.arn
}

resource "aws_iam_role" "kyc_4_glue_role" {
  name                 = "fenlum-1bmogc-kyc-4-glue-role"
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

resource "aws_iam_role_policy_attachment" "kyc_4_glue_role__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_glue_role.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_4_glue_role__kyc_4_ops" {
  role       = aws_iam_role.kyc_4_glue_role.name
  policy_arn = aws_iam_policy.kyc_4_ops.arn
}

resource "aws_iam_role" "kyc_4_ledger_svc" {
  name                 = "fenlum-1bmogc-kyc-4-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_ledger_svc__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_ledger_svc.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_ledger_svc279" {
  name                 = "fenlum-1bmogc-kyc-4-ledger-svc279"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_ledger_svc279__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_ledger_svc279.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_ledger_svc439" {
  name                 = "fenlum-1bmogc-kyc-4-ledger-svc439"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_ledger_svc439__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_ledger_svc439.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_svc" {
  name                 = "fenlum-1bmogc-kyc-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_svc__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_svc.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_4_svc__kyc_4_ops" {
  role       = aws_iam_role.kyc_4_svc.name
  policy_arn = aws_iam_policy.kyc_4_ops.arn
}

resource "aws_iam_instance_profile" "kyc_4_svc" {
  name = "fenlum-1bmogc-kyc-4-svc"
  role = aws_iam_role.kyc_4_svc.name
}

resource "aws_iam_role" "kyc_4_tx_archive_svc" {
  name                 = "fenlum-1bmogc-kyc-4-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_tx_archive_svc__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_tx_archive_svc.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_tx_archive_svc199" {
  name                 = "fenlum-1bmogc-kyc-4-tx-archive-svc199"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_tx_archive_svc199__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_tx_archive_svc199.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_tx_archive_svc359" {
  name                 = "fenlum-1bmogc-kyc-4-tx-archive-svc359"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_tx_archive_svc359__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_tx_archive_svc359.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_4_tx_archive_svc519" {
  name                 = "fenlum-1bmogc-kyc-4-tx-archive-svc519"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_4_tx_archive_svc519__kyc_4_data_rw" {
  role       = aws_iam_role.kyc_4_tx_archive_svc519.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_role" "kyc_5_audit_svc" {
  name                 = "fenlum-1bmogc-kyc-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_audit_svc__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_audit_svc.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_audit_svc291" {
  name                 = "fenlum-1bmogc-kyc-5-audit-svc291"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_audit_svc291__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_audit_svc291.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_audit_svc451" {
  name                 = "fenlum-1bmogc-kyc-5-audit-svc451"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_audit_svc451__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_audit_svc451.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_deploy" {
  name                 = "fenlum-1bmogc-kyc-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-raj.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-yara.chen3015" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_deploy__kyc_5_ops" {
  role       = aws_iam_role.kyc_5_deploy.name
  policy_arn = aws_iam_policy.kyc_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_5_deploy__kyc_5_deploy_perms" {
  role       = aws_iam_role.kyc_5_deploy.name
  policy_arn = aws_iam_policy.kyc_5_deploy_perms.arn
}

resource "aws_iam_role" "kyc_5_ledger_svc" {
  name                 = "fenlum-1bmogc-kyc-5-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_ledger_svc__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_ledger_svc.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_ledger_svc211" {
  name                 = "fenlum-1bmogc-kyc-5-ledger-svc211"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_ledger_svc211__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_ledger_svc211.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_ledger_svc371" {
  name                 = "fenlum-1bmogc-kyc-5-ledger-svc371"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_ledger_svc371__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_ledger_svc371.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role" "kyc_5_svc" {
  name                 = "fenlum-1bmogc-kyc-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_5_svc__kyc_5_data_rw" {
  role       = aws_iam_role.kyc_5_svc.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_5_svc__kyc_5_ops" {
  role       = aws_iam_role.kyc_5_svc.name
  policy_arn = aws_iam_policy.kyc_5_ops.arn
}

resource "aws_iam_instance_profile" "kyc_5_svc" {
  name = "fenlum-1bmogc-kyc-5-svc"
  role = aws_iam_role.kyc_5_svc.name
}

resource "aws_iam_role" "kyc_6_deploy" {
  name                 = "fenlum-1bmogc-kyc-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.larsen1263" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.davis" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_deploy__kyc_6_ops" {
  role       = aws_iam_role.kyc_6_deploy.name
  policy_arn = aws_iam_policy.kyc_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_6_deploy__kyc_6_deploy_perms" {
  role       = aws_iam_role.kyc_6_deploy.name
  policy_arn = aws_iam_policy.kyc_6_deploy_perms.arn
}

resource "aws_iam_role" "kyc_6_risk_models_svc" {
  name                 = "fenlum-1bmogc-kyc-6-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_risk_models_svc__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_risk_models_svc.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_risk_models_svc223" {
  name                 = "fenlum-1bmogc-kyc-6-risk-models-svc223"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_risk_models_svc223__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_risk_models_svc223.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_risk_models_svc383" {
  name                 = "fenlum-1bmogc-kyc-6-risk-models-svc383"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_risk_models_svc383__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_risk_models_svc383.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_statements_svc" {
  name                 = "fenlum-1bmogc-kyc-6-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_statements_svc__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_statements_svc.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_statements_svc303" {
  name                 = "fenlum-1bmogc-kyc-6-statements-svc303"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_statements_svc303__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_statements_svc303.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_statements_svc463" {
  name                 = "fenlum-1bmogc-kyc-6-statements-svc463"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_statements_svc463__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_statements_svc463.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role" "kyc_6_svc" {
  name                 = "fenlum-1bmogc-kyc-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_6_svc__kyc_6_data_rw" {
  role       = aws_iam_role.kyc_6_svc.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_6_svc__kyc_6_ops" {
  role       = aws_iam_role.kyc_6_svc.name
  policy_arn = aws_iam_policy.kyc_6_ops.arn
}

resource "aws_iam_instance_profile" "kyc_6_svc" {
  name = "fenlum-1bmogc-kyc-6-svc"
  role = aws_iam_role.kyc_6_svc.name
}

resource "aws_iam_role" "kyc_7_audit_svc" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_audit_svc155" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc155"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc155__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc155.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_audit_svc235" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc235"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc235__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc235.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_audit_svc315" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc315"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc315__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc315.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_audit_svc395" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc395"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc395__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc395.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_audit_svc475" {
  name                 = "fenlum-1bmogc-kyc-7-audit-svc475"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_audit_svc475__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_audit_svc475.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role" "kyc_7_deploy" {
  name                 = "fenlum-1bmogc-kyc-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.mehta8127" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.okafor4936" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_deploy__kyc_7_ops" {
  role       = aws_iam_role.kyc_7_deploy.name
  policy_arn = aws_iam_policy.kyc_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_7_deploy__kyc_7_deploy_perms" {
  role       = aws_iam_role.kyc_7_deploy.name
  policy_arn = aws_iam_policy.kyc_7_deploy_perms.arn
}

resource "aws_iam_role" "kyc_7_glue_role" {
  name                 = "fenlum-1bmogc-kyc-7-glue-role"
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

resource "aws_iam_role_policy_attachment" "kyc_7_glue_role__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_glue_role.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_7_glue_role__kyc_7_ops" {
  role       = aws_iam_role.kyc_7_glue_role.name
  policy_arn = aws_iam_policy.kyc_7_ops.arn
}

resource "aws_iam_role" "kyc_7_svc" {
  name                 = "fenlum-1bmogc-kyc-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_7_svc__kyc_7_data_rw" {
  role       = aws_iam_role.kyc_7_svc.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_7_svc__kyc_7_ops" {
  role       = aws_iam_role.kyc_7_svc.name
  policy_arn = aws_iam_policy.kyc_7_ops.arn
}

resource "aws_iam_instance_profile" "kyc_7_svc" {
  name = "fenlum-1bmogc-kyc-7-svc"
  role = aws_iam_role.kyc_7_svc.name
}

resource "aws_iam_role" "kyc_audit_svc" {
  name                 = "fenlum-1bmogc-kyc-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_audit_svc__kyc_data_rw" {
  role       = aws_iam_role.kyc_audit_svc.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_audit_svc403" {
  name                 = "fenlum-1bmogc-kyc-audit-svc403"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_audit_svc403__kyc_data_rw" {
  role       = aws_iam_role.kyc_audit_svc403.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_deploy" {
  name                 = "fenlum-1bmogc-kyc-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.jones1752" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.lopez5170" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_deploy__kyc_ops" {
  role       = aws_iam_role.kyc_deploy.name
  policy_arn = aws_iam_policy.kyc_ops.arn
}

resource "aws_iam_role_policy_attachment" "kyc_deploy__kyc_deploy_perms" {
  role       = aws_iam_role.kyc_deploy.name
  policy_arn = aws_iam_policy.kyc_deploy_perms.arn
}

resource "aws_iam_role" "kyc_statements_svc" {
  name                 = "fenlum-1bmogc-kyc-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_statements_svc__kyc_data_rw" {
  role       = aws_iam_role.kyc_statements_svc.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_statements_svc243" {
  name                 = "fenlum-1bmogc-kyc-statements-svc243"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_statements_svc243__kyc_data_rw" {
  role       = aws_iam_role.kyc_statements_svc243.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_statements_svc483" {
  name                 = "fenlum-1bmogc-kyc-statements-svc483"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_statements_svc483__kyc_data_rw" {
  role       = aws_iam_role.kyc_statements_svc483.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_svc" {
  name                 = "fenlum-1bmogc-kyc-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_svc__kyc_data_rw" {
  role       = aws_iam_role.kyc_svc.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "kyc_svc__kyc_ops" {
  role       = aws_iam_role.kyc_svc.name
  policy_arn = aws_iam_policy.kyc_ops.arn
}

resource "aws_iam_instance_profile" "kyc_svc" {
  name = "fenlum-1bmogc-kyc-svc"
  role = aws_iam_role.kyc_svc.name
}

resource "aws_iam_role" "kyc_tx_archive_svc" {
  name                 = "fenlum-1bmogc-kyc-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_tx_archive_svc__kyc_data_rw" {
  role       = aws_iam_role.kyc_tx_archive_svc.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "kyc_tx_archive_svc323" {
  name                 = "fenlum-1bmogc-kyc-tx-archive-svc323"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "kyc_tx_archive_svc323__kyc_data_rw" {
  role       = aws_iam_role.kyc_tx_archive_svc323.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc173" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc173"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc173__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc173.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc253" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc253"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc253__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc253.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc333" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc333"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc333__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc333.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc413" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc413"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc413__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc413.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc493" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc493"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc493__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc493.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_audit_svc93" {
  name                 = "fenlum-1bmogc-ledger-2-audit-svc93"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_audit_svc93__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_audit_svc93.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role" "ledger_2_deploy" {
  name                 = "fenlum-1bmogc-ledger-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.brown6374" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.lopez5894" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_deploy__ledger_2_ops" {
  role       = aws_iam_role.ledger_2_deploy.name
  policy_arn = aws_iam_policy.ledger_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_2_deploy__ledger_2_deploy_perms" {
  role       = aws_iam_role.ledger_2_deploy.name
  policy_arn = aws_iam_policy.ledger_2_deploy_perms.arn
}

resource "aws_iam_role" "ledger_2_svc" {
  name                 = "fenlum-1bmogc-ledger-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_2_svc__ledger_2_data_rw" {
  role       = aws_iam_role.ledger_2_svc.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_2_svc__ledger_2_ops" {
  role       = aws_iam_role.ledger_2_svc.name
  policy_arn = aws_iam_policy.ledger_2_ops.arn
}

resource "aws_iam_instance_profile" "ledger_2_svc" {
  name = "fenlum-1bmogc-ledger-2-svc"
  role = aws_iam_role.ledger_2_svc.name
}

resource "aws_iam_role" "ledger_3_deploy" {
  name                 = "fenlum-1bmogc-ledger-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.okafor3888" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.khan7420" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_deploy__ledger_3_ops" {
  role       = aws_iam_role.ledger_3_deploy.name
  policy_arn = aws_iam_policy.ledger_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_3_deploy__ledger_3_deploy_perms" {
  role       = aws_iam_role.ledger_3_deploy.name
  policy_arn = aws_iam_policy.ledger_3_deploy_perms.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc105" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc105"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc105__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc105.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc185" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc185"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc185__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc185.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc265" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc265"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc265__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc265.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc345" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc345"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc345__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc345.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc425" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc425"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc425__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc425.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_ledger_svc505" {
  name                 = "fenlum-1bmogc-ledger-3-ledger-svc505"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_ledger_svc505__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_ledger_svc505.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role" "ledger_3_svc" {
  name                 = "fenlum-1bmogc-ledger-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_3_svc__ledger_3_data_rw" {
  role       = aws_iam_role.ledger_3_svc.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_3_svc__ledger_3_ops" {
  role       = aws_iam_role.ledger_3_svc.name
  policy_arn = aws_iam_policy.ledger_3_ops.arn
}

resource "aws_iam_instance_profile" "ledger_3_svc" {
  name = "fenlum-1bmogc-ledger-3-svc"
  role = aws_iam_role.ledger_3_svc.name
}

resource "aws_iam_role" "ledger_4_audit_svc" {
  name                 = "fenlum-1bmogc-ledger-4-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_audit_svc__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_audit_svc.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_audit_svc197" {
  name                 = "fenlum-1bmogc-ledger-4-audit-svc197"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_audit_svc197__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_audit_svc197.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_audit_svc357" {
  name                 = "fenlum-1bmogc-ledger-4-audit-svc357"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_audit_svc357__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_audit_svc357.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_audit_svc517" {
  name                 = "fenlum-1bmogc-ledger-4-audit-svc517"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_audit_svc517__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_audit_svc517.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_deploy" {
  name                 = "fenlum-1bmogc-ledger-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-judy.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.ali2574" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.gupta4814" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.patel" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_deploy__ledger_4_ops" {
  role       = aws_iam_role.ledger_4_deploy.name
  policy_arn = aws_iam_policy.ledger_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_4_deploy__ledger_4_deploy_perms" {
  role       = aws_iam_role.ledger_4_deploy.name
  policy_arn = aws_iam_policy.ledger_4_deploy_perms.arn
}

resource "aws_iam_role" "ledger_4_ledger_svc" {
  name                 = "fenlum-1bmogc-ledger-4-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_ledger_svc__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_ledger_svc.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_ledger_svc277" {
  name                 = "fenlum-1bmogc-ledger-4-ledger-svc277"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_ledger_svc277__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_ledger_svc277.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_ledger_svc437" {
  name                 = "fenlum-1bmogc-ledger-4-ledger-svc437"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_ledger_svc437__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_ledger_svc437.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role" "ledger_4_nb_role" {
  name                 = "fenlum-1bmogc-ledger-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "ledger_4_nb_role__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_nb_role.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_4_nb_role__ledger_4_ops" {
  role       = aws_iam_role.ledger_4_nb_role.name
  policy_arn = aws_iam_policy.ledger_4_ops.arn
}

resource "aws_iam_role" "ledger_4_svc" {
  name                 = "fenlum-1bmogc-ledger-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_4_svc__ledger_4_data_rw" {
  role       = aws_iam_role.ledger_4_svc.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_4_svc__ledger_4_ops" {
  role       = aws_iam_role.ledger_4_svc.name
  policy_arn = aws_iam_policy.ledger_4_ops.arn
}

resource "aws_iam_instance_profile" "ledger_4_svc" {
  name = "fenlum-1bmogc-ledger-4-svc"
  role = aws_iam_role.ledger_4_svc.name
}

resource "aws_iam_role" "ledger_5_audit_svc" {
  name                 = "fenlum-1bmogc-ledger-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_audit_svc__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_audit_svc.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_audit_svc449" {
  name                 = "fenlum-1bmogc-ledger-5-audit-svc449"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_audit_svc449__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_audit_svc449.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_deploy" {
  name                 = "fenlum-1bmogc-ledger-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-erin.khan3459" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_deploy__ledger_5_ops" {
  role       = aws_iam_role.ledger_5_deploy.name
  policy_arn = aws_iam_policy.ledger_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_5_deploy__ledger_5_deploy_perms" {
  role       = aws_iam_role.ledger_5_deploy.name
  policy_arn = aws_iam_policy.ledger_5_deploy_perms.arn
}

resource "aws_iam_role" "ledger_5_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-ledger-5-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_kyc_docs_svc__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_kyc_docs_svc.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_kyc_docs_svc289" {
  name                 = "fenlum-1bmogc-ledger-5-kyc-docs-svc289"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_kyc_docs_svc289__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_kyc_docs_svc289.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_kyc_docs_svc529" {
  name                 = "fenlum-1bmogc-ledger-5-kyc-docs-svc529"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_kyc_docs_svc529__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_kyc_docs_svc529.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_nb_role" {
  name                 = "fenlum-1bmogc-ledger-5-nb-role"
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

resource "aws_iam_role_policy_attachment" "ledger_5_nb_role__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_nb_role.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_5_nb_role__ledger_5_ops" {
  role       = aws_iam_role.ledger_5_nb_role.name
  policy_arn = aws_iam_policy.ledger_5_ops.arn
}

resource "aws_iam_role" "ledger_5_statements_svc" {
  name                 = "fenlum-1bmogc-ledger-5-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_statements_svc__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_statements_svc.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_statements_svc369" {
  name                 = "fenlum-1bmogc-ledger-5-statements-svc369"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_statements_svc369__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_statements_svc369.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role" "ledger_5_svc" {
  name                 = "fenlum-1bmogc-ledger-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_5_svc__ledger_5_data_rw" {
  role       = aws_iam_role.ledger_5_svc.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_5_svc__ledger_5_ops" {
  role       = aws_iam_role.ledger_5_svc.name
  policy_arn = aws_iam_policy.ledger_5_ops.arn
}

resource "aws_iam_instance_profile" "ledger_5_svc" {
  name = "fenlum-1bmogc-ledger-5-svc"
  role = aws_iam_role.ledger_5_svc.name
}

resource "aws_iam_role" "ledger_6_audit_svc" {
  name                 = "fenlum-1bmogc-ledger-6-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_audit_svc__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_audit_svc.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_6_audit_svc301" {
  name                 = "fenlum-1bmogc-ledger-6-audit-svc301"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_audit_svc301__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_audit_svc301.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_6_audit_svc461" {
  name                 = "fenlum-1bmogc-ledger-6-audit-svc461"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_audit_svc461__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_audit_svc461.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_6_deploy" {
  name                 = "fenlum-1bmogc-ledger-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-judy.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.novak" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_deploy__ledger_6_ops" {
  role       = aws_iam_role.ledger_6_deploy.name
  policy_arn = aws_iam_policy.ledger_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_6_deploy__ledger_6_deploy_perms" {
  role       = aws_iam_role.ledger_6_deploy.name
  policy_arn = aws_iam_policy.ledger_6_deploy_perms.arn
}

resource "aws_iam_role" "ledger_6_svc" {
  name                 = "fenlum-1bmogc-ledger-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_svc__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_svc.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_6_svc__ledger_6_ops" {
  role       = aws_iam_role.ledger_6_svc.name
  policy_arn = aws_iam_policy.ledger_6_ops.arn
}

resource "aws_iam_instance_profile" "ledger_6_svc" {
  name = "fenlum-1bmogc-ledger-6-svc"
  role = aws_iam_role.ledger_6_svc.name
}

resource "aws_iam_role" "ledger_6_tx_archive_svc" {
  name                 = "fenlum-1bmogc-ledger-6-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_tx_archive_svc__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_tx_archive_svc.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_6_tx_archive_svc221" {
  name                 = "fenlum-1bmogc-ledger-6-tx-archive-svc221"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_tx_archive_svc221__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_tx_archive_svc221.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_6_tx_archive_svc381" {
  name                 = "fenlum-1bmogc-ledger-6-tx-archive-svc381"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_6_tx_archive_svc381__ledger_6_data_rw" {
  role       = aws_iam_role.ledger_6_tx_archive_svc381.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_role" "ledger_7_deploy" {
  name                 = "fenlum-1bmogc-ledger-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-judy.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.muller8428" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.ali8311" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_deploy__ledger_7_ops" {
  role       = aws_iam_role.ledger_7_deploy.name
  policy_arn = aws_iam_policy.ledger_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_7_deploy__ledger_7_deploy_perms" {
  role       = aws_iam_role.ledger_7_deploy.name
  policy_arn = aws_iam_policy.ledger_7_deploy_perms.arn
}

resource "aws_iam_role" "ledger_7_statements_svc" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_statements_svc153" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc153"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc153__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc153.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_statements_svc233" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc233"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc233__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc233.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_statements_svc313" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc313"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc313__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc313.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_statements_svc393" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc393"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc393__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc393.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_statements_svc473" {
  name                 = "fenlum-1bmogc-ledger-7-statements-svc473"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_statements_svc473__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_statements_svc473.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role" "ledger_7_svc" {
  name                 = "fenlum-1bmogc-ledger-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_7_svc__ledger_7_data_rw" {
  role       = aws_iam_role.ledger_7_svc.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_7_svc__ledger_7_ops" {
  role       = aws_iam_role.ledger_7_svc.name
  policy_arn = aws_iam_policy.ledger_7_ops.arn
}

resource "aws_iam_instance_profile" "ledger_7_svc" {
  name = "fenlum-1bmogc-ledger-7-svc"
  role = aws_iam_role.ledger_7_svc.name
}

resource "aws_iam_role" "ledger_deploy" {
  name                 = "fenlum-1bmogc-ledger-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-yara.brown3097" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-erin.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.brown" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_deploy__ledger_ops" {
  role       = aws_iam_role.ledger_deploy.name
  policy_arn = aws_iam_policy.ledger_ops.arn
}

resource "aws_iam_role_policy_attachment" "ledger_deploy__ledger_deploy_perms" {
  role       = aws_iam_role.ledger_deploy.name
  policy_arn = aws_iam_policy.ledger_deploy_perms.arn
}

resource "aws_iam_role" "ledger_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-ledger-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_kyc_docs_svc__ledger_data_rw" {
  role       = aws_iam_role.ledger_kyc_docs_svc.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_kyc_docs_svc321" {
  name                 = "fenlum-1bmogc-ledger-kyc-docs-svc321"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_kyc_docs_svc321__ledger_data_rw" {
  role       = aws_iam_role.ledger_kyc_docs_svc321.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_ledger_svc" {
  name                 = "fenlum-1bmogc-ledger-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_ledger_svc__ledger_data_rw" {
  role       = aws_iam_role.ledger_ledger_svc.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_ledger_svc241" {
  name                 = "fenlum-1bmogc-ledger-ledger-svc241"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_ledger_svc241__ledger_data_rw" {
  role       = aws_iam_role.ledger_ledger_svc241.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_ledger_svc481" {
  name                 = "fenlum-1bmogc-ledger-ledger-svc481"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_ledger_svc481__ledger_data_rw" {
  role       = aws_iam_role.ledger_ledger_svc481.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_stack_role" {
  name                 = "fenlum-1bmogc-ledger-stack-role"
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

resource "aws_iam_role_policy_attachment" "ledger_stack_role__ledger_data_rw" {
  role       = aws_iam_role.ledger_stack_role.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_stack_role__ledger_ops" {
  role       = aws_iam_role.ledger_stack_role.name
  policy_arn = aws_iam_policy.ledger_ops.arn
}

resource "aws_iam_role" "ledger_statements_svc" {
  name                 = "fenlum-1bmogc-ledger-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_statements_svc__ledger_data_rw" {
  role       = aws_iam_role.ledger_statements_svc.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_statements_svc401" {
  name                 = "fenlum-1bmogc-ledger-statements-svc401"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_statements_svc401__ledger_data_rw" {
  role       = aws_iam_role.ledger_statements_svc401.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role" "ledger_svc" {
  name                 = "fenlum-1bmogc-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ledger_svc__ledger_data_rw" {
  role       = aws_iam_role.ledger_svc.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "ledger_svc__ledger_ops" {
  role       = aws_iam_role.ledger_svc.name
  policy_arn = aws_iam_policy.ledger_ops.arn
}

resource "aws_iam_instance_profile" "ledger_svc" {
  name = "fenlum-1bmogc-ledger-svc"
  role = aws_iam_role.ledger_svc.name
}

resource "aws_iam_role" "lending_2_deploy" {
  name                 = "fenlum-1bmogc-lending-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bob.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.jones9904" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.khan2078" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.larsen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_deploy__lending_2_ops" {
  role       = aws_iam_role.lending_2_deploy.name
  policy_arn = aws_iam_policy.lending_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_2_deploy__lending_2_deploy_perms" {
  role       = aws_iam_role.lending_2_deploy.name
  policy_arn = aws_iam_policy.lending_2_deploy_perms.arn
}

resource "aws_iam_role" "lending_2_ledger_svc" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc179" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc179"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc179__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc179.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc259" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc259"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc259__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc259.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc339" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc339"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc339__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc339.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc419" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc419"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc419__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc419.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc499" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc499"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc499__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc499.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_ledger_svc99" {
  name                 = "fenlum-1bmogc-lending-2-ledger-svc99"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_ledger_svc99__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_ledger_svc99.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role" "lending_2_svc" {
  name                 = "fenlum-1bmogc-lending-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_2_svc__lending_2_data_rw" {
  role       = aws_iam_role.lending_2_svc.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_2_svc__lending_2_ops" {
  role       = aws_iam_role.lending_2_svc.name
  policy_arn = aws_iam_policy.lending_2_ops.arn
}

resource "aws_iam_instance_profile" "lending_2_svc" {
  name = "fenlum-1bmogc-lending-2-svc"
  role = aws_iam_role.lending_2_svc.name
}

resource "aws_iam_role" "lending_3_audit_svc" {
  name                 = "fenlum-1bmogc-lending-3-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_audit_svc__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_audit_svc.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_audit_svc191" {
  name                 = "fenlum-1bmogc-lending-3-audit-svc191"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_audit_svc191__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_audit_svc191.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_audit_svc351" {
  name                 = "fenlum-1bmogc-lending-3-audit-svc351"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_audit_svc351__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_audit_svc351.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_audit_svc511" {
  name                 = "fenlum-1bmogc-lending-3-audit-svc511"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_audit_svc511__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_audit_svc511.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_deploy" {
  name                 = "fenlum-1bmogc-lending-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.miller756" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-yara.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_deploy__lending_3_ops" {
  role       = aws_iam_role.lending_3_deploy.name
  policy_arn = aws_iam_policy.lending_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_3_deploy__lending_3_deploy_perms" {
  role       = aws_iam_role.lending_3_deploy.name
  policy_arn = aws_iam_policy.lending_3_deploy_perms.arn
}

resource "aws_iam_role" "lending_3_nb_role" {
  name                 = "fenlum-1bmogc-lending-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "lending_3_nb_role__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_nb_role.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_3_nb_role__lending_3_ops" {
  role       = aws_iam_role.lending_3_nb_role.name
  policy_arn = aws_iam_policy.lending_3_ops.arn
}

resource "aws_iam_role" "lending_3_svc" {
  name                 = "fenlum-1bmogc-lending-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_svc__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_svc.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_3_svc__lending_3_ops" {
  role       = aws_iam_role.lending_3_svc.name
  policy_arn = aws_iam_policy.lending_3_ops.arn
}

resource "aws_iam_instance_profile" "lending_3_svc" {
  name = "fenlum-1bmogc-lending-3-svc"
  role = aws_iam_role.lending_3_svc.name
}

resource "aws_iam_role" "lending_3_tx_archive_svc" {
  name                 = "fenlum-1bmogc-lending-3-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_tx_archive_svc__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_tx_archive_svc.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_tx_archive_svc271" {
  name                 = "fenlum-1bmogc-lending-3-tx-archive-svc271"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_tx_archive_svc271__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_tx_archive_svc271.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_3_tx_archive_svc431" {
  name                 = "fenlum-1bmogc-lending-3-tx-archive-svc431"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_3_tx_archive_svc431__lending_3_data_rw" {
  role       = aws_iam_role.lending_3_tx_archive_svc431.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_role" "lending_4_deploy" {
  name                 = "fenlum-1bmogc-lending-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-judy.gupta4124" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.rossi" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_deploy__lending_4_ops" {
  role       = aws_iam_role.lending_4_deploy.name
  policy_arn = aws_iam_policy.lending_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_4_deploy__lending_4_deploy_perms" {
  role       = aws_iam_role.lending_4_deploy.name
  policy_arn = aws_iam_policy.lending_4_deploy_perms.arn
}

resource "aws_iam_role" "lending_4_risk_models_svc" {
  name                 = "fenlum-1bmogc-lending-4-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_risk_models_svc__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_risk_models_svc.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_risk_models_svc283" {
  name                 = "fenlum-1bmogc-lending-4-risk-models-svc283"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_risk_models_svc283__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_risk_models_svc283.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_risk_models_svc443" {
  name                 = "fenlum-1bmogc-lending-4-risk-models-svc443"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_risk_models_svc443__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_risk_models_svc443.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_stack_role" {
  name                 = "fenlum-1bmogc-lending-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "lending_4_stack_role__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_stack_role.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_4_stack_role__lending_4_ops" {
  role       = aws_iam_role.lending_4_stack_role.name
  policy_arn = aws_iam_policy.lending_4_ops.arn
}

resource "aws_iam_role" "lending_4_svc" {
  name                 = "fenlum-1bmogc-lending-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_svc__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_svc.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_4_svc__lending_4_ops" {
  role       = aws_iam_role.lending_4_svc.name
  policy_arn = aws_iam_policy.lending_4_ops.arn
}

resource "aws_iam_instance_profile" "lending_4_svc" {
  name = "fenlum-1bmogc-lending-4-svc"
  role = aws_iam_role.lending_4_svc.name
}

resource "aws_iam_role" "lending_4_tx_archive_svc" {
  name                 = "fenlum-1bmogc-lending-4-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_tx_archive_svc__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_tx_archive_svc.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_tx_archive_svc203" {
  name                 = "fenlum-1bmogc-lending-4-tx-archive-svc203"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_tx_archive_svc203__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_tx_archive_svc203.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_tx_archive_svc363" {
  name                 = "fenlum-1bmogc-lending-4-tx-archive-svc363"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_tx_archive_svc363__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_tx_archive_svc363.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_4_tx_archive_svc523" {
  name                 = "fenlum-1bmogc-lending-4-tx-archive-svc523"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_4_tx_archive_svc523__lending_4_data_rw" {
  role       = aws_iam_role.lending_4_tx_archive_svc523.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_role" "lending_5_audit_svc" {
  name                 = "fenlum-1bmogc-lending-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_audit_svc__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_audit_svc.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_5_audit_svc295" {
  name                 = "fenlum-1bmogc-lending-5-audit-svc295"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_audit_svc295__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_audit_svc295.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_5_audit_svc455" {
  name                 = "fenlum-1bmogc-lending-5-audit-svc455"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_audit_svc455__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_audit_svc455.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_5_deploy" {
  name                 = "fenlum-1bmogc-lending-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.davis7695" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.muller9564" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_deploy__lending_5_ops" {
  role       = aws_iam_role.lending_5_deploy.name
  policy_arn = aws_iam_policy.lending_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_5_deploy__lending_5_deploy_perms" {
  role       = aws_iam_role.lending_5_deploy.name
  policy_arn = aws_iam_policy.lending_5_deploy_perms.arn
}

resource "aws_iam_role" "lending_5_svc" {
  name                 = "fenlum-1bmogc-lending-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_svc__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_svc.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_5_svc__lending_5_ops" {
  role       = aws_iam_role.lending_5_svc.name
  policy_arn = aws_iam_policy.lending_5_ops.arn
}

resource "aws_iam_instance_profile" "lending_5_svc" {
  name = "fenlum-1bmogc-lending-5-svc"
  role = aws_iam_role.lending_5_svc.name
}

resource "aws_iam_role" "lending_5_tx_archive_svc" {
  name                 = "fenlum-1bmogc-lending-5-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_tx_archive_svc__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_tx_archive_svc.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_5_tx_archive_svc215" {
  name                 = "fenlum-1bmogc-lending-5-tx-archive-svc215"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_tx_archive_svc215__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_tx_archive_svc215.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_5_tx_archive_svc375" {
  name                 = "fenlum-1bmogc-lending-5-tx-archive-svc375"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_5_tx_archive_svc375__lending_5_data_rw" {
  role       = aws_iam_role.lending_5_tx_archive_svc375.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_role" "lending_6_deploy" {
  name                 = "fenlum-1bmogc-lending-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-leo.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_deploy__lending_6_ops" {
  role       = aws_iam_role.lending_6_deploy.name
  policy_arn = aws_iam_policy.lending_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_6_deploy__lending_6_deploy_perms" {
  role       = aws_iam_role.lending_6_deploy.name
  policy_arn = aws_iam_policy.lending_6_deploy_perms.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc147" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc147"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc147__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc147.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc227" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc227"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc227__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc227.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc307" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc307"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc307__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc307.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc387" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc387"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc387__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc387.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_kyc_docs_svc467" {
  name                 = "fenlum-1bmogc-lending-6-kyc-docs-svc467"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_kyc_docs_svc467__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_kyc_docs_svc467.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role" "lending_6_stack_role" {
  name                 = "fenlum-1bmogc-lending-6-stack-role"
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

resource "aws_iam_role_policy_attachment" "lending_6_stack_role__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_stack_role.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_6_stack_role__lending_6_ops" {
  role       = aws_iam_role.lending_6_stack_role.name
  policy_arn = aws_iam_policy.lending_6_ops.arn
}

resource "aws_iam_role" "lending_6_svc" {
  name                 = "fenlum-1bmogc-lending-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_6_svc__lending_6_data_rw" {
  role       = aws_iam_role.lending_6_svc.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_6_svc__lending_6_ops" {
  role       = aws_iam_role.lending_6_svc.name
  policy_arn = aws_iam_policy.lending_6_ops.arn
}

resource "aws_iam_instance_profile" "lending_6_svc" {
  name = "fenlum-1bmogc-lending-6-svc"
  role = aws_iam_role.lending_6_svc.name
}

resource "aws_iam_role" "lending_7_audit_svc" {
  name                 = "fenlum-1bmogc-lending-7-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_audit_svc__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_audit_svc.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_audit_svc319" {
  name                 = "fenlum-1bmogc-lending-7-audit-svc319"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_audit_svc319__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_audit_svc319.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_audit_svc479" {
  name                 = "fenlum-1bmogc-lending-7-audit-svc479"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_audit_svc479__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_audit_svc479.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_deploy" {
  name                 = "fenlum-1bmogc-lending-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-sara.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.brown8696" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_deploy__lending_7_ops" {
  role       = aws_iam_role.lending_7_deploy.name
  policy_arn = aws_iam_policy.lending_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_7_deploy__lending_7_deploy_perms" {
  role       = aws_iam_role.lending_7_deploy.name
  policy_arn = aws_iam_policy.lending_7_deploy_perms.arn
}

resource "aws_iam_role" "lending_7_risk_models_svc" {
  name                 = "fenlum-1bmogc-lending-7-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_risk_models_svc__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_risk_models_svc.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_risk_models_svc239" {
  name                 = "fenlum-1bmogc-lending-7-risk-models-svc239"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_risk_models_svc239__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_risk_models_svc239.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_risk_models_svc399" {
  name                 = "fenlum-1bmogc-lending-7-risk-models-svc399"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_risk_models_svc399__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_risk_models_svc399.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role" "lending_7_svc" {
  name                 = "fenlum-1bmogc-lending-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_7_svc__lending_7_data_rw" {
  role       = aws_iam_role.lending_7_svc.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_7_svc__lending_7_ops" {
  role       = aws_iam_role.lending_7_svc.name
  policy_arn = aws_iam_policy.lending_7_ops.arn
}

resource "aws_iam_instance_profile" "lending_7_svc" {
  name = "fenlum-1bmogc-lending-7-svc"
  role = aws_iam_role.lending_7_svc.name
}

resource "aws_iam_role" "lending_audit_svc" {
  name                 = "fenlum-1bmogc-lending-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc167" {
  name                 = "fenlum-1bmogc-lending-audit-svc167"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc167__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc167.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc247" {
  name                 = "fenlum-1bmogc-lending-audit-svc247"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc247__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc247.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc327" {
  name                 = "fenlum-1bmogc-lending-audit-svc327"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc327__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc327.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc407" {
  name                 = "fenlum-1bmogc-lending-audit-svc407"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc407__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc407.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc487" {
  name                 = "fenlum-1bmogc-lending-audit-svc487"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc487__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc487.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_audit_svc87" {
  name                 = "fenlum-1bmogc-lending-audit-svc87"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_audit_svc87__lending_data_rw" {
  role       = aws_iam_role.lending_audit_svc87.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role" "lending_deploy" {
  name                 = "fenlum-1bmogc-lending-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.tanaka8094" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.jones2813" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.chen1287" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_deploy__lending_ops" {
  role       = aws_iam_role.lending_deploy.name
  policy_arn = aws_iam_policy.lending_ops.arn
}

resource "aws_iam_role_policy_attachment" "lending_deploy__lending_deploy_perms" {
  role       = aws_iam_role.lending_deploy.name
  policy_arn = aws_iam_policy.lending_deploy_perms.arn
}

resource "aws_iam_role" "lending_svc" {
  name                 = "fenlum-1bmogc-lending-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lending_svc__lending_data_rw" {
  role       = aws_iam_role.lending_svc.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "lending_svc__lending_ops" {
  role       = aws_iam_role.lending_svc.name
  policy_arn = aws_iam_policy.lending_ops.arn
}

resource "aws_iam_instance_profile" "lending_svc" {
  name = "fenlum-1bmogc-lending-svc"
  role = aws_iam_role.lending_svc.name
}

resource "aws_iam_role" "mobile_2_audit_svc" {
  name                 = "fenlum-1bmogc-mobile-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_audit_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_audit_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_audit_svc421" {
  name                 = "fenlum-1bmogc-mobile-2-audit-svc421"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_audit_svc421__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_audit_svc421.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_deploy" {
  name                 = "fenlum-1bmogc-mobile-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.mehta2109" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.brown3292" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.jones" }
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

resource "aws_iam_role" "mobile_2_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-mobile-2-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_kyc_docs_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_kyc_docs_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_kyc_docs_svc261" {
  name                 = "fenlum-1bmogc-mobile-2-kyc-docs-svc261"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_kyc_docs_svc261__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_kyc_docs_svc261.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_kyc_docs_svc501" {
  name                 = "fenlum-1bmogc-mobile-2-kyc-docs-svc501"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_kyc_docs_svc501__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_kyc_docs_svc501.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_risk_models_svc" {
  name                 = "fenlum-1bmogc-mobile-2-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_risk_models_svc__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_risk_models_svc.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_risk_models_svc341" {
  name                 = "fenlum-1bmogc-mobile-2-risk-models-svc341"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_2_risk_models_svc341__mobile_2_data_rw" {
  role       = aws_iam_role.mobile_2_risk_models_svc341.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_role" "mobile_2_svc" {
  name                 = "fenlum-1bmogc-mobile-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-2-svc"
  role = aws_iam_role.mobile_2_svc.name
}

resource "aws_iam_role" "mobile_3_deploy" {
  name                 = "fenlum-1bmogc-mobile-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.cohen3246" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.chen" }
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

resource "aws_iam_role" "mobile_3_nb_role" {
  name                 = "fenlum-1bmogc-mobile-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "mobile_3_nb_role__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_nb_role.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_3_nb_role__mobile_3_ops" {
  role       = aws_iam_role.mobile_3_nb_role.name
  policy_arn = aws_iam_policy.mobile_3_ops.arn
}

resource "aws_iam_role" "mobile_3_svc" {
  name                 = "fenlum-1bmogc-mobile-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-3-svc"
  role = aws_iam_role.mobile_3_svc.name
}

resource "aws_iam_role" "mobile_3_tx_archive_svc" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc113" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc113"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc113__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc113.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc193" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc193"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc193__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc193.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc273" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc273"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc273__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc273.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc353" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc353"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc353__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc353.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc433" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc433"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc433__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc433.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_3_tx_archive_svc513" {
  name                 = "fenlum-1bmogc-mobile-3-tx-archive-svc513"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_3_tx_archive_svc513__mobile_3_data_rw" {
  role       = aws_iam_role.mobile_3_tx_archive_svc513.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_role" "mobile_4_audit_svc" {
  name                 = "fenlum-1bmogc-mobile-4-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_audit_svc__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_audit_svc.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_audit_svc285" {
  name                 = "fenlum-1bmogc-mobile-4-audit-svc285"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_audit_svc285__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_audit_svc285.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_audit_svc445" {
  name                 = "fenlum-1bmogc-mobile-4-audit-svc445"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_audit_svc445__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_audit_svc445.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_deploy" {
  name                 = "fenlum-1bmogc-mobile-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.reddy8252" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-yara.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.ivanov682" }
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

resource "aws_iam_role" "mobile_4_statements_svc" {
  name                 = "fenlum-1bmogc-mobile-4-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_statements_svc__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_statements_svc.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_statements_svc205" {
  name                 = "fenlum-1bmogc-mobile-4-statements-svc205"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_statements_svc205__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_statements_svc205.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_statements_svc365" {
  name                 = "fenlum-1bmogc-mobile-4-statements-svc365"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_statements_svc365__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_statements_svc365.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_statements_svc525" {
  name                 = "fenlum-1bmogc-mobile-4-statements-svc525"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_4_statements_svc525__mobile_4_data_rw" {
  role       = aws_iam_role.mobile_4_statements_svc525.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_role" "mobile_4_svc" {
  name                 = "fenlum-1bmogc-mobile-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-4-svc"
  role = aws_iam_role.mobile_4_svc.name
}

resource "aws_iam_role" "mobile_5_audit_svc" {
  name                 = "fenlum-1bmogc-mobile-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_audit_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_audit_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_audit_svc457" {
  name                 = "fenlum-1bmogc-mobile-5-audit-svc457"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_audit_svc457__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_audit_svc457.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_deploy" {
  name                 = "fenlum-1bmogc-mobile-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.rossi" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.lopez113" }
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

resource "aws_iam_role" "mobile_5_risk_models_svc" {
  name                 = "fenlum-1bmogc-mobile-5-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_risk_models_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_risk_models_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_risk_models_svc297" {
  name                 = "fenlum-1bmogc-mobile-5-risk-models-svc297"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_risk_models_svc297__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_risk_models_svc297.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_statements_svc" {
  name                 = "fenlum-1bmogc-mobile-5-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_statements_svc__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_statements_svc.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_statements_svc377" {
  name                 = "fenlum-1bmogc-mobile-5-statements-svc377"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_5_statements_svc377__mobile_5_data_rw" {
  role       = aws_iam_role.mobile_5_statements_svc377.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_role" "mobile_5_svc" {
  name                 = "fenlum-1bmogc-mobile-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-5-svc"
  role = aws_iam_role.mobile_5_svc.name
}

resource "aws_iam_role" "mobile_6_deploy" {
  name                 = "fenlum-1bmogc-mobile-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-raj.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.mehta4629" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.patel" }
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

resource "aws_iam_role" "mobile_6_glue_role" {
  name                 = "fenlum-1bmogc-mobile-6-glue-role"
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

resource "aws_iam_role_policy_attachment" "mobile_6_glue_role__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_glue_role.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "mobile_6_glue_role__mobile_6_ops" {
  role       = aws_iam_role.mobile_6_glue_role.name
  policy_arn = aws_iam_policy.mobile_6_ops.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc149" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc149"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc149__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc149.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc229" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc229"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc229__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc229.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc309" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc309"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc309__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc309.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc389" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc389"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc389__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc389.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_risk_models_svc469" {
  name                 = "fenlum-1bmogc-mobile-6-risk-models-svc469"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_6_risk_models_svc469__mobile_6_data_rw" {
  role       = aws_iam_role.mobile_6_risk_models_svc469.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_role" "mobile_6_svc" {
  name                 = "fenlum-1bmogc-mobile-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-6-svc"
  role = aws_iam_role.mobile_6_svc.name
}

resource "aws_iam_role" "mobile_deploy" {
  name                 = "fenlum-1bmogc-mobile-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.ivanov3800" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.novak" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.sato" }
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

resource "aws_iam_role" "mobile_statements_svc" {
  name                 = "fenlum-1bmogc-mobile-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_statements_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_statements_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_statements_svc169" {
  name                 = "fenlum-1bmogc-mobile-statements-svc169"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_statements_svc169__mobile_data_rw" {
  role       = aws_iam_role.mobile_statements_svc169.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_statements_svc329" {
  name                 = "fenlum-1bmogc-mobile-statements-svc329"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_statements_svc329__mobile_data_rw" {
  role       = aws_iam_role.mobile_statements_svc329.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_statements_svc489" {
  name                 = "fenlum-1bmogc-mobile-statements-svc489"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_statements_svc489__mobile_data_rw" {
  role       = aws_iam_role.mobile_statements_svc489.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_svc" {
  name                 = "fenlum-1bmogc-mobile-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
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
  name = "fenlum-1bmogc-mobile-svc"
  role = aws_iam_role.mobile_svc.name
}

resource "aws_iam_role" "mobile_tx_archive_svc" {
  name                 = "fenlum-1bmogc-mobile-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_tx_archive_svc__mobile_data_rw" {
  role       = aws_iam_role.mobile_tx_archive_svc.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_tx_archive_svc249" {
  name                 = "fenlum-1bmogc-mobile-tx-archive-svc249"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_tx_archive_svc249__mobile_data_rw" {
  role       = aws_iam_role.mobile_tx_archive_svc249.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "mobile_tx_archive_svc409" {
  name                 = "fenlum-1bmogc-mobile-tx-archive-svc409"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "mobile_tx_archive_svc409__mobile_data_rw" {
  role       = aws_iam_role.mobile_tx_archive_svc409.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_role" "org_admin" {
  name                 = "fenlum-1bmogc-org-admin"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-adm-mei.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-adm-ian.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-adm-gus.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "org_admin__admin_all" {
  role       = aws_iam_role.org_admin.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_role" "payments_2_deploy" {
  name                 = "fenlum-1bmogc-payments-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.khan1675" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-raj.nguyen3739" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_deploy__payments_2_ops" {
  role       = aws_iam_role.payments_2_deploy.name
  policy_arn = aws_iam_policy.payments_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_2_deploy__payments_2_deploy_perms" {
  role       = aws_iam_role.payments_2_deploy.name
  policy_arn = aws_iam_policy.payments_2_deploy_perms.arn
}

resource "aws_iam_role" "payments_2_nb_role" {
  name                 = "fenlum-1bmogc-payments-2-nb-role"
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

resource "aws_iam_role_policy_attachment" "payments_2_nb_role__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_nb_role.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_2_nb_role__payments_2_ops" {
  role       = aws_iam_role.payments_2_nb_role.name
  policy_arn = aws_iam_policy.payments_2_ops.arn
}

resource "aws_iam_role" "payments_2_statements_svc" {
  name                 = "fenlum-1bmogc-payments-2-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_statements_svc__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_statements_svc.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_statements_svc172" {
  name                 = "fenlum-1bmogc-payments-2-statements-svc172"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_statements_svc172__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_statements_svc172.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_statements_svc332" {
  name                 = "fenlum-1bmogc-payments-2-statements-svc332"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_statements_svc332__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_statements_svc332.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_statements_svc492" {
  name                 = "fenlum-1bmogc-payments-2-statements-svc492"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_statements_svc492__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_statements_svc492.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_svc" {
  name                 = "fenlum-1bmogc-payments-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_svc__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_svc.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_2_svc__payments_2_ops" {
  role       = aws_iam_role.payments_2_svc.name
  policy_arn = aws_iam_policy.payments_2_ops.arn
}

resource "aws_iam_instance_profile" "payments_2_svc" {
  name = "fenlum-1bmogc-payments-2-svc"
  role = aws_iam_role.payments_2_svc.name
}

resource "aws_iam_role" "payments_2_tx_archive_svc" {
  name                 = "fenlum-1bmogc-payments-2-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_tx_archive_svc__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_tx_archive_svc.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_tx_archive_svc252" {
  name                 = "fenlum-1bmogc-payments-2-tx-archive-svc252"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_tx_archive_svc252__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_tx_archive_svc252.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_2_tx_archive_svc412" {
  name                 = "fenlum-1bmogc-payments-2-tx-archive-svc412"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_2_tx_archive_svc412__payments_2_data_rw" {
  role       = aws_iam_role.payments_2_tx_archive_svc412.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_role" "payments_3_deploy" {
  name                 = "fenlum-1bmogc-payments-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.garcia1896" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.davis9150" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.chen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_deploy__payments_3_ops" {
  role       = aws_iam_role.payments_3_deploy.name
  policy_arn = aws_iam_policy.payments_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_3_deploy__payments_3_deploy_perms" {
  role       = aws_iam_role.payments_3_deploy.name
  policy_arn = aws_iam_policy.payments_3_deploy_perms.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc104" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc104"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc104__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc104.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc184" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc184"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc184__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc184.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc264" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc264"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc264__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc264.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc344" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc344"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc344__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc344.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc424" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc424"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc424__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc424.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_risk_models_svc504" {
  name                 = "fenlum-1bmogc-payments-3-risk-models-svc504"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_risk_models_svc504__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_risk_models_svc504.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role" "payments_3_svc" {
  name                 = "fenlum-1bmogc-payments-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_3_svc__payments_3_data_rw" {
  role       = aws_iam_role.payments_3_svc.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_3_svc__payments_3_ops" {
  role       = aws_iam_role.payments_3_svc.name
  policy_arn = aws_iam_policy.payments_3_ops.arn
}

resource "aws_iam_instance_profile" "payments_3_svc" {
  name = "fenlum-1bmogc-payments-3-svc"
  role = aws_iam_role.payments_3_svc.name
}

resource "aws_iam_role" "payments_4_deploy" {
  name                 = "fenlum-1bmogc-payments-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-leo.lopez4808" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bob.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.silva8516" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_deploy__payments_4_ops" {
  role       = aws_iam_role.payments_4_deploy.name
  policy_arn = aws_iam_policy.payments_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_4_deploy__payments_4_deploy_perms" {
  role       = aws_iam_role.payments_4_deploy.name
  policy_arn = aws_iam_policy.payments_4_deploy_perms.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc116" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc116"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc116__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc116.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc196" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc196"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc196__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc196.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc276" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc276"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc276__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc276.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc356" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc356"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc356__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc356.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc436" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc436"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc436__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc436.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_risk_models_svc516" {
  name                 = "fenlum-1bmogc-payments-4-risk-models-svc516"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_risk_models_svc516__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_risk_models_svc516.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role" "payments_4_svc" {
  name                 = "fenlum-1bmogc-payments-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_4_svc__payments_4_data_rw" {
  role       = aws_iam_role.payments_4_svc.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_4_svc__payments_4_ops" {
  role       = aws_iam_role.payments_4_svc.name
  policy_arn = aws_iam_policy.payments_4_ops.arn
}

resource "aws_iam_instance_profile" "payments_4_svc" {
  name = "fenlum-1bmogc-payments-4-svc"
  role = aws_iam_role.payments_4_svc.name
}

resource "aws_iam_role" "payments_5_deploy" {
  name                 = "fenlum-1bmogc-payments-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.wong1501" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.ali" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.dubois" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_deploy__payments_5_ops" {
  role       = aws_iam_role.payments_5_deploy.name
  policy_arn = aws_iam_policy.payments_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_5_deploy__payments_5_deploy_perms" {
  role       = aws_iam_role.payments_5_deploy.name
  policy_arn = aws_iam_policy.payments_5_deploy_perms.arn
}

resource "aws_iam_role" "payments_5_nb_role" {
  name                 = "fenlum-1bmogc-payments-5-nb-role"
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

resource "aws_iam_role_policy_attachment" "payments_5_nb_role__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_nb_role.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_5_nb_role__payments_5_ops" {
  role       = aws_iam_role.payments_5_nb_role.name
  policy_arn = aws_iam_policy.payments_5_ops.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc128" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc128"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc128__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc128.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc208" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc208"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc208__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc208.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc288" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc288"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc288__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc288.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc368" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc368"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc368__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc368.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc448" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc448"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc448__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc448.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_risk_models_svc528" {
  name                 = "fenlum-1bmogc-payments-5-risk-models-svc528"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_risk_models_svc528__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_risk_models_svc528.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role" "payments_5_svc" {
  name                 = "fenlum-1bmogc-payments-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_5_svc__payments_5_data_rw" {
  role       = aws_iam_role.payments_5_svc.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_5_svc__payments_5_ops" {
  role       = aws_iam_role.payments_5_svc.name
  policy_arn = aws_iam_policy.payments_5_ops.arn
}

resource "aws_iam_instance_profile" "payments_5_svc" {
  name = "fenlum-1bmogc-payments-5-svc"
  role = aws_iam_role.payments_5_svc.name
}

resource "aws_iam_role" "payments_6_audit_svc" {
  name                 = "fenlum-1bmogc-payments-6-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_audit_svc__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_audit_svc.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_audit_svc220" {
  name                 = "fenlum-1bmogc-payments-6-audit-svc220"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_audit_svc220__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_audit_svc220.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_audit_svc380" {
  name                 = "fenlum-1bmogc-payments-6-audit-svc380"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_audit_svc380__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_audit_svc380.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_deploy" {
  name                 = "fenlum-1bmogc-payments-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.sato5047" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.ivanov7844" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.ivanov2682" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.silva" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_deploy__payments_6_ops" {
  role       = aws_iam_role.payments_6_deploy.name
  policy_arn = aws_iam_policy.payments_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_6_deploy__payments_6_deploy_perms" {
  role       = aws_iam_role.payments_6_deploy.name
  policy_arn = aws_iam_policy.payments_6_deploy_perms.arn
}

resource "aws_iam_role" "payments_6_ledger_svc" {
  name                 = "fenlum-1bmogc-payments-6-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_ledger_svc__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_ledger_svc.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_ledger_svc300" {
  name                 = "fenlum-1bmogc-payments-6-ledger-svc300"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_ledger_svc300__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_ledger_svc300.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_ledger_svc460" {
  name                 = "fenlum-1bmogc-payments-6-ledger-svc460"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_ledger_svc460__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_ledger_svc460.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role" "payments_6_svc" {
  name                 = "fenlum-1bmogc-payments-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_6_svc__payments_6_data_rw" {
  role       = aws_iam_role.payments_6_svc.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_6_svc__payments_6_ops" {
  role       = aws_iam_role.payments_6_svc.name
  policy_arn = aws_iam_policy.payments_6_ops.arn
}

resource "aws_iam_instance_profile" "payments_6_svc" {
  name = "fenlum-1bmogc-payments-6-svc"
  role = aws_iam_role.payments_6_svc.name
}

resource "aws_iam_role" "payments_7_deploy" {
  name                 = "fenlum-1bmogc-payments-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.davis7699" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-karl.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_deploy__payments_7_ops" {
  role       = aws_iam_role.payments_7_deploy.name
  policy_arn = aws_iam_policy.payments_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_7_deploy__payments_7_deploy_perms" {
  role       = aws_iam_role.payments_7_deploy.name
  policy_arn = aws_iam_policy.payments_7_deploy_perms.arn
}

resource "aws_iam_role" "payments_7_glue_role" {
  name                 = "fenlum-1bmogc-payments-7-glue-role"
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

resource "aws_iam_role_policy_attachment" "payments_7_glue_role__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_glue_role.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_7_glue_role__payments_7_ops" {
  role       = aws_iam_role.payments_7_glue_role.name
  policy_arn = aws_iam_policy.payments_7_ops.arn
}

resource "aws_iam_role" "payments_7_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-payments-7-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_kyc_docs_svc__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_kyc_docs_svc.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_7_kyc_docs_svc312" {
  name                 = "fenlum-1bmogc-payments-7-kyc-docs-svc312"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_kyc_docs_svc312__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_kyc_docs_svc312.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_7_ledger_svc" {
  name                 = "fenlum-1bmogc-payments-7-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_ledger_svc__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_ledger_svc.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_7_ledger_svc392" {
  name                 = "fenlum-1bmogc-payments-7-ledger-svc392"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_ledger_svc392__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_ledger_svc392.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_7_svc" {
  name                 = "fenlum-1bmogc-payments-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_svc__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_svc.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_7_svc__payments_7_ops" {
  role       = aws_iam_role.payments_7_svc.name
  policy_arn = aws_iam_policy.payments_7_ops.arn
}

resource "aws_iam_instance_profile" "payments_7_svc" {
  name = "fenlum-1bmogc-payments-7-svc"
  role = aws_iam_role.payments_7_svc.name
}

resource "aws_iam_role" "payments_7_tx_archive_svc" {
  name                 = "fenlum-1bmogc-payments-7-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_tx_archive_svc__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_tx_archive_svc.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_7_tx_archive_svc472" {
  name                 = "fenlum-1bmogc-payments-7-tx-archive-svc472"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_7_tx_archive_svc472__payments_7_data_rw" {
  role       = aws_iam_role.payments_7_tx_archive_svc472.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_role" "payments_audit_svc" {
  name                 = "fenlum-1bmogc-payments-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_audit_svc__payments_data_rw" {
  role       = aws_iam_role.payments_audit_svc.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_audit_svc400" {
  name                 = "fenlum-1bmogc-payments-audit-svc400"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_audit_svc400__payments_data_rw" {
  role       = aws_iam_role.payments_audit_svc400.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_deploy" {
  name                 = "fenlum-1bmogc-payments-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.davis5339" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_deploy__payments_ops" {
  role       = aws_iam_role.payments_deploy.name
  policy_arn = aws_iam_policy.payments_ops.arn
}

resource "aws_iam_role_policy_attachment" "payments_deploy__payments_deploy_perms" {
  role       = aws_iam_role.payments_deploy.name
  policy_arn = aws_iam_policy.payments_deploy_perms.arn
}

resource "aws_iam_role" "payments_ledger_svc" {
  name                 = "fenlum-1bmogc-payments-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_ledger_svc__payments_data_rw" {
  role       = aws_iam_role.payments_ledger_svc.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_ledger_svc240" {
  name                 = "fenlum-1bmogc-payments-ledger-svc240"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_ledger_svc240__payments_data_rw" {
  role       = aws_iam_role.payments_ledger_svc240.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_ledger_svc480" {
  name                 = "fenlum-1bmogc-payments-ledger-svc480"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_ledger_svc480__payments_data_rw" {
  role       = aws_iam_role.payments_ledger_svc480.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_statements_svc" {
  name                 = "fenlum-1bmogc-payments-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_statements_svc__payments_data_rw" {
  role       = aws_iam_role.payments_statements_svc.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_statements_svc320" {
  name                 = "fenlum-1bmogc-payments-statements-svc320"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_statements_svc320__payments_data_rw" {
  role       = aws_iam_role.payments_statements_svc320.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role" "payments_svc" {
  name                 = "fenlum-1bmogc-payments-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "payments_svc__payments_data_rw" {
  role       = aws_iam_role.payments_svc.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "payments_svc__payments_ops" {
  role       = aws_iam_role.payments_svc.name
  policy_arn = aws_iam_policy.payments_ops.arn
}

resource "aws_iam_instance_profile" "payments_svc" {
  name = "fenlum-1bmogc-payments-svc"
  role = aws_iam_role.payments_svc.name
}

resource "aws_iam_role" "platform_2_deploy" {
  name                 = "fenlum-1bmogc-platform-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_deploy__platform_2_ops" {
  role       = aws_iam_role.platform_2_deploy.name
  policy_arn = aws_iam_policy.platform_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_2_deploy__platform_2_deploy_perms" {
  role       = aws_iam_role.platform_2_deploy.name
  policy_arn = aws_iam_policy.platform_2_deploy_perms.arn
}

resource "aws_iam_role" "platform_2_glue_role" {
  name                 = "fenlum-1bmogc-platform-2-glue-role"
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

resource "aws_iam_role_policy_attachment" "platform_2_glue_role__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_glue_role.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_2_glue_role__platform_2_ops" {
  role       = aws_iam_role.platform_2_glue_role.name
  policy_arn = aws_iam_policy.platform_2_ops.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc102" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc102"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc102__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc102.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc182" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc182"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc182__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc182.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc262" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc262"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc262__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc262.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc342" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc342"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc342__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc342.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc422" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc422"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc422__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc422.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_kyc_docs_svc502" {
  name                 = "fenlum-1bmogc-platform-2-kyc-docs-svc502"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_kyc_docs_svc502__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_kyc_docs_svc502.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role" "platform_2_svc" {
  name                 = "fenlum-1bmogc-platform-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_2_svc__platform_2_data_rw" {
  role       = aws_iam_role.platform_2_svc.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_2_svc__platform_2_ops" {
  role       = aws_iam_role.platform_2_svc.name
  policy_arn = aws_iam_policy.platform_2_ops.arn
}

resource "aws_iam_instance_profile" "platform_2_svc" {
  name = "fenlum-1bmogc-platform-2-svc"
  role = aws_iam_role.platform_2_svc.name
}

resource "aws_iam_role" "platform_3_deploy" {
  name                 = "fenlum-1bmogc-platform-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-raj.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.sato5012" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_deploy__platform_3_ops" {
  role       = aws_iam_role.platform_3_deploy.name
  policy_arn = aws_iam_policy.platform_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_3_deploy__platform_3_deploy_perms" {
  role       = aws_iam_role.platform_3_deploy.name
  policy_arn = aws_iam_policy.platform_3_deploy_perms.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc114" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc114"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc114__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc114.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc194" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc194"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc194__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc194.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc274" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc274"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc274__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc274.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc354" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc354"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc354__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc354.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc434" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc434"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc434__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc434.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_risk_models_svc514" {
  name                 = "fenlum-1bmogc-platform-3-risk-models-svc514"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_risk_models_svc514__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_risk_models_svc514.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role" "platform_3_svc" {
  name                 = "fenlum-1bmogc-platform-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_3_svc__platform_3_data_rw" {
  role       = aws_iam_role.platform_3_svc.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_3_svc__platform_3_ops" {
  role       = aws_iam_role.platform_3_svc.name
  policy_arn = aws_iam_policy.platform_3_ops.arn
}

resource "aws_iam_instance_profile" "platform_3_svc" {
  name = "fenlum-1bmogc-platform-3-svc"
  role = aws_iam_role.platform_3_svc.name
}

resource "aws_iam_role" "platform_4_deploy" {
  name                 = "fenlum-1bmogc-platform-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.cohen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-raj.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.ali4959" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.muller3325" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_deploy__platform_4_ops" {
  role       = aws_iam_role.platform_4_deploy.name
  policy_arn = aws_iam_policy.platform_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_4_deploy__platform_4_deploy_perms" {
  role       = aws_iam_role.platform_4_deploy.name
  policy_arn = aws_iam_policy.platform_4_deploy_perms.arn
}

resource "aws_iam_role" "platform_4_statements_svc" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc126" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc126"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc126__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc126.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc206" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc206"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc206__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc206.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc286" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc286"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc286__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc286.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc366" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc366"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc366__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc366.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc446" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc446"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc446__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc446.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_statements_svc526" {
  name                 = "fenlum-1bmogc-platform-4-statements-svc526"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_statements_svc526__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_statements_svc526.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role" "platform_4_svc" {
  name                 = "fenlum-1bmogc-platform-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_4_svc__platform_4_data_rw" {
  role       = aws_iam_role.platform_4_svc.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_4_svc__platform_4_ops" {
  role       = aws_iam_role.platform_4_svc.name
  policy_arn = aws_iam_policy.platform_4_ops.arn
}

resource "aws_iam_instance_profile" "platform_4_svc" {
  name = "fenlum-1bmogc-platform-4-svc"
  role = aws_iam_role.platform_4_svc.name
}

resource "aws_iam_role" "platform_5_deploy" {
  name                 = "fenlum-1bmogc-platform-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.mehta3630" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-frank.larsen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_deploy__platform_5_ops" {
  role       = aws_iam_role.platform_5_deploy.name
  policy_arn = aws_iam_policy.platform_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_5_deploy__platform_5_deploy_perms" {
  role       = aws_iam_role.platform_5_deploy.name
  policy_arn = aws_iam_policy.platform_5_deploy_perms.arn
}

resource "aws_iam_role" "platform_5_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-platform-5-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_kyc_docs_svc__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_kyc_docs_svc.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_kyc_docs_svc298" {
  name                 = "fenlum-1bmogc-platform-5-kyc-docs-svc298"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_kyc_docs_svc298__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_kyc_docs_svc298.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_ledger_svc" {
  name                 = "fenlum-1bmogc-platform-5-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_ledger_svc__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_ledger_svc.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_ledger_svc378" {
  name                 = "fenlum-1bmogc-platform-5-ledger-svc378"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_ledger_svc378__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_ledger_svc378.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_stack_role" {
  name                 = "fenlum-1bmogc-platform-5-stack-role"
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

resource "aws_iam_role_policy_attachment" "platform_5_stack_role__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_stack_role.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_5_stack_role__platform_5_ops" {
  role       = aws_iam_role.platform_5_stack_role.name
  policy_arn = aws_iam_policy.platform_5_ops.arn
}

resource "aws_iam_role" "platform_5_statements_svc" {
  name                 = "fenlum-1bmogc-platform-5-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_statements_svc__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_statements_svc.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_statements_svc458" {
  name                 = "fenlum-1bmogc-platform-5-statements-svc458"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_statements_svc458__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_statements_svc458.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role" "platform_5_svc" {
  name                 = "fenlum-1bmogc-platform-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_5_svc__platform_5_data_rw" {
  role       = aws_iam_role.platform_5_svc.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_5_svc__platform_5_ops" {
  role       = aws_iam_role.platform_5_svc.name
  policy_arn = aws_iam_policy.platform_5_ops.arn
}

resource "aws_iam_instance_profile" "platform_5_svc" {
  name = "fenlum-1bmogc-platform-5-svc"
  role = aws_iam_role.platform_5_svc.name
}

resource "aws_iam_role" "platform_6_deploy" {
  name                 = "fenlum-1bmogc-platform-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.chen9097" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_deploy__platform_6_ops" {
  role       = aws_iam_role.platform_6_deploy.name
  policy_arn = aws_iam_policy.platform_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_6_deploy__platform_6_deploy_perms" {
  role       = aws_iam_role.platform_6_deploy.name
  policy_arn = aws_iam_policy.platform_6_deploy_perms.arn
}

resource "aws_iam_role" "platform_6_ledger_svc" {
  name                 = "fenlum-1bmogc-platform-6-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_ledger_svc__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_ledger_svc.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_6_ledger_svc310" {
  name                 = "fenlum-1bmogc-platform-6-ledger-svc310"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_ledger_svc310__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_ledger_svc310.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_6_ledger_svc470" {
  name                 = "fenlum-1bmogc-platform-6-ledger-svc470"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_ledger_svc470__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_ledger_svc470.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_6_svc" {
  name                 = "fenlum-1bmogc-platform-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_svc__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_svc.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_6_svc__platform_6_ops" {
  role       = aws_iam_role.platform_6_svc.name
  policy_arn = aws_iam_policy.platform_6_ops.arn
}

resource "aws_iam_instance_profile" "platform_6_svc" {
  name = "fenlum-1bmogc-platform-6-svc"
  role = aws_iam_role.platform_6_svc.name
}

resource "aws_iam_role" "platform_6_tx_archive_svc" {
  name                 = "fenlum-1bmogc-platform-6-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_tx_archive_svc__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_tx_archive_svc.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_6_tx_archive_svc230" {
  name                 = "fenlum-1bmogc-platform-6-tx-archive-svc230"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_tx_archive_svc230__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_tx_archive_svc230.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_6_tx_archive_svc390" {
  name                 = "fenlum-1bmogc-platform-6-tx-archive-svc390"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_6_tx_archive_svc390__platform_6_data_rw" {
  role       = aws_iam_role.platform_6_tx_archive_svc390.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc" {
  name                 = "fenlum-1bmogc-platform-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc170" {
  name                 = "fenlum-1bmogc-platform-audit-svc170"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc170__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc170.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc250" {
  name                 = "fenlum-1bmogc-platform-audit-svc250"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc250__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc250.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc330" {
  name                 = "fenlum-1bmogc-platform-audit-svc330"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc330__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc330.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc410" {
  name                 = "fenlum-1bmogc-platform-audit-svc410"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc410__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc410.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc490" {
  name                 = "fenlum-1bmogc-platform-audit-svc490"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc490__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc490.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_audit_svc90" {
  name                 = "fenlum-1bmogc-platform-audit-svc90"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_audit_svc90__platform_data_rw" {
  role       = aws_iam_role.platform_audit_svc90.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role" "platform_deploy" {
  name                 = "fenlum-1bmogc-platform-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.dubois6979" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.wong" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_deploy__platform_ops" {
  role       = aws_iam_role.platform_deploy.name
  policy_arn = aws_iam_policy.platform_ops.arn
}

resource "aws_iam_role_policy_attachment" "platform_deploy__platform_deploy_perms" {
  role       = aws_iam_role.platform_deploy.name
  policy_arn = aws_iam_policy.platform_deploy_perms.arn
}

resource "aws_iam_role" "platform_stack_role" {
  name                 = "fenlum-1bmogc-platform-stack-role"
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

resource "aws_iam_role_policy_attachment" "platform_stack_role__platform_data_rw" {
  role       = aws_iam_role.platform_stack_role.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_stack_role__platform_ops" {
  role       = aws_iam_role.platform_stack_role.name
  policy_arn = aws_iam_policy.platform_ops.arn
}

resource "aws_iam_role" "platform_svc" {
  name                 = "fenlum-1bmogc-platform-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "platform_svc__platform_data_rw" {
  role       = aws_iam_role.platform_svc.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "platform_svc__platform_ops" {
  role       = aws_iam_role.platform_svc.name
  policy_arn = aws_iam_policy.platform_ops.arn
}

resource "aws_iam_instance_profile" "platform_svc" {
  name = "fenlum-1bmogc-platform-svc"
  role = aws_iam_role.platform_svc.name
}

resource "aws_iam_role" "reporting_2_deploy" {
  name                 = "fenlum-1bmogc-reporting-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-leo.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-frank.wong" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-noor.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.lopez4206" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_deploy__reporting_2_ops" {
  role       = aws_iam_role.reporting_2_deploy.name
  policy_arn = aws_iam_policy.reporting_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_2_deploy__reporting_2_deploy_perms" {
  role       = aws_iam_role.reporting_2_deploy.name
  policy_arn = aws_iam_policy.reporting_2_deploy_perms.arn
}

resource "aws_iam_role" "reporting_2_ledger_svc" {
  name                 = "fenlum-1bmogc-reporting-2-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_ledger_svc__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_ledger_svc.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_ledger_svc180" {
  name                 = "fenlum-1bmogc-reporting-2-ledger-svc180"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_ledger_svc180__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_ledger_svc180.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_ledger_svc340" {
  name                 = "fenlum-1bmogc-reporting-2-ledger-svc340"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_ledger_svc340__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_ledger_svc340.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_ledger_svc500" {
  name                 = "fenlum-1bmogc-reporting-2-ledger-svc500"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_ledger_svc500__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_ledger_svc500.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_risk_models_svc" {
  name                 = "fenlum-1bmogc-reporting-2-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_risk_models_svc__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_risk_models_svc.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_risk_models_svc260" {
  name                 = "fenlum-1bmogc-reporting-2-risk-models-svc260"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_risk_models_svc260__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_risk_models_svc260.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_risk_models_svc420" {
  name                 = "fenlum-1bmogc-reporting-2-risk-models-svc420"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_risk_models_svc420__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_risk_models_svc420.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role" "reporting_2_stack_role" {
  name                 = "fenlum-1bmogc-reporting-2-stack-role"
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

resource "aws_iam_role_policy_attachment" "reporting_2_stack_role__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_stack_role.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_2_stack_role__reporting_2_ops" {
  role       = aws_iam_role.reporting_2_stack_role.name
  policy_arn = aws_iam_policy.reporting_2_ops.arn
}

resource "aws_iam_role" "reporting_2_svc" {
  name                 = "fenlum-1bmogc-reporting-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_2_svc__reporting_2_data_rw" {
  role       = aws_iam_role.reporting_2_svc.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_2_svc__reporting_2_ops" {
  role       = aws_iam_role.reporting_2_svc.name
  policy_arn = aws_iam_policy.reporting_2_ops.arn
}

resource "aws_iam_instance_profile" "reporting_2_svc" {
  name = "fenlum-1bmogc-reporting-2-svc"
  role = aws_iam_role.reporting_2_svc.name
}

resource "aws_iam_role" "reporting_3_deploy" {
  name                 = "fenlum-1bmogc-reporting-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.reddy2977" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-sara.tanaka" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.ali" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_deploy__reporting_3_ops" {
  role       = aws_iam_role.reporting_3_deploy.name
  policy_arn = aws_iam_policy.reporting_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_3_deploy__reporting_3_deploy_perms" {
  role       = aws_iam_role.reporting_3_deploy.name
  policy_arn = aws_iam_policy.reporting_3_deploy_perms.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc112" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc112"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc112__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc112.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc192" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc192"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc192__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc192.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc272" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc272"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc272__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc272.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc352" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc352"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc352__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc352.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc432" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc432"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc432__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc432.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_ledger_svc512" {
  name                 = "fenlum-1bmogc-reporting-3-ledger-svc512"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_ledger_svc512__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_ledger_svc512.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role" "reporting_3_svc" {
  name                 = "fenlum-1bmogc-reporting-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_3_svc__reporting_3_data_rw" {
  role       = aws_iam_role.reporting_3_svc.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_3_svc__reporting_3_ops" {
  role       = aws_iam_role.reporting_3_svc.name
  policy_arn = aws_iam_policy.reporting_3_ops.arn
}

resource "aws_iam_instance_profile" "reporting_3_svc" {
  name = "fenlum-1bmogc-reporting-3-svc"
  role = aws_iam_role.reporting_3_svc.name
}

resource "aws_iam_role" "reporting_4_deploy" {
  name                 = "fenlum-1bmogc-reporting-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.garcia" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.singh3241" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.garcia" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_deploy__reporting_4_ops" {
  role       = aws_iam_role.reporting_4_deploy.name
  policy_arn = aws_iam_policy.reporting_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_4_deploy__reporting_4_deploy_perms" {
  role       = aws_iam_role.reporting_4_deploy.name
  policy_arn = aws_iam_policy.reporting_4_deploy_perms.arn
}

resource "aws_iam_role" "reporting_4_nb_role" {
  name                 = "fenlum-1bmogc-reporting-4-nb-role"
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

resource "aws_iam_role_policy_attachment" "reporting_4_nb_role__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_nb_role.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_4_nb_role__reporting_4_ops" {
  role       = aws_iam_role.reporting_4_nb_role.name
  policy_arn = aws_iam_policy.reporting_4_ops.arn
}

resource "aws_iam_role" "reporting_4_statements_svc" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc124" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc124"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc124__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc124.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc204" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc204"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc204__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc204.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc284" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc284"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc284__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc284.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc364" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc364"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc364__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc364.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc444" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc444"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc444__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc444.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_statements_svc524" {
  name                 = "fenlum-1bmogc-reporting-4-statements-svc524"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_statements_svc524__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_statements_svc524.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role" "reporting_4_svc" {
  name                 = "fenlum-1bmogc-reporting-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_4_svc__reporting_4_data_rw" {
  role       = aws_iam_role.reporting_4_svc.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_4_svc__reporting_4_ops" {
  role       = aws_iam_role.reporting_4_svc.name
  policy_arn = aws_iam_policy.reporting_4_ops.arn
}

resource "aws_iam_instance_profile" "reporting_4_svc" {
  name = "fenlum-1bmogc-reporting-4-svc"
  role = aws_iam_role.reporting_4_svc.name
}

resource "aws_iam_role" "reporting_5_audit_svc" {
  name                 = "fenlum-1bmogc-reporting-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_audit_svc__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_audit_svc.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_5_audit_svc296" {
  name                 = "fenlum-1bmogc-reporting-5-audit-svc296"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_audit_svc296__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_audit_svc296.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_5_audit_svc456" {
  name                 = "fenlum-1bmogc-reporting-5-audit-svc456"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_audit_svc456__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_audit_svc456.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_5_deploy" {
  name                 = "fenlum-1bmogc-reporting-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.wong1517" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.dubois6603" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.muller" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_deploy__reporting_5_ops" {
  role       = aws_iam_role.reporting_5_deploy.name
  policy_arn = aws_iam_policy.reporting_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_5_deploy__reporting_5_deploy_perms" {
  role       = aws_iam_role.reporting_5_deploy.name
  policy_arn = aws_iam_policy.reporting_5_deploy_perms.arn
}

resource "aws_iam_role" "reporting_5_svc" {
  name                 = "fenlum-1bmogc-reporting-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_svc__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_svc.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_5_svc__reporting_5_ops" {
  role       = aws_iam_role.reporting_5_svc.name
  policy_arn = aws_iam_policy.reporting_5_ops.arn
}

resource "aws_iam_instance_profile" "reporting_5_svc" {
  name = "fenlum-1bmogc-reporting-5-svc"
  role = aws_iam_role.reporting_5_svc.name
}

resource "aws_iam_role" "reporting_5_tx_archive_svc" {
  name                 = "fenlum-1bmogc-reporting-5-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_tx_archive_svc__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_tx_archive_svc.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_5_tx_archive_svc216" {
  name                 = "fenlum-1bmogc-reporting-5-tx-archive-svc216"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_tx_archive_svc216__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_tx_archive_svc216.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_5_tx_archive_svc376" {
  name                 = "fenlum-1bmogc-reporting-5-tx-archive-svc376"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_5_tx_archive_svc376__reporting_5_data_rw" {
  role       = aws_iam_role.reporting_5_tx_archive_svc376.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc148" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc148"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc148__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc148.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc228" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc228"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc228__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc228.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc308" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc308"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc308__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc308.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc388" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc388"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc388__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc388.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_audit_svc468" {
  name                 = "fenlum-1bmogc-reporting-6-audit-svc468"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_audit_svc468__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_audit_svc468.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role" "reporting_6_deploy" {
  name                 = "fenlum-1bmogc-reporting-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.rossi7077" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.ivanov" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.okafor" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_deploy__reporting_6_ops" {
  role       = aws_iam_role.reporting_6_deploy.name
  policy_arn = aws_iam_policy.reporting_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_6_deploy__reporting_6_deploy_perms" {
  role       = aws_iam_role.reporting_6_deploy.name
  policy_arn = aws_iam_policy.reporting_6_deploy_perms.arn
}

resource "aws_iam_role" "reporting_6_svc" {
  name                 = "fenlum-1bmogc-reporting-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_6_svc__reporting_6_data_rw" {
  role       = aws_iam_role.reporting_6_svc.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_6_svc__reporting_6_ops" {
  role       = aws_iam_role.reporting_6_svc.name
  policy_arn = aws_iam_policy.reporting_6_ops.arn
}

resource "aws_iam_instance_profile" "reporting_6_svc" {
  name = "fenlum-1bmogc-reporting-6-svc"
  role = aws_iam_role.reporting_6_svc.name
}

resource "aws_iam_role" "reporting_audit_svc" {
  name                 = "fenlum-1bmogc-reporting-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc168" {
  name                 = "fenlum-1bmogc-reporting-audit-svc168"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc168__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc168.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc248" {
  name                 = "fenlum-1bmogc-reporting-audit-svc248"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc248__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc248.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc328" {
  name                 = "fenlum-1bmogc-reporting-audit-svc328"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc328__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc328.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc408" {
  name                 = "fenlum-1bmogc-reporting-audit-svc408"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc408__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc408.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc488" {
  name                 = "fenlum-1bmogc-reporting-audit-svc488"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc488__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc488.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_audit_svc88" {
  name                 = "fenlum-1bmogc-reporting-audit-svc88"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_audit_svc88__reporting_data_rw" {
  role       = aws_iam_role.reporting_audit_svc88.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role" "reporting_deploy" {
  name                 = "fenlum-1bmogc-reporting-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-frank.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.novak" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_deploy__reporting_ops" {
  role       = aws_iam_role.reporting_deploy.name
  policy_arn = aws_iam_policy.reporting_ops.arn
}

resource "aws_iam_role_policy_attachment" "reporting_deploy__reporting_deploy_perms" {
  role       = aws_iam_role.reporting_deploy.name
  policy_arn = aws_iam_policy.reporting_deploy_perms.arn
}

resource "aws_iam_role" "reporting_nb_role" {
  name                 = "fenlum-1bmogc-reporting-nb-role"
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

resource "aws_iam_role_policy_attachment" "reporting_nb_role__reporting_data_rw" {
  role       = aws_iam_role.reporting_nb_role.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_nb_role__reporting_ops" {
  role       = aws_iam_role.reporting_nb_role.name
  policy_arn = aws_iam_policy.reporting_ops.arn
}

resource "aws_iam_role" "reporting_svc" {
  name                 = "fenlum-1bmogc-reporting-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "reporting_svc__reporting_data_rw" {
  role       = aws_iam_role.reporting_svc.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "reporting_svc__reporting_ops" {
  role       = aws_iam_role.reporting_svc.name
  policy_arn = aws_iam_policy.reporting_ops.arn
}

resource "aws_iam_instance_profile" "reporting_svc" {
  name = "fenlum-1bmogc-reporting-svc"
  role = aws_iam_role.reporting_svc.name
}

resource "aws_iam_role" "risk_2_audit_svc" {
  name                 = "fenlum-1bmogc-risk-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_audit_svc__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_audit_svc.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_audit_svc254" {
  name                 = "fenlum-1bmogc-risk-2-audit-svc254"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_audit_svc254__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_audit_svc254.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_audit_svc414" {
  name                 = "fenlum-1bmogc-risk-2-audit-svc414"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_audit_svc414__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_audit_svc414.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_deploy" {
  name                 = "fenlum-1bmogc-risk-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.larsen4709" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.haddad3102" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_deploy__risk_2_ops" {
  role       = aws_iam_role.risk_2_deploy.name
  policy_arn = aws_iam_policy.risk_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_2_deploy__risk_2_deploy_perms" {
  role       = aws_iam_role.risk_2_deploy.name
  policy_arn = aws_iam_policy.risk_2_deploy_perms.arn
}

resource "aws_iam_role" "risk_2_nb_role" {
  name                 = "fenlum-1bmogc-risk-2-nb-role"
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

resource "aws_iam_role_policy_attachment" "risk_2_nb_role__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_nb_role.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_2_nb_role__risk_2_ops" {
  role       = aws_iam_role.risk_2_nb_role.name
  policy_arn = aws_iam_policy.risk_2_ops.arn
}

resource "aws_iam_role" "risk_2_statements_svc" {
  name                 = "fenlum-1bmogc-risk-2-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_statements_svc__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_statements_svc.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_statements_svc174" {
  name                 = "fenlum-1bmogc-risk-2-statements-svc174"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_statements_svc174__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_statements_svc174.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_statements_svc334" {
  name                 = "fenlum-1bmogc-risk-2-statements-svc334"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_statements_svc334__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_statements_svc334.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_statements_svc494" {
  name                 = "fenlum-1bmogc-risk-2-statements-svc494"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_statements_svc494__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_statements_svc494.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role" "risk_2_svc" {
  name                 = "fenlum-1bmogc-risk-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_2_svc__risk_2_data_rw" {
  role       = aws_iam_role.risk_2_svc.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_2_svc__risk_2_ops" {
  role       = aws_iam_role.risk_2_svc.name
  policy_arn = aws_iam_policy.risk_2_ops.arn
}

resource "aws_iam_instance_profile" "risk_2_svc" {
  name = "fenlum-1bmogc-risk-2-svc"
  role = aws_iam_role.risk_2_svc.name
}

resource "aws_iam_role" "risk_3_deploy" {
  name                 = "fenlum-1bmogc-risk-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.wong4363" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.patel" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-vik.ivanov5014" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_deploy__risk_3_ops" {
  role       = aws_iam_role.risk_3_deploy.name
  policy_arn = aws_iam_policy.risk_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_3_deploy__risk_3_deploy_perms" {
  role       = aws_iam_role.risk_3_deploy.name
  policy_arn = aws_iam_policy.risk_3_deploy_perms.arn
}

resource "aws_iam_role" "risk_3_ledger_svc" {
  name                 = "fenlum-1bmogc-risk-3-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_ledger_svc__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_ledger_svc.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_ledger_svc266" {
  name                 = "fenlum-1bmogc-risk-3-ledger-svc266"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_ledger_svc266__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_ledger_svc266.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_ledger_svc426" {
  name                 = "fenlum-1bmogc-risk-3-ledger-svc426"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_ledger_svc426__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_ledger_svc426.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_nb_role" {
  name                 = "fenlum-1bmogc-risk-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "risk_3_nb_role__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_nb_role.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_3_nb_role__risk_3_ops" {
  role       = aws_iam_role.risk_3_nb_role.name
  policy_arn = aws_iam_policy.risk_3_ops.arn
}

resource "aws_iam_role" "risk_3_risk_models_svc" {
  name                 = "fenlum-1bmogc-risk-3-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_risk_models_svc__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_risk_models_svc.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_risk_models_svc186" {
  name                 = "fenlum-1bmogc-risk-3-risk-models-svc186"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_risk_models_svc186__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_risk_models_svc186.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_risk_models_svc346" {
  name                 = "fenlum-1bmogc-risk-3-risk-models-svc346"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_risk_models_svc346__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_risk_models_svc346.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_risk_models_svc506" {
  name                 = "fenlum-1bmogc-risk-3-risk-models-svc506"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_risk_models_svc506__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_risk_models_svc506.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role" "risk_3_svc" {
  name                 = "fenlum-1bmogc-risk-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_3_svc__risk_3_data_rw" {
  role       = aws_iam_role.risk_3_svc.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_3_svc__risk_3_ops" {
  role       = aws_iam_role.risk_3_svc.name
  policy_arn = aws_iam_policy.risk_3_ops.arn
}

resource "aws_iam_instance_profile" "risk_3_svc" {
  name = "fenlum-1bmogc-risk-3-svc"
  role = aws_iam_role.risk_3_svc.name
}

resource "aws_iam_role" "risk_4_deploy" {
  name                 = "fenlum-1bmogc-risk-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.garcia8203" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-quinn.miller3461" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.mehta" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_deploy__risk_4_ops" {
  role       = aws_iam_role.risk_4_deploy.name
  policy_arn = aws_iam_policy.risk_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_4_deploy__risk_4_deploy_perms" {
  role       = aws_iam_role.risk_4_deploy.name
  policy_arn = aws_iam_policy.risk_4_deploy_perms.arn
}

resource "aws_iam_role" "risk_4_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-risk-4-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_kyc_docs_svc__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_kyc_docs_svc.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_kyc_docs_svc278" {
  name                 = "fenlum-1bmogc-risk-4-kyc-docs-svc278"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_kyc_docs_svc278__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_kyc_docs_svc278.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_kyc_docs_svc438" {
  name                 = "fenlum-1bmogc-risk-4-kyc-docs-svc438"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_kyc_docs_svc438__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_kyc_docs_svc438.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_risk_models_svc" {
  name                 = "fenlum-1bmogc-risk-4-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_risk_models_svc__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_risk_models_svc.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_risk_models_svc198" {
  name                 = "fenlum-1bmogc-risk-4-risk-models-svc198"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_risk_models_svc198__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_risk_models_svc198.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_risk_models_svc358" {
  name                 = "fenlum-1bmogc-risk-4-risk-models-svc358"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_risk_models_svc358__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_risk_models_svc358.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_risk_models_svc518" {
  name                 = "fenlum-1bmogc-risk-4-risk-models-svc518"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_risk_models_svc518__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_risk_models_svc518.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role" "risk_4_stack_role" {
  name                 = "fenlum-1bmogc-risk-4-stack-role"
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

resource "aws_iam_role_policy_attachment" "risk_4_stack_role__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_stack_role.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_4_stack_role__risk_4_ops" {
  role       = aws_iam_role.risk_4_stack_role.name
  policy_arn = aws_iam_policy.risk_4_ops.arn
}

resource "aws_iam_role" "risk_4_svc" {
  name                 = "fenlum-1bmogc-risk-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_4_svc__risk_4_data_rw" {
  role       = aws_iam_role.risk_4_svc.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_4_svc__risk_4_ops" {
  role       = aws_iam_role.risk_4_svc.name
  policy_arn = aws_iam_policy.risk_4_ops.arn
}

resource "aws_iam_instance_profile" "risk_4_svc" {
  name = "fenlum-1bmogc-risk-4-svc"
  role = aws_iam_role.risk_4_svc.name
}

resource "aws_iam_role" "risk_5_deploy" {
  name                 = "fenlum-1bmogc-risk-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.dubois6995" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.kim" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.cohen" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_deploy__risk_5_ops" {
  role       = aws_iam_role.risk_5_deploy.name
  policy_arn = aws_iam_policy.risk_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_5_deploy__risk_5_deploy_perms" {
  role       = aws_iam_role.risk_5_deploy.name
  policy_arn = aws_iam_policy.risk_5_deploy_perms.arn
}

resource "aws_iam_role" "risk_5_risk_models_svc" {
  name                 = "fenlum-1bmogc-risk-5-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_risk_models_svc__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_risk_models_svc.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_risk_models_svc210" {
  name                 = "fenlum-1bmogc-risk-5-risk-models-svc210"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_risk_models_svc210__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_risk_models_svc210.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_risk_models_svc370" {
  name                 = "fenlum-1bmogc-risk-5-risk-models-svc370"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_risk_models_svc370__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_risk_models_svc370.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_risk_models_svc530" {
  name                 = "fenlum-1bmogc-risk-5-risk-models-svc530"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_risk_models_svc530__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_risk_models_svc530.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_statements_svc" {
  name                 = "fenlum-1bmogc-risk-5-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_statements_svc__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_statements_svc.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_statements_svc290" {
  name                 = "fenlum-1bmogc-risk-5-statements-svc290"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_statements_svc290__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_statements_svc290.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_statements_svc450" {
  name                 = "fenlum-1bmogc-risk-5-statements-svc450"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_statements_svc450__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_statements_svc450.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role" "risk_5_svc" {
  name                 = "fenlum-1bmogc-risk-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_5_svc__risk_5_data_rw" {
  role       = aws_iam_role.risk_5_svc.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_5_svc__risk_5_ops" {
  role       = aws_iam_role.risk_5_svc.name
  policy_arn = aws_iam_policy.risk_5_ops.arn
}

resource "aws_iam_instance_profile" "risk_5_svc" {
  name = "fenlum-1bmogc-risk-5-svc"
  role = aws_iam_role.risk_5_svc.name
}

resource "aws_iam_role" "risk_6_deploy" {
  name                 = "fenlum-1bmogc-risk-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.gupta2609" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.haddad3600" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_deploy__risk_6_ops" {
  role       = aws_iam_role.risk_6_deploy.name
  policy_arn = aws_iam_policy.risk_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_6_deploy__risk_6_deploy_perms" {
  role       = aws_iam_role.risk_6_deploy.name
  policy_arn = aws_iam_policy.risk_6_deploy_perms.arn
}

resource "aws_iam_role" "risk_6_ledger_svc" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_ledger_svc142" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc142"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc142__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc142.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_ledger_svc222" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc222"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc222__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc222.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_ledger_svc302" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc302"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc302__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc302.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_ledger_svc382" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc382"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc382__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc382.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_ledger_svc462" {
  name                 = "fenlum-1bmogc-risk-6-ledger-svc462"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_ledger_svc462__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_ledger_svc462.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role" "risk_6_nb_role" {
  name                 = "fenlum-1bmogc-risk-6-nb-role"
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

resource "aws_iam_role_policy_attachment" "risk_6_nb_role__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_nb_role.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_6_nb_role__risk_6_ops" {
  role       = aws_iam_role.risk_6_nb_role.name
  policy_arn = aws_iam_policy.risk_6_ops.arn
}

resource "aws_iam_role" "risk_6_svc" {
  name                 = "fenlum-1bmogc-risk-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_6_svc__risk_6_data_rw" {
  role       = aws_iam_role.risk_6_svc.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_6_svc__risk_6_ops" {
  role       = aws_iam_role.risk_6_svc.name
  policy_arn = aws_iam_policy.risk_6_ops.arn
}

resource "aws_iam_instance_profile" "risk_6_svc" {
  name = "fenlum-1bmogc-risk-6-svc"
  role = aws_iam_role.risk_6_svc.name
}

resource "aws_iam_role" "risk_7_deploy" {
  name                 = "fenlum-1bmogc-risk-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-amit.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-hana.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.silva" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.sato" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_deploy__risk_7_ops" {
  role       = aws_iam_role.risk_7_deploy.name
  policy_arn = aws_iam_policy.risk_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_7_deploy__risk_7_deploy_perms" {
  role       = aws_iam_role.risk_7_deploy.name
  policy_arn = aws_iam_policy.risk_7_deploy_perms.arn
}

resource "aws_iam_role" "risk_7_risk_models_svc" {
  name                 = "fenlum-1bmogc-risk-7-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_risk_models_svc__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_risk_models_svc.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_risk_models_svc314" {
  name                 = "fenlum-1bmogc-risk-7-risk-models-svc314"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_risk_models_svc314__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_risk_models_svc314.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_risk_models_svc474" {
  name                 = "fenlum-1bmogc-risk-7-risk-models-svc474"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_risk_models_svc474__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_risk_models_svc474.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_statements_svc" {
  name                 = "fenlum-1bmogc-risk-7-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_statements_svc__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_statements_svc.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_statements_svc234" {
  name                 = "fenlum-1bmogc-risk-7-statements-svc234"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_statements_svc234__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_statements_svc234.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_statements_svc394" {
  name                 = "fenlum-1bmogc-risk-7-statements-svc394"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_statements_svc394__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_statements_svc394.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role" "risk_7_svc" {
  name                 = "fenlum-1bmogc-risk-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_7_svc__risk_7_data_rw" {
  role       = aws_iam_role.risk_7_svc.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_7_svc__risk_7_ops" {
  role       = aws_iam_role.risk_7_svc.name
  policy_arn = aws_iam_policy.risk_7_ops.arn
}

resource "aws_iam_instance_profile" "risk_7_svc" {
  name = "fenlum-1bmogc-risk-7-svc"
  role = aws_iam_role.risk_7_svc.name
}

resource "aws_iam_role" "risk_deploy" {
  name                 = "fenlum-1bmogc-risk-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.gupta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.lopez8942" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.kim3524" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_deploy__risk_ops" {
  role       = aws_iam_role.risk_deploy.name
  policy_arn = aws_iam_policy.risk_ops.arn
}

resource "aws_iam_role_policy_attachment" "risk_deploy__risk_deploy_perms" {
  role       = aws_iam_role.risk_deploy.name
  policy_arn = aws_iam_policy.risk_deploy_perms.arn
}

resource "aws_iam_role" "risk_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-risk-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_kyc_docs_svc__risk_data_rw" {
  role       = aws_iam_role.risk_kyc_docs_svc.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_kyc_docs_svc402" {
  name                 = "fenlum-1bmogc-risk-kyc-docs-svc402"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_kyc_docs_svc402__risk_data_rw" {
  role       = aws_iam_role.risk_kyc_docs_svc402.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_ledger_svc" {
  name                 = "fenlum-1bmogc-risk-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_ledger_svc__risk_data_rw" {
  role       = aws_iam_role.risk_ledger_svc.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_ledger_svc322" {
  name                 = "fenlum-1bmogc-risk-ledger-svc322"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_ledger_svc322__risk_data_rw" {
  role       = aws_iam_role.risk_ledger_svc322.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_risk_models_svc" {
  name                 = "fenlum-1bmogc-risk-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_risk_models_svc__risk_data_rw" {
  role       = aws_iam_role.risk_risk_models_svc.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_risk_models_svc242" {
  name                 = "fenlum-1bmogc-risk-risk-models-svc242"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_risk_models_svc242__risk_data_rw" {
  role       = aws_iam_role.risk_risk_models_svc242.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_risk_models_svc482" {
  name                 = "fenlum-1bmogc-risk-risk-models-svc482"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_risk_models_svc482__risk_data_rw" {
  role       = aws_iam_role.risk_risk_models_svc482.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role" "risk_stack_role" {
  name                 = "fenlum-1bmogc-risk-stack-role"
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

resource "aws_iam_role_policy_attachment" "risk_stack_role__risk_data_rw" {
  role       = aws_iam_role.risk_stack_role.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_stack_role__risk_ops" {
  role       = aws_iam_role.risk_stack_role.name
  policy_arn = aws_iam_policy.risk_ops.arn
}

resource "aws_iam_role" "risk_svc" {
  name                 = "fenlum-1bmogc-risk-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "risk_svc__risk_data_rw" {
  role       = aws_iam_role.risk_svc.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "risk_svc__risk_ops" {
  role       = aws_iam_role.risk_svc.name
  policy_arn = aws_iam_policy.risk_ops.arn
}

resource "aws_iam_instance_profile" "risk_svc" {
  name = "fenlum-1bmogc-risk-svc"
  role = aws_iam_role.risk_svc.name
}

resource "aws_iam_role" "security_audit_role" {
  name                 = "fenlum-1bmogc-security-audit-role"
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

resource "aws_iam_role" "trading_2_audit_svc" {
  name                 = "fenlum-1bmogc-trading-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_audit_svc__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_audit_svc.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_audit_svc256" {
  name                 = "fenlum-1bmogc-trading-2-audit-svc256"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_audit_svc256__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_audit_svc256.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_audit_svc496" {
  name                 = "fenlum-1bmogc-trading-2-audit-svc496"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_audit_svc496__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_audit_svc496.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_deploy" {
  name                 = "fenlum-1bmogc-trading-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.ali5918" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.lopez" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.muller505" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_deploy__trading_2_ops" {
  role       = aws_iam_role.trading_2_deploy.name
  policy_arn = aws_iam_policy.trading_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_2_deploy__trading_2_deploy_perms" {
  role       = aws_iam_role.trading_2_deploy.name
  policy_arn = aws_iam_policy.trading_2_deploy_perms.arn
}

resource "aws_iam_role" "trading_2_ledger_svc" {
  name                 = "fenlum-1bmogc-trading-2-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_ledger_svc__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_ledger_svc.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_ledger_svc416" {
  name                 = "fenlum-1bmogc-trading-2-ledger-svc416"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_ledger_svc416__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_ledger_svc416.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_statements_svc" {
  name                 = "fenlum-1bmogc-trading-2-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_statements_svc__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_statements_svc.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_statements_svc336" {
  name                 = "fenlum-1bmogc-trading-2-statements-svc336"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_statements_svc336__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_statements_svc336.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role" "trading_2_svc" {
  name                 = "fenlum-1bmogc-trading-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_2_svc__trading_2_data_rw" {
  role       = aws_iam_role.trading_2_svc.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_2_svc__trading_2_ops" {
  role       = aws_iam_role.trading_2_svc.name
  policy_arn = aws_iam_policy.trading_2_ops.arn
}

resource "aws_iam_instance_profile" "trading_2_svc" {
  name = "fenlum-1bmogc-trading-2-svc"
  role = aws_iam_role.trading_2_svc.name
}

resource "aws_iam_role" "trading_3_deploy" {
  name                 = "fenlum-1bmogc-trading-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.khan" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-heidi.nguyen6915" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.silva1530" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.davis3541" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_deploy__trading_3_ops" {
  role       = aws_iam_role.trading_3_deploy.name
  policy_arn = aws_iam_policy.trading_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_3_deploy__trading_3_deploy_perms" {
  role       = aws_iam_role.trading_3_deploy.name
  policy_arn = aws_iam_policy.trading_3_deploy_perms.arn
}

resource "aws_iam_role" "trading_3_nb_role" {
  name                 = "fenlum-1bmogc-trading-3-nb-role"
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

resource "aws_iam_role_policy_attachment" "trading_3_nb_role__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_nb_role.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_3_nb_role__trading_3_ops" {
  role       = aws_iam_role.trading_3_nb_role.name
  policy_arn = aws_iam_policy.trading_3_ops.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc108" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc108"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc108__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc108.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc188" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc188"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc188__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc188.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc268" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc268"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc268__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc268.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc348" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc348"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc348__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc348.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc428" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc428"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc428__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc428.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_risk_models_svc508" {
  name                 = "fenlum-1bmogc-trading-3-risk-models-svc508"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_risk_models_svc508__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_risk_models_svc508.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role" "trading_3_svc" {
  name                 = "fenlum-1bmogc-trading-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_3_svc__trading_3_data_rw" {
  role       = aws_iam_role.trading_3_svc.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_3_svc__trading_3_ops" {
  role       = aws_iam_role.trading_3_svc.name
  policy_arn = aws_iam_policy.trading_3_ops.arn
}

resource "aws_iam_instance_profile" "trading_3_svc" {
  name = "fenlum-1bmogc-trading-3-svc"
  role = aws_iam_role.trading_3_svc.name
}

resource "aws_iam_role" "trading_4_deploy" {
  name                 = "fenlum-1bmogc-trading-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.wong761" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-erin.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.haddad2400" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_deploy__trading_4_ops" {
  role       = aws_iam_role.trading_4_deploy.name
  policy_arn = aws_iam_policy.trading_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_4_deploy__trading_4_deploy_perms" {
  role       = aws_iam_role.trading_4_deploy.name
  policy_arn = aws_iam_policy.trading_4_deploy_perms.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc120" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc120"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc120__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc120.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc200" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc200"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc200__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc200.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc280" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc280"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc280__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc280.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc360" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc360"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc360__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc360.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc440" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc440"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc440__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc440.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_kyc_docs_svc520" {
  name                 = "fenlum-1bmogc-trading-4-kyc-docs-svc520"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_kyc_docs_svc520__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_kyc_docs_svc520.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role" "trading_4_svc" {
  name                 = "fenlum-1bmogc-trading-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_4_svc__trading_4_data_rw" {
  role       = aws_iam_role.trading_4_svc.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_4_svc__trading_4_ops" {
  role       = aws_iam_role.trading_4_svc.name
  policy_arn = aws_iam_policy.trading_4_ops.arn
}

resource "aws_iam_instance_profile" "trading_4_svc" {
  name = "fenlum-1bmogc-trading-4-svc"
  role = aws_iam_role.trading_4_svc.name
}

resource "aws_iam_role" "trading_5_deploy" {
  name                 = "fenlum-1bmogc-trading-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.cohen9188" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-xia.lopez4748" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-jun.okafor335" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_deploy__trading_5_ops" {
  role       = aws_iam_role.trading_5_deploy.name
  policy_arn = aws_iam_policy.trading_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_5_deploy__trading_5_deploy_perms" {
  role       = aws_iam_role.trading_5_deploy.name
  policy_arn = aws_iam_policy.trading_5_deploy_perms.arn
}

resource "aws_iam_role" "trading_5_glue_role" {
  name                 = "fenlum-1bmogc-trading-5-glue-role"
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

resource "aws_iam_role_policy_attachment" "trading_5_glue_role__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_glue_role.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_5_glue_role__trading_5_ops" {
  role       = aws_iam_role.trading_5_glue_role.name
  policy_arn = aws_iam_policy.trading_5_ops.arn
}

resource "aws_iam_role" "trading_5_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-trading-5-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_kyc_docs_svc__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_kyc_docs_svc.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_kyc_docs_svc212" {
  name                 = "fenlum-1bmogc-trading-5-kyc-docs-svc212"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_kyc_docs_svc212__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_kyc_docs_svc212.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_kyc_docs_svc372" {
  name                 = "fenlum-1bmogc-trading-5-kyc-docs-svc372"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_kyc_docs_svc372__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_kyc_docs_svc372.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_statements_svc" {
  name                 = "fenlum-1bmogc-trading-5-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_statements_svc__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_statements_svc.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_statements_svc292" {
  name                 = "fenlum-1bmogc-trading-5-statements-svc292"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_statements_svc292__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_statements_svc292.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_statements_svc452" {
  name                 = "fenlum-1bmogc-trading-5-statements-svc452"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_statements_svc452__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_statements_svc452.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role" "trading_5_svc" {
  name                 = "fenlum-1bmogc-trading-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_5_svc__trading_5_data_rw" {
  role       = aws_iam_role.trading_5_svc.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_5_svc__trading_5_ops" {
  role       = aws_iam_role.trading_5_svc.name
  policy_arn = aws_iam_policy.trading_5_ops.arn
}

resource "aws_iam_instance_profile" "trading_5_svc" {
  name = "fenlum-1bmogc-trading-5-svc"
  role = aws_iam_role.trading_5_svc.name
}

resource "aws_iam_role" "trading_6_deploy" {
  name                 = "fenlum-1bmogc-trading-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-alice.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.garcia1501" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.sato" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-priya.muller5741" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_deploy__trading_6_ops" {
  role       = aws_iam_role.trading_6_deploy.name
  policy_arn = aws_iam_policy.trading_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_6_deploy__trading_6_deploy_perms" {
  role       = aws_iam_role.trading_6_deploy.name
  policy_arn = aws_iam_policy.trading_6_deploy_perms.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc144" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc144"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc144__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc144.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc224" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc224"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc224__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc224.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc304" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc304"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc304__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc304.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc384" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc384"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc384__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc384.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_risk_models_svc464" {
  name                 = "fenlum-1bmogc-trading-6-risk-models-svc464"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_risk_models_svc464__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_risk_models_svc464.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role" "trading_6_stack_role" {
  name                 = "fenlum-1bmogc-trading-6-stack-role"
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

resource "aws_iam_role_policy_attachment" "trading_6_stack_role__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_stack_role.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_6_stack_role__trading_6_ops" {
  role       = aws_iam_role.trading_6_stack_role.name
  policy_arn = aws_iam_policy.trading_6_ops.arn
}

resource "aws_iam_role" "trading_6_svc" {
  name                 = "fenlum-1bmogc-trading-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_6_svc__trading_6_data_rw" {
  role       = aws_iam_role.trading_6_svc.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_6_svc__trading_6_ops" {
  role       = aws_iam_role.trading_6_svc.name
  policy_arn = aws_iam_policy.trading_6_ops.arn
}

resource "aws_iam_instance_profile" "trading_6_svc" {
  name = "fenlum-1bmogc-trading-6-svc"
  role = aws_iam_role.trading_6_svc.name
}

resource "aws_iam_role" "trading_7_deploy" {
  name                 = "fenlum-1bmogc-trading-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-grace.gupta2030" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-tom.kim8219" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.muller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.larsen6569" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_deploy__trading_7_ops" {
  role       = aws_iam_role.trading_7_deploy.name
  policy_arn = aws_iam_policy.trading_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_7_deploy__trading_7_deploy_perms" {
  role       = aws_iam_role.trading_7_deploy.name
  policy_arn = aws_iam_policy.trading_7_deploy_perms.arn
}

resource "aws_iam_role" "trading_7_ledger_svc" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_ledger_svc156" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc156"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc156__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc156.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_ledger_svc236" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc236"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc236__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc236.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_ledger_svc316" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc316"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc316__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc316.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_ledger_svc396" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc396"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc396__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc396.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_ledger_svc476" {
  name                 = "fenlum-1bmogc-trading-7-ledger-svc476"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_ledger_svc476__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_ledger_svc476.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role" "trading_7_svc" {
  name                 = "fenlum-1bmogc-trading-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_7_svc__trading_7_data_rw" {
  role       = aws_iam_role.trading_7_svc.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_7_svc__trading_7_ops" {
  role       = aws_iam_role.trading_7_svc.name
  policy_arn = aws_iam_policy.trading_7_ops.arn
}

resource "aws_iam_instance_profile" "trading_7_svc" {
  name = "fenlum-1bmogc-trading-7-svc"
  role = aws_iam_role.trading_7_svc.name
}

resource "aws_iam_role" "trading_deploy" {
  name                 = "fenlum-1bmogc-trading-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bob.lopez7577" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mike.dubois" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_deploy__trading_ops" {
  role       = aws_iam_role.trading_deploy.name
  policy_arn = aws_iam_policy.trading_ops.arn
}

resource "aws_iam_role_policy_attachment" "trading_deploy__trading_deploy_perms" {
  role       = aws_iam_role.trading_deploy.name
  policy_arn = aws_iam_policy.trading_deploy_perms.arn
}

resource "aws_iam_role" "trading_svc" {
  name                 = "fenlum-1bmogc-trading-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_svc__trading_data_rw" {
  role       = aws_iam_role.trading_svc.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "trading_svc__trading_ops" {
  role       = aws_iam_role.trading_svc.name
  policy_arn = aws_iam_policy.trading_ops.arn
}

resource "aws_iam_instance_profile" "trading_svc" {
  name = "fenlum-1bmogc-trading-svc"
  role = aws_iam_role.trading_svc.name
}

resource "aws_iam_role" "trading_tx_archive_svc" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc164" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc164"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc164__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc164.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc244" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc244"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc244__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc244.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc324" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc324"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc324__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc324.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc404" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc404"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc404__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc404.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc484" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc484"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc484__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc484.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "trading_tx_archive_svc84" {
  name                 = "fenlum-1bmogc-trading-tx-archive-svc84"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "trading_tx_archive_svc84__trading_data_rw" {
  role       = aws_iam_role.trading_tx_archive_svc84.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_role" "treasury_2_audit_svc" {
  name                 = "fenlum-1bmogc-treasury-2-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_audit_svc__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_audit_svc.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_audit_svc257" {
  name                 = "fenlum-1bmogc-treasury-2-audit-svc257"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_audit_svc257__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_audit_svc257.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_audit_svc417" {
  name                 = "fenlum-1bmogc-treasury-2-audit-svc417"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_audit_svc417__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_audit_svc417.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_deploy" {
  name                 = "fenlum-1bmogc-treasury-2-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.haddad" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.ali9290" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-zed.cohen9769" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.kim4044" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_deploy__treasury_2_ops" {
  role       = aws_iam_role.treasury_2_deploy.name
  policy_arn = aws_iam_policy.treasury_2_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_2_deploy__treasury_2_deploy_perms" {
  role       = aws_iam_role.treasury_2_deploy.name
  policy_arn = aws_iam_policy.treasury_2_deploy_perms.arn
}

resource "aws_iam_role" "treasury_2_svc" {
  name                 = "fenlum-1bmogc-treasury-2-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_svc__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_svc.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_2_svc__treasury_2_ops" {
  role       = aws_iam_role.treasury_2_svc.name
  policy_arn = aws_iam_policy.treasury_2_ops.arn
}

resource "aws_iam_instance_profile" "treasury_2_svc" {
  name = "fenlum-1bmogc-treasury-2-svc"
  role = aws_iam_role.treasury_2_svc.name
}

resource "aws_iam_role" "treasury_2_tx_archive_svc" {
  name                 = "fenlum-1bmogc-treasury-2-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_tx_archive_svc__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_tx_archive_svc.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_tx_archive_svc177" {
  name                 = "fenlum-1bmogc-treasury-2-tx-archive-svc177"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_tx_archive_svc177__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_tx_archive_svc177.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_tx_archive_svc337" {
  name                 = "fenlum-1bmogc-treasury-2-tx-archive-svc337"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_tx_archive_svc337__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_tx_archive_svc337.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_2_tx_archive_svc497" {
  name                 = "fenlum-1bmogc-treasury-2-tx-archive-svc497"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_2_tx_archive_svc497__treasury_2_data_rw" {
  role       = aws_iam_role.treasury_2_tx_archive_svc497.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_role" "treasury_3_deploy" {
  name                 = "fenlum-1bmogc-treasury-3-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-uma.jones" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.brown3326" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-chen.nguyen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.kim" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_deploy__treasury_3_ops" {
  role       = aws_iam_role.treasury_3_deploy.name
  policy_arn = aws_iam_policy.treasury_3_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_3_deploy__treasury_3_deploy_perms" {
  role       = aws_iam_role.treasury_3_deploy.name
  policy_arn = aws_iam_policy.treasury_3_deploy_perms.arn
}

resource "aws_iam_role" "treasury_3_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-treasury-3-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_kyc_docs_svc__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_kyc_docs_svc.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_kyc_docs_svc429" {
  name                 = "fenlum-1bmogc-treasury-3-kyc-docs-svc429"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_kyc_docs_svc429__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_kyc_docs_svc429.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_ledger_svc" {
  name                 = "fenlum-1bmogc-treasury-3-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_ledger_svc__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_ledger_svc.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_ledger_svc349" {
  name                 = "fenlum-1bmogc-treasury-3-ledger-svc349"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_ledger_svc349__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_ledger_svc349.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_svc" {
  name                 = "fenlum-1bmogc-treasury-3-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_svc__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_svc.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_3_svc__treasury_3_ops" {
  role       = aws_iam_role.treasury_3_svc.name
  policy_arn = aws_iam_policy.treasury_3_ops.arn
}

resource "aws_iam_instance_profile" "treasury_3_svc" {
  name = "fenlum-1bmogc-treasury-3-svc"
  role = aws_iam_role.treasury_3_svc.name
}

resource "aws_iam_role" "treasury_3_tx_archive_svc" {
  name                 = "fenlum-1bmogc-treasury-3-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_tx_archive_svc__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_tx_archive_svc.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_tx_archive_svc269" {
  name                 = "fenlum-1bmogc-treasury-3-tx-archive-svc269"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_tx_archive_svc269__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_tx_archive_svc269.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_3_tx_archive_svc509" {
  name                 = "fenlum-1bmogc-treasury-3-tx-archive-svc509"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_3_tx_archive_svc509__treasury_3_data_rw" {
  role       = aws_iam_role.treasury_3_tx_archive_svc509.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_role" "treasury_4_deploy" {
  name                 = "fenlum-1bmogc-treasury-4-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ian.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.singh" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-omar.reddy" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.nguyen6717" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_deploy__treasury_4_ops" {
  role       = aws_iam_role.treasury_4_deploy.name
  policy_arn = aws_iam_policy.treasury_4_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_4_deploy__treasury_4_deploy_perms" {
  role       = aws_iam_role.treasury_4_deploy.name
  policy_arn = aws_iam_policy.treasury_4_deploy_perms.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc121" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc121"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc121__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc121.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc201" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc201"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc201__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc201.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc281" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc281"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc281__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc281.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc361" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc361"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc361__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc361.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc441" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc441"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc441__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc441.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_kyc_docs_svc521" {
  name                 = "fenlum-1bmogc-treasury-4-kyc-docs-svc521"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_kyc_docs_svc521__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_kyc_docs_svc521.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role" "treasury_4_svc" {
  name                 = "fenlum-1bmogc-treasury-4-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_4_svc__treasury_4_data_rw" {
  role       = aws_iam_role.treasury_4_svc.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_4_svc__treasury_4_ops" {
  role       = aws_iam_role.treasury_4_svc.name
  policy_arn = aws_iam_policy.treasury_4_ops.arn
}

resource "aws_iam_instance_profile" "treasury_4_svc" {
  name = "fenlum-1bmogc-treasury-4-svc"
  role = aws_iam_role.treasury_4_svc.name
}

resource "aws_iam_role" "treasury_5_audit_svc" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_audit_svc133" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc133"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc133__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc133.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_audit_svc213" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc213"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc213__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc213.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_audit_svc293" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc293"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc293__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc293.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_audit_svc373" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc373"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc373__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc373.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_audit_svc453" {
  name                 = "fenlum-1bmogc-treasury-5-audit-svc453"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_audit_svc453__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_audit_svc453.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role" "treasury_5_deploy" {
  name                 = "fenlum-1bmogc-treasury-5-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-kia.miller" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-bela.davis" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-ivan.sato518" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.ivanov2236" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_deploy__treasury_5_ops" {
  role       = aws_iam_role.treasury_5_deploy.name
  policy_arn = aws_iam_policy.treasury_5_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_5_deploy__treasury_5_deploy_perms" {
  role       = aws_iam_role.treasury_5_deploy.name
  policy_arn = aws_iam_policy.treasury_5_deploy_perms.arn
}

resource "aws_iam_role" "treasury_5_svc" {
  name                 = "fenlum-1bmogc-treasury-5-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_5_svc__treasury_5_data_rw" {
  role       = aws_iam_role.treasury_5_svc.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_5_svc__treasury_5_ops" {
  role       = aws_iam_role.treasury_5_svc.name
  policy_arn = aws_iam_policy.treasury_5_ops.arn
}

resource "aws_iam_instance_profile" "treasury_5_svc" {
  name = "fenlum-1bmogc-treasury-5-svc"
  role = aws_iam_role.treasury_5_svc.name
}

resource "aws_iam_role" "treasury_6_deploy" {
  name                 = "fenlum-1bmogc-treasury-6-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.larsen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dave.larsen5590" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-wen.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-nina.smith" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_deploy__treasury_6_ops" {
  role       = aws_iam_role.treasury_6_deploy.name
  policy_arn = aws_iam_policy.treasury_6_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_6_deploy__treasury_6_deploy_perms" {
  role       = aws_iam_role.treasury_6_deploy.name
  policy_arn = aws_iam_policy.treasury_6_deploy_perms.arn
}

resource "aws_iam_role" "treasury_6_svc" {
  name                 = "fenlum-1bmogc-treasury-6-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_svc__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_svc.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_6_svc__treasury_6_ops" {
  role       = aws_iam_role.treasury_6_svc.name
  policy_arn = aws_iam_policy.treasury_6_ops.arn
}

resource "aws_iam_instance_profile" "treasury_6_svc" {
  name = "fenlum-1bmogc-treasury-6-svc"
  role = aws_iam_role.treasury_6_svc.name
}

resource "aws_iam_role" "treasury_6_tx_archive_svc" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_6_tx_archive_svc145" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc145"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc145__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc145.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_6_tx_archive_svc225" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc225"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc225__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc225.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_6_tx_archive_svc305" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc305"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc305__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc305.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_6_tx_archive_svc385" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc385"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc385__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc385.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_6_tx_archive_svc465" {
  name                 = "fenlum-1bmogc-treasury-6-tx-archive-svc465"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_6_tx_archive_svc465__treasury_6_data_rw" {
  role       = aws_iam_role.treasury_6_tx_archive_svc465.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_role" "treasury_7_audit_svc" {
  name                 = "fenlum-1bmogc-treasury-7-audit-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_audit_svc__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_audit_svc.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_audit_svc237" {
  name                 = "fenlum-1bmogc-treasury-7-audit-svc237"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_audit_svc237__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_audit_svc237.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_audit_svc397" {
  name                 = "fenlum-1bmogc-treasury-7-audit-svc397"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_audit_svc397__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_audit_svc397.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_deploy" {
  name                 = "fenlum-1bmogc-treasury-7-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-erin.mehta" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-eli.brown" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-dara.kim9917" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-carol.novak3560" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_deploy__treasury_7_ops" {
  role       = aws_iam_role.treasury_7_deploy.name
  policy_arn = aws_iam_policy.treasury_7_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_7_deploy__treasury_7_deploy_perms" {
  role       = aws_iam_role.treasury_7_deploy.name
  policy_arn = aws_iam_policy.treasury_7_deploy_perms.arn
}

resource "aws_iam_role" "treasury_7_ledger_svc" {
  name                 = "fenlum-1bmogc-treasury-7-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_ledger_svc__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_ledger_svc.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_ledger_svc317" {
  name                 = "fenlum-1bmogc-treasury-7-ledger-svc317"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_ledger_svc317__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_ledger_svc317.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_ledger_svc477" {
  name                 = "fenlum-1bmogc-treasury-7-ledger-svc477"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_ledger_svc477__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_ledger_svc477.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role" "treasury_7_svc" {
  name                 = "fenlum-1bmogc-treasury-7-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_7_svc__treasury_7_data_rw" {
  role       = aws_iam_role.treasury_7_svc.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_7_svc__treasury_7_ops" {
  role       = aws_iam_role.treasury_7_svc.name
  policy_arn = aws_iam_policy.treasury_7_ops.arn
}

resource "aws_iam_instance_profile" "treasury_7_svc" {
  name = "fenlum-1bmogc-treasury-7-svc"
  role = aws_iam_role.treasury_7_svc.name
}

resource "aws_iam_role" "treasury_deploy" {
  name                 = "fenlum-1bmogc-treasury-deploy"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:role/fenlum-1bmogc-ci-runner" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-gus.smith" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-fay.okafor" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-mei.chen" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${local.account_id}:user/fenlum-1bmogc-lena.rossi6591" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_deploy__treasury_ops" {
  role       = aws_iam_role.treasury_deploy.name
  policy_arn = aws_iam_policy.treasury_ops.arn
}

resource "aws_iam_role_policy_attachment" "treasury_deploy__treasury_deploy_perms" {
  role       = aws_iam_role.treasury_deploy.name
  policy_arn = aws_iam_policy.treasury_deploy_perms.arn
}

resource "aws_iam_role" "treasury_glue_role" {
  name                 = "fenlum-1bmogc-treasury-glue-role"
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

resource "aws_iam_role_policy_attachment" "treasury_glue_role__treasury_data_rw" {
  role       = aws_iam_role.treasury_glue_role.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_glue_role__treasury_ops" {
  role       = aws_iam_role.treasury_glue_role.name
  policy_arn = aws_iam_policy.treasury_ops.arn
}

resource "aws_iam_role" "treasury_ledger_svc" {
  name                 = "fenlum-1bmogc-treasury-ledger-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_ledger_svc__treasury_data_rw" {
  role       = aws_iam_role.treasury_ledger_svc.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_ledger_svc405" {
  name                 = "fenlum-1bmogc-treasury-ledger-svc405"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_ledger_svc405__treasury_data_rw" {
  role       = aws_iam_role.treasury_ledger_svc405.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_risk_models_svc" {
  name                 = "fenlum-1bmogc-treasury-risk-models-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_risk_models_svc__treasury_data_rw" {
  role       = aws_iam_role.treasury_risk_models_svc.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_risk_models_svc325" {
  name                 = "fenlum-1bmogc-treasury-risk-models-svc325"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_risk_models_svc325__treasury_data_rw" {
  role       = aws_iam_role.treasury_risk_models_svc325.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_statements_svc" {
  name                 = "fenlum-1bmogc-treasury-statements-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_statements_svc__treasury_data_rw" {
  role       = aws_iam_role.treasury_statements_svc.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_statements_svc245" {
  name                 = "fenlum-1bmogc-treasury-statements-svc245"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_statements_svc245__treasury_data_rw" {
  role       = aws_iam_role.treasury_statements_svc245.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_statements_svc485" {
  name                 = "fenlum-1bmogc-treasury-statements-svc485"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_statements_svc485__treasury_data_rw" {
  role       = aws_iam_role.treasury_statements_svc485.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role" "treasury_svc" {
  name                 = "fenlum-1bmogc-treasury-svc"
  assume_role_policy   = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action    = "sts:AssumeRole"
    },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "treasury_svc__treasury_data_rw" {
  role       = aws_iam_role.treasury_svc.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_role_policy_attachment" "treasury_svc__treasury_ops" {
  role       = aws_iam_role.treasury_svc.name
  policy_arn = aws_iam_policy.treasury_ops.arn
}

resource "aws_iam_instance_profile" "treasury_svc" {
  name = "fenlum-1bmogc-treasury-svc"
  role = aws_iam_role.treasury_svc.name
}
