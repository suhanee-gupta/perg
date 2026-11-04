data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_sagemaker_notebook_instance" "api_nb1" {
  name          = "aridel-15oczk-api-nb1"
  role_arn      = aws_iam_role.api_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "auth_stack9" {
  name          = "aridel-15oczk-auth-stack9"
  iam_role_arn  = aws_iam_role.auth_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "billing_nb3" {
  name          = "aridel-15oczk-billing-nb3"
  role_arn      = aws_iam_role.billing_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_nb7" {
  name          = "aridel-15oczk-data-nb7"
  role_arn      = aws_iam_role.data_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "growth_stack2" {
  name          = "aridel-15oczk-growth-stack2"
  iam_role_arn  = aws_iam_role.growth_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "infra_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.infra_svc.name
  tags                 = { Name = "aridel-15oczk-infra-ec25" }
}

resource "aws_instance" "inj_ec2_w14" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r13.name
  tags                 = { Name = "aridel-15oczk-inj-ec2-w14" }
}

resource "aws_glue_dev_endpoint" "mobile_glue6" {
  name     = "aridel-15oczk-mobile-glue6"
  role_arn = aws_iam_role.mobile_glue_role.arn
}

resource "aws_cloudformation_stack" "notifications_stack10" {
  name          = "aridel-15oczk-notifications-stack10"
  iam_role_arn  = aws_iam_role.notifications_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "search_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.search_svc.name
  tags                 = { Name = "aridel-15oczk-search-ec24" }
}

resource "aws_sagemaker_notebook_instance" "support_nb8" {
  name          = "aridel-15oczk-support-nb8"
  role_arn      = aws_iam_role.support_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "web_ec20" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.web_svc.name
  tags                 = { Name = "aridel-15oczk-web-ec20" }
}
