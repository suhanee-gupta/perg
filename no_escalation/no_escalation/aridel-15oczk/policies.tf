resource "aws_iam_policy" "admin_all" {
  name   = "aridel-15oczk-admin-all"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["*"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_data_rw" {
  name   = "aridel-15oczk-api-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-api-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_deploy_perms" {
  name   = "aridel-15oczk-api-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-api-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-api-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-api-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_ops" {
  name   = "aridel-15oczk-api-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_read" {
  name   = "aridel-15oczk-api-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-api-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_data_rw" {
  name   = "aridel-15oczk-api-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Query", "dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-api-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_deploy_perms" {
  name   = "aridel-15oczk-api-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-api-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-api-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-api-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_ops" {
  name   = "aridel-15oczk-api-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_read" {
  name   = "aridel-15oczk-api-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-api-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_data_rw" {
  name   = "aridel-15oczk-auth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-auth-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-auth-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_deploy_perms" {
  name   = "aridel-15oczk-auth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-auth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-auth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-auth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_ops" {
  name   = "aridel-15oczk-auth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_read" {
  name   = "aridel-15oczk-auth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-auth-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-auth-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_data_rw" {
  name   = "aridel-15oczk-auth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-auth-exports", "arn:aws:s3:::aridel-15oczk-auth-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/auth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_deploy_perms" {
  name   = "aridel-15oczk-auth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-auth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-auth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-auth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_ops" {
  name   = "aridel-15oczk-auth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_read" {
  name   = "aridel-15oczk-auth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::aridel-15oczk-auth-analytics", "arn:aws:s3:::aridel-15oczk-auth-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/auth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "aridel-15oczk-base-readonly"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ec2:Describe*", "cloudwatch:Get*", "cloudwatch:List*", "s3:ListAllMyBuckets", "logs:Describe*"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_data_rw" {
  name   = "aridel-15oczk-billing-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:PutItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-billing-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_deploy_perms" {
  name   = "aridel-15oczk-billing-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-billing-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-billing-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-billing-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_ops" {
  name   = "aridel-15oczk-billing-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_read" {
  name   = "aridel-15oczk-billing-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-billing-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_data_rw" {
  name   = "aridel-15oczk-billing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-billing-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-billing-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_deploy_perms" {
  name   = "aridel-15oczk-billing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-billing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-billing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-billing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_ops" {
  name   = "aridel-15oczk-billing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_read" {
  name   = "aridel-15oczk-billing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-billing-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-billing-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "aridel-15oczk-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_data_rw" {
  name   = "aridel-15oczk-data-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-data-2-exports", "arn:aws:s3:::aridel-15oczk-data-2-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-data-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-data-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/data-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_deploy_perms" {
  name   = "aridel-15oczk-data-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-data-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-data-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-data-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_ops" {
  name   = "aridel-15oczk-data-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_read" {
  name   = "aridel-15oczk-data-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-data-2-logs", "arn:aws:s3:::aridel-15oczk-data-2-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-data-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-data-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/data-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_data_rw" {
  name   = "aridel-15oczk-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-data-logs", "arn:aws:s3:::aridel-15oczk-data-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_deploy_perms" {
  name   = "aridel-15oczk-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_ops" {
  name   = "aridel-15oczk-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_read" {
  name   = "aridel-15oczk-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::aridel-15oczk-data-logs", "arn:aws:s3:::aridel-15oczk-data-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_data_rw" {
  name   = "aridel-15oczk-growth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-growth-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:PutObject", "s3:AbortMultipartUpload", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-growth-2-logs", "arn:aws:s3:::aridel-15oczk-growth-2-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_deploy_perms" {
  name   = "aridel-15oczk-growth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-growth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-growth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-growth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_ops" {
  name   = "aridel-15oczk-growth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_read" {
  name   = "aridel-15oczk-growth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-growth-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::aridel-15oczk-growth-2-logs", "arn:aws:s3:::aridel-15oczk-growth-2-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_data_rw" {
  name   = "aridel-15oczk-growth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::aridel-15oczk-growth-logs", "arn:aws:s3:::aridel-15oczk-growth-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:UpdateItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-growth-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_deploy_perms" {
  name   = "aridel-15oczk-growth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-growth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-growth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-growth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_ops" {
  name   = "aridel-15oczk-growth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_read" {
  name   = "aridel-15oczk-growth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::aridel-15oczk-growth-logs", "arn:aws:s3:::aridel-15oczk-growth-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-growth-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_data_rw" {
  name   = "aridel-15oczk-infra-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:PutObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-infra-2-analytics", "arn:aws:s3:::aridel-15oczk-infra-2-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-infra-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_deploy_perms" {
  name   = "aridel-15oczk-infra-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-infra-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-infra-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-infra-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_ops" {
  name   = "aridel-15oczk-infra-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/infra-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/infra-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_read" {
  name   = "aridel-15oczk-infra-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-infra-2-analytics", "arn:aws:s3:::aridel-15oczk-infra-2-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-infra-2-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_data_rw" {
  name   = "aridel-15oczk-infra-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-infra-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_deploy_perms" {
  name   = "aridel-15oczk-infra-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-infra-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-infra-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-infra-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_ops" {
  name   = "aridel-15oczk-infra-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_read" {
  name   = "aridel-15oczk-infra-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-infra-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p11" {
  name   = "aridel-15oczk-inj-legacy-p11"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ec2:Describe*", "s3:List*"]
      Resource = ["*"]
    },
  ]
  })
}

resource "terraform_data" "inj_legacy_p11__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p11.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p11.arn} --policy-document '${self.input}'"
  }
  input = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect   = "Allow"
          Action   = ["*"]
          Resource = ["*"]
        },
      ]
      })
}

resource "aws_iam_policy" "inj_legacy_p3" {
  name   = "aridel-15oczk-inj-legacy-p3"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ec2:Describe*", "s3:List*"]
      Resource = ["*"]
    },
  ]
  })
}

resource "terraform_data" "inj_legacy_p3__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p3.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p3.arn} --policy-document '${self.input}'"
  }
  input = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect   = "Allow"
          Action   = ["ec2:Describe*", "s3:List*", "s3:Get*"]
          Resource = ["*"]
        },
      ]
      })
}

resource "aws_iam_policy" "inj_pol_p12" {
  name   = "aridel-15oczk-inj-pol-p12"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/aridel-15oczk-inj-legacy-p11"]
      Condition = {
        Bool = { "aws:MultiFactorAuthPresent" = ["true"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p15" {
  name   = "aridel-15oczk-inj-pol-p15"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:StartSession"]
      Resource = ["arn:aws:ec2:${var.region}:${local.account_id}:instance/${aws_instance.inj_ec2_w14.id}"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p16" {
  name   = "aridel-15oczk-inj-pol-p16"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-ec2-exec-r13"]
      Condition = {
        DateLessThan = { "aws:TokenIssueTime" = ["2020-01-01T00:00:01Z"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p17" {
  name   = "aridel-15oczk-inj-pol-p17"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-web-2-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p2" {
  name   = "aridel-15oczk-inj-pol-p2"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-lambda-exec-r1"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:InvokeFunction"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p20" {
  name   = "aridel-15oczk-inj-pol-p20"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:UpdateAssumeRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-trust-edit-r19"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p21" {
  name   = "aridel-15oczk-inj-pol-p21"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutRolePolicy"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p4" {
  name   = "aridel-15oczk-inj-pol-p4"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/aridel-15oczk-inj-legacy-p3"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p6" {
  name   = "aridel-15oczk-inj-pol-p6"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-datapipeline-exec-r5"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p7" {
  name   = "aridel-15oczk-inj-pol-p7"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["datapipeline:CreatePipeline", "datapipeline:PutPipelineDefinition", "datapipeline:ActivatePipeline"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p9" {
  name   = "aridel-15oczk-inj-pol-p9"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-inj-sagemaker-exec-r8"]
      Condition = {
        Bool = { "aws:SecureTransport" = ["true"] }
        StringEquals = { "iam:PassedToService" = ["sagemaker.amazonaws.com"] }
      }
    },
    {
      Effect   = "Allow"
      Action   = ["sagemaker:CreateNotebookInstance", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_data_rw" {
  name   = "aridel-15oczk-ml-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_deploy_perms" {
  name   = "aridel-15oczk-ml-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-ml-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-ml-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-ml-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-ml-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-ml-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_ops" {
  name   = "aridel-15oczk-ml-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_read" {
  name   = "aridel-15oczk-ml-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_data_rw" {
  name   = "aridel-15oczk-ml-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:PutObject", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:DeleteObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::aridel-15oczk-ml-analytics", "arn:aws:s3:::aridel-15oczk-ml-analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_deploy_perms" {
  name   = "aridel-15oczk-ml-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-ml-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-ml-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-ml-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_ops" {
  name   = "aridel-15oczk-ml-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_read" {
  name   = "aridel-15oczk-ml-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::aridel-15oczk-ml-backups", "arn:aws:s3:::aridel-15oczk-ml-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_data_rw" {
  name   = "aridel-15oczk-mobile-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-mobile-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_deploy_perms" {
  name   = "aridel-15oczk-mobile-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-mobile-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-mobile-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-mobile-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_ops" {
  name   = "aridel-15oczk-mobile-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_read" {
  name   = "aridel-15oczk-mobile-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-mobile-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_data_rw" {
  name   = "aridel-15oczk-mobile-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-mobile-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_deploy_perms" {
  name   = "aridel-15oczk-mobile-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-mobile-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-mobile-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-mobile-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_ops" {
  name   = "aridel-15oczk-mobile-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_read" {
  name   = "aridel-15oczk-mobile-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-mobile-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_data_rw" {
  name   = "aridel-15oczk-notifications-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::aridel-15oczk-notifications-2-logs", "arn:aws:s3:::aridel-15oczk-notifications-2-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-notifications-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-notifications-2-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_deploy_perms" {
  name   = "aridel-15oczk-notifications-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-notifications-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-notifications-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-notifications-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_ops" {
  name   = "aridel-15oczk-notifications-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_read" {
  name   = "aridel-15oczk-notifications-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::aridel-15oczk-notifications-2-backups", "arn:aws:s3:::aridel-15oczk-notifications-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-notifications-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-notifications-2-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_data_rw" {
  name   = "aridel-15oczk-notifications-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-notifications-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:DeleteObject", "s3:GetObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::aridel-15oczk-notifications-logs", "arn:aws:s3:::aridel-15oczk-notifications-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/notifications/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_deploy_perms" {
  name   = "aridel-15oczk-notifications-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-notifications-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-notifications-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-notifications-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_ops" {
  name   = "aridel-15oczk-notifications-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_read" {
  name   = "aridel-15oczk-notifications-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-notifications-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-notifications-uploads", "arn:aws:s3:::aridel-15oczk-notifications-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/notifications/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_data_rw" {
  name   = "aridel-15oczk-search-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-search-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/search-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_deploy_perms" {
  name   = "aridel-15oczk-search-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-search-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-search-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-search-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_ops" {
  name   = "aridel-15oczk-search-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_read" {
  name   = "aridel-15oczk-search-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-search-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/search-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_data_rw" {
  name   = "aridel-15oczk-search-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_deploy_perms" {
  name   = "aridel-15oczk-search-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-search-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-search-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-search-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_ops" {
  name   = "aridel-15oczk-search-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/search/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_read" {
  name   = "aridel-15oczk-search-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/search/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "aridel-15oczk-security-audit"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:Get*", "iam:List*", "config:Describe*", "cloudtrail:LookupEvents"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "self_service" {
  name   = "aridel-15oczk-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/aridel-15oczk-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_data_rw" {
  name   = "aridel-15oczk-support-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-support-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:AbortMultipartUpload", "s3:PutObject"]
      Resource = ["arn:aws:s3:::aridel-15oczk-support-2-exports", "arn:aws:s3:::aridel-15oczk-support-2-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-support-2-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_deploy_perms" {
  name   = "aridel-15oczk-support-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-support-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-support-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-support-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_ops" {
  name   = "aridel-15oczk-support-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_read" {
  name   = "aridel-15oczk-support-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-support-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::aridel-15oczk-support-2-backups", "arn:aws:s3:::aridel-15oczk-support-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-support-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_data_rw" {
  name   = "aridel-15oczk-support-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-support-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_deploy_perms" {
  name   = "aridel-15oczk-support-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-support-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-support-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-support-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_ops" {
  name   = "aridel-15oczk-support-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_read" {
  name   = "aridel-15oczk-support-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:aridel-15oczk-support-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_data_rw" {
  name   = "aridel-15oczk-web-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-web-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/web-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_deploy_perms" {
  name   = "aridel-15oczk-web-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-web-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-web-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-web-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_ops" {
  name   = "aridel-15oczk-web-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_read" {
  name   = "aridel-15oczk-web-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/aridel-15oczk-web-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/web-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_data_rw" {
  name   = "aridel-15oczk-web-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-web-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_deploy_perms" {
  name   = "aridel-15oczk-web-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/aridel-15oczk-web-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:aridel-15oczk-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/aridel-15oczk-web-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/aridel-15oczk-web-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_ops" {
  name   = "aridel-15oczk-web-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_read" {
  name   = "aridel-15oczk-web-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:aridel-15oczk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:aridel-15oczk-web-analytics"]
    },
  ]
  })
}
