data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "analytics_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.analytics_svc.name
  tags                 = { Name = "arifen-15ocxf-analytics-ec29" }
}

resource "aws_instance" "billing_ec22" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.billing_svc.name
  tags                 = { Name = "arifen-15ocxf-billing-ec22" }
}

resource "aws_cloudformation_stack" "claims_stack7" {
  name          = "arifen-15ocxf-claims-stack7"
  iam_role_arn  = aws_iam_role.claims_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "clinical_data_stack0" {
  name          = "arifen-15ocxf-clinical-data-stack0"
  iam_role_arn  = aws_iam_role.clinical_data_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "compliance_ec210" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.compliance_svc.name
  tags                 = { Name = "arifen-15ocxf-compliance-ec210" }
}

resource "aws_sagemaker_notebook_instance" "imaging_nb3" {
  name          = "arifen-15ocxf-imaging-nb3"
  role_arn      = aws_iam_role.imaging_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "patient_portal_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.patient_portal_svc.name
  tags                 = { Name = "arifen-15ocxf-patient-portal-ec21" }
}

resource "aws_instance" "pharmacy_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.pharmacy_svc.name
  tags                 = { Name = "arifen-15ocxf-pharmacy-ec24" }
}

resource "aws_sagemaker_notebook_instance" "research_nb6" {
  name          = "arifen-15ocxf-research-nb6"
  role_arn      = aws_iam_role.research_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "scheduling_nb8" {
  name          = "arifen-15ocxf-scheduling-nb8"
  role_arn      = aws_iam_role.scheduling_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "telehealth_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.telehealth_svc.name
  tags                 = { Name = "arifen-15ocxf-telehealth-ec25" }
}
