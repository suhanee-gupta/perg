data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "api_2_ec213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.api_2_svc.name
  tags                 = { Name = "axtri-1bmokt-api-2-ec213" }
}

resource "aws_sagemaker_notebook_instance" "api_nb1" {
  name          = "axtri-1bmokt-api-nb1"
  role_arn      = aws_iam_role.api_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "auth_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.auth_svc.name
  tags                 = { Name = "axtri-1bmokt-auth-ec29" }
}

resource "aws_instance" "billing_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_2_svc.name
  tags                 = { Name = "axtri-1bmokt-billing-2-ec215" }
}

resource "aws_cloudformation_stack" "billing_stack3" {
  name          = "axtri-1bmokt-billing-stack3"
  iam_role_arn  = aws_iam_role.billing_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "data_glue7" {
  name     = "axtri-1bmokt-data-glue7"
  role_arn = aws_iam_role.data_glue_role.arn
}

resource "aws_instance" "growth_2_ec214" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.growth_2_svc.name
  tags                 = { Name = "axtri-1bmokt-growth-2-ec214" }
}

resource "aws_glue_dev_endpoint" "growth_glue2" {
  name     = "axtri-1bmokt-growth-glue2"
  role_arn = aws_iam_role.growth_glue_role.arn
}

resource "aws_cloudformation_stack" "infra_stack5" {
  name          = "axtri-1bmokt-infra-stack5"
  iam_role_arn  = aws_iam_role.infra_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "inj_ec2_w11" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r10.name
  tags                 = { Name = "axtri-1bmokt-inj-ec2-w11" }
}

resource "aws_glue_dev_endpoint" "inj_glue_w15" {
  name     = "axtri-1bmokt-inj-glue-w15"
  role_arn = aws_iam_role.inj_glue_exec_r14.arn
}

resource "aws_instance" "ml_ec211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ml_svc.name
  tags                 = { Name = "axtri-1bmokt-ml-ec211" }
}

resource "aws_instance" "mobile_ec26" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "axtri-1bmokt-mobile-ec26" }
}

resource "aws_cloudformation_stack" "notifications_stack10" {
  name          = "axtri-1bmokt-notifications-stack10"
  iam_role_arn  = aws_iam_role.notifications_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "search_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.search_svc.name
  tags                 = { Name = "axtri-1bmokt-search-ec24" }
}

resource "aws_cloudformation_stack" "support_stack8" {
  name          = "axtri-1bmokt-support-stack8"
  iam_role_arn  = aws_iam_role.support_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "web_2_stack12" {
  name          = "axtri-1bmokt-web-2-stack12"
  iam_role_arn  = aws_iam_role.web_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "web_stack0" {
  name          = "axtri-1bmokt-web-stack0"
  iam_role_arn  = aws_iam_role.web_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}
