data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_glue_dev_endpoint" "admissions_glue0" {
  name     = "kasol-zq0qg-admissions-glue0"
  role_arn = aws_iam_role.admissions_glue_role.arn
}

resource "aws_instance" "lms_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lms_svc.name
  tags                 = { Name = "kasol-zq0qg-lms-ec21" }
}
