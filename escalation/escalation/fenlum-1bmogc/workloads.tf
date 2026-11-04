data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_cloudformation_stack" "data_eng_2_stack23" {
  name          = "fenlum-1bmogc-data-eng-2-stack23"
  iam_role_arn  = aws_iam_role.data_eng_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_3_ec235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-data-eng-3-ec235" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_4_nb47" {
  name          = "fenlum-1bmogc-data-eng-4-nb47"
  role_arn      = aws_iam_role.data_eng_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_5_nb59" {
  name          = "fenlum-1bmogc-data-eng-5-nb59"
  role_arn      = aws_iam_role.data_eng_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_6_ec271" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-data-eng-6-ec271" }
}

resource "aws_instance" "data_eng_ec211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_svc.name
  tags                 = { Name = "fenlum-1bmogc-data-eng-ec211" }
}

resource "aws_sagemaker_notebook_instance" "fraud_2_nb18" {
  name          = "fenlum-1bmogc-fraud-2-nb18"
  role_arn      = aws_iam_role.fraud_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_3_nb30" {
  name          = "fenlum-1bmogc-fraud-3-nb30"
  role_arn      = aws_iam_role.fraud_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_4_nb42" {
  name          = "fenlum-1bmogc-fraud-4-nb42"
  role_arn      = aws_iam_role.fraud_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_5_stack54" {
  name          = "fenlum-1bmogc-fraud-5-stack54"
  iam_role_arn  = aws_iam_role.fraud_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_6_ec266" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-fraud-6-ec266" }
}

resource "aws_instance" "fraud_7_ec278" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_7_svc.name
  tags                 = { Name = "fenlum-1bmogc-fraud-7-ec278" }
}

resource "aws_cloudformation_stack" "fraud_stack6" {
  name          = "fenlum-1bmogc-fraud-stack6"
  iam_role_arn  = aws_iam_role.fraud_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-kyc-2-ec215" }
}

resource "aws_instance" "kyc_3_ec227" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-kyc-3-ec227" }
}

resource "aws_glue_dev_endpoint" "kyc_4_glue39" {
  name     = "fenlum-1bmogc-kyc-4-glue39"
  role_arn = aws_iam_role.kyc_4_glue_role.arn
}

resource "aws_instance" "kyc_5_ec251" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-kyc-5-ec251" }
}

resource "aws_instance" "kyc_6_ec263" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-kyc-6-ec263" }
}

resource "aws_glue_dev_endpoint" "kyc_7_glue75" {
  name     = "fenlum-1bmogc-kyc-7-glue75"
  role_arn = aws_iam_role.kyc_7_glue_role.arn
}

resource "aws_instance" "kyc_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_svc.name
  tags                 = { Name = "fenlum-1bmogc-kyc-ec23" }
}

resource "aws_instance" "ledger_2_ec213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-ledger-2-ec213" }
}

resource "aws_instance" "ledger_3_ec225" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-ledger-3-ec225" }
}

resource "aws_sagemaker_notebook_instance" "ledger_4_nb37" {
  name          = "fenlum-1bmogc-ledger-4-nb37"
  role_arn      = aws_iam_role.ledger_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_5_nb49" {
  name          = "fenlum-1bmogc-ledger-5-nb49"
  role_arn      = aws_iam_role.ledger_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_6_ec261" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-ledger-6-ec261" }
}

resource "aws_instance" "ledger_7_ec273" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_7_svc.name
  tags                 = { Name = "fenlum-1bmogc-ledger-7-ec273" }
}

resource "aws_cloudformation_stack" "ledger_stack1" {
  name          = "fenlum-1bmogc-ledger-stack1"
  iam_role_arn  = aws_iam_role.ledger_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_2_ec219" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-lending-2-ec219" }
}

resource "aws_sagemaker_notebook_instance" "lending_3_nb31" {
  name          = "fenlum-1bmogc-lending-3-nb31"
  role_arn      = aws_iam_role.lending_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_4_stack43" {
  name          = "fenlum-1bmogc-lending-4-stack43"
  iam_role_arn  = aws_iam_role.lending_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_5_ec255" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-lending-5-ec255" }
}

resource "aws_cloudformation_stack" "lending_6_stack67" {
  name          = "fenlum-1bmogc-lending-6-stack67"
  iam_role_arn  = aws_iam_role.lending_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_ec27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_svc.name
  tags                 = { Name = "fenlum-1bmogc-lending-ec27" }
}

resource "aws_instance" "mobile_2_ec221" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-mobile-2-ec221" }
}

resource "aws_sagemaker_notebook_instance" "mobile_3_nb33" {
  name          = "fenlum-1bmogc-mobile-3-nb33"
  role_arn      = aws_iam_role.mobile_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_4_ec245" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_4_svc.name
  tags                 = { Name = "fenlum-1bmogc-mobile-4-ec245" }
}

resource "aws_instance" "mobile_5_ec257" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-mobile-5-ec257" }
}

resource "aws_glue_dev_endpoint" "mobile_6_glue69" {
  name     = "fenlum-1bmogc-mobile-6-glue69"
  role_arn = aws_iam_role.mobile_6_glue_role.arn
}

resource "aws_instance" "mobile_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "fenlum-1bmogc-mobile-ec29" }
}

