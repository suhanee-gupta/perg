data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "billing_ec22" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_svc.name
  tags                 = { Name = "ariari-15ocx0-billing-ec22" }
}

resource "aws_instance" "claims_ec27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.claims_svc.name
  tags                 = { Name = "ariari-15ocx0-claims-ec27" }
}

resource "aws_glue_dev_endpoint" "clinical_data_glue0" {
  name     = "ariari-15ocx0-clinical-data-glue0"
  role_arn = aws_iam_role.clinical_data_glue_role.arn
}

resource "aws_instance" "imaging_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.imaging_svc.name
  tags                 = { Name = "ariari-15ocx0-imaging-ec23" }
}

resource "aws_instance" "patient_portal_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.patient_portal_svc.name
  tags                 = { Name = "ariari-15ocx0-patient-portal-ec21" }
}

resource "aws_sagemaker_notebook_instance" "pharmacy_nb4" {
  name          = "ariari-15ocx0-pharmacy-nb4"
  role_arn      = aws_iam_role.pharmacy_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "research_nb6" {
  name          = "ariari-15ocx0-research-nb6"
  role_arn      = aws_iam_role.research_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "telehealth_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.telehealth_svc.name
  tags                 = { Name = "ariari-15ocx0-telehealth-ec25" }
}
