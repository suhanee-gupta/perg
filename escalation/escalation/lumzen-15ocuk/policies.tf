resource "aws_iam_policy" "admin_all" {
  name   = "lumzen-15ocuk-admin-all"
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
  name   = "lumzen-15ocuk-api-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_deploy_perms" {
  name   = "lumzen-15ocuk-api-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-api-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-api-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-api-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_ops" {
  name   = "lumzen-15ocuk-api-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api-2/*"]
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
  name   = "lumzen-15ocuk-api-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_data_rw" {
  name   = "lumzen-15ocuk-api-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-api-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/api/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_deploy_perms" {
  name   = "lumzen-15ocuk-api-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-api-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-api-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-api-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_ops" {
  name   = "lumzen-15ocuk-api-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api/*"]
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
  name   = "lumzen-15ocuk-api-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-api-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/api/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_data_rw" {
  name   = "lumzen-15ocuk-auth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/auth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_deploy_perms" {
  name   = "lumzen-15ocuk-auth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-auth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-auth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-auth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_ops" {
  name   = "lumzen-15ocuk-auth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/auth-2/*"]
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
  name   = "lumzen-15ocuk-auth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/auth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_data_rw" {
  name   = "lumzen-15ocuk-auth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-auth-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:GetObject", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-auth-logs", "arn:aws:s3:::lumzen-15ocuk-auth-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:BatchGetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-auth-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/auth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_deploy_perms" {
  name   = "lumzen-15ocuk-auth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-auth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-auth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-auth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_ops" {
  name   = "lumzen-15ocuk-auth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/auth/*"]
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
  name   = "lumzen-15ocuk-auth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-auth-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-auth-backups", "arn:aws:s3:::lumzen-15ocuk-auth-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-auth-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/auth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "lumzen-15ocuk-base-readonly"
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
  name   = "lumzen-15ocuk-billing-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-billing-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-billing-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_deploy_perms" {
  name   = "lumzen-15ocuk-billing-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-billing-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-billing-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-billing-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_ops" {
  name   = "lumzen-15ocuk-billing-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/billing-2/*"]
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
  name   = "lumzen-15ocuk-billing-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-billing-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-billing-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_data_rw" {
  name   = "lumzen-15ocuk-billing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-billing-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_deploy_perms" {
  name   = "lumzen-15ocuk-billing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-billing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-billing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-billing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_ops" {
  name   = "lumzen-15ocuk-billing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/billing/*"]
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
  name   = "lumzen-15ocuk-billing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-billing-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "lumzen-15ocuk-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_data_rw" {
  name   = "lumzen-15ocuk-data-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_deploy_perms" {
  name   = "lumzen-15ocuk-data-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-data-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-data-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-data-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_ops" {
  name   = "lumzen-15ocuk-data-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/data-2/*"]
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
  name   = "lumzen-15ocuk-data-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_data_rw" {
  name   = "lumzen-15ocuk-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-data-backups", "arn:aws:s3:::lumzen-15ocuk-data-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-data-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-data-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_deploy_perms" {
  name   = "lumzen-15ocuk-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_ops" {
  name   = "lumzen-15ocuk-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/data/*"]
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
  name   = "lumzen-15ocuk-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-data-backups", "arn:aws:s3:::lumzen-15ocuk-data-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-data-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-data-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_data_rw" {
  name   = "lumzen-15ocuk-growth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-growth-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/growth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_deploy_perms" {
  name   = "lumzen-15ocuk-growth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-growth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-growth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-growth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_ops" {
  name   = "lumzen-15ocuk-growth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/growth-2/*"]
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
  name   = "lumzen-15ocuk-growth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-growth-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/growth-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_data_rw" {
  name   = "lumzen-15ocuk-growth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:DeleteObject", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-growth-exports", "arn:aws:s3:::lumzen-15ocuk-growth-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/growth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_deploy_perms" {
  name   = "lumzen-15ocuk-growth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-growth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-growth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-growth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_ops" {
  name   = "lumzen-15ocuk-growth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/growth/*"]
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
  name   = "lumzen-15ocuk-growth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-growth-analytics", "arn:aws:s3:::lumzen-15ocuk-growth-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/growth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_data_rw" {
  name   = "lumzen-15ocuk-infra-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-infra-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-infra-2-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_deploy_perms" {
  name   = "lumzen-15ocuk-infra-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-infra-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-infra-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-infra-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_ops" {
  name   = "lumzen-15ocuk-infra-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/infra-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/infra-2/*"]
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
  name   = "lumzen-15ocuk-infra-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-infra-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-infra-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_data_rw" {
  name   = "lumzen-15ocuk-infra-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-infra-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-infra-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:PutObject", "s3:ListBucket", "s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-infra-backups", "arn:aws:s3:::lumzen-15ocuk-infra-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/infra/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_deploy_perms" {
  name   = "lumzen-15ocuk-infra-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-infra-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-infra-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-infra-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_ops" {
  name   = "lumzen-15ocuk-infra-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/infra/*"]
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
  name   = "lumzen-15ocuk-infra-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-infra-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-infra-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-infra-uploads", "arn:aws:s3:::lumzen-15ocuk-infra-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/infra/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p6" {
  name   = "lumzen-15ocuk-inj-legacy-p6"
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

resource "terraform_data" "inj_legacy_p6__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p6.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p6.arn} --policy-document '${self.input}'"
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

resource "aws_iam_policy" "inj_pol_p12" {
  name   = "lumzen-15ocuk-inj-pol-p12"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-inj-decoy"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p13" {
  name   = "lumzen-15ocuk-inj-pol-p13"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AttachRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-notifications-svc"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p2" {
  name   = "lumzen-15ocuk-inj-pol-p2"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AddUserToGroup"]
      Resource = ["arn:aws:iam::${local.account_id}:group/lumzen-15ocuk-inj-grp-g1"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p3" {
  name   = "lumzen-15ocuk-inj-pol-p3"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      NotAction = ["iam:Update*", "iam:Delete*", "account:*"]
      Resource = ["arn:aws:iam::${local.account_id}:group/lumzen-15ocuk-inj-grp-g1"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p5" {
  name   = "lumzen-15ocuk-inj-pol-p5"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AddUserToGroup"]
      Resource = ["arn:aws:iam::${local.account_id}:group/lumzen-15ocuk-inj-grp-g4"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p7" {
  name   = "lumzen-15ocuk-inj-pol-p7"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/lumzen-15ocuk-inj-legacy-p6"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p9" {
  name   = "lumzen-15ocuk-inj-pol-p9"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:UpdateAssumeRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-inj-trust-edit-r8"]
      Condition = {
        Bool = { "aws:MultiFactorAuthPresent" = ["true"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "ml_data_rw" {
  name   = "lumzen-15ocuk-ml-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-ml-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/ml/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_deploy_perms" {
  name   = "lumzen-15ocuk-ml-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-ml-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-ml-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-ml-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_ops" {
  name   = "lumzen-15ocuk-ml-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/ml/*"]
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
  name   = "lumzen-15ocuk-ml-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-ml-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/ml/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_data_rw" {
  name   = "lumzen-15ocuk-mobile-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-mobile-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-mobile-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_deploy_perms" {
  name   = "lumzen-15ocuk-mobile-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-mobile-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-mobile-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-mobile-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_ops" {
  name   = "lumzen-15ocuk-mobile-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile-2/*"]
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
  name   = "lumzen-15ocuk-mobile-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-mobile-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-mobile-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_data_rw" {
  name   = "lumzen-15ocuk-mobile-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-mobile-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_deploy_perms" {
  name   = "lumzen-15ocuk-mobile-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-mobile-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-mobile-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-mobile-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_ops" {
  name   = "lumzen-15ocuk-mobile-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile/*"]
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
  name   = "lumzen-15ocuk-mobile-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-mobile-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/mobile/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_data_rw" {
  name   = "lumzen-15ocuk-notifications-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:DeleteObject", "s3:PutObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-notifications-2-logs", "arn:aws:s3:::lumzen-15ocuk-notifications-2-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/notifications-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_deploy_perms" {
  name   = "lumzen-15ocuk-notifications-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-notifications-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-notifications-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-notifications-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_ops" {
  name   = "lumzen-15ocuk-notifications-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications-2/*"]
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
  name   = "lumzen-15ocuk-notifications-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-notifications-2-logs", "arn:aws:s3:::lumzen-15ocuk-notifications-2-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/notifications-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_data_rw" {
  name   = "lumzen-15ocuk-notifications-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-notifications-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_deploy_perms" {
  name   = "lumzen-15ocuk-notifications-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-notifications-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-notifications-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-notifications-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_ops" {
  name   = "lumzen-15ocuk-notifications-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications/*"]
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
  name   = "lumzen-15ocuk-notifications-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-notifications-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/notifications/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_data_rw" {
  name   = "lumzen-15ocuk-search-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:DeleteObject", "s3:PutObject", "s3:GetObject", "s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-search-2-logs", "arn:aws:s3:::lumzen-15ocuk-search-2-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_deploy_perms" {
  name   = "lumzen-15ocuk-search-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-search-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-search-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-search-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_ops" {
  name   = "lumzen-15ocuk-search-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/search-2/*"]
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
  name   = "lumzen-15ocuk-search-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-search-2-analytics", "arn:aws:s3:::lumzen-15ocuk-search-2-analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_data_rw" {
  name   = "lumzen-15ocuk-search-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-search-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-search-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_deploy_perms" {
  name   = "lumzen-15ocuk-search-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-search-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-search-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-search-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_ops" {
  name   = "lumzen-15ocuk-search-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/search/*"]
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
  name   = "lumzen-15ocuk-search-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-search-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/lumzen-15ocuk-search-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/search/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "lumzen-15ocuk-security-audit"
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
  name   = "lumzen-15ocuk-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/lumzen-15ocuk-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_data_rw" {
  name   = "lumzen-15ocuk-support-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-support-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-support-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/support-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_deploy_perms" {
  name   = "lumzen-15ocuk-support-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-support-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-support-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-support-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_ops" {
  name   = "lumzen-15ocuk-support-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/support-2/*"]
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
  name   = "lumzen-15ocuk-support-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-support-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-support-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/support-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_data_rw" {
  name   = "lumzen-15ocuk-support-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-support-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-support-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_deploy_perms" {
  name   = "lumzen-15ocuk-support-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-support-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-support-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-support-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_ops" {
  name   = "lumzen-15ocuk-support-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/support/*"]
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
  name   = "lumzen-15ocuk-support-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-support-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:lumzen-15ocuk-support-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/support/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_data_rw" {
  name   = "lumzen-15ocuk-web-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-web-2-backups", "arn:aws:s3:::lumzen-15ocuk-web-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-web-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_deploy_perms" {
  name   = "lumzen-15ocuk-web-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-web-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-web-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-web-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_ops" {
  name   = "lumzen-15ocuk-web-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web-2/*"]
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
  name   = "lumzen-15ocuk-web-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-web-2-backups", "arn:aws:s3:::lumzen-15ocuk-web-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:lumzen-15ocuk-web-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_data_rw" {
  name   = "lumzen-15ocuk-web-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-web-analytics", "arn:aws:s3:::lumzen-15ocuk-web-analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_deploy_perms" {
  name   = "lumzen-15ocuk-web-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/lumzen-15ocuk-web-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:lumzen-15ocuk-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/lumzen-15ocuk-web-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/lumzen-15ocuk-web-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_ops" {
  name   = "lumzen-15ocuk-web-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/lumzen-15ocuk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web/*"]
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
  name   = "lumzen-15ocuk-web-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:lumzen-15ocuk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/lumzen-15ocuk/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::lumzen-15ocuk-web-analytics", "arn:aws:s3:::lumzen-15ocuk-web-analytics/*"]
    },
  ]
  })
}