resource "aws_sagemaker_notebook_instance" "payments_2_nb12" {
  name          = "fenlum-1bmogc-payments-2-nb12"
  role_arn      = aws_iam_role.payments_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_3_ec224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-payments-3-ec224" }
}

resource "aws_instance" "payments_4_ec236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_4_svc.name
  tags                 = { Name = "fenlum-1bmogc-payments-4-ec236" }
}

resource "aws_sagemaker_notebook_instance" "payments_5_nb48" {
  name          = "fenlum-1bmogc-payments-5-nb48"
  role_arn      = aws_iam_role.payments_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_6_ec260" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-payments-6-ec260" }
}

resource "aws_glue_dev_endpoint" "payments_7_glue72" {
  name     = "fenlum-1bmogc-payments-7-glue72"
  role_arn = aws_iam_role.payments_7_glue_role.arn
}

resource "aws_instance" "payments_ec20" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_svc.name
  tags                 = { Name = "fenlum-1bmogc-payments-ec20" }
}

resource "aws_glue_dev_endpoint" "platform_2_glue22" {
  name     = "fenlum-1bmogc-platform-2-glue22"
  role_arn = aws_iam_role.platform_2_glue_role.arn
}

resource "aws_instance" "platform_3_ec234" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-platform-3-ec234" }
}

resource "aws_instance" "platform_4_ec246" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_4_svc.name
  tags                 = { Name = "fenlum-1bmogc-platform-4-ec246" }
}

resource "aws_cloudformation_stack" "platform_5_stack58" {
  name          = "fenlum-1bmogc-platform-5-stack58"
  iam_role_arn  = aws_iam_role.platform_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_6_ec270" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-platform-6-ec270" }
}

resource "aws_cloudformation_stack" "platform_stack10" {
  name          = "fenlum-1bmogc-platform-stack10"
  iam_role_arn  = aws_iam_role.platform_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_2_stack20" {
  name          = "fenlum-1bmogc-reporting-2-stack20"
  iam_role_arn  = aws_iam_role.reporting_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_3_ec232" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-reporting-3-ec232" }
}

resource "aws_sagemaker_notebook_instance" "reporting_4_nb44" {
  name          = "fenlum-1bmogc-reporting-4-nb44"
  role_arn      = aws_iam_role.reporting_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_5_ec256" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-reporting-5-ec256" }
}

resource "aws_instance" "reporting_6_ec268" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-reporting-6-ec268" }
}

resource "aws_sagemaker_notebook_instance" "reporting_nb8" {
  name          = "fenlum-1bmogc-reporting-nb8"
  role_arn      = aws_iam_role.reporting_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_2_nb14" {
  name          = "fenlum-1bmogc-risk-2-nb14"
  role_arn      = aws_iam_role.risk_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_3_nb26" {
  name          = "fenlum-1bmogc-risk-3-nb26"
  role_arn      = aws_iam_role.risk_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_4_stack38" {
  name          = "fenlum-1bmogc-risk-4-stack38"
  iam_role_arn  = aws_iam_role.risk_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_5_ec250" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-risk-5-ec250" }
}

resource "aws_sagemaker_notebook_instance" "risk_6_nb62" {
  name          = "fenlum-1bmogc-risk-6-nb62"
  role_arn      = aws_iam_role.risk_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_7_ec274" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_7_svc.name
  tags                 = { Name = "fenlum-1bmogc-risk-7-ec274" }
}

resource "aws_cloudformation_stack" "risk_stack2" {
  name          = "fenlum-1bmogc-risk-stack2"
  iam_role_arn  = aws_iam_role.risk_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_2_ec216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-trading-2-ec216" }
}

resource "aws_sagemaker_notebook_instance" "trading_3_nb28" {
  name          = "fenlum-1bmogc-trading-3-nb28"
  role_arn      = aws_iam_role.trading_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_4_ec240" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_4_svc.name
  tags                 = { Name = "fenlum-1bmogc-trading-4-ec240" }
}

resource "aws_glue_dev_endpoint" "trading_5_glue52" {
  name     = "fenlum-1bmogc-trading-5-glue52"
  role_arn = aws_iam_role.trading_5_glue_role.arn
}

resource "aws_cloudformation_stack" "trading_6_stack64" {
  name          = "fenlum-1bmogc-trading-6-stack64"
  iam_role_arn  = aws_iam_role.trading_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_7_ec276" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_7_svc.name
  tags                 = { Name = "fenlum-1bmogc-trading-7-ec276" }
}

resource "aws_instance" "trading_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_svc.name
  tags                 = { Name = "fenlum-1bmogc-trading-ec24" }
}

resource "aws_instance" "treasury_2_ec217" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_2_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-2-ec217" }
}

resource "aws_instance" "treasury_3_ec229" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_3_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-3-ec229" }
}

resource "aws_instance" "treasury_4_ec241" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_4_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-4-ec241" }
}

resource "aws_instance" "treasury_5_ec253" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_5_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-5-ec253" }
}

resource "aws_instance" "treasury_6_ec265" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_6_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-6-ec265" }
}

resource "aws_instance" "treasury_7_ec277" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_7_svc.name
  tags                 = { Name = "fenlum-1bmogc-treasury-7-ec277" }
}

resource "aws_glue_dev_endpoint" "treasury_glue5" {
  name     = "fenlum-1bmogc-treasury-glue5"
  role_arn = aws_iam_role.treasury_glue_role.arn
}
