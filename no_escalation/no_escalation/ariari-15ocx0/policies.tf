resource "aws_iam_policy" "admin_all" {
  name   = "ariari-15ocx0-admin-all"
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

resource "aws_iam_policy" "analytics_data_rw" {
  name   = "ariari-15ocx0-analytics-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-analytics-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-analytics-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "analytics_deploy_perms" {
  name   = "ariari-15ocx0-analytics-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-analytics-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-analytics-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-analytics-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-analytics-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-analytics-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "analytics_ops" {
  name   = "ariari-15ocx0-analytics-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "analytics_read" {
  name   = "ariari-15ocx0-analytics-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-analytics-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/analytics/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-analytics-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/analytics/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "ariari-15ocx0-base-readonly"
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
  name   = "ariari-15ocx0-billing-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Scan", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_deploy_perms" {
  name   = "ariari-15ocx0-billing-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-billing-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-billing-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-billing-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-billing-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_2_ops" {
  name   = "ariari-15ocx0-billing-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/billing-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/billing-2/*"]
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
  name   = "ariari-15ocx0-billing-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-billing-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/billing-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_data_rw" {
  name   = "ariari-15ocx0-billing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_deploy_perms" {
  name   = "ariari-15ocx0-billing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-billing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-billing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-billing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_ops" {
  name   = "ariari-15ocx0-billing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/billing/*"]
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
  name   = "ariari-15ocx0-billing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "ariari-15ocx0-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "claims_data_rw" {
  name   = "ariari-15ocx0-claims-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-claims-imaging"]
    },
  ]
  })
}

