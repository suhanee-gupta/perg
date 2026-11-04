resource "aws_iam_policy" "admin_all" {
  name   = "kasol-zq0qg-admin-all"
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

resource "aws_iam_policy" "admissions_data_rw" {
  name   = "kasol-zq0qg-admissions-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-admissions-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes", "sns:Subscribe", "sns:Publish"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:kasol-zq0qg-admissions-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/admissions/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:DeleteMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:kasol-zq0qg-admissions-datasets"]
    },
  ]
  })
}

resource "aws_iam_policy" "admissions_deploy_perms" {
  name   = "kasol-zq0qg-admissions-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/kasol-zq0qg-admissions-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-admissions-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-admissions-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/kasol-zq0qg-admissions-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/kasol-zq0qg-admissions-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "admissions_ops" {
  name   = "kasol-zq0qg-admissions-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/admissions/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/admissions/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "admissions_read" {
  name   = "kasol-zq0qg-admissions-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-admissions-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:kasol-zq0qg-admissions-datasets"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/admissions/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:kasol-zq0qg-admissions-datasets"]
    },
  ]
  })
}

resource "aws_iam_policy" "base_readonly" {
  name   = "kasol-zq0qg-base-readonly"
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

resource "aws_iam_policy" "ci_assume" {
  name   = "kasol-zq0qg-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/kasol-zq0qg-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p1" {
  name   = "kasol-zq0qg-inj-pol-p1"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutUserPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:user/kasol-zq0qg-ext-fay.wong"]
    },
  ]
  })
}

resource "aws_iam_policy" "library_data_rw" {
  name   = "kasol-zq0qg-library-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:kasol-zq0qg-library-datasets"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem", "dynamodb:GetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-library-datasets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-library-datasets", "arn:aws:s3:::kasol-zq0qg-library-datasets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "library_deploy_perms" {
  name   = "kasol-zq0qg-library-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/kasol-zq0qg-library-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-library-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-library-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/kasol-zq0qg-library-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/kasol-zq0qg-library-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "library_ops" {
  name   = "kasol-zq0qg-library-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/library/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/library/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "library_read" {
  name   = "kasol-zq0qg-library-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:kasol-zq0qg-library-datasets"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-library-datasets"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetObject", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-library-datasets", "arn:aws:s3:::kasol-zq0qg-library-datasets/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lms_data_rw" {
  name   = "kasol-zq0qg-lms-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/lms/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-lms-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:PutObject", "s3:ListBucket", "s3:DeleteObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-lms-reports", "arn:aws:s3:::kasol-zq0qg-lms-reports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lms_deploy_perms" {
  name   = "kasol-zq0qg-lms-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/kasol-zq0qg-lms-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-lms-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-lms-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/kasol-zq0qg-lms-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/kasol-zq0qg-lms-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lms_ops" {
  name   = "kasol-zq0qg-lms-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/lms/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/lms/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "lms_read" {
  name   = "kasol-zq0qg-lms-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/lms/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Query", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-lms-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-lms-reports", "arn:aws:s3:::kasol-zq0qg-lms-reports/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_computing_data_rw" {
  name   = "kasol-zq0qg-research-computing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:GetItem", "dynamodb:Query", "dynamodb:PutItem", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-research-computing-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:GetObject", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-research-computing-courseware", "arn:aws:s3:::kasol-zq0qg-research-computing-courseware/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:kasol-zq0qg-research-computing-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:kasol-zq0qg/research-computing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_computing_deploy_perms" {
  name   = "kasol-zq0qg-research-computing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/kasol-zq0qg-research-computing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-research-computing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:kasol-zq0qg-research-computing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/kasol-zq0qg-research-computing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/kasol-zq0qg-research-computing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_computing_ops" {
  name   = "kasol-zq0qg-research-computing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/kasol-zq0qg/research-computing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParametersByPath", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/kasol-zq0qg/research-computing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudwatch:PutMetricData"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "research_computing_read" {
  name   = "kasol-zq0qg-research-computing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/kasol-zq0qg-research-computing-submissions"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:ListBucket", "s3:GetBucketLocation", "s3:GetObject", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::kasol-zq0qg-research-computing-submissions", "arn:aws:s3:::kasol-zq0qg-research-computing-submissions/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:kasol-zq0qg-research-computing-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:kasol-zq0qg/research-computing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "kasol-zq0qg-security-audit"
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
  name   = "kasol-zq0qg-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/kasol-zq0qg-*"]
    },
  ]
  })
}
