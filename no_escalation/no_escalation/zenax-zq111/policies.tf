resource "aws_iam_policy" "admin_all" {
  name   = "zenax-zq111-admin-all"
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

resource "aws_iam_policy" "base_readonly" {
  name   = "zenax-zq111-base-readonly"
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
  name   = "zenax-zq111-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/zenax-zq111-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_data_rw" {
  name   = "zenax-zq111-citizen-portal-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-citizen-portal-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:zenax-zq111-citizen-portal-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-citizen-portal-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_deploy_perms" {
  name   = "zenax-zq111-citizen-portal-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/zenax-zq111-citizen-portal-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-citizen-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-citizen-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/zenax-zq111-citizen-portal-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/zenax-zq111-citizen-portal-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "citizen_portal_ops" {
  name   = "zenax-zq111-citizen-portal-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/citizen-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/zenax-zq111/citizen-portal/*"]
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
  name   = "zenax-zq111-citizen-portal-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-citizen-portal-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:zenax-zq111-citizen-portal-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-citizen-portal-records"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_data_rw" {
  name   = "zenax-zq111-gis-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-gis-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:UpdateItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-gis-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_deploy_perms" {
  name   = "zenax-zq111-gis-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/zenax-zq111-gis-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-gis-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-gis-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/zenax-zq111-gis-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/zenax-zq111-gis-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "gis_ops" {
  name   = "zenax-zq111-gis-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/zenax-zq111/gis/*"]
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
  name   = "zenax-zq111-gis-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/gis/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-gis-public-data"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:GetItem", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-gis-public-data"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p1" {
  name   = "zenax-zq111-inj-legacy-p1"
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

resource "terraform_data" "inj_legacy_p1__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p1.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p1.arn} --policy-document '${self.input}'"
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

resource "aws_iam_policy" "inj_legacy_p6" {
  name   = "zenax-zq111-inj-legacy-p6"
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

resource "aws_iam_policy" "inj_pol_p2" {
  name   = "zenax-zq111-inj-pol-p2"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/zenax-zq111-inj-legacy-p1"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p5" {
  name   = "zenax-zq111-inj-pol-p5"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:SendCommand"]
      Resource = ["arn:aws:ec2:${var.region}:${local.account_id}:instance/${aws_instance.inj_ec2_w4.id}"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p7" {
  name   = "zenax-zq111-inj-pol-p7"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/zenax-zq111-inj-legacy-p6"]
    },
    {
      Effect   = "Deny"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/zenax-zq111-inj-legacy-p6"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p8" {
  name   = "zenax-zq111-inj-pol-p8"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PutGroupPolicy"]
      Resource = ["arn:aws:iam::${local.account_id}:group/zenax-zq111-records-devs"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_data_rw" {
  name   = "zenax-zq111-licensing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-licensing-records"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/licensing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_deploy_perms" {
  name   = "zenax-zq111-licensing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/zenax-zq111-licensing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-licensing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-licensing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/zenax-zq111-licensing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/zenax-zq111-licensing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "licensing_ops" {
  name   = "zenax-zq111-licensing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/licensing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/zenax-zq111/licensing/*"]
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
  name   = "zenax-zq111-licensing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["dynamodb:DescribeTable", "dynamodb:GetItem", "dynamodb:Scan", "dynamodb:BatchGetItem"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-licensing-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/licensing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_data_rw" {
  name   = "zenax-zq111-records-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:zenax-zq111/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:SendMessage", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-records-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:Scan", "dynamodb:DescribeTable", "dynamodb:PutItem", "dynamodb:Query"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-records-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_deploy_perms" {
  name   = "zenax-zq111-records-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/zenax-zq111-records-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-records-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:zenax-zq111-records-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/zenax-zq111-records-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/zenax-zq111-records-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "records_ops" {
  name   = "zenax-zq111-records-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:CreateLogStream", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/zenax-zq111/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/zenax-zq111/records/*"]
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
  name   = "zenax-zq111-records-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:zenax-zq111/records/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:GetQueueAttributes", "sqs:ReceiveMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:zenax-zq111-records-backups"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:GetItem", "dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:DescribeTable", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/zenax-zq111-records-backups"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "zenax-zq111-security-audit"
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
  name   = "zenax-zq111-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/zenax-zq111-*"]
    },
  ]
  })
}
