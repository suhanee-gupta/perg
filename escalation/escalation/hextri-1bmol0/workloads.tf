data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "audit_2_ec222" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_2_svc.name
  tags                 = { Name = "hextri-1bmol0-audit-2-ec222" }
}

resource "aws_instance" "audit_3_ec234" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_3_svc.name
  tags                 = { Name = "hextri-1bmol0-audit-3-ec234" }
}

resource "aws_sagemaker_notebook_instance" "audit_nb10" {
  name          = "hextri-1bmol0-audit-nb10"
  role_arn      = aws_iam_role.audit_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_2_ec223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_2_svc.name
  tags                 = { Name = "hextri-1bmol0-benefits-2-ec223" }
}

resource "aws_instance" "benefits_3_ec235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_3_svc.name
  tags                 = { Name = "hextri-1bmol0-benefits-3-ec235" }
}

resource "aws_sagemaker_notebook_instance" "benefits_nb11" {
  name          = "hextri-1bmol0-benefits-nb11"
  role_arn      = aws_iam_role.benefits_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_2_stack12" {
  name          = "hextri-1bmol0-citizen-portal-2-stack12"
  iam_role_arn  = aws_iam_role.citizen_portal_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_3_ec224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_3_svc.name
  tags                 = { Name = "hextri-1bmol0-citizen-portal-3-ec224" }
}

resource "aws_cloudformation_stack" "citizen_portal_4_stack36" {
  name          = "hextri-1bmol0-citizen-portal-4-stack36"
  iam_role_arn  = aws_iam_role.citizen_portal_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "citizen_portal_stack0" {
  name          = "hextri-1bmol0-citizen-portal-stack0"
  iam_role_arn  = aws_iam_role.citizen_portal_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_2_svc.name
  tags                 = { Name = "hextri-1bmol0-gis-2-ec215" }
}

resource "aws_glue_dev_endpoint" "gis_3_glue27" {
  name     = "hextri-1bmol0-gis-3-glue27"
  role_arn = aws_iam_role.gis_3_glue_role.arn
}

resource "aws_cloudformation_stack" "gis_4_stack39" {
  name          = "hextri-1bmol0-gis-4-stack39"
  iam_role_arn  = aws_iam_role.gis_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_svc.name
  tags                 = { Name = "hextri-1bmol0-gis-ec23" }
}

resource "aws_instance" "hr_2_ec220" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_2_svc.name
  tags                 = { Name = "hextri-1bmol0-hr-2-ec220" }
}

resource "aws_sagemaker_notebook_instance" "hr_3_nb32" {
  name          = "hextri-1bmol0-hr-3-nb32"
  role_arn      = aws_iam_role.hr_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "hr_4_nb44" {
  name          = "hextri-1bmol0-hr-4-nb44"
  role_arn      = aws_iam_role.hr_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "hr_stack8" {
  name          = "hextri-1bmol0-hr-stack8"
  iam_role_arn  = aws_iam_role.hr_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "it_ops_2_stack21" {
  name          = "hextri-1bmol0-it-ops-2-stack21"
  iam_role_arn  = aws_iam_role.it_ops_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "it_ops_3_nb33" {
  name          = "hextri-1bmol0-it-ops-3-nb33"
  role_arn      = aws_iam_role.it_ops_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_svc.name
  tags                 = { Name = "hextri-1bmol0-it-ops-ec29" }
}

resource "aws_sagemaker_notebook_instance" "licensing_2_nb14" {
  name          = "hextri-1bmol0-licensing-2-nb14"
  role_arn      = aws_iam_role.licensing_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_3_nb26" {
  name          = "hextri-1bmol0-licensing-3-nb26"
  role_arn      = aws_iam_role.licensing_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_4_stack38" {
  name          = "hextri-1bmol0-licensing-4-stack38"
  iam_role_arn  = aws_iam_role.licensing_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_ec22" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_svc.name
  tags                 = { Name = "hextri-1bmol0-licensing-ec22" }
}

resource "aws_cloudformation_stack" "open_data_2_stack19" {
  name          = "hextri-1bmol0-open-data-2-stack19"
  iam_role_arn  = aws_iam_role.open_data_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "open_data_3_nb31" {
  name          = "hextri-1bmol0-open-data-3-nb31"
  role_arn      = aws_iam_role.open_data_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_4_ec243" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_4_svc.name
  tags                 = { Name = "hextri-1bmol0-open-data-4-ec243" }
}

resource "aws_instance" "open_data_ec27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_svc.name
  tags                 = { Name = "hextri-1bmol0-open-data-ec27" }
}

resource "aws_glue_dev_endpoint" "procurement_2_glue16" {
  name     = "hextri-1bmol0-procurement-2-glue16"
  role_arn = aws_iam_role.procurement_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "procurement_3_nb28" {
  name          = "hextri-1bmol0-procurement-3-nb28"
  role_arn      = aws_iam_role.procurement_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_4_ec240" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_4_svc.name
  tags                 = { Name = "hextri-1bmol0-procurement-4-ec240" }
}

resource "aws_instance" "procurement_ec24" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_svc.name
  tags                 = { Name = "hextri-1bmol0-procurement-ec24" }
}

resource "aws_glue_dev_endpoint" "public_safety_2_glue18" {
  name     = "hextri-1bmol0-public-safety-2-glue18"
  role_arn = aws_iam_role.public_safety_2_glue_role.arn
}

resource "aws_instance" "public_safety_3_ec230" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_3_svc.name
  tags                 = { Name = "hextri-1bmol0-public-safety-3-ec230" }
}

resource "aws_instance" "public_safety_4_ec242" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_4_svc.name
  tags                 = { Name = "hextri-1bmol0-public-safety-4-ec242" }
}

resource "aws_instance" "public_safety_ec26" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_svc.name
  tags                 = { Name = "hextri-1bmol0-public-safety-ec26" }
}

resource "aws_instance" "records_2_ec213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_2_svc.name
  tags                 = { Name = "hextri-1bmol0-records-2-ec213" }
}

resource "aws_glue_dev_endpoint" "records_3_glue25" {
  name     = "hextri-1bmol0-records-3-glue25"
  role_arn = aws_iam_role.records_3_glue_role.arn
}

resource "aws_instance" "records_4_ec237" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_4_svc.name
  tags                 = { Name = "hextri-1bmol0-records-4-ec237" }
}

resource "aws_cloudformation_stack" "records_stack1" {
  name          = "hextri-1bmol0-records-stack1"
  iam_role_arn  = aws_iam_role.records_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "tax_2_stack17" {
  name          = "hextri-1bmol0-tax-2-stack17"
  iam_role_arn  = aws_iam_role.tax_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "tax_3_glue29" {
  name     = "hextri-1bmol0-tax-3-glue29"
  role_arn = aws_iam_role.tax_3_glue_role.arn
}

resource "aws_glue_dev_endpoint" "tax_4_glue41" {
  name     = "hextri-1bmol0-tax-4-glue41"
  role_arn = aws_iam_role.tax_4_glue_role.arn
}

resource "aws_instance" "tax_ec25" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_svc.name
  tags                 = { Name = "hextri-1bmol0-tax-ec25" }
}
