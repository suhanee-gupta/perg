data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_sagemaker_notebook_instance" "api_2_nb13" {
  name          = "axvel-1bmofe-api-2-nb13"
  role_arn      = aws_iam_role.api_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "api_3_ec225" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.api_3_svc.name
  tags                 = { Name = "axvel-1bmofe-api-3-ec225" }
}

resource "aws_glue_dev_endpoint" "api_4_glue37" {
  name     = "axvel-1bmofe-api-4-glue37"
  role_arn = aws_iam_role.api_4_glue_role.arn
}

resource "aws_glue_dev_endpoint" "api_glue1" {
  name     = "axvel-1bmofe-api-glue1"
  role_arn = aws_iam_role.api_glue_role.arn
}

resource "aws_instance" "auth_2_ec221" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.auth_2_svc.name
  tags                 = { Name = "axvel-1bmofe-auth-2-ec221" }
}

resource "aws_instance" "auth_3_ec233" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.auth_3_svc.name
  tags                 = { Name = "axvel-1bmofe-auth-3-ec233" }
}

resource "aws_cloudformation_stack" "auth_4_stack45" {
  name          = "axvel-1bmofe-auth-4-stack45"
  iam_role_arn  = aws_iam_role.auth_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "auth_glue9" {
  name     = "axvel-1bmofe-auth-glue9"
  role_arn = aws_iam_role.auth_glue_role.arn
}

resource "aws_instance" "billing_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_2_svc.name
  tags                 = { Name = "axvel-1bmofe-billing-2-ec215" }
}

resource "aws_cloudformation_stack" "billing_3_stack27" {
  name          = "axvel-1bmofe-billing-3-stack27"
  iam_role_arn  = aws_iam_role.billing_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "billing_4_ec239" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_4_svc.name
  tags                 = { Name = "axvel-1bmofe-billing-4-ec239" }
}

resource "aws_instance" "billing_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_svc.name
  tags                 = { Name = "axvel-1bmofe-billing-ec23" }
}

resource "aws_instance" "data_2_ec219" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_2_svc.name
  tags                 = { Name = "axvel-1bmofe-data-2-ec219" }
}

resource "aws_glue_dev_endpoint" "data_3_glue31" {
  name     = "axvel-1bmofe-data-3-glue31"
  role_arn = aws_iam_role.data_3_glue_role.arn
}

resource "aws_instance" "data_4_ec243" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_4_svc.name
  tags                 = { Name = "axvel-1bmofe-data-4-ec243" }
}

resource "aws_glue_dev_endpoint" "data_glue7" {
  name     = "axvel-1bmofe-data-glue7"
  role_arn = aws_iam_role.data_glue_role.arn
}

resource "aws_instance" "growth_2_ec214" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.growth_2_svc.name
  tags                 = { Name = "axvel-1bmofe-growth-2-ec214" }
}

resource "aws_instance" "growth_3_ec226" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.growth_3_svc.name
  tags                 = { Name = "axvel-1bmofe-growth-3-ec226" }
}

resource "aws_instance" "growth_4_ec238" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.growth_4_svc.name
  tags                 = { Name = "axvel-1bmofe-growth-4-ec238" }
}

resource "aws_sagemaker_notebook_instance" "growth_nb2" {
  name          = "axvel-1bmofe-growth-nb2"
  role_arn      = aws_iam_role.growth_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "infra_2_glue17" {
  name     = "axvel-1bmofe-infra-2-glue17"
  role_arn = aws_iam_role.infra_2_glue_role.arn
}

resource "aws_instance" "infra_3_ec229" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.infra_3_svc.name
  tags                 = { Name = "axvel-1bmofe-infra-3-ec229" }
}

resource "aws_instance" "infra_4_ec241" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.infra_4_svc.name
  tags                 = { Name = "axvel-1bmofe-infra-4-ec241" }
}

resource "aws_instance" "infra_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.infra_svc.name
  tags                 = { Name = "axvel-1bmofe-infra-ec25" }
}

resource "aws_instance" "ml_2_ec223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ml_2_svc.name
  tags                 = { Name = "axvel-1bmofe-ml-2-ec223" }
}

resource "aws_sagemaker_notebook_instance" "ml_3_nb35" {
  name          = "axvel-1bmofe-ml-3-nb35"
  role_arn      = aws_iam_role.ml_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ml_ec211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ml_svc.name
  tags                 = { Name = "axvel-1bmofe-ml-ec211" }
}

resource "aws_instance" "mobile_2_ec218" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_2_svc.name
  tags                 = { Name = "axvel-1bmofe-mobile-2-ec218" }
}

resource "aws_cloudformation_stack" "mobile_3_stack30" {
  name          = "axvel-1bmofe-mobile-3-stack30"
  iam_role_arn  = aws_iam_role.mobile_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "mobile_4_glue42" {
  name     = "axvel-1bmofe-mobile-4-glue42"
  role_arn = aws_iam_role.mobile_4_glue_role.arn
}

resource "aws_instance" "mobile_ec26" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "axvel-1bmofe-mobile-ec26" }
}

resource "aws_glue_dev_endpoint" "notifications_2_glue22" {
  name     = "axvel-1bmofe-notifications-2-glue22"
  role_arn = aws_iam_role.notifications_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "notifications_3_nb34" {
  name          = "axvel-1bmofe-notifications-3-nb34"
  role_arn      = aws_iam_role.notifications_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "notifications_4_nb46" {
  name          = "axvel-1bmofe-notifications-4-nb46"
  role_arn      = aws_iam_role.notifications_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "notifications_ec210" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.notifications_svc.name
  tags                 = { Name = "axvel-1bmofe-notifications-ec210" }
}

resource "aws_instance" "search_2_ec216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.search_2_svc.name
  tags                 = { Name = "axvel-1bmofe-search-2-ec216" }
}

resource "aws_sagemaker_notebook_instance" "search_3_nb28" {
  name          = "axvel-1bmofe-search-3-nb28"
  role_arn      = aws_iam_role.search_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "search_4_nb40" {
  name          = "axvel-1bmofe-search-4-nb40"
  role_arn      = aws_iam_role.search_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "search_glue4" {
  name     = "axvel-1bmofe-search-glue4"
  role_arn = aws_iam_role.search_glue_role.arn
}

resource "aws_cloudformation_stack" "support_2_stack20" {
  name          = "axvel-1bmofe-support-2-stack20"
  iam_role_arn  = aws_iam_role.support_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "support_3_ec232" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.support_3_svc.name
  tags                 = { Name = "axvel-1bmofe-support-3-ec232" }
}

resource "aws_instance" "support_4_ec244" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.support_4_svc.name
  tags                 = { Name = "axvel-1bmofe-support-4-ec244" }
}

resource "aws_sagemaker_notebook_instance" "support_nb8" {
  name          = "axvel-1bmofe-support-nb8"
  role_arn      = aws_iam_role.support_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "web_2_glue12" {
  name     = "axvel-1bmofe-web-2-glue12"
  role_arn = aws_iam_role.web_2_glue_role.arn
}

resource "aws_instance" "web_3_ec224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.web_3_svc.name
  tags                 = { Name = "axvel-1bmofe-web-3-ec224" }
}

resource "aws_instance" "web_4_ec236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.web_4_svc.name
  tags                 = { Name = "axvel-1bmofe-web-4-ec236" }
}

resource "aws_glue_dev_endpoint" "web_glue0" {
  name     = "axvel-1bmofe-web-glue0"
  role_arn = aws_iam_role.web_glue_role.arn
}
