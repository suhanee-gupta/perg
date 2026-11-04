resource "aws_iam_policy" "admin_all" {
  name   = "rynor-zq0uj-admin-all"
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
  name   = "rynor-zq0uj-base-readonly"
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

resource "aws_iam_policy" "billing_data_rw" {
  name   = "rynor-zq0uj-billing-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:rynor-zq0uj/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_deploy_perms" {
  name   = "rynor-zq0uj-billing-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/rynor-zq0uj-billing-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-billing-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/rynor-zq0uj-billing-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/rynor-zq0uj-billing-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "billing_ops" {
  name   = "rynor-zq0uj-billing-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:PutLogEvents", "logs:GetLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/billing/*"]
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
  name   = "rynor-zq0uj-billing-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:rynor-zq0uj/billing/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/billing/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "ci_assume" {
  name   = "rynor-zq0uj-ci-assume"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sts:AssumeRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/rynor-zq0uj-*-deploy"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_data_rw" {
  name   = "rynor-zq0uj-clinical-data-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-clinical-data-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:DeleteMessage", "sqs:GetQueueAttributes", "sqs:ReceiveMessage", "sqs:SendMessage"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:rynor-zq0uj-clinical-data-audit"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:PutItem", "dynamodb:Query", "dynamodb:BatchGetItem", "dynamodb:UpdateItem", "dynamodb:Scan"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/rynor-zq0uj-clinical-data-ehr"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_deploy_perms" {
  name   = "rynor-zq0uj-clinical-data-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/rynor-zq0uj-clinical-data-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-clinical-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-clinical-data-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/rynor-zq0uj-clinical-data-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/rynor-zq0uj-clinical-data-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "clinical_data_ops" {
  name   = "rynor-zq0uj-clinical-data-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParametersByPath", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/clinical-data/*"]
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
  name   = "rynor-zq0uj-clinical-data-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-clinical-data-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:rynor-zq0uj-clinical-data-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/clinical-data/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["dynamodb:BatchGetItem", "dynamodb:Query", "dynamodb:DescribeTable"]
      Resource = ["arn:aws:dynamodb:${var.region}:${local.account_id}:table/rynor-zq0uj-clinical-data-ehr"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_data_rw" {
  name   = "rynor-zq0uj-imaging-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:rynor-zq0uj-imaging-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObjectVersion", "s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::rynor-zq0uj-imaging-audit", "arn:aws:s3:::rynor-zq0uj-imaging-audit/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-imaging-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_deploy_perms" {
  name   = "rynor-zq0uj-imaging-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/rynor-zq0uj-imaging-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-imaging-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-imaging-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/rynor-zq0uj-imaging-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/rynor-zq0uj-imaging-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "imaging_ops" {
  name   = "rynor-zq0uj-imaging-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents", "logs:CreateLogStream"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameters", "ssm:GetParameter"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/imaging/*"]
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
  name   = "rynor-zq0uj-imaging-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/imaging/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sqs:ReceiveMessage", "sqs:GetQueueAttributes"]
      Resource = ["arn:aws:sqs:${var.region}:${local.account_id}:rynor-zq0uj-imaging-reports"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Resource = ["arn:aws:s3:::rynor-zq0uj-imaging-reports", "arn:aws:s3:::rynor-zq0uj-imaging-reports/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-imaging-audit"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_legacy_p5" {
  name   = "rynor-zq0uj-inj-legacy-p5"
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

resource "terraform_data" "inj_legacy_p5__v2" {
  triggers_replace = aws_iam_policy.inj_legacy_p5.arn
  provisioner "local-exec" {
    command = "aws iam create-policy-version --policy-arn ${aws_iam_policy.inj_legacy_p5.arn} --policy-document '${self.input}'"
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

resource "aws_iam_policy" "inj_pol_p10" {
  name   = "rynor-zq0uj-inj-pol-p10"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:CreateAccessKey"]
      Resource = ["arn:aws:iam::${local.account_id}:user/rynor-zq0uj-inj-svc-u9"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p11" {
  name   = "rynor-zq0uj-inj-pol-p11"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      NotAction = ["account:*", "organizations:*"]
      Resource = ["*"]
      Condition = {
        Bool = { "aws:SecureTransport" = ["true"] }
      }
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p4" {
  name   = "rynor-zq0uj-inj-pol-p4"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:UpdateAssumeRolePolicy"]
      Resource = ["*"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p6" {
  name   = "rynor-zq0uj-inj-pol-p6"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:SetDefaultPolicyVersion"]
      Resource = ["arn:aws:iam::${local.account_id}:policy/rynor-zq0uj-inj-legacy-p5"]
    },
  ]
  })
}

resource "aws_iam_policy" "inj_pol_p8" {
  name   = "rynor-zq0uj-inj-pol-p8"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:AddUserToGroup"]
      Resource = ["arn:aws:iam::${local.account_id}:group/rynor-zq0uj-inj-grp-g7"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_data_rw" {
  name   = "rynor-zq0uj-patient-portal-data-rw"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:rynor-zq0uj/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:Publish", "sns:GetTopicAttributes", "sns:Subscribe"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-patient-portal-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:CreateLogStream", "logs:GetLogEvents", "logs:PutLogEvents", "logs:DescribeLogStreams"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:DeleteObject", "s3:GetBucketLocation", "s3:PutObject", "s3:ListBucket", "s3:GetObject", "s3:GetObjectVersion", "s3:AbortMultipartUpload"]
      Resource = ["arn:aws:s3:::rynor-zq0uj-patient-portal-phi", "arn:aws:s3:::rynor-zq0uj-patient-portal-phi/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_deploy_perms" {
  name   = "rynor-zq0uj-patient-portal-deploy-perms"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:PassRole"]
      Resource = ["arn:aws:iam::${local.account_id}:role/rynor-zq0uj-patient-portal-svc"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:CreateFunction", "lambda:UpdateFunctionConfiguration", "lambda:InvokeFunction", "lambda:GetFunction"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-patient-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["lambda:UpdateFunctionCode"]
      Resource = ["arn:aws:lambda:${var.region}:${local.account_id}:function:rynor-zq0uj-patient-portal-*"]
    },
    {
      Effect   = "Allow"
      Action   = ["cloudformation:UpdateStack", "cloudformation:DescribeStacks", "sagemaker:CreatePresignedNotebookInstanceUrl"]
      Resource = ["arn:aws:cloudformation:${var.region}:${local.account_id}:stack/rynor-zq0uj-patient-portal-*", "arn:aws:sagemaker:${var.region}:${local.account_id}:notebook-instance/rynor-zq0uj-patient-portal-*"]
    },
  ]
  })
}

resource "aws_iam_policy" "patient_portal_ops" {
  name   = "rynor-zq0uj-patient-portal-ops"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["logs:GetLogEvents", "logs:PutLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"]
      Resource = ["arn:aws:ssm:${var.region}:${local.account_id}:parameter/rynor-zq0uj/patient-portal/*"]
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
  name   = "rynor-zq0uj-patient-portal-read"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:GetSecretValue"]
      Resource = ["arn:aws:secretsmanager:${var.region}:${local.account_id}:secret:rynor-zq0uj/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["sns:GetTopicAttributes"]
      Resource = ["arn:aws:sns:${var.region}:${local.account_id}:rynor-zq0uj-patient-portal-ehr"]
    },
    {
      Effect   = "Allow"
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents"]
      Resource = ["arn:aws:logs:${var.region}:${local.account_id}:log-group:/rynor-zq0uj/patient-portal/*"]
    },
    {
      Effect   = "Allow"
      Action   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObjectVersion"]
      Resource = ["arn:aws:s3:::rynor-zq0uj-patient-portal-phi", "arn:aws:s3:::rynor-zq0uj-patient-portal-phi/*"]
    },
  ]
  })
}

resource "aws_iam_policy" "security_audit" {
  name   = "rynor-zq0uj-security-audit"
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
  name   = "rynor-zq0uj-self-service"
  policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect   = "Allow"
      Action   = ["iam:GetUser", "iam:ListMFADevices", "iam:ListAccessKeys", "iam:GetAccountSummary"]
      Resource = ["arn:aws:iam::${local.account_id}:user/rynor-zq0uj-*"]
    },
  ]
  })
}
