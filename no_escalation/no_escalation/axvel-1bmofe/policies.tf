resource "aws_iam_policy" "admin_all" {
  name   = "axvel-1bmofe-admin-all"
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
  name   = "axvel-1bmofe-api-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:PutObject", "s3:ListBucket", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-2-analytics", "arn:aws:s3:::axvel-1bmofe-api-2-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_deploy_perms" {
  name   = "axvel-1bmofe-api-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_2_ops" {
  name   = "axvel-1bmofe-api-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-2/*"]
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
  name   = "axvel-1bmofe-api-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-2-analytics", "arn:aws:s3:::axvel-1bmofe-api-2-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_3_data_rw" {
  name   = "axvel-1bmofe-api-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:AbortMultipartUpload", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-3-assets", "arn:aws:s3:::axvel-1bmofe-api-3-assets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_3_deploy_perms" {
  name   = "axvel-1bmofe-api-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_3_ops" {
  name   = "axvel-1bmofe-api-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_3_read" {
  name   = "axvel-1bmofe-api-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-3-assets", "arn:aws:s3:::axvel-1bmofe-api-3-assets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_4_data_rw" {
  name   = "axvel-1bmofe-api-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-api-4-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-4-exports", "arn:aws:s3:::axvel-1bmofe-api-4-exports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_4_deploy_perms" {
  name   = "axvel-1bmofe-api-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_4_ops" {
  name   = "axvel-1bmofe-api-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_4_read" {
  name   = "axvel-1bmofe-api-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-api-4-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-4-backups", "arn:aws:s3:::axvel-1bmofe-api-4-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_5_data_rw" {
  name   = "axvel-1bmofe-api-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-api-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:PutObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-5-uploads", "arn:aws:s3:::axvel-1bmofe-api-5-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_5_deploy_perms" {
  name   = "axvel-1bmofe-api-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_5_ops" {
  name   = "axvel-1bmofe-api-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_5_read" {
  name   = "axvel-1bmofe-api-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-api-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-5-uploads", "arn:aws:s3:::axvel-1bmofe-api-5-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_6_data_rw" {
  name   = "axvel-1bmofe-api-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetObject", "s3:PutObject", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-6-analytics", "arn:aws:s3:::axvel-1bmofe-api-6-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-6-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/api-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_6_deploy_perms" {
  name   = "axvel-1bmofe-api-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_6_ops" {
  name   = "axvel-1bmofe-api-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_6_read" {
  name   = "axvel-1bmofe-api-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-6-analytics", "arn:aws:s3:::axvel-1bmofe-api-6-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-api-6-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/api-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_7_data_rw" {
  name   = "axvel-1bmofe-api-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetObject", "s3:ListBucket", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-7-backups", "arn:aws:s3:::axvel-1bmofe-api-7-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_7_deploy_perms" {
  name   = "axvel-1bmofe-api-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_7_ops" {
  name   = "axvel-1bmofe-api-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_7_read" {
  name   = "axvel-1bmofe-api-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-api-7-uploads", "arn:aws:s3:::axvel-1bmofe-api-7-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_data_rw" {
  name   = "axvel-1bmofe-api-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/api/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_deploy_perms" {
  name   = "axvel-1bmofe-api-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-api-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-api-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-api-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-api-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "api_ops" {
  name   = "axvel-1bmofe-api-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/api/*"]
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
  name   = "axvel-1bmofe-api-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/api/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/api/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_data_rw" {
  name   = "axvel-1bmofe-auth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation", "s3:PutObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-2-backups", "arn:aws:s3:::axvel-1bmofe-auth-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_deploy_perms" {
  name   = "axvel-1bmofe-auth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_2_ops" {
  name   = "axvel-1bmofe-auth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-2/*"]
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
  name   = "axvel-1bmofe-auth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-2-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-2-assets", "arn:aws:s3:::axvel-1bmofe-auth-2-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_3_data_rw" {
  name   = "axvel-1bmofe-auth-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-3-exports", "arn:aws:s3:::axvel-1bmofe-auth-3-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-3-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_3_deploy_perms" {
  name   = "axvel-1bmofe-auth-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_3_ops" {
  name   = "axvel-1bmofe-auth-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_3_read" {
  name   = "axvel-1bmofe-auth-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-3-exports", "arn:aws:s3:::axvel-1bmofe-auth-3-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-3-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_4_data_rw" {
  name   = "axvel-1bmofe-auth-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetObjectVersion", "s3:DeleteObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-4-exports", "arn:aws:s3:::axvel-1bmofe-auth-4-exports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_4_deploy_perms" {
  name   = "axvel-1bmofe-auth-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_4_ops" {
  name   = "axvel-1bmofe-auth-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_4_read" {
  name   = "axvel-1bmofe-auth-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-auth-4-exports", "arn:aws:s3:::axvel-1bmofe-auth-4-exports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_5_data_rw" {
  name   = "axvel-1bmofe-auth-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-5-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_5_deploy_perms" {
  name   = "axvel-1bmofe-auth-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_5_ops" {
  name   = "axvel-1bmofe-auth-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_5_read" {
  name   = "axvel-1bmofe-auth-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-5-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_6_data_rw" {
  name   = "axvel-1bmofe-auth-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_6_deploy_perms" {
  name   = "axvel-1bmofe-auth-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_6_ops" {
  name   = "axvel-1bmofe-auth-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_6_read" {
  name   = "axvel-1bmofe-auth-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-auth-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-auth-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_data_rw" {
  name   = "axvel-1bmofe-auth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-auth-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_deploy_perms" {
  name   = "axvel-1bmofe-auth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-auth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-auth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-auth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-auth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "auth_ops" {
  name   = "axvel-1bmofe-auth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth/*"]
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
  name   = "axvel-1bmofe-auth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/auth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-auth-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "axvel-1bmofe-base-readonly"
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
  name   = "axvel-1bmofe-billing-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_deploy_perms" {
  name   = "axvel-1bmofe-billing-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_ops" {
  name   = "axvel-1bmofe-billing-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-2/*"]
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
  name   = "axvel-1bmofe-billing-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_3_data_rw" {
  name   = "axvel-1bmofe-billing-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/billing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:DeleteObject", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:PutObject", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-3-assets", "arn:aws:s3:::axvel-1bmofe-billing-3-assets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_3_deploy_perms" {
  name   = "axvel-1bmofe-billing-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_3_ops" {
  name   = "axvel-1bmofe-billing-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_3_read" {
  name   = "axvel-1bmofe-billing-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/billing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-3-assets", "arn:aws:s3:::axvel-1bmofe-billing-3-assets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_4_data_rw" {
  name   = "axvel-1bmofe-billing-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-4-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-4-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_4_deploy_perms" {
  name   = "axvel-1bmofe-billing-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_4_ops" {
  name   = "axvel-1bmofe-billing-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_4_read" {
  name   = "axvel-1bmofe-billing-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-4-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-4-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_5_data_rw" {
  name   = "axvel-1bmofe-billing-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:DeleteObject", "s3:PutObject", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-5-assets", "arn:aws:s3:::axvel-1bmofe-billing-5-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_5_deploy_perms" {
  name   = "axvel-1bmofe-billing-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_5_ops" {
  name   = "axvel-1bmofe-billing-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_5_read" {
  name   = "axvel-1bmofe-billing-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-5-exports", "arn:aws:s3:::axvel-1bmofe-billing-5-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_6_data_rw" {
  name   = "axvel-1bmofe-billing-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-6-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_6_deploy_perms" {
  name   = "axvel-1bmofe-billing-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_6_ops" {
  name   = "axvel-1bmofe-billing-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_6_read" {
  name   = "axvel-1bmofe-billing-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-6-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_7_data_rw" {
  name   = "axvel-1bmofe-billing-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-7-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetBucketLocation", "s3:PutObject", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-7-analytics", "arn:aws:s3:::axvel-1bmofe-billing-7-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-7-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_7_deploy_perms" {
  name   = "axvel-1bmofe-billing-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_7_ops" {
  name   = "axvel-1bmofe-billing-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_7_read" {
  name   = "axvel-1bmofe-billing-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-7-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-billing-7-analytics", "arn:aws:s3:::axvel-1bmofe-billing-7-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-billing-7-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_data_rw" {
  name   = "axvel-1bmofe-billing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_deploy_perms" {
  name   = "axvel-1bmofe-billing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-billing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-billing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-billing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_ops" {
  name   = "axvel-1bmofe-billing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing/*"]
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
  name   = "axvel-1bmofe-billing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-billing-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-billing-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "axvel-1bmofe-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_data_rw" {
  name   = "axvel-1bmofe-data-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:UpdateItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-data-2-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_deploy_perms" {
  name   = "axvel-1bmofe-data-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_2_ops" {
  name   = "axvel-1bmofe-data-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-2/*"]
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
  name   = "axvel-1bmofe-data-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-data-2-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_3_data_rw" {
  name   = "axvel-1bmofe-data-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-3-uploads", "arn:aws:s3:::axvel-1bmofe-data-3-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-3-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_3_deploy_perms" {
  name   = "axvel-1bmofe-data-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_3_ops" {
  name   = "axvel-1bmofe-data-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_3_read" {
  name   = "axvel-1bmofe-data-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-3-analytics", "arn:aws:s3:::axvel-1bmofe-data-3-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-3-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_4_data_rw" {
  name   = "axvel-1bmofe-data-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:DeleteObject", "s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-4-logs", "arn:aws:s3:::axvel-1bmofe-data-4-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_4_deploy_perms" {
  name   = "axvel-1bmofe-data-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_4_ops" {
  name   = "axvel-1bmofe-data-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_4_read" {
  name   = "axvel-1bmofe-data-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-4-logs", "arn:aws:s3:::axvel-1bmofe-data-4-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_5_data_rw" {
  name   = "axvel-1bmofe-data-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-data-5-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_5_deploy_perms" {
  name   = "axvel-1bmofe-data-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_5_ops" {
  name   = "axvel-1bmofe-data-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_5_read" {
  name   = "axvel-1bmofe-data-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-data-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_6_data_rw" {
  name   = "axvel-1bmofe-data-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-data-6-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_6_deploy_perms" {
  name   = "axvel-1bmofe-data-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_6_ops" {
  name   = "axvel-1bmofe-data-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_6_read" {
  name   = "axvel-1bmofe-data-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-data-6-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_7_data_rw" {
  name   = "axvel-1bmofe-data-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion", "s3:DeleteObject", "s3:GetObject", "s3:ListBucket", "s3:AbortMultipartUpload", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-7-exports", "arn:aws:s3:::axvel-1bmofe-data-7-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-7-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_7_deploy_perms" {
  name   = "axvel-1bmofe-data-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_7_ops" {
  name   = "axvel-1bmofe-data-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_7_read" {
  name   = "axvel-1bmofe-data-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-7-exports", "arn:aws:s3:::axvel-1bmofe-data-7-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-7-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_data_rw" {
  name   = "axvel-1bmofe-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-data-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-logs", "arn:aws:s3:::axvel-1bmofe-data-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_deploy_perms" {
  name   = "axvel-1bmofe-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "data_ops" {
  name   = "axvel-1bmofe-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data/*"]
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
  name   = "axvel-1bmofe-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-data-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-data-exports", "arn:aws:s3:::axvel-1bmofe-data-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-data-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_data_rw" {
  name   = "axvel-1bmofe-growth-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_deploy_perms" {
  name   = "axvel-1bmofe-growth-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_2_ops" {
  name   = "axvel-1bmofe-growth-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-2/*"]
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
  name   = "axvel-1bmofe-growth-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_3_data_rw" {
  name   = "axvel-1bmofe-growth-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-3-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_3_deploy_perms" {
  name   = "axvel-1bmofe-growth-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_3_ops" {
  name   = "axvel-1bmofe-growth-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_3_read" {
  name   = "axvel-1bmofe-growth-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-3-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_4_data_rw" {
  name   = "axvel-1bmofe-growth-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-4-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_4_deploy_perms" {
  name   = "axvel-1bmofe-growth-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_4_ops" {
  name   = "axvel-1bmofe-growth-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_4_read" {
  name   = "axvel-1bmofe-growth-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-4-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_5_data_rw" {
  name   = "axvel-1bmofe-growth-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:PutObject", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-5-logs", "arn:aws:s3:::axvel-1bmofe-growth-5-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-5-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-5-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_5_deploy_perms" {
  name   = "axvel-1bmofe-growth-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_5_ops" {
  name   = "axvel-1bmofe-growth-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_5_read" {
  name   = "axvel-1bmofe-growth-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-5-exports", "arn:aws:s3:::axvel-1bmofe-growth-5-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-5-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-5-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_6_data_rw" {
  name   = "axvel-1bmofe-growth-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:DeleteObject", "s3:AbortMultipartUpload", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-6-exports", "arn:aws:s3:::axvel-1bmofe-growth-6-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-6-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-6-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_6_deploy_perms" {
  name   = "axvel-1bmofe-growth-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_6_ops" {
  name   = "axvel-1bmofe-growth-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_6_read" {
  name   = "axvel-1bmofe-growth-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-6-assets", "arn:aws:s3:::axvel-1bmofe-growth-6-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-6-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-6-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_7_data_rw" {
  name   = "axvel-1bmofe-growth-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-7-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-7-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-7-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-7-exports", "arn:aws:s3:::axvel-1bmofe-growth-7-exports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_7_deploy_perms" {
  name   = "axvel-1bmofe-growth-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_7_ops" {
  name   = "axvel-1bmofe-growth-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_7_read" {
  name   = "axvel-1bmofe-growth-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-7-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-growth-7-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-growth-7-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-7-exports", "arn:aws:s3:::axvel-1bmofe-growth-7-exports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_data_rw" {
  name   = "axvel-1bmofe-growth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:DeleteObject", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-backups", "arn:aws:s3:::axvel-1bmofe-growth-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_deploy_perms" {
  name   = "axvel-1bmofe-growth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-growth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-growth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-growth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-growth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "growth_ops" {
  name   = "axvel-1bmofe-growth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/growth/*"]
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
  name   = "axvel-1bmofe-growth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-growth-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/growth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-growth-backups", "arn:aws:s3:::axvel-1bmofe-growth-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/growth/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_data_rw" {
  name   = "axvel-1bmofe-infra-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:PutObject", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-2-analytics", "arn:aws:s3:::axvel-1bmofe-infra-2-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-2-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_deploy_perms" {
  name   = "axvel-1bmofe-infra-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_2_ops" {
  name   = "axvel-1bmofe-infra-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-2/*"]
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
  name   = "axvel-1bmofe-infra-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-2-assets", "arn:aws:s3:::axvel-1bmofe-infra-2-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-2-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_3_data_rw" {
  name   = "axvel-1bmofe-infra-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-infra-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:PutObject", "s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion", "s3:AbortMultipartUpload", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-3-assets", "arn:aws:s3:::axvel-1bmofe-infra-3-assets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_3_deploy_perms" {
  name   = "axvel-1bmofe-infra-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_3_ops" {
  name   = "axvel-1bmofe-infra-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_3_read" {
  name   = "axvel-1bmofe-infra-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-infra-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-3-backups", "arn:aws:s3:::axvel-1bmofe-infra-3-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_4_data_rw" {
  name   = "axvel-1bmofe-infra-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:PutObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-4-analytics", "arn:aws:s3:::axvel-1bmofe-infra-4-analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_4_deploy_perms" {
  name   = "axvel-1bmofe-infra-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_4_ops" {
  name   = "axvel-1bmofe-infra-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_4_read" {
  name   = "axvel-1bmofe-infra-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-4-logs", "arn:aws:s3:::axvel-1bmofe-infra-4-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_5_data_rw" {
  name   = "axvel-1bmofe-infra-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-5-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_5_deploy_perms" {
  name   = "axvel-1bmofe-infra-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_5_ops" {
  name   = "axvel-1bmofe-infra-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_5_read" {
  name   = "axvel-1bmofe-infra-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-infra-5-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_6_data_rw" {
  name   = "axvel-1bmofe-infra-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-infra-6-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_6_deploy_perms" {
  name   = "axvel-1bmofe-infra-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_6_ops" {
  name   = "axvel-1bmofe-infra-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_6_read" {
  name   = "axvel-1bmofe-infra-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-infra-6-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_7_data_rw" {
  name   = "axvel-1bmofe-infra-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-7-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_7_deploy_perms" {
  name   = "axvel-1bmofe-infra-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_7_ops" {
  name   = "axvel-1bmofe-infra-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_7_read" {
  name   = "axvel-1bmofe-infra-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/infra-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-7-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_data_rw" {
  name   = "axvel-1bmofe-infra-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-assets", "arn:aws:s3:::axvel-1bmofe-infra-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_deploy_perms" {
  name   = "axvel-1bmofe-infra-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-infra-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-infra-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-infra-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-infra-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "infra_ops" {
  name   = "axvel-1bmofe-infra-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra/*"]
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
  name   = "axvel-1bmofe-infra-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-infra-assets", "arn:aws:s3:::axvel-1bmofe-infra-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/infra/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-infra-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/infra/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p10" {
  name   = "axvel-1bmofe-inj-pol-p10"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/axvel-1bmofe-xia.rossi"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p2" {
  name   = "axvel-1bmofe-inj-pol-p2"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AttachRolePolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:role/inj-decoy-other"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p4" {
  name   = "axvel-1bmofe-inj-pol-p4"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:CreateLoginProfile"]
      Resource = ["arn:aws:iam::${local.account_id}:user/axvel-1bmofe-inj-svc-u3"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p5" {
  name   = "axvel-1bmofe-inj-pol-p5"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Deny"
      Action   = ["iam:CreateLoginProfile"]
      Resource = ["arn:aws:iam::${local.account_id}:user/axvel-1bmofe-inj-svc-u3"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p6" {
  name   = "axvel-1bmofe-inj-pol-p6"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:CreatePolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/axvel-1bmofe-inj-pol-p5"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p7" {
  name   = "axvel-1bmofe-inj-pol-p7"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Deny"
      Action   = ["iam:CreatePolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/axvel-1bmofe-inj-pol-p5"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p8" {
  name   = "axvel-1bmofe-inj-pol-p8"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutGroupPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:group/axvel-1bmofe-contractors"]
      Condition = {
        Bool = { "aws:MultiFactorAuthPresent" = ["true"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p9" {
  name   = "axvel-1bmofe-inj-pol-p9"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/axvel-1bmofe-ext-vik.cohen"]
      Condition = {
        IpAddress = { "aws:SourceIp" = ["10.20.0.0/16"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_data_rw" {
  name   = "axvel-1bmofe-ml-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-2-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_deploy_perms" {
  name   = "axvel-1bmofe-ml-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_2_ops" {
  name   = "axvel-1bmofe-ml-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml-2/*"]
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
  name   = "axvel-1bmofe-ml-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_3_data_rw" {
  name   = "axvel-1bmofe-ml-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetObjectVersion", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-3-assets", "arn:aws:s3:::axvel-1bmofe-ml-3-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-ml-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_3_deploy_perms" {
  name   = "axvel-1bmofe-ml-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_3_ops" {
  name   = "axvel-1bmofe-ml-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_3_read" {
  name   = "axvel-1bmofe-ml-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-3-exports", "arn:aws:s3:::axvel-1bmofe-ml-3-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-ml-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_4_data_rw" {
  name   = "axvel-1bmofe-ml-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-ml-4-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_4_deploy_perms" {
  name   = "axvel-1bmofe-ml-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_4_ops" {
  name   = "axvel-1bmofe-ml-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_4_read" {
  name   = "axvel-1bmofe-ml-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-ml-4-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_5_data_rw" {
  name   = "axvel-1bmofe-ml-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-5-logs", "arn:aws:s3:::axvel-1bmofe-ml-5-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_5_deploy_perms" {
  name   = "axvel-1bmofe-ml-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_5_ops" {
  name   = "axvel-1bmofe-ml-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_5_read" {
  name   = "axvel-1bmofe-ml-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-5-logs", "arn:aws:s3:::axvel-1bmofe-ml-5-logs/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_6_data_rw" {
  name   = "axvel-1bmofe-ml-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-ml-6-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:AbortMultipartUpload", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-6-backups", "arn:aws:s3:::axvel-1bmofe-ml-6-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:PutItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-6-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_6_deploy_perms" {
  name   = "axvel-1bmofe-ml-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_6_ops" {
  name   = "axvel-1bmofe-ml-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_6_read" {
  name   = "axvel-1bmofe-ml-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-ml-6-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-ml-6-backups", "arn:aws:s3:::axvel-1bmofe-ml-6-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-6-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_data_rw" {
  name   = "axvel-1bmofe-ml-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_deploy_perms" {
  name   = "axvel-1bmofe-ml-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-ml-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-ml-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-ml-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-ml-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ml_ops" {
  name   = "axvel-1bmofe-ml-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/ml/*"]
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
  name   = "axvel-1bmofe-ml-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/ml/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-ml-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/ml/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_data_rw" {
  name   = "axvel-1bmofe-mobile-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:PutObject", "s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-2-uploads", "arn:aws:s3:::axvel-1bmofe-mobile-2-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_deploy_perms" {
  name   = "axvel-1bmofe-mobile-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_2_ops" {
  name   = "axvel-1bmofe-mobile-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-2/*"]
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
  name   = "axvel-1bmofe-mobile-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-2-exports", "arn:aws:s3:::axvel-1bmofe-mobile-2-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_3_data_rw" {
  name   = "axvel-1bmofe-mobile-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-3-uploads", "arn:aws:s3:::axvel-1bmofe-mobile-3-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-3-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_3_deploy_perms" {
  name   = "axvel-1bmofe-mobile-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_3_ops" {
  name   = "axvel-1bmofe-mobile-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_3_read" {
  name   = "axvel-1bmofe-mobile-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-3-analytics", "arn:aws:s3:::axvel-1bmofe-mobile-3-analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-3-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_4_data_rw" {
  name   = "axvel-1bmofe-mobile-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion", "s3:PutObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-4-logs", "arn:aws:s3:::axvel-1bmofe-mobile-4-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_4_deploy_perms" {
  name   = "axvel-1bmofe-mobile-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_4_ops" {
  name   = "axvel-1bmofe-mobile-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_4_read" {
  name   = "axvel-1bmofe-mobile-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-4-logs", "arn:aws:s3:::axvel-1bmofe-mobile-4-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_5_data_rw" {
  name   = "axvel-1bmofe-mobile-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-5-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-5-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_5_deploy_perms" {
  name   = "axvel-1bmofe-mobile-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_5_ops" {
  name   = "axvel-1bmofe-mobile-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_5_read" {
  name   = "axvel-1bmofe-mobile-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-5-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-5-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_6_data_rw" {
  name   = "axvel-1bmofe-mobile-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject", "s3:PutObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-6-exports", "arn:aws:s3:::axvel-1bmofe-mobile-6-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-6-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-mobile-6-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_6_deploy_perms" {
  name   = "axvel-1bmofe-mobile-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_6_ops" {
  name   = "axvel-1bmofe-mobile-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_6_read" {
  name   = "axvel-1bmofe-mobile-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-6-exports", "arn:aws:s3:::axvel-1bmofe-mobile-6-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-6-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-mobile-6-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_7_data_rw" {
  name   = "axvel-1bmofe-mobile-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-mobile-7-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-7-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-7-logs", "arn:aws:s3:::axvel-1bmofe-mobile-7-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-7-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_7_deploy_perms" {
  name   = "axvel-1bmofe-mobile-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_7_ops" {
  name   = "axvel-1bmofe-mobile-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_7_read" {
  name   = "axvel-1bmofe-mobile-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-mobile-7-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-mobile-7-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-7-logs", "arn:aws:s3:::axvel-1bmofe-mobile-7-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-mobile-7-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_data_rw" {
  name   = "axvel-1bmofe-mobile-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:GetObject", "s3:ListBucket", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-assets", "arn:aws:s3:::axvel-1bmofe-mobile-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_deploy_perms" {
  name   = "axvel-1bmofe-mobile-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-mobile-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-mobile-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-mobile-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-mobile-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "mobile_ops" {
  name   = "axvel-1bmofe-mobile-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/mobile/*"]
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
  name   = "axvel-1bmofe-mobile-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-mobile-assets", "arn:aws:s3:::axvel-1bmofe-mobile-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/mobile/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_data_rw" {
  name   = "axvel-1bmofe-notifications-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-2-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_deploy_perms" {
  name   = "axvel-1bmofe-notifications-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_2_ops" {
  name   = "axvel-1bmofe-notifications-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-2/*"]
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
  name   = "axvel-1bmofe-notifications-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-2-analytics"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_3_data_rw" {
  name   = "axvel-1bmofe-notifications-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-notifications-3-uploads", "arn:aws:s3:::axvel-1bmofe-notifications-3-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-3-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_3_deploy_perms" {
  name   = "axvel-1bmofe-notifications-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_3_ops" {
  name   = "axvel-1bmofe-notifications-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_3_read" {
  name   = "axvel-1bmofe-notifications-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-notifications-3-assets", "arn:aws:s3:::axvel-1bmofe-notifications-3-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_4_data_rw" {
  name   = "axvel-1bmofe-notifications-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-4-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_4_deploy_perms" {
  name   = "axvel-1bmofe-notifications-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_4_ops" {
  name   = "axvel-1bmofe-notifications-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_4_read" {
  name   = "axvel-1bmofe-notifications-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_5_data_rw" {
  name   = "axvel-1bmofe-notifications-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-notifications-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_5_deploy_perms" {
  name   = "axvel-1bmofe-notifications-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_5_ops" {
  name   = "axvel-1bmofe-notifications-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_5_read" {
  name   = "axvel-1bmofe-notifications-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-notifications-5-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_6_data_rw" {
  name   = "axvel-1bmofe-notifications-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_6_deploy_perms" {
  name   = "axvel-1bmofe-notifications-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_6_ops" {
  name   = "axvel-1bmofe-notifications-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_6_read" {
  name   = "axvel-1bmofe-notifications-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/notifications-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_data_rw" {
  name   = "axvel-1bmofe-notifications-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_deploy_perms" {
  name   = "axvel-1bmofe-notifications-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-notifications-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-notifications-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-notifications-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-notifications-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "notifications_ops" {
  name   = "axvel-1bmofe-notifications-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/notifications/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/notifications/*"]
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
  name   = "axvel-1bmofe-notifications-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-notifications-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-notifications-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_data_rw" {
  name   = "axvel-1bmofe-search-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-2-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-2-analytics", "arn:aws:s3:::axvel-1bmofe-search-2-analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_deploy_perms" {
  name   = "axvel-1bmofe-search-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_2_ops" {
  name   = "axvel-1bmofe-search-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-2/*"]
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
  name   = "axvel-1bmofe-search-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-2-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-2-uploads", "arn:aws:s3:::axvel-1bmofe-search-2-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_3_data_rw" {
  name   = "axvel-1bmofe-search-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:PutObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-3-uploads", "arn:aws:s3:::axvel-1bmofe-search-3-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_3_deploy_perms" {
  name   = "axvel-1bmofe-search-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_3_ops" {
  name   = "axvel-1bmofe-search-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_3_read" {
  name   = "axvel-1bmofe-search-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-3-uploads", "arn:aws:s3:::axvel-1bmofe-search-3-uploads/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_4_data_rw" {
  name   = "axvel-1bmofe-search-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-search-4-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_4_deploy_perms" {
  name   = "axvel-1bmofe-search-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_4_ops" {
  name   = "axvel-1bmofe-search-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_4_read" {
  name   = "axvel-1bmofe-search-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-search-4-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_5_data_rw" {
  name   = "axvel-1bmofe-search-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-5-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-search-5-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_5_deploy_perms" {
  name   = "axvel-1bmofe-search-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_5_ops" {
  name   = "axvel-1bmofe-search-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_5_read" {
  name   = "axvel-1bmofe-search-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-5-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-search-5-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_6_data_rw" {
  name   = "axvel-1bmofe-search-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:PutObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-6-uploads", "arn:aws:s3:::axvel-1bmofe-search-6-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-6-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_6_deploy_perms" {
  name   = "axvel-1bmofe-search-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_6_ops" {
  name   = "axvel-1bmofe-search-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_6_read" {
  name   = "axvel-1bmofe-search-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-6-uploads", "arn:aws:s3:::axvel-1bmofe-search-6-uploads/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-6-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_7_data_rw" {
  name   = "axvel-1bmofe-search-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-7-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_7_deploy_perms" {
  name   = "axvel-1bmofe-search-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_7_ops" {
  name   = "axvel-1bmofe-search-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_7_read" {
  name   = "axvel-1bmofe-search-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/search-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-7-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_data_rw" {
  name   = "axvel-1bmofe-search-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObjectVersion", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-exports", "arn:aws:s3:::axvel-1bmofe-search-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_deploy_perms" {
  name   = "axvel-1bmofe-search-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-search-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-search-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-search-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-search-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "search_ops" {
  name   = "axvel-1bmofe-search-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/search/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/search/*"]
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
  name   = "axvel-1bmofe-search-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-search-exports", "arn:aws:s3:::axvel-1bmofe-search-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-search-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "axvel-1bmofe-security-audit"
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
  name   = "axvel-1bmofe-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/axvel-1bmofe-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_data_rw" {
  name   = "axvel-1bmofe-support-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_deploy_perms" {
  name   = "axvel-1bmofe-support-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_2_ops" {
  name   = "axvel-1bmofe-support-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-2/*"]
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
  name   = "axvel-1bmofe-support-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-2-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_3_data_rw" {
  name   = "axvel-1bmofe-support-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_3_deploy_perms" {
  name   = "axvel-1bmofe-support-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_3_ops" {
  name   = "axvel-1bmofe-support-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_3_read" {
  name   = "axvel-1bmofe-support-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-3-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_4_data_rw" {
  name   = "axvel-1bmofe-support-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-4-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-4-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_4_deploy_perms" {
  name   = "axvel-1bmofe-support-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_4_ops" {
  name   = "axvel-1bmofe-support-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_4_read" {
  name   = "axvel-1bmofe-support-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-4-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-4-analytics"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-4-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_5_data_rw" {
  name   = "axvel-1bmofe-support-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_5_deploy_perms" {
  name   = "axvel-1bmofe-support-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_5_ops" {
  name   = "axvel-1bmofe-support-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_5_read" {
  name   = "axvel-1bmofe-support-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_6_data_rw" {
  name   = "axvel-1bmofe-support-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-6-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-6-logs"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_6_deploy_perms" {
  name   = "axvel-1bmofe-support-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_6_ops" {
  name   = "axvel-1bmofe-support-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_6_read" {
  name   = "axvel-1bmofe-support-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-support-6-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-6-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-support-6-uploads"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_data_rw" {
  name   = "axvel-1bmofe-support-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-support-logs", "arn:aws:s3:::axvel-1bmofe-support-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_deploy_perms" {
  name   = "axvel-1bmofe-support-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-support-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-support-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-support-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-support-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "support_ops" {
  name   = "axvel-1bmofe-support-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/support/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/support/*"]
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
  name   = "axvel-1bmofe-support-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-support-logs", "arn:aws:s3:::axvel-1bmofe-support-logs/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-support-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/support/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_data_rw" {
  name   = "axvel-1bmofe-web-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-web-2-backups", "arn:aws:s3:::axvel-1bmofe-web-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-web-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-web-2-exports"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_deploy_perms" {
  name   = "axvel-1bmofe-web-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_2_ops" {
  name   = "axvel-1bmofe-web-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-2/*"]
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
  name   = "axvel-1bmofe-web-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-web-2-exports", "arn:aws:s3:::axvel-1bmofe-web-2-exports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-web-2-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-web-2-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_3_data_rw" {
  name   = "axvel-1bmofe-web-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-3-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_3_deploy_perms" {
  name   = "axvel-1bmofe-web-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_3_ops" {
  name   = "axvel-1bmofe-web-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_3_read" {
  name   = "axvel-1bmofe-web-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-3-uploads"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_4_data_rw" {
  name   = "axvel-1bmofe-web-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-4-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_4_deploy_perms" {
  name   = "axvel-1bmofe-web-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_4_ops" {
  name   = "axvel-1bmofe-web-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_4_read" {
  name   = "axvel-1bmofe-web-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-4-assets"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_5_data_rw" {
  name   = "axvel-1bmofe-web-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_5_deploy_perms" {
  name   = "axvel-1bmofe-web-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_5_ops" {
  name   = "axvel-1bmofe-web-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_5_read" {
  name   = "axvel-1bmofe-web-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_6_data_rw" {
  name   = "axvel-1bmofe-web-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-web-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/web-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_6_deploy_perms" {
  name   = "axvel-1bmofe-web-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_6_ops" {
  name   = "axvel-1bmofe-web-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_6_read" {
  name   = "axvel-1bmofe-web-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:axvel-1bmofe-web-6-assets"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:axvel-1bmofe/web-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_7_data_rw" {
  name   = "axvel-1bmofe-web-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:DeleteObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-web-7-assets", "arn:aws:s3:::axvel-1bmofe-web-7-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_7_deploy_perms" {
  name   = "axvel-1bmofe-web-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_7_ops" {
  name   = "axvel-1bmofe-web-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_7_read" {
  name   = "axvel-1bmofe-web-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::axvel-1bmofe-web-7-assets", "arn:aws:s3:::axvel-1bmofe-web-7-assets/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_data_rw" {
  name   = "axvel-1bmofe-web-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-web-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-exports"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_deploy_perms" {
  name   = "axvel-1bmofe-web-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/axvel-1bmofe-web-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:axvel-1bmofe-web-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/axvel-1bmofe-web-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/axvel-1bmofe-web-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "web_ops" {
  name   = "axvel-1bmofe-web-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/axvel-1bmofe/web/*"]
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
  name   = "axvel-1bmofe-web-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:axvel-1bmofe-web-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/axvel-1bmofe-web-logs"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/axvel-1bmofe/web/*"]
    },
  ]
  })
}
