data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_sagemaker_notebook_instance" "api_nb1" {
  name          = "lumzen-15ocuk-api-nb1"
  role_arn      = aws_iam_role.api_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "auth_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.auth_svc.name
  tags                 = { Name = "lumzen-15ocuk-auth-ec29" }
}

resource "aws_glue_dev_endpoint" "billing_glue3" {
  name     = "lumzen-15ocuk-billing-glue3"
  role_arn = aws_iam_role.billing_glue_role.arn
}

resource "aws_instance" "data_ec27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_svc.name
  tags                 = { Name = "lumzen-15ocuk-data-ec27" }
}

resource "aws_instance" "growth_ec22" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.growth_svc.name
  tags                 = { Name = "lumzen-15ocuk-growth-ec22" }
}

resource "aws_instance" "infra_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.infra_svc.name
  tags                 = { Name = "lumzen-15ocuk-infra-ec25" }
}

resource "aws_instance" "mobile_ec26" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "lumzen-15ocuk-mobile-ec26" }
}

resource "aws_sagemaker_notebook_instance" "notifications_nb10" {
  name          = "lumzen-15ocuk-notifications-nb10"
  role_arn      = aws_iam_role.notifications_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "search_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.search_svc.name
  tags                 = { Name = "lumzen-15ocuk-search-ec24" }
}

resource "aws_cloudformation_stack" "support_stack8" {
  name          = "lumzen-15ocuk-support-stack8"
  iam_role_arn  = aws_iam_role.support_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "web_glue0" {
  name     = "lumzen-15ocuk-web-glue0"
  role_arn = aws_iam_role.web_glue_role.arn
}
