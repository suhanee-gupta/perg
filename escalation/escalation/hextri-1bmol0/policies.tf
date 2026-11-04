resource "aws_iam_policy" "admin_all" {
  name   = "hextri-1bmol0-admin-all"
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

resource "aws_iam_policy" "audit_2_data_rw" {
  name   = "hextri-1bmol0-audit-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-2-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_2_deploy_perms" {
  name   = "hextri-1bmol0-audit-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_2_ops" {
  name   = "hextri-1bmol0-audit-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_2_read" {
  name   = "hextri-1bmol0-audit-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-2-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-2-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_3_data_rw" {
  name   = "hextri-1bmol0-audit-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:ListBucket", "s3:PutObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-audit-3-backups", "arn:aws:s3:::hextri-1bmol0-audit-3-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_3_deploy_perms" {
  name   = "hextri-1bmol0-audit-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_3_ops" {
  name   = "hextri-1bmol0-audit-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_3_read" {
  name   = "hextri-1bmol0-audit-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-audit-3-backups", "arn:aws:s3:::hextri-1bmol0-audit-3-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_4_data_rw" {
  name   = "hextri-1bmol0-audit-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_4_deploy_perms" {
  name   = "hextri-1bmol0-audit-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_4_ops" {
  name   = "hextri-1bmol0-audit-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_4_read" {
  name   = "hextri-1bmol0-audit-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_5_data_rw" {
  name   = "hextri-1bmol0-audit-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-5-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-audit-5-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_5_deploy_perms" {
  name   = "hextri-1bmol0-audit-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_5_ops" {
  name   = "hextri-1bmol0-audit-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_5_read" {
  name   = "hextri-1bmol0-audit-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-audit-5-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_6_data_rw" {
  name   = "hextri-1bmol0-audit-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-6-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_6_deploy_perms" {
  name   = "hextri-1bmol0-audit-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_6_ops" {
  name   = "hextri-1bmol0-audit-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_6_read" {
  name   = "hextri-1bmol0-audit-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-audit-6-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_data_rw" {
  name   = "hextri-1bmol0-audit-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-audit-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_deploy_perms" {
  name   = "hextri-1bmol0-audit-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-audit-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-audit-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-audit-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-audit-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_ops" {
  name   = "hextri-1bmol0-audit-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "audit_read" {
  name   = "hextri-1bmol0-audit-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-audit-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-audit-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/audit/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "hextri-1bmol0-base-readonly"
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

resource "aws_iam_policy" "benefits_2_data_rw" {
  name   = "hextri-1bmol0-benefits-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:PutObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-benefits-2-audit", "arn:aws:s3:::hextri-1bmol0-benefits-2-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-2-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-benefits-2-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_2_deploy_perms" {
  name   = "hextri-1bmol0-benefits-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_2_ops" {
  name   = "hextri-1bmol0-benefits-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_2_read" {
  name   = "hextri-1bmol0-benefits-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-benefits-2-audit", "arn:aws:s3:::hextri-1bmol0-benefits-2-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-2-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-benefits-2-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_3_data_rw" {
  name   = "hextri-1bmol0-benefits-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-3-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-3-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_3_deploy_perms" {
  name   = "hextri-1bmol0-benefits-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_3_ops" {
  name   = "hextri-1bmol0-benefits-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_3_read" {
  name   = "hextri-1bmol0-benefits-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-3-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-3-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_4_data_rw" {
  name   = "hextri-1bmol0-benefits-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-4-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-4-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-benefits-4-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_4_deploy_perms" {
  name   = "hextri-1bmol0-benefits-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_4_ops" {
  name   = "hextri-1bmol0-benefits-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_4_read" {
  name   = "hextri-1bmol0-benefits-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-4-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-4-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-benefits-4-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_5_data_rw" {
  name   = "hextri-1bmol0-benefits-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-5-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-5-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_5_deploy_perms" {
  name   = "hextri-1bmol0-benefits-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_5_ops" {
  name   = "hextri-1bmol0-benefits-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_5_read" {
  name   = "hextri-1bmol0-benefits-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-5-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-5-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_6_data_rw" {
  name   = "hextri-1bmol0-benefits-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:DeleteObject", "s3:ListBucket", "s3:PutObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-benefits-6-audit", "arn:aws:s3:::hextri-1bmol0-benefits-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-6-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_6_deploy_perms" {
  name   = "hextri-1bmol0-benefits-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_6_ops" {
  name   = "hextri-1bmol0-benefits-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_6_read" {
  name   = "hextri-1bmol0-benefits-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-benefits-6-audit", "arn:aws:s3:::hextri-1bmol0-benefits-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-benefits-6-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/benefits-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_data_rw" {
  name   = "hextri-1bmol0-benefits-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_deploy_perms" {
  name   = "hextri-1bmol0-benefits-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-benefits-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-benefits-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-benefits-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-benefits-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_ops" {
  name   = "hextri-1bmol0-benefits-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/benefits/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "benefits_read" {
  name   = "hextri-1bmol0-benefits-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/benefits/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-benefits-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "hextri-1bmol0-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_2_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-2-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetObjectVersion", "s3:DeleteObject", "s3:ListBucket", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-2-audit", "arn:aws:s3:::hextri-1bmol0-citizen-portal-2-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-2-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_2_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_2_ops" {
  name   = "hextri-1bmol0-citizen-portal-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_2_read" {
  name   = "hextri-1bmol0-citizen-portal-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-2-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-2-audit", "arn:aws:s3:::hextri-1bmol0-citizen-portal-2-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-2-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_3_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-3-filings", "arn:aws:s3:::hextri-1bmol0-citizen-portal-3-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-3-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_3_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_3_ops" {
  name   = "hextri-1bmol0-citizen-portal-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_3_read" {
  name   = "hextri-1bmol0-citizen-portal-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-3-backups", "arn:aws:s3:::hextri-1bmol0-citizen-portal-3-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-3-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_4_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-4-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:PutItem", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-4-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:PutObject", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-4-public-data", "arn:aws:s3:::hextri-1bmol0-citizen-portal-4-public-data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_4_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_4_ops" {
  name   = "hextri-1bmol0-citizen-portal-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_4_read" {
  name   = "hextri-1bmol0-citizen-portal-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-4-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-citizen-portal-4-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-4-public-data", "arn:aws:s3:::hextri-1bmol0-citizen-portal-4-public-data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_5_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-5-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-5-gis-layers", "arn:aws:s3:::hextri-1bmol0-citizen-portal-5-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_5_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_5_ops" {
  name   = "hextri-1bmol0-citizen-portal-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_5_read" {
  name   = "hextri-1bmol0-citizen-portal-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-5-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-citizen-portal-5-backups", "arn:aws:s3:::hextri-1bmol0-citizen-portal-5-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_6_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-6-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-6-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_6_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_6_ops" {
  name   = "hextri-1bmol0-citizen-portal-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_6_read" {
  name   = "hextri-1bmol0-citizen-portal-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-6-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-6-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_7_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-7-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_7_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_7_ops" {
  name   = "hextri-1bmol0-citizen-portal-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_7_read" {
  name   = "hextri-1bmol0-citizen-portal-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/citizen-portal-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-7-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_data_rw" {
  name   = "hextri-1bmol0-citizen-portal-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_deploy_perms" {
  name   = "hextri-1bmol0-citizen-portal-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-citizen-portal-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-citizen-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-citizen-portal-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-citizen-portal-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_ops" {
  name   = "hextri-1bmol0-citizen-portal-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/citizen-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/citizen-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_read" {
  name   = "hextri-1bmol0-citizen-portal-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-citizen-portal-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_2_data_rw" {
  name   = "hextri-1bmol0-gis-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-gis-2-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-2-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_2_deploy_perms" {
  name   = "hextri-1bmol0-gis-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_2_ops" {
  name   = "hextri-1bmol0-gis-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_2_read" {
  name   = "hextri-1bmol0-gis-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-gis-2-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-2-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_3_data_rw" {
  name   = "hextri-1bmol0-gis-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation", "s3:DeleteObject", "s3:GetObject", "s3:AbortMultipartUpload", "s3:PutObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-3-gis-layers", "arn:aws:s3:::hextri-1bmol0-gis-3-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-3-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_3_deploy_perms" {
  name   = "hextri-1bmol0-gis-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_3_ops" {
  name   = "hextri-1bmol0-gis-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_3_read" {
  name   = "hextri-1bmol0-gis-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-3-gis-layers", "arn:aws:s3:::hextri-1bmol0-gis-3-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-3-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_4_data_rw" {
  name   = "hextri-1bmol0-gis-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-4-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:DeleteObject", "s3:GetObjectVersion", "s3:PutObject", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-4-filings", "arn:aws:s3:::hextri-1bmol0-gis-4-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_4_deploy_perms" {
  name   = "hextri-1bmol0-gis-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_4_ops" {
  name   = "hextri-1bmol0-gis-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_4_read" {
  name   = "hextri-1bmol0-gis-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-4-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-4-filings", "arn:aws:s3:::hextri-1bmol0-gis-4-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_5_data_rw" {
  name   = "hextri-1bmol0-gis-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-5-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_5_deploy_perms" {
  name   = "hextri-1bmol0-gis-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_5_ops" {
  name   = "hextri-1bmol0-gis-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_5_read" {
  name   = "hextri-1bmol0-gis-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-5-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_6_data_rw" {
  name   = "hextri-1bmol0-gis-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-6-filings", "arn:aws:s3:::hextri-1bmol0-gis-6-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-6-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_6_deploy_perms" {
  name   = "hextri-1bmol0-gis-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_6_ops" {
  name   = "hextri-1bmol0-gis-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_6_read" {
  name   = "hextri-1bmol0-gis-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-gis-6-filings", "arn:aws:s3:::hextri-1bmol0-gis-6-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-6-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_7_data_rw" {
  name   = "hextri-1bmol0-gis-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-7-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-gis-7-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-7-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_7_deploy_perms" {
  name   = "hextri-1bmol0-gis-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_7_ops" {
  name   = "hextri-1bmol0-gis-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_7_read" {
  name   = "hextri-1bmol0-gis-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-7-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-gis-7-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-gis-7-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_data_rw" {
  name   = "hextri-1bmol0-gis-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_deploy_perms" {
  name   = "hextri-1bmol0-gis-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-gis-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-gis-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-gis-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-gis-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_ops" {
  name   = "hextri-1bmol0-gis-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_read" {
  name   = "hextri-1bmol0-gis-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-gis-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_2_data_rw" {
  name   = "hextri-1bmol0-hr-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_2_deploy_perms" {
  name   = "hextri-1bmol0-hr-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_2_ops" {
  name   = "hextri-1bmol0-hr-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_2_read" {
  name   = "hextri-1bmol0-hr-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_3_data_rw" {
  name   = "hextri-1bmol0-hr-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-3-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-3-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_3_deploy_perms" {
  name   = "hextri-1bmol0-hr-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_3_ops" {
  name   = "hextri-1bmol0-hr-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_3_read" {
  name   = "hextri-1bmol0-hr-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-3-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-3-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_4_data_rw" {
  name   = "hextri-1bmol0-hr-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_4_deploy_perms" {
  name   = "hextri-1bmol0-hr-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_4_ops" {
  name   = "hextri-1bmol0-hr-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_4_read" {
  name   = "hextri-1bmol0-hr-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_5_data_rw" {
  name   = "hextri-1bmol0-hr-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_5_deploy_perms" {
  name   = "hextri-1bmol0-hr-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_5_ops" {
  name   = "hextri-1bmol0-hr-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_5_read" {
  name   = "hextri-1bmol0-hr-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-5-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_6_data_rw" {
  name   = "hextri-1bmol0-hr-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-hr-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_6_deploy_perms" {
  name   = "hextri-1bmol0-hr-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_6_ops" {
  name   = "hextri-1bmol0-hr-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_6_read" {
  name   = "hextri-1bmol0-hr-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-hr-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-hr-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_data_rw" {
  name   = "hextri-1bmol0-hr-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_deploy_perms" {
  name   = "hextri-1bmol0-hr-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-hr-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-hr-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-hr-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-hr-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_ops" {
  name   = "hextri-1bmol0-hr-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/hr/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/hr/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "hr_read" {
  name   = "hextri-1bmol0-hr-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/hr/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-hr-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p7" {
  name   = "hextri-1bmol0-inj-legacy-p7"
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

resource "terraform_data" "inj_legacy_p7__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p7.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p7.arn} --policy-document '${self.input}'"
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

resource "aws_iam_policy" "inj_pol_p2" {
  name   = "hextri-1bmol0-inj-pol-p2"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:CreateLoginProfile"]
      Resource = ["arn:aws:iam::${local.account_id}:user/hextri-1bmol0-inj-svc-u1"]
      Condition = {
        StringEquals = { "aws:RequestedRegion" = ["us-east-1", "us-west-2"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p3" {
  name   = "hextri-1bmol0-inj-pol-p3"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/hextri-1bmol0-inj-svc-u1"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p5" {
  name   = "hextri-1bmol0-inj-pol-p5"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-inj-glue-exec-r4"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p6" {
  name   = "hextri-1bmol0-inj-pol-p6"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["glue:CreateDevEndpoint"]
      Resource = ["arn:aws:glue:${var.region}:${local.account_id}:*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p8" {
  name   = "hextri-1bmol0-inj-pol-p8"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/hextri-1bmol0-inj-legacy-p7"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p9" {
  name   = "hextri-1bmol0-inj-pol-p9"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      NotAction = ["iam:Put*", "sts:*"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/hextri-1bmol0-it-ops-3-ops"]
      Condition = {
        DateGreaterThan = { "aws:TokenIssueTime" = ["2020-01-01T00:00:01Z"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_2_data_rw" {
  name   = "hextri-1bmol0-it-ops-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket", "s3:AbortMultipartUpload", "s3:DeleteObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-2-audit", "arn:aws:s3:::hextri-1bmol0-it-ops-2-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_2_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_2_ops" {
  name   = "hextri-1bmol0-it-ops-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_2_read" {
  name   = "hextri-1bmol0-it-ops-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-2-records", "arn:aws:s3:::hextri-1bmol0-it-ops-2-records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_3_data_rw" {
  name   = "hextri-1bmol0-it-ops-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-3-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_3_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_3_ops" {
  name   = "hextri-1bmol0-it-ops-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_3_read" {
  name   = "hextri-1bmol0-it-ops-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-3-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_4_data_rw" {
  name   = "hextri-1bmol0-it-ops-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:GetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-it-ops-4-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-4-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_4_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_4_ops" {
  name   = "hextri-1bmol0-it-ops-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_4_read" {
  name   = "hextri-1bmol0-it-ops-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-it-ops-4-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-4-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_5_data_rw" {
  name   = "hextri-1bmol0-it-ops-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:DeleteObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:PutObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-5-public-data", "arn:aws:s3:::hextri-1bmol0-it-ops-5-public-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-5-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_5_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_5_ops" {
  name   = "hextri-1bmol0-it-ops-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_5_read" {
  name   = "hextri-1bmol0-it-ops-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/it-ops-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-5-filings", "arn:aws:s3:::hextri-1bmol0-it-ops-5-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-5-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_6_data_rw" {
  name   = "hextri-1bmol0-it-ops-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:PutObject", "s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-6-public-data", "arn:aws:s3:::hextri-1bmol0-it-ops-6-public-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_6_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_6_ops" {
  name   = "hextri-1bmol0-it-ops-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_6_read" {
  name   = "hextri-1bmol0-it-ops-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-it-ops-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-6-filings", "arn:aws:s3:::hextri-1bmol0-it-ops-6-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_data_rw" {
  name   = "hextri-1bmol0-it-ops-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-filings", "arn:aws:s3:::hextri-1bmol0-it-ops-filings/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_deploy_perms" {
  name   = "hextri-1bmol0-it-ops-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-it-ops-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-it-ops-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-it-ops-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-it-ops-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_ops" {
  name   = "hextri-1bmol0-it-ops-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "it_ops_read" {
  name   = "hextri-1bmol0-it-ops-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/it-ops/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-it-ops-gis-layers", "arn:aws:s3:::hextri-1bmol0-it-ops-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/it-ops/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_2_data_rw" {
  name   = "hextri-1bmol0-licensing-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-2-backups", "arn:aws:s3:::hextri-1bmol0-licensing-2-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_2_deploy_perms" {
  name   = "hextri-1bmol0-licensing-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_2_ops" {
  name   = "hextri-1bmol0-licensing-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_2_read" {
  name   = "hextri-1bmol0-licensing-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-2-public-data", "arn:aws:s3:::hextri-1bmol0-licensing-2-public-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_3_data_rw" {
  name   = "hextri-1bmol0-licensing-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-3-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_3_deploy_perms" {
  name   = "hextri-1bmol0-licensing-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_3_ops" {
  name   = "hextri-1bmol0-licensing-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_3_read" {
  name   = "hextri-1bmol0-licensing-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-3-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-3-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_4_data_rw" {
  name   = "hextri-1bmol0-licensing-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-4-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-4-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_4_deploy_perms" {
  name   = "hextri-1bmol0-licensing-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_4_ops" {
  name   = "hextri-1bmol0-licensing-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_4_read" {
  name   = "hextri-1bmol0-licensing-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-4-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-4-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_5_data_rw" {
  name   = "hextri-1bmol0-licensing-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-5-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-5-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-5-gis-layers", "arn:aws:s3:::hextri-1bmol0-licensing-5-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_5_deploy_perms" {
  name   = "hextri-1bmol0-licensing-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_5_ops" {
  name   = "hextri-1bmol0-licensing-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_5_read" {
  name   = "hextri-1bmol0-licensing-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-5-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-5-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-5-gis-layers", "arn:aws:s3:::hextri-1bmol0-licensing-5-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_6_data_rw" {
  name   = "hextri-1bmol0-licensing-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:ReceiveMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-6-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_6_deploy_perms" {
  name   = "hextri-1bmol0-licensing-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_6_ops" {
  name   = "hextri-1bmol0-licensing-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_6_read" {
  name   = "hextri-1bmol0-licensing-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-6-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_7_data_rw" {
  name   = "hextri-1bmol0-licensing-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-7-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-7-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_7_deploy_perms" {
  name   = "hextri-1bmol0-licensing-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_7_ops" {
  name   = "hextri-1bmol0-licensing-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_7_read" {
  name   = "hextri-1bmol0-licensing-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-licensing-7-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-7-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_data_rw" {
  name   = "hextri-1bmol0-licensing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:GetBucketLocation", "s3:DeleteObject", "s3:AbortMultipartUpload", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-gis-layers", "arn:aws:s3:::hextri-1bmol0-licensing-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_deploy_perms" {
  name   = "hextri-1bmol0-licensing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-licensing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-licensing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-licensing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-licensing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_ops" {
  name   = "hextri-1bmol0-licensing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/licensing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/licensing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_read" {
  name   = "hextri-1bmol0-licensing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/licensing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-licensing-backups", "arn:aws:s3:::hextri-1bmol0-licensing-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Scan", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-licensing-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-licensing-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_2_data_rw" {
  name   = "hextri-1bmol0-open-data-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-open-data-2-public-data", "arn:aws:s3:::hextri-1bmol0-open-data-2-public-data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_2_deploy_perms" {
  name   = "hextri-1bmol0-open-data-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_2_ops" {
  name   = "hextri-1bmol0-open-data-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_2_read" {
  name   = "hextri-1bmol0-open-data-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObjectVersion", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-open-data-2-backups", "arn:aws:s3:::hextri-1bmol0-open-data-2-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_3_data_rw" {
  name   = "hextri-1bmol0-open-data-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-3-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_3_deploy_perms" {
  name   = "hextri-1bmol0-open-data-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_3_ops" {
  name   = "hextri-1bmol0-open-data-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_3_read" {
  name   = "hextri-1bmol0-open-data-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-3-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_4_data_rw" {
  name   = "hextri-1bmol0-open-data-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-open-data-4-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-open-data-4-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_4_deploy_perms" {
  name   = "hextri-1bmol0-open-data-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_4_ops" {
  name   = "hextri-1bmol0-open-data-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_4_read" {
  name   = "hextri-1bmol0-open-data-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-open-data-4-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-open-data-4-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_5_data_rw" {
  name   = "hextri-1bmol0-open-data-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-open-data-5-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-5-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_5_deploy_perms" {
  name   = "hextri-1bmol0-open-data-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_5_ops" {
  name   = "hextri-1bmol0-open-data-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_5_read" {
  name   = "hextri-1bmol0-open-data-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-open-data-5-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-5-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_6_data_rw" {
  name   = "hextri-1bmol0-open-data-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/open-data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:DeleteObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-open-data-6-audit", "arn:aws:s3:::hextri-1bmol0-open-data-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_6_deploy_perms" {
  name   = "hextri-1bmol0-open-data-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_6_ops" {
  name   = "hextri-1bmol0-open-data-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_6_read" {
  name   = "hextri-1bmol0-open-data-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/open-data-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-open-data-6-audit", "arn:aws:s3:::hextri-1bmol0-open-data-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_7_data_rw" {
  name   = "hextri-1bmol0-open-data-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-7-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_7_deploy_perms" {
  name   = "hextri-1bmol0-open-data-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_7_ops" {
  name   = "hextri-1bmol0-open-data-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_7_read" {
  name   = "hextri-1bmol0-open-data-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-7-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_data_rw" {
  name   = "hextri-1bmol0-open-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_deploy_perms" {
  name   = "hextri-1bmol0-open-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-open-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-open-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-open-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-open-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_ops" {
  name   = "hextri-1bmol0-open-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "open_data_read" {
  name   = "hextri-1bmol0-open-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/open-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-open-data-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/open-data/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_2_data_rw" {
  name   = "hextri-1bmol0-procurement-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-2-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-2-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_2_deploy_perms" {
  name   = "hextri-1bmol0-procurement-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_2_ops" {
  name   = "hextri-1bmol0-procurement-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_2_read" {
  name   = "hextri-1bmol0-procurement-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-2-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-2-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_3_data_rw" {
  name   = "hextri-1bmol0-procurement-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-3-audit", "arn:aws:s3:::hextri-1bmol0-procurement-3-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:PutItem", "dynamodb:UpdateItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-3-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_3_deploy_perms" {
  name   = "hextri-1bmol0-procurement-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_3_ops" {
  name   = "hextri-1bmol0-procurement-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_3_read" {
  name   = "hextri-1bmol0-procurement-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-3-audit", "arn:aws:s3:::hextri-1bmol0-procurement-3-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-3-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_4_data_rw" {
  name   = "hextri-1bmol0-procurement-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-4-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-4-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_4_deploy_perms" {
  name   = "hextri-1bmol0-procurement-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_4_ops" {
  name   = "hextri-1bmol0-procurement-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_4_read" {
  name   = "hextri-1bmol0-procurement-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-4-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-4-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_5_data_rw" {
  name   = "hextri-1bmol0-procurement-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-5-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:DeleteObject", "s3:GetBucketLocation", "s3:PutObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-5-audit", "arn:aws:s3:::hextri-1bmol0-procurement-5-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-5-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_5_deploy_perms" {
  name   = "hextri-1bmol0-procurement-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_5_ops" {
  name   = "hextri-1bmol0-procurement-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_5_read" {
  name   = "hextri-1bmol0-procurement-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-procurement-5-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-5-records", "arn:aws:s3:::hextri-1bmol0-procurement-5-records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-5-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-5-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_6_data_rw" {
  name   = "hextri-1bmol0-procurement-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-6-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_6_deploy_perms" {
  name   = "hextri-1bmol0-procurement-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_6_ops" {
  name   = "hextri-1bmol0-procurement-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_6_read" {
  name   = "hextri-1bmol0-procurement-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-procurement-6-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_7_data_rw" {
  name   = "hextri-1bmol0-procurement-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-7-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-7-gis-layers", "arn:aws:s3:::hextri-1bmol0-procurement-7-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_7_deploy_perms" {
  name   = "hextri-1bmol0-procurement-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_7_ops" {
  name   = "hextri-1bmol0-procurement-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_7_read" {
  name   = "hextri-1bmol0-procurement-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-procurement-7-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-7-gis-layers", "arn:aws:s3:::hextri-1bmol0-procurement-7-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_data_rw" {
  name   = "hextri-1bmol0-procurement-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:DeleteObject", "s3:PutObject", "s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-gis-layers", "arn:aws:s3:::hextri-1bmol0-procurement-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_deploy_perms" {
  name   = "hextri-1bmol0-procurement-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-procurement-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-procurement-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-procurement-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-procurement-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_ops" {
  name   = "hextri-1bmol0-procurement-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/procurement/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/procurement/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "procurement_read" {
  name   = "hextri-1bmol0-procurement-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/procurement/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-procurement-gis-layers", "arn:aws:s3:::hextri-1bmol0-procurement-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_2_data_rw" {
  name   = "hextri-1bmol0-public-safety-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-public-safety-2-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_2_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_2_ops" {
  name   = "hextri-1bmol0-public-safety-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_2_read" {
  name   = "hextri-1bmol0-public-safety-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:Query", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-public-safety-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_3_data_rw" {
  name   = "hextri-1bmol0-public-safety-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_3_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_3_ops" {
  name   = "hextri-1bmol0-public-safety-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_3_read" {
  name   = "hextri-1bmol0-public-safety-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-3-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-3/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_4_data_rw" {
  name   = "hextri-1bmol0-public-safety-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-4-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_4_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_4_ops" {
  name   = "hextri-1bmol0-public-safety-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_4_read" {
  name   = "hextri-1bmol0-public-safety-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-4-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_5_data_rw" {
  name   = "hextri-1bmol0-public-safety-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_5_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_5_ops" {
  name   = "hextri-1bmol0-public-safety-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_5_read" {
  name   = "hextri-1bmol0-public-safety-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_6_data_rw" {
  name   = "hextri-1bmol0-public-safety-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-public-safety-6-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:DeleteObject", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-public-safety-6-gis-layers", "arn:aws:s3:::hextri-1bmol0-public-safety-6-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_6_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_6_ops" {
  name   = "hextri-1bmol0-public-safety-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_6_read" {
  name   = "hextri-1bmol0-public-safety-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-public-safety-6-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-public-safety-6-records", "arn:aws:s3:::hextri-1bmol0-public-safety-6-records/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_7_data_rw" {
  name   = "hextri-1bmol0-public-safety-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_7_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_7_ops" {
  name   = "hextri-1bmol0-public-safety-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_7_read" {
  name   = "hextri-1bmol0-public-safety-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety-7/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_data_rw" {
  name   = "hextri-1bmol0-public-safety-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:DeleteObject", "s3:GetObject", "s3:AbortMultipartUpload", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-public-safety-records", "arn:aws:s3:::hextri-1bmol0-public-safety-records/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_deploy_perms" {
  name   = "hextri-1bmol0-public-safety-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-public-safety-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-public-safety-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-public-safety-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-public-safety-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_ops" {
  name   = "hextri-1bmol0-public-safety-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "public_safety_read" {
  name   = "hextri-1bmol0-public-safety-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/public-safety/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-public-safety-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-public-safety-backups", "arn:aws:s3:::hextri-1bmol0-public-safety-backups/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_2_data_rw" {
  name   = "hextri-1bmol0-records-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_2_deploy_perms" {
  name   = "hextri-1bmol0-records-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_2_ops" {
  name   = "hextri-1bmol0-records-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_2_read" {
  name   = "hextri-1bmol0-records-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-2-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_3_data_rw" {
  name   = "hextri-1bmol0-records-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-records-3-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-3-filings", "arn:aws:s3:::hextri-1bmol0-records-3-filings/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_3_deploy_perms" {
  name   = "hextri-1bmol0-records-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_3_ops" {
  name   = "hextri-1bmol0-records-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_3_read" {
  name   = "hextri-1bmol0-records-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:BatchGetItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-records-3-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-3-gis-layers", "arn:aws:s3:::hextri-1bmol0-records-3-gis-layers/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_4_data_rw" {
  name   = "hextri-1bmol0-records-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:DeleteObject", "s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-4-backups", "arn:aws:s3:::hextri-1bmol0-records-4-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_4_deploy_perms" {
  name   = "hextri-1bmol0-records-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_4_ops" {
  name   = "hextri-1bmol0-records-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_4_read" {
  name   = "hextri-1bmol0-records-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-4-backups", "arn:aws:s3:::hextri-1bmol0-records-4-backups/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-4/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_5_data_rw" {
  name   = "hextri-1bmol0-records-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/records-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_5_deploy_perms" {
  name   = "hextri-1bmol0-records-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_5_ops" {
  name   = "hextri-1bmol0-records-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_5_read" {
  name   = "hextri-1bmol0-records-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/records-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_6_data_rw" {
  name   = "hextri-1bmol0-records-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-6-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:PutObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-6-audit", "arn:aws:s3:::hextri-1bmol0-records-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_6_deploy_perms" {
  name   = "hextri-1bmol0-records-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_6_ops" {
  name   = "hextri-1bmol0-records-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_6_read" {
  name   = "hextri-1bmol0-records-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-6-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-6-audit", "arn:aws:s3:::hextri-1bmol0-records-6-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-6/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_7_data_rw" {
  name   = "hextri-1bmol0-records-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-7-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-records-7-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_7_deploy_perms" {
  name   = "hextri-1bmol0-records-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_7_ops" {
  name   = "hextri-1bmol0-records-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_7_read" {
  name   = "hextri-1bmol0-records-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-records-7-filings"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-records-7-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_data_rw" {
  name   = "hextri-1bmol0-records-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-records-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-records", "arn:aws:s3:::hextri-1bmol0-records-records/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_deploy_perms" {
  name   = "hextri-1bmol0-records-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-records-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-records-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-records-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-records-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_ops" {
  name   = "hextri-1bmol0-records-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_read" {
  name   = "hextri-1bmol0-records-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-records-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-records-records", "arn:aws:s3:::hextri-1bmol0-records-records/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "hextri-1bmol0-security-audit"
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
  name   = "hextri-1bmol0-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/hextri-1bmol0-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_2_data_rw" {
  name   = "hextri-1bmol0-tax-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-tax-2-gis-layers", "arn:aws:s3:::hextri-1bmol0-tax-2-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-2-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_2_deploy_perms" {
  name   = "hextri-1bmol0-tax-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_2_ops" {
  name   = "hextri-1bmol0-tax-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_2_read" {
  name   = "hextri-1bmol0-tax-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-tax-2-gis-layers", "arn:aws:s3:::hextri-1bmol0-tax-2-gis-layers/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-2-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_3_data_rw" {
  name   = "hextri-1bmol0-tax-3-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:UpdateItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-3-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_3_deploy_perms" {
  name   = "hextri-1bmol0-tax-3-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-3-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-3-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-3-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-3-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_3_ops" {
  name   = "hextri-1bmol0-tax-3-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_3_read" {
  name   = "hextri-1bmol0-tax-3-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-3/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-3-gis-layers"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_4_data_rw" {
  name   = "hextri-1bmol0-tax-4-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-4-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_4_deploy_perms" {
  name   = "hextri-1bmol0-tax-4-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-4-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-4-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-4-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-4-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_4_ops" {
  name   = "hextri-1bmol0-tax-4-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_4_read" {
  name   = "hextri-1bmol0-tax-4-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-4/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-4-filings"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_5_data_rw" {
  name   = "hextri-1bmol0-tax-5-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-5-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/tax-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_5_deploy_perms" {
  name   = "hextri-1bmol0-tax-5-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-5-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-5-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-5-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-5-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_5_ops" {
  name   = "hextri-1bmol0-tax-5-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-5/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_5_read" {
  name   = "hextri-1bmol0-tax-5-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-5-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/tax-5/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_6_data_rw" {
  name   = "hextri-1bmol0-tax-6-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-6-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-6-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-6-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_6_deploy_perms" {
  name   = "hextri-1bmol0-tax-6-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-6-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-6-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-6-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-6-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_6_ops" {
  name   = "hextri-1bmol0-tax-6-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_6_read" {
  name   = "hextri-1bmol0-tax-6-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-6-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-6/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-6-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/hextri-1bmol0-tax-6-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_7_data_rw" {
  name   = "hextri-1bmol0-tax-7-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-7-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:PutObject", "s3:DeleteObject", "s3:GetObjectVersion", "s3:AbortMultipartUpload", "s3:GetObject"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-tax-7-public-data", "arn:aws:s3:::hextri-1bmol0-tax-7-public-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-7-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_7_deploy_perms" {
  name   = "hextri-1bmol0-tax-7-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-7-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-7-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-7-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-7-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_7_ops" {
  name   = "hextri-1bmol0-tax-7-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_7_read" {
  name   = "hextri-1bmol0-tax-7-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax-7/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:hextri-1bmol0-tax-7-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::hextri-1bmol0-tax-7-public-data", "arn:aws:s3:::hextri-1bmol0-tax-7-public-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-7-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_data_rw" {
  name   = "hextri-1bmol0-tax-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/tax/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_deploy_perms" {
  name   = "hextri-1bmol0-tax-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/hextri-1bmol0-tax-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:hextri-1bmol0-tax-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/hextri-1bmol0-tax-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/hextri-1bmol0-tax-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_ops" {
  name   = "hextri-1bmol0-tax-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/hextri-1bmol0/tax/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "tax_read" {
  name   = "hextri-1bmol0-tax-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:hextri-1bmol0-tax-gis-layers"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/hextri-1bmol0/tax/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:hextri-1bmol0/tax/*"]
    },
  ]
  })
}
