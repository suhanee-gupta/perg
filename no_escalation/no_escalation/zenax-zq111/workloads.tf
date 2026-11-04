data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "citizen_portal_ec20" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_svc.name
  tags                 = { Name = "zenax-zq111-citizen-portal-ec20" }
}

resource "aws_instance" "inj_ec2_w4" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r3.name
  tags                 = { Name = "zenax-zq111-inj-ec2-w4" }
}

resource "aws_instance" "records_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_svc.name
  tags                 = { Name = "zenax-zq111-records-ec21" }
}
