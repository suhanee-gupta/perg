data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_nb0" {
  name          = "taax-zq0zi-citizen-portal-nb0"
  role_arn      = aws_iam_role.citizen_portal_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_svc.name
  tags                 = { Name = "taax-zq0zi-records-ec21" }
}