resource "aws_iam_policy" "claims_deploy_perms" {
  name   = "ariari-15ocx0-claims-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-claims-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-claims-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-claims-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-claims-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-claims-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "claims_ops" {
  name   = "ariari-15ocx0-claims-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "claims_read" {
  name   = "ariari-15ocx0-claims-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-claims-imaging"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_2_data_rw" {
  name   = "ariari-15ocx0-clinical-data-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-clinical-data-2-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:PutObject", "s3:GetBucketLocation", "s3:GetObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-clinical-data-2-reports", "arn:aws:s3:::ariari-15ocx0-clinical-data-2-reports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_2_deploy_perms" {
  name   = "ariari-15ocx0-clinical-data-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-clinical-data-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-clinical-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-clinical-data-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-clinical-data-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-clinical-data-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_2_ops" {
  name   = "ariari-15ocx0-clinical-data-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_2_read" {
  name   = "ariari-15ocx0-clinical-data-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-clinical-data-2-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/clinical-data-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-clinical-data-2-ehr", "arn:aws:s3:::ariari-15ocx0-clinical-data-2-ehr/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_data_rw" {
  name   = "ariari-15ocx0-clinical-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Scan", "dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-clinical-data-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-clinical-data-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:DeleteObject", "s3:GetBucketLocation", "s3:AbortMultipartUpload", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-clinical-data-imaging", "arn:aws:s3:::ariari-15ocx0-clinical-data-imaging/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_deploy_perms" {
  name   = "ariari-15ocx0-clinical-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-clinical-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-clinical-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-clinical-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-clinical-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-clinical-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_ops" {
  name   = "ariari-15ocx0-clinical-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_read" {
  name   = "ariari-15ocx0-clinical-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-clinical-data-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-clinical-data-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-clinical-data-audit", "arn:aws:s3:::ariari-15ocx0-clinical-data-audit/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "compliance_data_rw" {
  name   = "ariari-15ocx0-compliance-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:PutObject", "s3:AbortMultipartUpload", "s3:ListBucket", "s3:GetObject", "s3:DeleteObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-compliance-claims", "arn:aws:s3:::ariari-15ocx0-compliance-claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-compliance-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-compliance-ehr"]
    },
  ]
  })
}

resource "aws_iam_policy" "compliance_deploy_perms" {
  name   = "ariari-15ocx0-compliance-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-compliance-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-compliance-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-compliance-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-compliance-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-compliance-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "compliance_ops" {
  name   = "ariari-15ocx0-compliance-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/compliance/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/compliance/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "compliance_read" {
  name   = "ariari-15ocx0-compliance-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-compliance-claims", "arn:aws:s3:::ariari-15ocx0-compliance-claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-compliance-claims"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-compliance-ehr"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_2_data_rw" {
  name   = "ariari-15ocx0-imaging-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:ListBucket", "s3:AbortMultipartUpload", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-imaging-2-imaging", "arn:aws:s3:::ariari-15ocx0-imaging-2-imaging/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_2_deploy_perms" {
  name   = "ariari-15ocx0-imaging-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-imaging-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-imaging-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-imaging-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-imaging-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-imaging-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_2_ops" {
  name   = "ariari-15ocx0-imaging-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/imaging-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_2_read" {
  name   = "ariari-15ocx0-imaging-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-imaging-2-imaging", "arn:aws:s3:::ariari-15ocx0-imaging-2-imaging/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_data_rw" {
  name   = "ariari-15ocx0-imaging-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:PutObject", "s3:DeleteObject", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-imaging-imaging", "arn:aws:s3:::ariari-15ocx0-imaging-imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-imaging-claims"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_deploy_perms" {
  name   = "ariari-15ocx0-imaging-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-imaging-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-imaging-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-imaging-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-imaging-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-imaging-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_ops" {
  name   = "ariari-15ocx0-imaging-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_read" {
  name   = "ariari-15ocx0-imaging-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-imaging-claims", "arn:aws:s3:::ariari-15ocx0-imaging-claims/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-imaging-claims"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p2" {
  name   = "ariari-15ocx0-inj-legacy-p2"
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

resource "terraform_data" "inj_legacy_p2__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p2.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p2.arn} --policy-document '${self.input}'"
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

resource "aws_iam_policy" "inj_pol_p1" {
  name   = "ariari-15ocx0-inj-pol-p1"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/ariari-15ocx0-ext-eli.tanaka"]
    },
    {
      Effect   = "Deny"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/ariari-15ocx0-ext-eli.tanaka"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p10" {
  name   = "ariari-15ocx0-inj-pol-p10"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AttachUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/ariari-15ocx0-dara.brown"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p3" {
  name   = "ariari-15ocx0-inj-pol-p3"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/ariari-15ocx0-inj-legacy-p2"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p4" {
  name   = "ariari-15ocx0-inj-pol-p4"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Deny"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/ariari-15ocx0-inj-legacy-p2"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p6" {
  name   = "ariari-15ocx0-inj-pol-p6"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AddUserToGroup"]
      Resource = ["arn:aws:iam::${local.account_id}:group/ariari-15ocx0-inj-grp-g5"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p7" {
  name   = "ariari-15ocx0-inj-pol-p7"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutGroupPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:group/ariari-15ocx0-inj-grp-g5"]
      Condition = {
        DateLessThan = { "aws:TokenIssueTime" = ["2020-01-01T00:00:01Z"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p8" {
  name   = "ariari-15ocx0-inj-pol-p8"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:CreatePolicyVersion"]
      Resource = ["arn:aws:iam::aws:policy/ariari-15ocx0-inj-pol-p7"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p9" {
  name   = "ariari-15ocx0-inj-pol-p9"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutGroupPolicy"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lab_systems_data_rw" {
  name   = "ariari-15ocx0-lab-systems-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-lab-systems-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation", "s3:DeleteObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-lab-systems-reports", "arn:aws:s3:::ariari-15ocx0-lab-systems-reports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/lab-systems/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lab_systems_deploy_perms" {
  name   = "ariari-15ocx0-lab-systems-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-lab-systems-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-lab-systems-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-lab-systems-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-lab-systems-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-lab-systems-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lab_systems_ops" {
  name   = "ariari-15ocx0-lab-systems-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/lab-systems/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/lab-systems/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lab_systems_read" {
  name   = "ariari-15ocx0-lab-systems-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-lab-systems-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-lab-systems-imaging", "arn:aws:s3:::ariari-15ocx0-lab-systems-imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/lab-systems/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_2_data_rw" {
  name   = "ariari-15ocx0-patient-portal-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-2-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-2-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-patient-portal-2-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_2_deploy_perms" {
  name   = "ariari-15ocx0-patient-portal-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-patient-portal-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-patient-portal-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-patient-portal-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-patient-portal-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-patient-portal-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_2_ops" {
  name   = "ariari-15ocx0-patient-portal-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/patient-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_2_read" {
  name   = "ariari-15ocx0-patient-portal-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-2-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-2-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-patient-portal-2-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_data_rw" {
  name   = "ariari-15ocx0-patient-portal-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-claims"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_deploy_perms" {
  name   = "ariari-15ocx0-patient-portal-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-patient-portal-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-patient-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-patient-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-patient-portal-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-patient-portal-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_ops" {
  name   = "ariari-15ocx0-patient-portal-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_read" {
  name   = "ariari-15ocx0-patient-portal-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-patient-portal-claims"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_2_data_rw" {
  name   = "ariari-15ocx0-pharmacy-2-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-pharmacy-2-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-pharmacy-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/pharmacy-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_2_deploy_perms" {
  name   = "ariari-15ocx0-pharmacy-2-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-pharmacy-2-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-pharmacy-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-pharmacy-2-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-pharmacy-2-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-pharmacy-2-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_2_ops" {
  name   = "ariari-15ocx0-pharmacy-2-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/pharmacy-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/pharmacy-2/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_2_read" {
  name   = "ariari-15ocx0-pharmacy-2-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-pharmacy-2-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-pharmacy-2-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/pharmacy-2/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_data_rw" {
  name   = "ariari-15ocx0-pharmacy-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:PutObject"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-pharmacy-phi", "arn:aws:s3:::ariari-15ocx0-pharmacy-phi/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:UpdateItem", "dynamodb:Query", "dynamodb:PutItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-pharmacy-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-pharmacy-ehr"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_deploy_perms" {
  name   = "ariari-15ocx0-pharmacy-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-pharmacy-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-pharmacy-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-pharmacy-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-pharmacy-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-pharmacy-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_ops" {
  name   = "ariari-15ocx0-pharmacy-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/pharmacy/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/pharmacy/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "pharmacy_read" {
  name   = "ariari-15ocx0-pharmacy-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-pharmacy-ehr", "arn:aws:s3:::ariari-15ocx0-pharmacy-ehr/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-pharmacy-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-pharmacy-phi"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_data_rw" {
  name   = "ariari-15ocx0-research-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:Scan", "dynamodb:UpdateItem", "dynamodb:BatchGetItem", "dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-research-phi"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/research/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-research-claims"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_deploy_perms" {
  name   = "ariari-15ocx0-research-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-research-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-research-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-research-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-research-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-research-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_ops" {
  name   = "ariari-15ocx0-research-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/research/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/research/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_read" {
  name   = "ariari-15ocx0-research-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Scan", "dynamodb:GetItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-research-claims"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/research/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:ariari-15ocx0-research-phi"]
    },
  ]
  })
}

resource "aws_iam_policy" "scheduling_data_rw" {
  name   = "ariari-15ocx0-scheduling-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-scheduling-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:UpdateItem", "dynamodb:GetItem", "dynamodb:DescribeTable", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-scheduling-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/scheduling/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "scheduling_deploy_perms" {
  name   = "ariari-15ocx0-scheduling-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-scheduling-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-scheduling-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-scheduling-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-scheduling-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-scheduling-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "scheduling_ops" {
  name   = "ariari-15ocx0-scheduling-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/scheduling/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/scheduling/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "scheduling_read" {
  name   = "ariari-15ocx0-scheduling-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-scheduling-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/ariari-15ocx0-scheduling-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/scheduling/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "ariari-15ocx0-security-audit"
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
  name   = "ariari-15ocx0-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/ariari-15ocx0-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "telehealth_data_rw" {
  name   = "ariari-15ocx0-telehealth-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-telehealth-imaging"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:AbortMultipartUpload", "s3:PutObject", "s3:GetObjectVersion", "s3:ListBucket"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-telehealth-imaging", "arn:aws:s3:::ariari-15ocx0-telehealth-imaging/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "telehealth_deploy_perms" {
  name   = "ariari-15ocx0-telehealth-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/ariari-15ocx0-telehealth-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-telehealth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:ariari-15ocx0-telehealth-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/ariari-15ocx0-telehealth-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/ariari-15ocx0-telehealth-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "telehealth_ops" {
  name   = "ariari-15ocx0-telehealth-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "telehealth_read" {
  name   = "ariari-15ocx0-telehealth-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:ariari-15ocx0/telehealth/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:ariari-15ocx0-telehealth-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject"]
      Resource = ["arn:aws:s3:::ariari-15ocx0-telehealth-imaging", "arn:aws:s3:::ariari-15ocx0-telehealth-imaging/*"]
    },
  ]
  })
}
