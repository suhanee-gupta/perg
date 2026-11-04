data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "data_eng_10_ec2119" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_10_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-10-ec2119" }
}

resource "aws_instance" "data_eng_10_ec21919" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_10_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-10-ec21919" }
}

resource "aws_cloudformation_stack" "data_eng_10_stack1319" {
  name          = "solor-1njchy-data-eng-10-stack1319"
  iam_role_arn  = aws_iam_role.data_eng_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "data_eng_10_stack719" {
  name          = "solor-1njchy-data-eng-10-stack719"
  iam_role_arn  = aws_iam_role.data_eng_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_11_ec2131" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_11_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-11-ec2131" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_11_nb1331" {
  name          = "solor-1njchy-data-eng-11-nb1331"
  role_arn      = aws_iam_role.data_eng_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_11_nb1931" {
  name          = "solor-1njchy-data-eng-11-nb1931"
  role_arn      = aws_iam_role.data_eng_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_11_nb731" {
  name          = "solor-1njchy-data-eng-11-nb731"
  role_arn      = aws_iam_role.data_eng_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_12_ec21343" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_12_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-12-ec21343" }
}

resource "aws_instance" "data_eng_12_ec2143" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_12_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-12-ec2143" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_12_nb1943" {
  name          = "solor-1njchy-data-eng-12-nb1943"
  role_arn      = aws_iam_role.data_eng_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_12_nb743" {
  name          = "solor-1njchy-data-eng-12-nb743"
  role_arn      = aws_iam_role.data_eng_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_13_ec2155" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_13_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-13-ec2155" }
}

resource "aws_instance" "data_eng_13_ec21955" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_13_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-13-ec21955" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_13_nb1355" {
  name          = "solor-1njchy-data-eng-13-nb1355"
  role_arn      = aws_iam_role.data_eng_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_13_nb755" {
  name          = "solor-1njchy-data-eng-13-nb755"
  role_arn      = aws_iam_role.data_eng_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_14_ec21367" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_14_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-14-ec21367" }
}

resource "aws_glue_dev_endpoint" "data_eng_14_glue167" {
  name     = "solor-1njchy-data-eng-14-glue167"
  role_arn = aws_iam_role.data_eng_14_glue_role.arn
}

resource "aws_glue_dev_endpoint" "data_eng_14_glue767" {
  name     = "solor-1njchy-data-eng-14-glue767"
  role_arn = aws_iam_role.data_eng_14_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_14_stack1967" {
  name          = "solor-1njchy-data-eng-14-stack1967"
  iam_role_arn  = aws_iam_role.data_eng_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_15_ec2179" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_15_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-15-ec2179" }
}

resource "aws_glue_dev_endpoint" "data_eng_15_glue1379" {
  name     = "solor-1njchy-data-eng-15-glue1379"
  role_arn = aws_iam_role.data_eng_15_glue_role.arn
}

resource "aws_glue_dev_endpoint" "data_eng_15_glue779" {
  name     = "solor-1njchy-data-eng-15-glue779"
  role_arn = aws_iam_role.data_eng_15_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_15_nb1979" {
  name          = "solor-1njchy-data-eng-15-nb1979"
  role_arn      = aws_iam_role.data_eng_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_16_ec21391" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_16_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-16-ec21391" }
}

resource "aws_instance" "data_eng_16_ec2191" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_16_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-16-ec2191" }
}

resource "aws_instance" "data_eng_16_ec21991" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_16_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-16-ec21991" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_16_nb791" {
  name          = "solor-1njchy-data-eng-16-nb791"
  role_arn      = aws_iam_role.data_eng_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_17_ec21403" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_17_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-17-ec21403" }
}

resource "aws_glue_dev_endpoint" "data_eng_17_glue803" {
  name     = "solor-1njchy-data-eng-17-glue803"
  role_arn = aws_iam_role.data_eng_17_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_17_stack203" {
  name          = "solor-1njchy-data-eng-17-stack203"
  iam_role_arn  = aws_iam_role.data_eng_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_18_ec2215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_18_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-18-ec2215" }
}

resource "aws_instance" "data_eng_18_ec2815" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_18_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-18-ec2815" }
}

resource "aws_cloudformation_stack" "data_eng_18_stack1415" {
  name          = "solor-1njchy-data-eng-18-stack1415"
  iam_role_arn  = aws_iam_role.data_eng_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_19_ec21427" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_19_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-19-ec21427" }
}

resource "aws_instance" "data_eng_19_ec2227" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_19_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-19-ec2227" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_19_nb827" {
  name          = "solor-1njchy-data-eng-19-nb827"
  role_arn      = aws_iam_role.data_eng_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_2_ec21823" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_2_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-2-ec21823" }
}

resource "aws_instance" "data_eng_2_ec223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_2_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-2-ec223" }
}

resource "aws_glue_dev_endpoint" "data_eng_2_glue623" {
  name     = "solor-1njchy-data-eng-2-glue623"
  role_arn = aws_iam_role.data_eng_2_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_2_stack1223" {
  name          = "solor-1njchy-data-eng-2-stack1223"
  iam_role_arn  = aws_iam_role.data_eng_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_20_ec2239" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_20_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-20-ec2239" }
}

resource "aws_instance" "data_eng_20_ec2839" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_20_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-20-ec2839" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_20_nb1439" {
  name          = "solor-1njchy-data-eng-20-nb1439"
  role_arn      = aws_iam_role.data_eng_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_21_ec2851" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_21_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-21-ec2851" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_21_nb1451" {
  name          = "solor-1njchy-data-eng-21-nb1451"
  role_arn      = aws_iam_role.data_eng_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_21_nb251" {
  name          = "solor-1njchy-data-eng-21-nb251"
  role_arn      = aws_iam_role.data_eng_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_22_ec21463" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_22_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-22-ec21463" }
}

resource "aws_instance" "data_eng_22_ec2863" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_22_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-22-ec2863" }
}

resource "aws_cloudformation_stack" "data_eng_22_stack263" {
  name          = "solor-1njchy-data-eng-22-stack263"
  iam_role_arn  = aws_iam_role.data_eng_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_23_ec21475" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_23_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-23-ec21475" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_23_nb275" {
  name          = "solor-1njchy-data-eng-23-nb275"
  role_arn      = aws_iam_role.data_eng_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_23_stack875" {
  name          = "solor-1njchy-data-eng-23-stack875"
  iam_role_arn  = aws_iam_role.data_eng_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_24_ec21487" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_24_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-24-ec21487" }
}

resource "aws_instance" "data_eng_24_ec2287" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_24_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-24-ec2287" }
}

resource "aws_instance" "data_eng_24_ec2887" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_24_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-24-ec2887" }
}

resource "aws_glue_dev_endpoint" "data_eng_25_glue1499" {
  name     = "solor-1njchy-data-eng-25-glue1499"
  role_arn = aws_iam_role.data_eng_25_glue_role.arn
}

resource "aws_glue_dev_endpoint" "data_eng_25_glue899" {
  name     = "solor-1njchy-data-eng-25-glue899"
  role_arn = aws_iam_role.data_eng_25_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_25_nb299" {
  name          = "solor-1njchy-data-eng-25-nb299"
  role_arn      = aws_iam_role.data_eng_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_26_ec21511" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_26_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-26-ec21511" }
}

resource "aws_instance" "data_eng_26_ec2311" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_26_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-26-ec2311" }
}

resource "aws_instance" "data_eng_26_ec2911" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_26_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-26-ec2911" }
}

resource "aws_instance" "data_eng_27_ec21523" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_27_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-27-ec21523" }
}

resource "aws_instance" "data_eng_27_ec2323" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_27_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-27-ec2323" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_27_nb923" {
  name          = "solor-1njchy-data-eng-27-nb923"
  role_arn      = aws_iam_role.data_eng_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_28_ec2935" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_28_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-28-ec2935" }
}

resource "aws_glue_dev_endpoint" "data_eng_28_glue1535" {
  name     = "solor-1njchy-data-eng-28-glue1535"
  role_arn = aws_iam_role.data_eng_28_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_28_stack335" {
  name          = "solor-1njchy-data-eng-28-stack335"
  iam_role_arn  = aws_iam_role.data_eng_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_29_ec21547" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_29_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-29-ec21547" }
}

resource "aws_glue_dev_endpoint" "data_eng_29_glue347" {
  name     = "solor-1njchy-data-eng-29-glue347"
  role_arn = aws_iam_role.data_eng_29_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_29_nb947" {
  name          = "solor-1njchy-data-eng-29-nb947"
  role_arn      = aws_iam_role.data_eng_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_3_ec21235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_3_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-3-ec21235" }
}

resource "aws_instance" "data_eng_3_ec235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_3_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-3-ec235" }
}

resource "aws_instance" "data_eng_3_ec2635" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_3_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-3-ec2635" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_3_nb1835" {
  name          = "solor-1njchy-data-eng-3-nb1835"
  role_arn      = aws_iam_role.data_eng_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_30_ec21559" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_30_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-30-ec21559" }
}

resource "aws_instance" "data_eng_30_ec2359" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_30_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-30-ec2359" }
}

resource "aws_instance" "data_eng_30_ec2959" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_30_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-30-ec2959" }
}

resource "aws_instance" "data_eng_31_ec21571" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_31_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-31-ec21571" }
}

resource "aws_instance" "data_eng_31_ec2971" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_31_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-31-ec2971" }
}

resource "aws_cloudformation_stack" "data_eng_31_stack371" {
  name          = "solor-1njchy-data-eng-31-stack371"
  iam_role_arn  = aws_iam_role.data_eng_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_32_ec21583" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_32_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-32-ec21583" }
}

resource "aws_instance" "data_eng_32_ec2983" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_32_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-32-ec2983" }
}

resource "aws_cloudformation_stack" "data_eng_32_stack383" {
  name          = "solor-1njchy-data-eng-32-stack383"
  iam_role_arn  = aws_iam_role.data_eng_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_33_ec21595" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_33_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-33-ec21595" }
}

resource "aws_instance" "data_eng_33_ec2995" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_33_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-33-ec2995" }
}

resource "aws_glue_dev_endpoint" "data_eng_33_glue395" {
  name     = "solor-1njchy-data-eng-33-glue395"
  role_arn = aws_iam_role.data_eng_33_glue_role.arn
}

resource "aws_instance" "data_eng_34_ec21007" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_34_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-34-ec21007" }
}

resource "aws_instance" "data_eng_34_ec21607" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_34_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-34-ec21607" }
}

resource "aws_glue_dev_endpoint" "data_eng_34_glue407" {
  name     = "solor-1njchy-data-eng-34-glue407"
  role_arn = aws_iam_role.data_eng_34_glue_role.arn
}

resource "aws_instance" "data_eng_35_ec21019" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_35_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-35-ec21019" }
}

resource "aws_instance" "data_eng_35_ec21619" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_35_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-35-ec21619" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_35_nb419" {
  name          = "solor-1njchy-data-eng-35-nb419"
  role_arn      = aws_iam_role.data_eng_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_36_ec21631" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_36_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-36-ec21631" }
}

resource "aws_instance" "data_eng_36_ec2431" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_36_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-36-ec2431" }
}

resource "aws_cloudformation_stack" "data_eng_36_stack1031" {
  name          = "solor-1njchy-data-eng-36-stack1031"
  iam_role_arn  = aws_iam_role.data_eng_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_37_ec21043" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_37_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-37-ec21043" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_37_nb443" {
  name          = "solor-1njchy-data-eng-37-nb443"
  role_arn      = aws_iam_role.data_eng_37_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_37_stack1643" {
  name          = "solor-1njchy-data-eng-37-stack1643"
  iam_role_arn  = aws_iam_role.data_eng_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_38_ec21655" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_38_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-38-ec21655" }
}

resource "aws_glue_dev_endpoint" "data_eng_38_glue455" {
  name     = "solor-1njchy-data-eng-38-glue455"
  role_arn = aws_iam_role.data_eng_38_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_38_nb1055" {
  name          = "solor-1njchy-data-eng-38-nb1055"
  role_arn      = aws_iam_role.data_eng_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_39_ec21067" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_39_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-39-ec21067" }
}

resource "aws_instance" "data_eng_39_ec21667" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_39_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-39-ec21667" }
}

resource "aws_instance" "data_eng_39_ec2467" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_39_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-39-ec2467" }
}

resource "aws_instance" "data_eng_4_ec21247" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_4_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-4-ec21247" }
}

resource "aws_instance" "data_eng_4_ec21847" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_4_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-4-ec21847" }
}

resource "aws_instance" "data_eng_4_ec2647" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_4_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-4-ec2647" }
}

resource "aws_cloudformation_stack" "data_eng_4_stack47" {
  name          = "solor-1njchy-data-eng-4-stack47"
  iam_role_arn  = aws_iam_role.data_eng_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_40_ec21079" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_40_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-40-ec21079" }
}

resource "aws_instance" "data_eng_40_ec21679" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_40_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-40-ec21679" }
}

resource "aws_glue_dev_endpoint" "data_eng_40_glue479" {
  name     = "solor-1njchy-data-eng-40-glue479"
  role_arn = aws_iam_role.data_eng_40_glue_role.arn
}

resource "aws_instance" "data_eng_41_ec2491" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_41_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-41-ec2491" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_41_nb1091" {
  name          = "solor-1njchy-data-eng-41-nb1091"
  role_arn      = aws_iam_role.data_eng_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_41_stack1691" {
  name          = "solor-1njchy-data-eng-41-stack1691"
  iam_role_arn  = aws_iam_role.data_eng_41_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_42_ec21103" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_42_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-42-ec21103" }
}

resource "aws_instance" "data_eng_42_ec21703" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_42_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-42-ec21703" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_42_nb503" {
  name          = "solor-1njchy-data-eng-42-nb503"
  role_arn      = aws_iam_role.data_eng_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_43_ec2515" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_43_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-43-ec2515" }
}

resource "aws_glue_dev_endpoint" "data_eng_43_glue1115" {
  name     = "solor-1njchy-data-eng-43-glue1115"
  role_arn = aws_iam_role.data_eng_43_glue_role.arn
}

resource "aws_glue_dev_endpoint" "data_eng_43_glue1715" {
  name     = "solor-1njchy-data-eng-43-glue1715"
  role_arn = aws_iam_role.data_eng_43_glue_role.arn
}

resource "aws_instance" "data_eng_44_ec21727" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_44_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-44-ec21727" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_44_nb527" {
  name          = "solor-1njchy-data-eng-44-nb527"
  role_arn      = aws_iam_role.data_eng_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_44_stack1127" {
  name          = "solor-1njchy-data-eng-44-stack1127"
  iam_role_arn  = aws_iam_role.data_eng_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_45_ec2539" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_45_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-45-ec2539" }
}

resource "aws_sagemaker_notebook_instance" "data_eng_45_nb1139" {
  name          = "solor-1njchy-data-eng-45-nb1139"
  role_arn      = aws_iam_role.data_eng_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "data_eng_45_nb1739" {
  name          = "solor-1njchy-data-eng-45-nb1739"
  role_arn      = aws_iam_role.data_eng_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "data_eng_46_ec21151" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_46_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-46-ec21151" }
}

resource "aws_instance" "data_eng_46_ec21751" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_46_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-46-ec21751" }
}

resource "aws_instance" "data_eng_46_ec2551" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_46_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-46-ec2551" }
}

resource "aws_instance" "data_eng_47_ec21163" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_47_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-47-ec21163" }
}

resource "aws_instance" "data_eng_47_ec21763" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_47_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-47-ec21763" }
}

resource "aws_instance" "data_eng_47_ec2563" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_47_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-47-ec2563" }
}

resource "aws_cloudformation_stack" "data_eng_48_stack1175" {
  name          = "solor-1njchy-data-eng-48-stack1175"
  iam_role_arn  = aws_iam_role.data_eng_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "data_eng_48_stack1775" {
  name          = "solor-1njchy-data-eng-48-stack1775"
  iam_role_arn  = aws_iam_role.data_eng_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "data_eng_48_stack575" {
  name          = "solor-1njchy-data-eng-48-stack575"
  iam_role_arn  = aws_iam_role.data_eng_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_49_ec21187" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_49_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-49-ec21187" }
}

resource "aws_instance" "data_eng_49_ec21787" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_49_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-49-ec21787" }
}

resource "aws_instance" "data_eng_49_ec2587" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_49_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-49-ec2587" }
}

resource "aws_instance" "data_eng_5_ec21259" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_5_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-5-ec21259" }
}

resource "aws_instance" "data_eng_5_ec21859" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_5_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-5-ec21859" }
}

resource "aws_instance" "data_eng_5_ec2659" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_5_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-5-ec2659" }
}

resource "aws_cloudformation_stack" "data_eng_5_stack59" {
  name          = "solor-1njchy-data-eng-5-stack59"
  iam_role_arn  = aws_iam_role.data_eng_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_50_ec21799" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_50_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-50-ec21799" }
}

resource "aws_glue_dev_endpoint" "data_eng_50_glue1199" {
  name     = "solor-1njchy-data-eng-50-glue1199"
  role_arn = aws_iam_role.data_eng_50_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_50_stack599" {
  name          = "solor-1njchy-data-eng-50-stack599"
  iam_role_arn  = aws_iam_role.data_eng_50_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "data_eng_6_glue71" {
  name     = "solor-1njchy-data-eng-6-glue71"
  role_arn = aws_iam_role.data_eng_6_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_6_nb1271" {
  name          = "solor-1njchy-data-eng-6-nb1271"
  role_arn      = aws_iam_role.data_eng_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_6_stack1871" {
  name          = "solor-1njchy-data-eng-6-stack1871"
  iam_role_arn  = aws_iam_role.data_eng_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "data_eng_6_stack671" {
  name          = "solor-1njchy-data-eng-6-stack671"
  iam_role_arn  = aws_iam_role.data_eng_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_7_ec2683" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_7_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-7-ec2683" }
}

resource "aws_glue_dev_endpoint" "data_eng_7_glue83" {
  name     = "solor-1njchy-data-eng-7-glue83"
  role_arn = aws_iam_role.data_eng_7_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_7_nb1283" {
  name          = "solor-1njchy-data-eng-7-nb1283"
  role_arn      = aws_iam_role.data_eng_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "data_eng_7_stack1883" {
  name          = "solor-1njchy-data-eng-7-stack1883"
  iam_role_arn  = aws_iam_role.data_eng_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_8_ec21295" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_8_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-8-ec21295" }
}

resource "aws_instance" "data_eng_8_ec21895" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_8_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-8-ec21895" }
}

resource "aws_instance" "data_eng_8_ec2695" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_8_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-8-ec2695" }
}

resource "aws_glue_dev_endpoint" "data_eng_8_glue95" {
  name     = "solor-1njchy-data-eng-8-glue95"
  role_arn = aws_iam_role.data_eng_8_glue_role.arn
}

resource "aws_instance" "data_eng_9_ec21907" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_9_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-9-ec21907" }
}

resource "aws_instance" "data_eng_9_ec2707" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_9_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-9-ec2707" }
}

resource "aws_glue_dev_endpoint" "data_eng_9_glue107" {
  name     = "solor-1njchy-data-eng-9-glue107"
  role_arn = aws_iam_role.data_eng_9_glue_role.arn
}

resource "aws_cloudformation_stack" "data_eng_9_stack1307" {
  name          = "solor-1njchy-data-eng-9-stack1307"
  iam_role_arn  = aws_iam_role.data_eng_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "data_eng_ec211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-ec211" }
}

resource "aws_instance" "data_eng_ec21211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.data_eng_svc.name
  tags                 = { Name = "solor-1njchy-data-eng-ec21211" }
}

resource "aws_glue_dev_endpoint" "data_eng_glue1811" {
  name     = "solor-1njchy-data-eng-glue1811"
  role_arn = aws_iam_role.data_eng_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "data_eng_nb611" {
  name          = "solor-1njchy-data-eng-nb611"
  role_arn      = aws_iam_role.data_eng_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_10_ec21314" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_10_svc.name
  tags                 = { Name = "solor-1njchy-fraud-10-ec21314" }
}

resource "aws_instance" "fraud_10_ec2714" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_10_svc.name
  tags                 = { Name = "solor-1njchy-fraud-10-ec2714" }
}

resource "aws_cloudformation_stack" "fraud_10_stack114" {
  name          = "solor-1njchy-fraud-10-stack114"
  iam_role_arn  = aws_iam_role.fraud_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_10_stack1914" {
  name          = "solor-1njchy-fraud-10-stack1914"
  iam_role_arn  = aws_iam_role.fraud_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_11_ec21926" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_11_svc.name
  tags                 = { Name = "solor-1njchy-fraud-11-ec21926" }
}

resource "aws_instance" "fraud_11_ec2726" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_11_svc.name
  tags                 = { Name = "solor-1njchy-fraud-11-ec2726" }
}

resource "aws_sagemaker_notebook_instance" "fraud_11_nb126" {
  name          = "solor-1njchy-fraud-11-nb126"
  role_arn      = aws_iam_role.fraud_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_11_nb1326" {
  name          = "solor-1njchy-fraud-11-nb1326"
  role_arn      = aws_iam_role.fraud_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_12_ec21938" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_12_svc.name
  tags                 = { Name = "solor-1njchy-fraud-12-ec21938" }
}

resource "aws_instance" "fraud_12_ec2738" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_12_svc.name
  tags                 = { Name = "solor-1njchy-fraud-12-ec2738" }
}

resource "aws_sagemaker_notebook_instance" "fraud_12_nb1338" {
  name          = "solor-1njchy-fraud-12-nb1338"
  role_arn      = aws_iam_role.fraud_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_12_stack138" {
  name          = "solor-1njchy-fraud-12-stack138"
  iam_role_arn  = aws_iam_role.fraud_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_13_ec2150" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_13_svc.name
  tags                 = { Name = "solor-1njchy-fraud-13-ec2150" }
}

resource "aws_instance" "fraud_13_ec21950" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_13_svc.name
  tags                 = { Name = "solor-1njchy-fraud-13-ec21950" }
}

resource "aws_instance" "fraud_13_ec2750" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_13_svc.name
  tags                 = { Name = "solor-1njchy-fraud-13-ec2750" }
}

resource "aws_sagemaker_notebook_instance" "fraud_13_nb1350" {
  name          = "solor-1njchy-fraud-13-nb1350"
  role_arn      = aws_iam_role.fraud_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_14_ec21362" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_14_svc.name
  tags                 = { Name = "solor-1njchy-fraud-14-ec21362" }
}

resource "aws_instance" "fraud_14_ec21962" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_14_svc.name
  tags                 = { Name = "solor-1njchy-fraud-14-ec21962" }
}

resource "aws_sagemaker_notebook_instance" "fraud_14_nb162" {
  name          = "solor-1njchy-fraud-14-nb162"
  role_arn      = aws_iam_role.fraud_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_14_nb762" {
  name          = "solor-1njchy-fraud-14-nb762"
  role_arn      = aws_iam_role.fraud_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_15_ec2174" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_15_svc.name
  tags                 = { Name = "solor-1njchy-fraud-15-ec2174" }
}

resource "aws_instance" "fraud_15_ec2774" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_15_svc.name
  tags                 = { Name = "solor-1njchy-fraud-15-ec2774" }
}

resource "aws_glue_dev_endpoint" "fraud_15_glue1974" {
  name     = "solor-1njchy-fraud-15-glue1974"
  role_arn = aws_iam_role.fraud_15_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_15_nb1374" {
  name          = "solor-1njchy-fraud-15-nb1374"
  role_arn      = aws_iam_role.fraud_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_16_ec2786" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_16_svc.name
  tags                 = { Name = "solor-1njchy-fraud-16-ec2786" }
}

resource "aws_sagemaker_notebook_instance" "fraud_16_nb186" {
  name          = "solor-1njchy-fraud-16-nb186"
  role_arn      = aws_iam_role.fraud_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_16_stack1386" {
  name          = "solor-1njchy-fraud-16-stack1386"
  iam_role_arn  = aws_iam_role.fraud_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_16_stack1986" {
  name          = "solor-1njchy-fraud-16-stack1986"
  iam_role_arn  = aws_iam_role.fraud_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_17_ec2198" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_17_svc.name
  tags                 = { Name = "solor-1njchy-fraud-17-ec2198" }
}

resource "aws_instance" "fraud_17_ec21998" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_17_svc.name
  tags                 = { Name = "solor-1njchy-fraud-17-ec21998" }
}

resource "aws_instance" "fraud_17_ec2798" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_17_svc.name
  tags                 = { Name = "solor-1njchy-fraud-17-ec2798" }
}

resource "aws_sagemaker_notebook_instance" "fraud_17_nb1398" {
  name          = "solor-1njchy-fraud-17-nb1398"
  role_arn      = aws_iam_role.fraud_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_18_ec2810" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_18_svc.name
  tags                 = { Name = "solor-1njchy-fraud-18-ec2810" }
}

resource "aws_glue_dev_endpoint" "fraud_18_glue210" {
  name     = "solor-1njchy-fraud-18-glue210"
  role_arn = aws_iam_role.fraud_18_glue_role.arn
}

resource "aws_cloudformation_stack" "fraud_18_stack1410" {
  name          = "solor-1njchy-fraud-18-stack1410"
  iam_role_arn  = aws_iam_role.fraud_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_19_ec2222" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_19_svc.name
  tags                 = { Name = "solor-1njchy-fraud-19-ec2222" }
}

resource "aws_glue_dev_endpoint" "fraud_19_glue822" {
  name     = "solor-1njchy-fraud-19-glue822"
  role_arn = aws_iam_role.fraud_19_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_19_nb1422" {
  name          = "solor-1njchy-fraud-19-nb1422"
  role_arn      = aws_iam_role.fraud_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_2_ec21218" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_2_svc.name
  tags                 = { Name = "solor-1njchy-fraud-2-ec21218" }
}

resource "aws_instance" "fraud_2_ec218" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_2_svc.name
  tags                 = { Name = "solor-1njchy-fraud-2-ec218" }
}

resource "aws_instance" "fraud_2_ec2618" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_2_svc.name
  tags                 = { Name = "solor-1njchy-fraud-2-ec2618" }
}

resource "aws_sagemaker_notebook_instance" "fraud_2_nb1818" {
  name          = "solor-1njchy-fraud-2-nb1818"
  role_arn      = aws_iam_role.fraud_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_20_ec2834" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_20_svc.name
  tags                 = { Name = "solor-1njchy-fraud-20-ec2834" }
}

resource "aws_sagemaker_notebook_instance" "fraud_20_nb1434" {
  name          = "solor-1njchy-fraud-20-nb1434"
  role_arn      = aws_iam_role.fraud_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_20_nb234" {
  name          = "solor-1njchy-fraud-20-nb234"
  role_arn      = aws_iam_role.fraud_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_21_ec2846" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_21_svc.name
  tags                 = { Name = "solor-1njchy-fraud-21-ec2846" }
}

resource "aws_glue_dev_endpoint" "fraud_21_glue1446" {
  name     = "solor-1njchy-fraud-21-glue1446"
  role_arn = aws_iam_role.fraud_21_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_21_nb246" {
  name          = "solor-1njchy-fraud-21-nb246"
  role_arn      = aws_iam_role.fraud_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_22_ec2858" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_22_svc.name
  tags                 = { Name = "solor-1njchy-fraud-22-ec2858" }
}

resource "aws_sagemaker_notebook_instance" "fraud_22_nb1458" {
  name          = "solor-1njchy-fraud-22-nb1458"
  role_arn      = aws_iam_role.fraud_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_22_stack258" {
  name          = "solor-1njchy-fraud-22-stack258"
  iam_role_arn  = aws_iam_role.fraud_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "fraud_23_glue270" {
  name     = "solor-1njchy-fraud-23-glue270"
  role_arn = aws_iam_role.fraud_23_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_23_nb870" {
  name          = "solor-1njchy-fraud-23-nb870"
  role_arn      = aws_iam_role.fraud_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_23_stack1470" {
  name          = "solor-1njchy-fraud-23-stack1470"
  iam_role_arn  = aws_iam_role.fraud_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_24_ec2882" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_24_svc.name
  tags                 = { Name = "solor-1njchy-fraud-24-ec2882" }
}

resource "aws_sagemaker_notebook_instance" "fraud_24_nb1482" {
  name          = "solor-1njchy-fraud-24-nb1482"
  role_arn      = aws_iam_role.fraud_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_24_stack282" {
  name          = "solor-1njchy-fraud-24-stack282"
  iam_role_arn  = aws_iam_role.fraud_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_25_ec21494" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_25_svc.name
  tags                 = { Name = "solor-1njchy-fraud-25-ec21494" }
}

resource "aws_instance" "fraud_25_ec2894" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_25_svc.name
  tags                 = { Name = "solor-1njchy-fraud-25-ec2894" }
}

resource "aws_cloudformation_stack" "fraud_25_stack294" {
  name          = "solor-1njchy-fraud-25-stack294"
  iam_role_arn  = aws_iam_role.fraud_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_26_ec2306" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_26_svc.name
  tags                 = { Name = "solor-1njchy-fraud-26-ec2306" }
}

resource "aws_instance" "fraud_26_ec2906" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_26_svc.name
  tags                 = { Name = "solor-1njchy-fraud-26-ec2906" }
}

resource "aws_glue_dev_endpoint" "fraud_26_glue1506" {
  name     = "solor-1njchy-fraud-26-glue1506"
  role_arn = aws_iam_role.fraud_26_glue_role.arn
}

resource "aws_glue_dev_endpoint" "fraud_27_glue318" {
  name     = "solor-1njchy-fraud-27-glue318"
  role_arn = aws_iam_role.fraud_27_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_27_nb1518" {
  name          = "solor-1njchy-fraud-27-nb1518"
  role_arn      = aws_iam_role.fraud_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_27_nb918" {
  name          = "solor-1njchy-fraud-27-nb918"
  role_arn      = aws_iam_role.fraud_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_28_ec2330" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_28_svc.name
  tags                 = { Name = "solor-1njchy-fraud-28-ec2330" }
}

resource "aws_instance" "fraud_28_ec2930" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_28_svc.name
  tags                 = { Name = "solor-1njchy-fraud-28-ec2930" }
}

resource "aws_sagemaker_notebook_instance" "fraud_28_nb1530" {
  name          = "solor-1njchy-fraud-28-nb1530"
  role_arn      = aws_iam_role.fraud_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_29_ec2342" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_29_svc.name
  tags                 = { Name = "solor-1njchy-fraud-29-ec2342" }
}

resource "aws_sagemaker_notebook_instance" "fraud_29_nb1542" {
  name          = "solor-1njchy-fraud-29-nb1542"
  role_arn      = aws_iam_role.fraud_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_29_nb942" {
  name          = "solor-1njchy-fraud-29-nb942"
  role_arn      = aws_iam_role.fraud_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_3_ec21230" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_3_svc.name
  tags                 = { Name = "solor-1njchy-fraud-3-ec21230" }
}

resource "aws_instance" "fraud_3_ec230" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_3_svc.name
  tags                 = { Name = "solor-1njchy-fraud-3-ec230" }
}

resource "aws_glue_dev_endpoint" "fraud_3_glue1830" {
  name     = "solor-1njchy-fraud-3-glue1830"
  role_arn = aws_iam_role.fraud_3_glue_role.arn
}

resource "aws_cloudformation_stack" "fraud_3_stack630" {
  name          = "solor-1njchy-fraud-3-stack630"
  iam_role_arn  = aws_iam_role.fraud_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_30_ec21554" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_30_svc.name
  tags                 = { Name = "solor-1njchy-fraud-30-ec21554" }
}

resource "aws_glue_dev_endpoint" "fraud_30_glue354" {
  name     = "solor-1njchy-fraud-30-glue354"
  role_arn = aws_iam_role.fraud_30_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_30_nb954" {
  name          = "solor-1njchy-fraud-30-nb954"
  role_arn      = aws_iam_role.fraud_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_31_ec21566" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_31_svc.name
  tags                 = { Name = "solor-1njchy-fraud-31-ec21566" }
}

resource "aws_sagemaker_notebook_instance" "fraud_31_nb366" {
  name          = "solor-1njchy-fraud-31-nb366"
  role_arn      = aws_iam_role.fraud_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_31_nb966" {
  name          = "solor-1njchy-fraud-31-nb966"
  role_arn      = aws_iam_role.fraud_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_32_ec21578" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_32_svc.name
  tags                 = { Name = "solor-1njchy-fraud-32-ec21578" }
}

resource "aws_instance" "fraud_32_ec2378" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_32_svc.name
  tags                 = { Name = "solor-1njchy-fraud-32-ec2378" }
}

resource "aws_instance" "fraud_32_ec2978" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_32_svc.name
  tags                 = { Name = "solor-1njchy-fraud-32-ec2978" }
}

resource "aws_instance" "fraud_33_ec21590" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_33_svc.name
  tags                 = { Name = "solor-1njchy-fraud-33-ec21590" }
}

resource "aws_instance" "fraud_33_ec2390" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_33_svc.name
  tags                 = { Name = "solor-1njchy-fraud-33-ec2390" }
}

resource "aws_instance" "fraud_33_ec2990" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_33_svc.name
  tags                 = { Name = "solor-1njchy-fraud-33-ec2990" }
}

resource "aws_instance" "fraud_34_ec21002" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_34_svc.name
  tags                 = { Name = "solor-1njchy-fraud-34-ec21002" }
}

resource "aws_instance" "fraud_34_ec21602" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_34_svc.name
  tags                 = { Name = "solor-1njchy-fraud-34-ec21602" }
}

resource "aws_sagemaker_notebook_instance" "fraud_34_nb402" {
  name          = "solor-1njchy-fraud-34-nb402"
  role_arn      = aws_iam_role.fraud_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "fraud_35_ec21614" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_35_svc.name
  tags                 = { Name = "solor-1njchy-fraud-35-ec21614" }
}

resource "aws_sagemaker_notebook_instance" "fraud_35_nb414" {
  name          = "solor-1njchy-fraud-35-nb414"
  role_arn      = aws_iam_role.fraud_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_35_stack1014" {
  name          = "solor-1njchy-fraud-35-stack1014"
  iam_role_arn  = aws_iam_role.fraud_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_36_ec21026" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_36_svc.name
  tags                 = { Name = "solor-1njchy-fraud-36-ec21026" }
}

resource "aws_instance" "fraud_36_ec2426" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_36_svc.name
  tags                 = { Name = "solor-1njchy-fraud-36-ec2426" }
}

resource "aws_cloudformation_stack" "fraud_36_stack1626" {
  name          = "solor-1njchy-fraud-36-stack1626"
  iam_role_arn  = aws_iam_role.fraud_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_37_ec21038" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_37_svc.name
  tags                 = { Name = "solor-1njchy-fraud-37-ec21038" }
}

resource "aws_instance" "fraud_37_ec21638" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_37_svc.name
  tags                 = { Name = "solor-1njchy-fraud-37-ec21638" }
}

resource "aws_glue_dev_endpoint" "fraud_37_glue438" {
  name     = "solor-1njchy-fraud-37-glue438"
  role_arn = aws_iam_role.fraud_37_glue_role.arn
}

resource "aws_instance" "fraud_38_ec21050" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_38_svc.name
  tags                 = { Name = "solor-1njchy-fraud-38-ec21050" }
}

resource "aws_instance" "fraud_38_ec21650" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_38_svc.name
  tags                 = { Name = "solor-1njchy-fraud-38-ec21650" }
}

resource "aws_glue_dev_endpoint" "fraud_38_glue450" {
  name     = "solor-1njchy-fraud-38-glue450"
  role_arn = aws_iam_role.fraud_38_glue_role.arn
}

resource "aws_instance" "fraud_39_ec2462" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_39_svc.name
  tags                 = { Name = "solor-1njchy-fraud-39-ec2462" }
}

resource "aws_glue_dev_endpoint" "fraud_39_glue1062" {
  name     = "solor-1njchy-fraud-39-glue1062"
  role_arn = aws_iam_role.fraud_39_glue_role.arn
}

resource "aws_glue_dev_endpoint" "fraud_39_glue1662" {
  name     = "solor-1njchy-fraud-39-glue1662"
  role_arn = aws_iam_role.fraud_39_glue_role.arn
}

resource "aws_instance" "fraud_4_ec242" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_4_svc.name
  tags                 = { Name = "solor-1njchy-fraud-4-ec242" }
}

resource "aws_instance" "fraud_4_ec2642" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_4_svc.name
  tags                 = { Name = "solor-1njchy-fraud-4-ec2642" }
}

resource "aws_glue_dev_endpoint" "fraud_4_glue1242" {
  name     = "solor-1njchy-fraud-4-glue1242"
  role_arn = aws_iam_role.fraud_4_glue_role.arn
}

resource "aws_cloudformation_stack" "fraud_4_stack1842" {
  name          = "solor-1njchy-fraud-4-stack1842"
  iam_role_arn  = aws_iam_role.fraud_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_40_ec21074" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_40_svc.name
  tags                 = { Name = "solor-1njchy-fraud-40-ec21074" }
}

resource "aws_sagemaker_notebook_instance" "fraud_40_nb1674" {
  name          = "solor-1njchy-fraud-40-nb1674"
  role_arn      = aws_iam_role.fraud_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_40_stack474" {
  name          = "solor-1njchy-fraud-40-stack474"
  iam_role_arn  = aws_iam_role.fraud_40_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_41_ec21086" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_41_svc.name
  tags                 = { Name = "solor-1njchy-fraud-41-ec21086" }
}

resource "aws_instance" "fraud_41_ec21686" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_41_svc.name
  tags                 = { Name = "solor-1njchy-fraud-41-ec21686" }
}

resource "aws_instance" "fraud_41_ec2486" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_41_svc.name
  tags                 = { Name = "solor-1njchy-fraud-41-ec2486" }
}

resource "aws_instance" "fraud_42_ec21098" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_42_svc.name
  tags                 = { Name = "solor-1njchy-fraud-42-ec21098" }
}

resource "aws_instance" "fraud_42_ec2498" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_42_svc.name
  tags                 = { Name = "solor-1njchy-fraud-42-ec2498" }
}

resource "aws_glue_dev_endpoint" "fraud_42_glue1698" {
  name     = "solor-1njchy-fraud-42-glue1698"
  role_arn = aws_iam_role.fraud_42_glue_role.arn
}

resource "aws_instance" "fraud_43_ec21710" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_43_svc.name
  tags                 = { Name = "solor-1njchy-fraud-43-ec21710" }
}

resource "aws_sagemaker_notebook_instance" "fraud_43_nb1110" {
  name          = "solor-1njchy-fraud-43-nb1110"
  role_arn      = aws_iam_role.fraud_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_43_stack510" {
  name          = "solor-1njchy-fraud-43-stack510"
  iam_role_arn  = aws_iam_role.fraud_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_44_ec21722" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_44_svc.name
  tags                 = { Name = "solor-1njchy-fraud-44-ec21722" }
}

resource "aws_sagemaker_notebook_instance" "fraud_44_nb1122" {
  name          = "solor-1njchy-fraud-44-nb1122"
  role_arn      = aws_iam_role.fraud_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_44_stack522" {
  name          = "solor-1njchy-fraud-44-stack522"
  iam_role_arn  = aws_iam_role.fraud_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_45_ec21734" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_45_svc.name
  tags                 = { Name = "solor-1njchy-fraud-45-ec21734" }
}

resource "aws_glue_dev_endpoint" "fraud_45_glue1134" {
  name     = "solor-1njchy-fraud-45-glue1134"
  role_arn = aws_iam_role.fraud_45_glue_role.arn
}

resource "aws_cloudformation_stack" "fraud_45_stack534" {
  name          = "solor-1njchy-fraud-45-stack534"
  iam_role_arn  = aws_iam_role.fraud_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_46_ec21146" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_46_svc.name
  tags                 = { Name = "solor-1njchy-fraud-46-ec21146" }
}

resource "aws_instance" "fraud_46_ec2546" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_46_svc.name
  tags                 = { Name = "solor-1njchy-fraud-46-ec2546" }
}

resource "aws_cloudformation_stack" "fraud_46_stack1746" {
  name          = "solor-1njchy-fraud-46-stack1746"
  iam_role_arn  = aws_iam_role.fraud_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_47_ec21158" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_47_svc.name
  tags                 = { Name = "solor-1njchy-fraud-47-ec21158" }
}

resource "aws_instance" "fraud_47_ec2558" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_47_svc.name
  tags                 = { Name = "solor-1njchy-fraud-47-ec2558" }
}

resource "aws_cloudformation_stack" "fraud_47_stack1758" {
  name          = "solor-1njchy-fraud-47-stack1758"
  iam_role_arn  = aws_iam_role.fraud_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_48_ec21770" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_48_svc.name
  tags                 = { Name = "solor-1njchy-fraud-48-ec21770" }
}

resource "aws_instance" "fraud_48_ec2570" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_48_svc.name
  tags                 = { Name = "solor-1njchy-fraud-48-ec2570" }
}

resource "aws_cloudformation_stack" "fraud_48_stack1170" {
  name          = "solor-1njchy-fraud-48-stack1170"
  iam_role_arn  = aws_iam_role.fraud_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "fraud_49_glue1782" {
  name     = "solor-1njchy-fraud-49-glue1782"
  role_arn = aws_iam_role.fraud_49_glue_role.arn
}

resource "aws_cloudformation_stack" "fraud_49_stack1182" {
  name          = "solor-1njchy-fraud-49-stack1182"
  iam_role_arn  = aws_iam_role.fraud_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_49_stack582" {
  name          = "solor-1njchy-fraud-49-stack582"
  iam_role_arn  = aws_iam_role.fraud_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_5_ec21254" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_5_svc.name
  tags                 = { Name = "solor-1njchy-fraud-5-ec21254" }
}

resource "aws_instance" "fraud_5_ec21854" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_5_svc.name
  tags                 = { Name = "solor-1njchy-fraud-5-ec21854" }
}

resource "aws_instance" "fraud_5_ec2654" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_5_svc.name
  tags                 = { Name = "solor-1njchy-fraud-5-ec2654" }
}

resource "aws_cloudformation_stack" "fraud_5_stack54" {
  name          = "solor-1njchy-fraud-5-stack54"
  iam_role_arn  = aws_iam_role.fraud_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_50_ec21794" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_50_svc.name
  tags                 = { Name = "solor-1njchy-fraud-50-ec21794" }
}

resource "aws_instance" "fraud_50_ec2594" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_50_svc.name
  tags                 = { Name = "solor-1njchy-fraud-50-ec2594" }
}

resource "aws_sagemaker_notebook_instance" "fraud_50_nb1194" {
  name          = "solor-1njchy-fraud-50-nb1194"
  role_arn      = aws_iam_role.fraud_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "fraud_6_nb66" {
  name          = "solor-1njchy-fraud-6-nb66"
  role_arn      = aws_iam_role.fraud_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_6_stack1266" {
  name          = "solor-1njchy-fraud-6-stack1266"
  iam_role_arn  = aws_iam_role.fraud_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_6_stack1866" {
  name          = "solor-1njchy-fraud-6-stack1866"
  iam_role_arn  = aws_iam_role.fraud_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_6_stack666" {
  name          = "solor-1njchy-fraud-6-stack666"
  iam_role_arn  = aws_iam_role.fraud_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_7_ec278" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_7_svc.name
  tags                 = { Name = "solor-1njchy-fraud-7-ec278" }
}

resource "aws_glue_dev_endpoint" "fraud_7_glue678" {
  name     = "solor-1njchy-fraud-7-glue678"
  role_arn = aws_iam_role.fraud_7_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_7_nb1878" {
  name          = "solor-1njchy-fraud-7-nb1878"
  role_arn      = aws_iam_role.fraud_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_7_stack1278" {
  name          = "solor-1njchy-fraud-7-stack1278"
  iam_role_arn  = aws_iam_role.fraud_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_8_ec21290" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_8_svc.name
  tags                 = { Name = "solor-1njchy-fraud-8-ec21290" }
}

resource "aws_instance" "fraud_8_ec2690" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_8_svc.name
  tags                 = { Name = "solor-1njchy-fraud-8-ec2690" }
}

resource "aws_instance" "fraud_8_ec290" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_8_svc.name
  tags                 = { Name = "solor-1njchy-fraud-8-ec290" }
}

resource "aws_cloudformation_stack" "fraud_8_stack1890" {
  name          = "solor-1njchy-fraud-8-stack1890"
  iam_role_arn  = aws_iam_role.fraud_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_9_ec2702" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_9_svc.name
  tags                 = { Name = "solor-1njchy-fraud-9-ec2702" }
}

resource "aws_sagemaker_notebook_instance" "fraud_9_nb1902" {
  name          = "solor-1njchy-fraud-9-nb1902"
  role_arn      = aws_iam_role.fraud_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_9_stack102" {
  name          = "solor-1njchy-fraud-9-stack102"
  iam_role_arn  = aws_iam_role.fraud_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "fraud_9_stack1302" {
  name          = "solor-1njchy-fraud-9-stack1302"
  iam_role_arn  = aws_iam_role.fraud_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "fraud_ec2606" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.fraud_svc.name
  tags                 = { Name = "solor-1njchy-fraud-ec2606" }
}

resource "aws_glue_dev_endpoint" "fraud_glue1806" {
  name     = "solor-1njchy-fraud-glue1806"
  role_arn = aws_iam_role.fraud_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "fraud_nb1206" {
  name          = "solor-1njchy-fraud-nb1206"
  role_arn      = aws_iam_role.fraud_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "fraud_stack6" {
  name          = "solor-1njchy-fraud-stack6"
  iam_role_arn  = aws_iam_role.fraud_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "inj_ec2_w6" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r5.name
  tags                 = { Name = "solor-1njchy-inj-ec2-w6" }
}

resource "aws_instance" "kyc_10_ec2111" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_10_svc.name
  tags                 = { Name = "solor-1njchy-kyc-10-ec2111" }
}

resource "aws_glue_dev_endpoint" "kyc_10_glue711" {
  name     = "solor-1njchy-kyc-10-glue711"
  role_arn = aws_iam_role.kyc_10_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "kyc_10_nb1311" {
  name          = "solor-1njchy-kyc-10-nb1311"
  role_arn      = aws_iam_role.kyc_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_10_nb1911" {
  name          = "solor-1njchy-kyc-10-nb1911"
  role_arn      = aws_iam_role.kyc_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_11_ec2123" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_11_svc.name
  tags                 = { Name = "solor-1njchy-kyc-11-ec2123" }
}

resource "aws_instance" "kyc_11_ec21923" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_11_svc.name
  tags                 = { Name = "solor-1njchy-kyc-11-ec21923" }
}

resource "aws_glue_dev_endpoint" "kyc_11_glue723" {
  name     = "solor-1njchy-kyc-11-glue723"
  role_arn = aws_iam_role.kyc_11_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_11_stack1323" {
  name          = "solor-1njchy-kyc-11-stack1323"
  iam_role_arn  = aws_iam_role.kyc_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_12_ec2135" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_12_svc.name
  tags                 = { Name = "solor-1njchy-kyc-12-ec2135" }
}

resource "aws_instance" "kyc_12_ec21935" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_12_svc.name
  tags                 = { Name = "solor-1njchy-kyc-12-ec21935" }
}

resource "aws_sagemaker_notebook_instance" "kyc_12_nb1335" {
  name          = "solor-1njchy-kyc-12-nb1335"
  role_arn      = aws_iam_role.kyc_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_12_stack735" {
  name          = "solor-1njchy-kyc-12-stack735"
  iam_role_arn  = aws_iam_role.kyc_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_13_ec2147" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_13_svc.name
  tags                 = { Name = "solor-1njchy-kyc-13-ec2147" }
}

resource "aws_sagemaker_notebook_instance" "kyc_13_nb1347" {
  name          = "solor-1njchy-kyc-13-nb1347"
  role_arn      = aws_iam_role.kyc_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_13_nb747" {
  name          = "solor-1njchy-kyc-13-nb747"
  role_arn      = aws_iam_role.kyc_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_13_stack1947" {
  name          = "solor-1njchy-kyc-13-stack1947"
  iam_role_arn  = aws_iam_role.kyc_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_14_ec2159" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_14_svc.name
  tags                 = { Name = "solor-1njchy-kyc-14-ec2159" }
}

resource "aws_instance" "kyc_14_ec21959" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_14_svc.name
  tags                 = { Name = "solor-1njchy-kyc-14-ec21959" }
}

resource "aws_instance" "kyc_14_ec2759" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_14_svc.name
  tags                 = { Name = "solor-1njchy-kyc-14-ec2759" }
}

resource "aws_cloudformation_stack" "kyc_14_stack1359" {
  name          = "solor-1njchy-kyc-14-stack1359"
  iam_role_arn  = aws_iam_role.kyc_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_15_ec2171" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_15_svc.name
  tags                 = { Name = "solor-1njchy-kyc-15-ec2171" }
}

resource "aws_instance" "kyc_15_ec21971" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_15_svc.name
  tags                 = { Name = "solor-1njchy-kyc-15-ec21971" }
}

resource "aws_instance" "kyc_15_ec2771" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_15_svc.name
  tags                 = { Name = "solor-1njchy-kyc-15-ec2771" }
}

resource "aws_cloudformation_stack" "kyc_15_stack1371" {
  name          = "solor-1njchy-kyc-15-stack1371"
  iam_role_arn  = aws_iam_role.kyc_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_16_ec21383" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_16_svc.name
  tags                 = { Name = "solor-1njchy-kyc-16-ec21383" }
}

resource "aws_sagemaker_notebook_instance" "kyc_16_nb183" {
  name          = "solor-1njchy-kyc-16-nb183"
  role_arn      = aws_iam_role.kyc_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_16_nb783" {
  name          = "solor-1njchy-kyc-16-nb783"
  role_arn      = aws_iam_role.kyc_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_16_stack1983" {
  name          = "solor-1njchy-kyc-16-stack1983"
  iam_role_arn  = aws_iam_role.kyc_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_17_ec21395" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_17_svc.name
  tags                 = { Name = "solor-1njchy-kyc-17-ec21395" }
}

resource "aws_instance" "kyc_17_ec2195" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_17_svc.name
  tags                 = { Name = "solor-1njchy-kyc-17-ec2195" }
}

resource "aws_instance" "kyc_17_ec2795" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_17_svc.name
  tags                 = { Name = "solor-1njchy-kyc-17-ec2795" }
}

resource "aws_sagemaker_notebook_instance" "kyc_17_nb1995" {
  name          = "solor-1njchy-kyc-17-nb1995"
  role_arn      = aws_iam_role.kyc_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "kyc_18_glue1407" {
  name     = "solor-1njchy-kyc-18-glue1407"
  role_arn = aws_iam_role.kyc_18_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "kyc_18_nb207" {
  name          = "solor-1njchy-kyc-18-nb207"
  role_arn      = aws_iam_role.kyc_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_18_stack807" {
  name          = "solor-1njchy-kyc-18-stack807"
  iam_role_arn  = aws_iam_role.kyc_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_19_ec21419" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_19_svc.name
  tags                 = { Name = "solor-1njchy-kyc-19-ec21419" }
}

resource "aws_instance" "kyc_19_ec2219" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_19_svc.name
  tags                 = { Name = "solor-1njchy-kyc-19-ec2219" }
}

resource "aws_sagemaker_notebook_instance" "kyc_19_nb819" {
  name          = "solor-1njchy-kyc-19-nb819"
  role_arn      = aws_iam_role.kyc_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_2_ec21215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_2_svc.name
  tags                 = { Name = "solor-1njchy-kyc-2-ec21215" }
}

resource "aws_instance" "kyc_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_2_svc.name
  tags                 = { Name = "solor-1njchy-kyc-2-ec215" }
}

resource "aws_instance" "kyc_2_ec21815" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_2_svc.name
  tags                 = { Name = "solor-1njchy-kyc-2-ec21815" }
}

resource "aws_glue_dev_endpoint" "kyc_2_glue615" {
  name     = "solor-1njchy-kyc-2-glue615"
  role_arn = aws_iam_role.kyc_2_glue_role.arn
}

resource "aws_instance" "kyc_20_ec21431" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_20_svc.name
  tags                 = { Name = "solor-1njchy-kyc-20-ec21431" }
}

resource "aws_sagemaker_notebook_instance" "kyc_20_nb831" {
  name          = "solor-1njchy-kyc-20-nb831"
  role_arn      = aws_iam_role.kyc_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_20_stack231" {
  name          = "solor-1njchy-kyc-20-stack231"
  iam_role_arn  = aws_iam_role.kyc_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_21_ec21443" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_21_svc.name
  tags                 = { Name = "solor-1njchy-kyc-21-ec21443" }
}

resource "aws_sagemaker_notebook_instance" "kyc_21_nb243" {
  name          = "solor-1njchy-kyc-21-nb243"
  role_arn      = aws_iam_role.kyc_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_21_nb843" {
  name          = "solor-1njchy-kyc-21-nb843"
  role_arn      = aws_iam_role.kyc_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_22_ec21455" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_22_svc.name
  tags                 = { Name = "solor-1njchy-kyc-22-ec21455" }
}

resource "aws_instance" "kyc_22_ec2255" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_22_svc.name
  tags                 = { Name = "solor-1njchy-kyc-22-ec2255" }
}

resource "aws_sagemaker_notebook_instance" "kyc_22_nb855" {
  name          = "solor-1njchy-kyc-22-nb855"
  role_arn      = aws_iam_role.kyc_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_23_ec2867" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_23_svc.name
  tags                 = { Name = "solor-1njchy-kyc-23-ec2867" }
}

resource "aws_cloudformation_stack" "kyc_23_stack1467" {
  name          = "solor-1njchy-kyc-23-stack1467"
  iam_role_arn  = aws_iam_role.kyc_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "kyc_23_stack267" {
  name          = "solor-1njchy-kyc-23-stack267"
  iam_role_arn  = aws_iam_role.kyc_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_24_ec2879" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_24_svc.name
  tags                 = { Name = "solor-1njchy-kyc-24-ec2879" }
}

resource "aws_glue_dev_endpoint" "kyc_24_glue279" {
  name     = "solor-1njchy-kyc-24-glue279"
  role_arn = aws_iam_role.kyc_24_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_24_stack1479" {
  name          = "solor-1njchy-kyc-24-stack1479"
  iam_role_arn  = aws_iam_role.kyc_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_25_ec21491" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_25_svc.name
  tags                 = { Name = "solor-1njchy-kyc-25-ec21491" }
}

resource "aws_instance" "kyc_25_ec2891" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_25_svc.name
  tags                 = { Name = "solor-1njchy-kyc-25-ec2891" }
}

resource "aws_glue_dev_endpoint" "kyc_25_glue291" {
  name     = "solor-1njchy-kyc-25-glue291"
  role_arn = aws_iam_role.kyc_25_glue_role.arn
}

resource "aws_instance" "kyc_26_ec21503" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_26_svc.name
  tags                 = { Name = "solor-1njchy-kyc-26-ec21503" }
}

resource "aws_glue_dev_endpoint" "kyc_26_glue903" {
  name     = "solor-1njchy-kyc-26-glue903"
  role_arn = aws_iam_role.kyc_26_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_26_stack303" {
  name          = "solor-1njchy-kyc-26-stack303"
  iam_role_arn  = aws_iam_role.kyc_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_27_ec2315" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_27_svc.name
  tags                 = { Name = "solor-1njchy-kyc-27-ec2315" }
}

resource "aws_glue_dev_endpoint" "kyc_27_glue915" {
  name     = "solor-1njchy-kyc-27-glue915"
  role_arn = aws_iam_role.kyc_27_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_27_stack1515" {
  name          = "solor-1njchy-kyc-27-stack1515"
  iam_role_arn  = aws_iam_role.kyc_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_28_ec21527" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_28_svc.name
  tags                 = { Name = "solor-1njchy-kyc-28-ec21527" }
}

resource "aws_instance" "kyc_28_ec2327" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_28_svc.name
  tags                 = { Name = "solor-1njchy-kyc-28-ec2327" }
}

resource "aws_sagemaker_notebook_instance" "kyc_28_nb927" {
  name          = "solor-1njchy-kyc-28-nb927"
  role_arn      = aws_iam_role.kyc_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_29_ec2339" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_29_svc.name
  tags                 = { Name = "solor-1njchy-kyc-29-ec2339" }
}

resource "aws_instance" "kyc_29_ec2939" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_29_svc.name
  tags                 = { Name = "solor-1njchy-kyc-29-ec2939" }
}

resource "aws_cloudformation_stack" "kyc_29_stack1539" {
  name          = "solor-1njchy-kyc-29-stack1539"
  iam_role_arn  = aws_iam_role.kyc_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_3_ec21227" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_3_svc.name
  tags                 = { Name = "solor-1njchy-kyc-3-ec21227" }
}

resource "aws_instance" "kyc_3_ec227" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_3_svc.name
  tags                 = { Name = "solor-1njchy-kyc-3-ec227" }
}

resource "aws_cloudformation_stack" "kyc_3_stack1827" {
  name          = "solor-1njchy-kyc-3-stack1827"
  iam_role_arn  = aws_iam_role.kyc_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "kyc_3_stack627" {
  name          = "solor-1njchy-kyc-3-stack627"
  iam_role_arn  = aws_iam_role.kyc_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_30_ec2951" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_30_svc.name
  tags                 = { Name = "solor-1njchy-kyc-30-ec2951" }
}

resource "aws_glue_dev_endpoint" "kyc_30_glue1551" {
  name     = "solor-1njchy-kyc-30-glue1551"
  role_arn = aws_iam_role.kyc_30_glue_role.arn
}

resource "aws_glue_dev_endpoint" "kyc_30_glue351" {
  name     = "solor-1njchy-kyc-30-glue351"
  role_arn = aws_iam_role.kyc_30_glue_role.arn
}

resource "aws_instance" "kyc_31_ec21563" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_31_svc.name
  tags                 = { Name = "solor-1njchy-kyc-31-ec21563" }
}

resource "aws_instance" "kyc_31_ec2363" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_31_svc.name
  tags                 = { Name = "solor-1njchy-kyc-31-ec2363" }
}

resource "aws_instance" "kyc_31_ec2963" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_31_svc.name
  tags                 = { Name = "solor-1njchy-kyc-31-ec2963" }
}

resource "aws_instance" "kyc_32_ec21575" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_32_svc.name
  tags                 = { Name = "solor-1njchy-kyc-32-ec21575" }
}

resource "aws_instance" "kyc_32_ec2375" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_32_svc.name
  tags                 = { Name = "solor-1njchy-kyc-32-ec2375" }
}

resource "aws_cloudformation_stack" "kyc_32_stack975" {
  name          = "solor-1njchy-kyc-32-stack975"
  iam_role_arn  = aws_iam_role.kyc_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_33_ec21587" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_33_svc.name
  tags                 = { Name = "solor-1njchy-kyc-33-ec21587" }
}

resource "aws_glue_dev_endpoint" "kyc_33_glue987" {
  name     = "solor-1njchy-kyc-33-glue987"
  role_arn = aws_iam_role.kyc_33_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "kyc_33_nb387" {
  name          = "solor-1njchy-kyc-33-nb387"
  role_arn      = aws_iam_role.kyc_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_34_ec21599" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_34_svc.name
  tags                 = { Name = "solor-1njchy-kyc-34-ec21599" }
}

resource "aws_glue_dev_endpoint" "kyc_34_glue399" {
  name     = "solor-1njchy-kyc-34-glue399"
  role_arn = aws_iam_role.kyc_34_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_34_stack999" {
  name          = "solor-1njchy-kyc-34-stack999"
  iam_role_arn  = aws_iam_role.kyc_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_35_ec21611" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_35_svc.name
  tags                 = { Name = "solor-1njchy-kyc-35-ec21611" }
}

resource "aws_instance" "kyc_35_ec2411" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_35_svc.name
  tags                 = { Name = "solor-1njchy-kyc-35-ec2411" }
}

resource "aws_cloudformation_stack" "kyc_35_stack1011" {
  name          = "solor-1njchy-kyc-35-stack1011"
  iam_role_arn  = aws_iam_role.kyc_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_36_ec21023" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_36_svc.name
  tags                 = { Name = "solor-1njchy-kyc-36-ec21023" }
}

resource "aws_instance" "kyc_36_ec21623" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_36_svc.name
  tags                 = { Name = "solor-1njchy-kyc-36-ec21623" }
}

resource "aws_instance" "kyc_36_ec2423" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_36_svc.name
  tags                 = { Name = "solor-1njchy-kyc-36-ec2423" }
}

resource "aws_instance" "kyc_37_ec21035" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_37_svc.name
  tags                 = { Name = "solor-1njchy-kyc-37-ec21035" }
}

resource "aws_instance" "kyc_37_ec2435" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_37_svc.name
  tags                 = { Name = "solor-1njchy-kyc-37-ec2435" }
}

resource "aws_cloudformation_stack" "kyc_37_stack1635" {
  name          = "solor-1njchy-kyc-37-stack1635"
  iam_role_arn  = aws_iam_role.kyc_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_38_ec2447" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_38_svc.name
  tags                 = { Name = "solor-1njchy-kyc-38-ec2447" }
}

resource "aws_glue_dev_endpoint" "kyc_38_glue1647" {
  name     = "solor-1njchy-kyc-38-glue1647"
  role_arn = aws_iam_role.kyc_38_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_38_stack1047" {
  name          = "solor-1njchy-kyc-38-stack1047"
  iam_role_arn  = aws_iam_role.kyc_38_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_39_ec21659" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_39_svc.name
  tags                 = { Name = "solor-1njchy-kyc-39-ec21659" }
}

resource "aws_sagemaker_notebook_instance" "kyc_39_nb1059" {
  name          = "solor-1njchy-kyc-39-nb1059"
  role_arn      = aws_iam_role.kyc_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_39_stack459" {
  name          = "solor-1njchy-kyc-39-stack459"
  iam_role_arn  = aws_iam_role.kyc_39_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_4_ec21839" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_4_svc.name
  tags                 = { Name = "solor-1njchy-kyc-4-ec21839" }
}

resource "aws_instance" "kyc_4_ec239" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_4_svc.name
  tags                 = { Name = "solor-1njchy-kyc-4-ec239" }
}

resource "aws_instance" "kyc_4_ec2639" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_4_svc.name
  tags                 = { Name = "solor-1njchy-kyc-4-ec2639" }
}

resource "aws_sagemaker_notebook_instance" "kyc_4_nb1239" {
  name          = "solor-1njchy-kyc-4-nb1239"
  role_arn      = aws_iam_role.kyc_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_40_ec2471" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_40_svc.name
  tags                 = { Name = "solor-1njchy-kyc-40-ec2471" }
}

resource "aws_cloudformation_stack" "kyc_40_stack1071" {
  name          = "solor-1njchy-kyc-40-stack1071"
  iam_role_arn  = aws_iam_role.kyc_40_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "kyc_40_stack1671" {
  name          = "solor-1njchy-kyc-40-stack1671"
  iam_role_arn  = aws_iam_role.kyc_40_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_41_ec21083" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_41_svc.name
  tags                 = { Name = "solor-1njchy-kyc-41-ec21083" }
}

resource "aws_instance" "kyc_41_ec2483" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_41_svc.name
  tags                 = { Name = "solor-1njchy-kyc-41-ec2483" }
}

resource "aws_glue_dev_endpoint" "kyc_41_glue1683" {
  name     = "solor-1njchy-kyc-41-glue1683"
  role_arn = aws_iam_role.kyc_41_glue_role.arn
}

resource "aws_instance" "kyc_42_ec21695" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_42_svc.name
  tags                 = { Name = "solor-1njchy-kyc-42-ec21695" }
}

resource "aws_sagemaker_notebook_instance" "kyc_42_nb1095" {
  name          = "solor-1njchy-kyc-42-nb1095"
  role_arn      = aws_iam_role.kyc_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_42_stack495" {
  name          = "solor-1njchy-kyc-42-stack495"
  iam_role_arn  = aws_iam_role.kyc_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_43_ec21107" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_43_svc.name
  tags                 = { Name = "solor-1njchy-kyc-43-ec21107" }
}

resource "aws_cloudformation_stack" "kyc_43_stack1707" {
  name          = "solor-1njchy-kyc-43-stack1707"
  iam_role_arn  = aws_iam_role.kyc_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "kyc_43_stack507" {
  name          = "solor-1njchy-kyc-43-stack507"
  iam_role_arn  = aws_iam_role.kyc_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "kyc_44_nb1719" {
  name          = "solor-1njchy-kyc-44-nb1719"
  role_arn      = aws_iam_role.kyc_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_44_stack1119" {
  name          = "solor-1njchy-kyc-44-stack1119"
  iam_role_arn  = aws_iam_role.kyc_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "kyc_44_stack519" {
  name          = "solor-1njchy-kyc-44-stack519"
  iam_role_arn  = aws_iam_role.kyc_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_45_ec21731" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_45_svc.name
  tags                 = { Name = "solor-1njchy-kyc-45-ec21731" }
}

resource "aws_glue_dev_endpoint" "kyc_45_glue531" {
  name     = "solor-1njchy-kyc-45-glue531"
  role_arn = aws_iam_role.kyc_45_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "kyc_45_nb1131" {
  name          = "solor-1njchy-kyc-45-nb1131"
  role_arn      = aws_iam_role.kyc_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_46_nb1143" {
  name          = "solor-1njchy-kyc-46-nb1143"
  role_arn      = aws_iam_role.kyc_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_46_nb1743" {
  name          = "solor-1njchy-kyc-46-nb1743"
  role_arn      = aws_iam_role.kyc_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_46_nb543" {
  name          = "solor-1njchy-kyc-46-nb543"
  role_arn      = aws_iam_role.kyc_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "kyc_47_glue1755" {
  name     = "solor-1njchy-kyc-47-glue1755"
  role_arn = aws_iam_role.kyc_47_glue_role.arn
}

resource "aws_glue_dev_endpoint" "kyc_47_glue555" {
  name     = "solor-1njchy-kyc-47-glue555"
  role_arn = aws_iam_role.kyc_47_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_47_stack1155" {
  name          = "solor-1njchy-kyc-47-stack1155"
  iam_role_arn  = aws_iam_role.kyc_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_48_ec21767" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_48_svc.name
  tags                 = { Name = "solor-1njchy-kyc-48-ec21767" }
}

resource "aws_instance" "kyc_48_ec2567" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_48_svc.name
  tags                 = { Name = "solor-1njchy-kyc-48-ec2567" }
}

resource "aws_cloudformation_stack" "kyc_48_stack1167" {
  name          = "solor-1njchy-kyc-48-stack1167"
  iam_role_arn  = aws_iam_role.kyc_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_49_ec2579" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_49_svc.name
  tags                 = { Name = "solor-1njchy-kyc-49-ec2579" }
}

resource "aws_glue_dev_endpoint" "kyc_49_glue1779" {
  name     = "solor-1njchy-kyc-49-glue1779"
  role_arn = aws_iam_role.kyc_49_glue_role.arn
}

resource "aws_cloudformation_stack" "kyc_49_stack1179" {
  name          = "solor-1njchy-kyc-49-stack1179"
  iam_role_arn  = aws_iam_role.kyc_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_5_ec21851" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_5_svc.name
  tags                 = { Name = "solor-1njchy-kyc-5-ec21851" }
}

resource "aws_sagemaker_notebook_instance" "kyc_5_nb51" {
  name          = "solor-1njchy-kyc-5-nb51"
  role_arn      = aws_iam_role.kyc_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "kyc_5_nb651" {
  name          = "solor-1njchy-kyc-5-nb651"
  role_arn      = aws_iam_role.kyc_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_5_stack1251" {
  name          = "solor-1njchy-kyc-5-stack1251"
  iam_role_arn  = aws_iam_role.kyc_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_50_ec21191" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_50_svc.name
  tags                 = { Name = "solor-1njchy-kyc-50-ec21191" }
}

resource "aws_instance" "kyc_50_ec2591" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_50_svc.name
  tags                 = { Name = "solor-1njchy-kyc-50-ec2591" }
}

resource "aws_cloudformation_stack" "kyc_50_stack1791" {
  name          = "solor-1njchy-kyc-50-stack1791"
  iam_role_arn  = aws_iam_role.kyc_50_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_6_ec21263" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_6_svc.name
  tags                 = { Name = "solor-1njchy-kyc-6-ec21263" }
}

resource "aws_instance" "kyc_6_ec21863" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_6_svc.name
  tags                 = { Name = "solor-1njchy-kyc-6-ec21863" }
}

resource "aws_glue_dev_endpoint" "kyc_6_glue63" {
  name     = "solor-1njchy-kyc-6-glue63"
  role_arn = aws_iam_role.kyc_6_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "kyc_6_nb663" {
  name          = "solor-1njchy-kyc-6-nb663"
  role_arn      = aws_iam_role.kyc_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "kyc_7_ec21275" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_7_svc.name
  tags                 = { Name = "solor-1njchy-kyc-7-ec21275" }
}

resource "aws_instance" "kyc_7_ec275" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_7_svc.name
  tags                 = { Name = "solor-1njchy-kyc-7-ec275" }
}

resource "aws_sagemaker_notebook_instance" "kyc_7_nb1875" {
  name          = "solor-1njchy-kyc-7-nb1875"
  role_arn      = aws_iam_role.kyc_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "kyc_7_stack675" {
  name          = "solor-1njchy-kyc-7-stack675"
  iam_role_arn  = aws_iam_role.kyc_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_8_ec21287" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_8_svc.name
  tags                 = { Name = "solor-1njchy-kyc-8-ec21287" }
}

resource "aws_instance" "kyc_8_ec21887" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_8_svc.name
  tags                 = { Name = "solor-1njchy-kyc-8-ec21887" }
}

resource "aws_instance" "kyc_8_ec2687" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_8_svc.name
  tags                 = { Name = "solor-1njchy-kyc-8-ec2687" }
}

resource "aws_cloudformation_stack" "kyc_8_stack87" {
  name          = "solor-1njchy-kyc-8-stack87"
  iam_role_arn  = aws_iam_role.kyc_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_9_ec21299" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_9_svc.name
  tags                 = { Name = "solor-1njchy-kyc-9-ec21299" }
}

resource "aws_instance" "kyc_9_ec2699" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_9_svc.name
  tags                 = { Name = "solor-1njchy-kyc-9-ec2699" }
}

resource "aws_instance" "kyc_9_ec299" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_9_svc.name
  tags                 = { Name = "solor-1njchy-kyc-9-ec299" }
}

resource "aws_cloudformation_stack" "kyc_9_stack1899" {
  name          = "solor-1njchy-kyc-9-stack1899"
  iam_role_arn  = aws_iam_role.kyc_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "kyc_ec21803" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_svc.name
  tags                 = { Name = "solor-1njchy-kyc-ec21803" }
}

resource "aws_instance" "kyc_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_svc.name
  tags                 = { Name = "solor-1njchy-kyc-ec23" }
}

resource "aws_instance" "kyc_ec2603" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.kyc_svc.name
  tags                 = { Name = "solor-1njchy-kyc-ec2603" }
}

resource "aws_cloudformation_stack" "kyc_stack1203" {
  name          = "solor-1njchy-kyc-stack1203"
  iam_role_arn  = aws_iam_role.kyc_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_10_ec2109" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_10_svc.name
  tags                 = { Name = "solor-1njchy-ledger-10-ec2109" }
}

resource "aws_instance" "ledger_10_ec21309" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_10_svc.name
  tags                 = { Name = "solor-1njchy-ledger-10-ec21309" }
}

resource "aws_instance" "ledger_10_ec21909" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_10_svc.name
  tags                 = { Name = "solor-1njchy-ledger-10-ec21909" }
}

resource "aws_instance" "ledger_10_ec2709" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_10_svc.name
  tags                 = { Name = "solor-1njchy-ledger-10-ec2709" }
}

resource "aws_instance" "ledger_11_ec2121" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_11_svc.name
  tags                 = { Name = "solor-1njchy-ledger-11-ec2121" }
}

resource "aws_instance" "ledger_11_ec21921" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_11_svc.name
  tags                 = { Name = "solor-1njchy-ledger-11-ec21921" }
}

resource "aws_sagemaker_notebook_instance" "ledger_11_nb1321" {
  name          = "solor-1njchy-ledger-11-nb1321"
  role_arn      = aws_iam_role.ledger_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_11_nb721" {
  name          = "solor-1njchy-ledger-11-nb721"
  role_arn      = aws_iam_role.ledger_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_12_ec2133" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_12_svc.name
  tags                 = { Name = "solor-1njchy-ledger-12-ec2133" }
}

resource "aws_instance" "ledger_12_ec21933" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_12_svc.name
  tags                 = { Name = "solor-1njchy-ledger-12-ec21933" }
}

resource "aws_sagemaker_notebook_instance" "ledger_12_nb1333" {
  name          = "solor-1njchy-ledger-12-nb1333"
  role_arn      = aws_iam_role.ledger_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_12_nb733" {
  name          = "solor-1njchy-ledger-12-nb733"
  role_arn      = aws_iam_role.ledger_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_13_ec2145" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_13_svc.name
  tags                 = { Name = "solor-1njchy-ledger-13-ec2145" }
}

resource "aws_instance" "ledger_13_ec21945" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_13_svc.name
  tags                 = { Name = "solor-1njchy-ledger-13-ec21945" }
}

resource "aws_instance" "ledger_13_ec2745" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_13_svc.name
  tags                 = { Name = "solor-1njchy-ledger-13-ec2745" }
}

resource "aws_cloudformation_stack" "ledger_13_stack1345" {
  name          = "solor-1njchy-ledger-13-stack1345"
  iam_role_arn  = aws_iam_role.ledger_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_14_ec2157" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_14_svc.name
  tags                 = { Name = "solor-1njchy-ledger-14-ec2157" }
}

resource "aws_instance" "ledger_14_ec21957" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_14_svc.name
  tags                 = { Name = "solor-1njchy-ledger-14-ec21957" }
}

resource "aws_instance" "ledger_14_ec2757" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_14_svc.name
  tags                 = { Name = "solor-1njchy-ledger-14-ec2757" }
}

resource "aws_glue_dev_endpoint" "ledger_14_glue1357" {
  name     = "solor-1njchy-ledger-14-glue1357"
  role_arn = aws_iam_role.ledger_14_glue_role.arn
}

resource "aws_instance" "ledger_15_ec21969" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_15_svc.name
  tags                 = { Name = "solor-1njchy-ledger-15-ec21969" }
}

resource "aws_instance" "ledger_15_ec2769" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_15_svc.name
  tags                 = { Name = "solor-1njchy-ledger-15-ec2769" }
}

resource "aws_cloudformation_stack" "ledger_15_stack1369" {
  name          = "solor-1njchy-ledger-15-stack1369"
  iam_role_arn  = aws_iam_role.ledger_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_15_stack169" {
  name          = "solor-1njchy-ledger-15-stack169"
  iam_role_arn  = aws_iam_role.ledger_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_16_ec21381" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_16_svc.name
  tags                 = { Name = "solor-1njchy-ledger-16-ec21381" }
}

resource "aws_instance" "ledger_16_ec2181" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_16_svc.name
  tags                 = { Name = "solor-1njchy-ledger-16-ec2181" }
}

resource "aws_instance" "ledger_16_ec2781" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_16_svc.name
  tags                 = { Name = "solor-1njchy-ledger-16-ec2781" }
}

resource "aws_sagemaker_notebook_instance" "ledger_16_nb1981" {
  name          = "solor-1njchy-ledger-16-nb1981"
  role_arn      = aws_iam_role.ledger_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_17_ec21393" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_17_svc.name
  tags                 = { Name = "solor-1njchy-ledger-17-ec21393" }
}

resource "aws_instance" "ledger_17_ec21993" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_17_svc.name
  tags                 = { Name = "solor-1njchy-ledger-17-ec21993" }
}

resource "aws_instance" "ledger_17_ec2793" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_17_svc.name
  tags                 = { Name = "solor-1njchy-ledger-17-ec2793" }
}

resource "aws_cloudformation_stack" "ledger_17_stack193" {
  name          = "solor-1njchy-ledger-17-stack193"
  iam_role_arn  = aws_iam_role.ledger_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "ledger_18_nb805" {
  name          = "solor-1njchy-ledger-18-nb805"
  role_arn      = aws_iam_role.ledger_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_18_stack1405" {
  name          = "solor-1njchy-ledger-18-stack1405"
  iam_role_arn  = aws_iam_role.ledger_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_18_stack205" {
  name          = "solor-1njchy-ledger-18-stack205"
  iam_role_arn  = aws_iam_role.ledger_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_19_ec2217" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_19_svc.name
  tags                 = { Name = "solor-1njchy-ledger-19-ec2217" }
}

resource "aws_sagemaker_notebook_instance" "ledger_19_nb817" {
  name          = "solor-1njchy-ledger-19-nb817"
  role_arn      = aws_iam_role.ledger_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_19_stack1417" {
  name          = "solor-1njchy-ledger-19-stack1417"
  iam_role_arn  = aws_iam_role.ledger_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_2_ec21213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_2_svc.name
  tags                 = { Name = "solor-1njchy-ledger-2-ec21213" }
}

resource "aws_instance" "ledger_2_ec213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_2_svc.name
  tags                 = { Name = "solor-1njchy-ledger-2-ec213" }
}

resource "aws_instance" "ledger_2_ec21813" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_2_svc.name
  tags                 = { Name = "solor-1njchy-ledger-2-ec21813" }
}

resource "aws_cloudformation_stack" "ledger_2_stack613" {
  name          = "solor-1njchy-ledger-2-stack613"
  iam_role_arn  = aws_iam_role.ledger_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_20_ec21429" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_20_svc.name
  tags                 = { Name = "solor-1njchy-ledger-20-ec21429" }
}

resource "aws_instance" "ledger_20_ec2229" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_20_svc.name
  tags                 = { Name = "solor-1njchy-ledger-20-ec2229" }
}

resource "aws_sagemaker_notebook_instance" "ledger_20_nb829" {
  name          = "solor-1njchy-ledger-20-nb829"
  role_arn      = aws_iam_role.ledger_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_21_ec21441" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_21_svc.name
  tags                 = { Name = "solor-1njchy-ledger-21-ec21441" }
}

resource "aws_instance" "ledger_21_ec2241" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_21_svc.name
  tags                 = { Name = "solor-1njchy-ledger-21-ec2241" }
}

resource "aws_cloudformation_stack" "ledger_21_stack841" {
  name          = "solor-1njchy-ledger-21-stack841"
  iam_role_arn  = aws_iam_role.ledger_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_22_ec2253" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_22_svc.name
  tags                 = { Name = "solor-1njchy-ledger-22-ec2253" }
}

resource "aws_instance" "ledger_22_ec2853" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_22_svc.name
  tags                 = { Name = "solor-1njchy-ledger-22-ec2853" }
}

resource "aws_sagemaker_notebook_instance" "ledger_22_nb1453" {
  name          = "solor-1njchy-ledger-22-nb1453"
  role_arn      = aws_iam_role.ledger_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_23_ec21465" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_23_svc.name
  tags                 = { Name = "solor-1njchy-ledger-23-ec21465" }
}

resource "aws_instance" "ledger_23_ec2265" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_23_svc.name
  tags                 = { Name = "solor-1njchy-ledger-23-ec2265" }
}

resource "aws_glue_dev_endpoint" "ledger_23_glue865" {
  name     = "solor-1njchy-ledger-23-glue865"
  role_arn = aws_iam_role.ledger_23_glue_role.arn
}

resource "aws_instance" "ledger_24_ec2277" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_24_svc.name
  tags                 = { Name = "solor-1njchy-ledger-24-ec2277" }
}

resource "aws_instance" "ledger_24_ec2877" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_24_svc.name
  tags                 = { Name = "solor-1njchy-ledger-24-ec2877" }
}

resource "aws_cloudformation_stack" "ledger_24_stack1477" {
  name          = "solor-1njchy-ledger-24-stack1477"
  iam_role_arn  = aws_iam_role.ledger_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_25_ec21489" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_25_svc.name
  tags                 = { Name = "solor-1njchy-ledger-25-ec21489" }
}

resource "aws_instance" "ledger_25_ec2889" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_25_svc.name
  tags                 = { Name = "solor-1njchy-ledger-25-ec2889" }
}

resource "aws_cloudformation_stack" "ledger_25_stack289" {
  name          = "solor-1njchy-ledger-25-stack289"
  iam_role_arn  = aws_iam_role.ledger_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_26_ec21501" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_26_svc.name
  tags                 = { Name = "solor-1njchy-ledger-26-ec21501" }
}

resource "aws_glue_dev_endpoint" "ledger_26_glue301" {
  name     = "solor-1njchy-ledger-26-glue301"
  role_arn = aws_iam_role.ledger_26_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_26_nb901" {
  name          = "solor-1njchy-ledger-26-nb901"
  role_arn      = aws_iam_role.ledger_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_27_ec2313" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_27_svc.name
  tags                 = { Name = "solor-1njchy-ledger-27-ec2313" }
}

resource "aws_instance" "ledger_27_ec2913" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_27_svc.name
  tags                 = { Name = "solor-1njchy-ledger-27-ec2913" }
}

resource "aws_sagemaker_notebook_instance" "ledger_27_nb1513" {
  name          = "solor-1njchy-ledger-27-nb1513"
  role_arn      = aws_iam_role.ledger_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_28_ec21525" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_28_svc.name
  tags                 = { Name = "solor-1njchy-ledger-28-ec21525" }
}

resource "aws_instance" "ledger_28_ec2325" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_28_svc.name
  tags                 = { Name = "solor-1njchy-ledger-28-ec2325" }
}

resource "aws_cloudformation_stack" "ledger_28_stack925" {
  name          = "solor-1njchy-ledger-28-stack925"
  iam_role_arn  = aws_iam_role.ledger_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_29_ec21537" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_29_svc.name
  tags                 = { Name = "solor-1njchy-ledger-29-ec21537" }
}

resource "aws_instance" "ledger_29_ec2337" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_29_svc.name
  tags                 = { Name = "solor-1njchy-ledger-29-ec2337" }
}

resource "aws_sagemaker_notebook_instance" "ledger_29_nb937" {
  name          = "solor-1njchy-ledger-29-nb937"
  role_arn      = aws_iam_role.ledger_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_3_ec21825" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_3_svc.name
  tags                 = { Name = "solor-1njchy-ledger-3-ec21825" }
}

resource "aws_instance" "ledger_3_ec2625" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_3_svc.name
  tags                 = { Name = "solor-1njchy-ledger-3-ec2625" }
}

resource "aws_cloudformation_stack" "ledger_3_stack1225" {
  name          = "solor-1njchy-ledger-3-stack1225"
  iam_role_arn  = aws_iam_role.ledger_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_3_stack25" {
  name          = "solor-1njchy-ledger-3-stack25"
  iam_role_arn  = aws_iam_role.ledger_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_30_ec2349" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_30_svc.name
  tags                 = { Name = "solor-1njchy-ledger-30-ec2349" }
}

resource "aws_instance" "ledger_30_ec2949" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_30_svc.name
  tags                 = { Name = "solor-1njchy-ledger-30-ec2949" }
}

resource "aws_glue_dev_endpoint" "ledger_30_glue1549" {
  name     = "solor-1njchy-ledger-30-glue1549"
  role_arn = aws_iam_role.ledger_30_glue_role.arn
}

resource "aws_instance" "ledger_31_ec2961" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_31_svc.name
  tags                 = { Name = "solor-1njchy-ledger-31-ec2961" }
}

resource "aws_sagemaker_notebook_instance" "ledger_31_nb361" {
  name          = "solor-1njchy-ledger-31-nb361"
  role_arn      = aws_iam_role.ledger_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_31_stack1561" {
  name          = "solor-1njchy-ledger-31-stack1561"
  iam_role_arn  = aws_iam_role.ledger_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_32_ec21573" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_32_svc.name
  tags                 = { Name = "solor-1njchy-ledger-32-ec21573" }
}

resource "aws_instance" "ledger_32_ec2973" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_32_svc.name
  tags                 = { Name = "solor-1njchy-ledger-32-ec2973" }
}

resource "aws_sagemaker_notebook_instance" "ledger_32_nb373" {
  name          = "solor-1njchy-ledger-32-nb373"
  role_arn      = aws_iam_role.ledger_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_33_ec2385" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_33_svc.name
  tags                 = { Name = "solor-1njchy-ledger-33-ec2385" }
}

resource "aws_cloudformation_stack" "ledger_33_stack1585" {
  name          = "solor-1njchy-ledger-33-stack1585"
  iam_role_arn  = aws_iam_role.ledger_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_33_stack985" {
  name          = "solor-1njchy-ledger-33-stack985"
  iam_role_arn  = aws_iam_role.ledger_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_34_ec21597" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_34_svc.name
  tags                 = { Name = "solor-1njchy-ledger-34-ec21597" }
}

resource "aws_instance" "ledger_34_ec2397" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_34_svc.name
  tags                 = { Name = "solor-1njchy-ledger-34-ec2397" }
}

resource "aws_sagemaker_notebook_instance" "ledger_34_nb997" {
  name          = "solor-1njchy-ledger-34-nb997"
  role_arn      = aws_iam_role.ledger_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_35_ec21609" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_35_svc.name
  tags                 = { Name = "solor-1njchy-ledger-35-ec21609" }
}

resource "aws_sagemaker_notebook_instance" "ledger_35_nb1009" {
  name          = "solor-1njchy-ledger-35-nb1009"
  role_arn      = aws_iam_role.ledger_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_35_nb409" {
  name          = "solor-1njchy-ledger-35-nb409"
  role_arn      = aws_iam_role.ledger_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_36_ec21021" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_36_svc.name
  tags                 = { Name = "solor-1njchy-ledger-36-ec21021" }
}

resource "aws_glue_dev_endpoint" "ledger_36_glue421" {
  name     = "solor-1njchy-ledger-36-glue421"
  role_arn = aws_iam_role.ledger_36_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_36_nb1621" {
  name          = "solor-1njchy-ledger-36-nb1621"
  role_arn      = aws_iam_role.ledger_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_37_ec2433" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_37_svc.name
  tags                 = { Name = "solor-1njchy-ledger-37-ec2433" }
}

resource "aws_sagemaker_notebook_instance" "ledger_37_nb1033" {
  name          = "solor-1njchy-ledger-37-nb1033"
  role_arn      = aws_iam_role.ledger_37_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_37_stack1633" {
  name          = "solor-1njchy-ledger-37-stack1633"
  iam_role_arn  = aws_iam_role.ledger_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "ledger_38_glue445" {
  name     = "solor-1njchy-ledger-38-glue445"
  role_arn = aws_iam_role.ledger_38_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_38_nb1045" {
  name          = "solor-1njchy-ledger-38-nb1045"
  role_arn      = aws_iam_role.ledger_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_38_nb1645" {
  name          = "solor-1njchy-ledger-38-nb1645"
  role_arn      = aws_iam_role.ledger_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_39_ec21057" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_39_svc.name
  tags                 = { Name = "solor-1njchy-ledger-39-ec21057" }
}

resource "aws_instance" "ledger_39_ec21657" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_39_svc.name
  tags                 = { Name = "solor-1njchy-ledger-39-ec21657" }
}

resource "aws_instance" "ledger_39_ec2457" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_39_svc.name
  tags                 = { Name = "solor-1njchy-ledger-39-ec2457" }
}

resource "aws_instance" "ledger_4_ec237" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_4_svc.name
  tags                 = { Name = "solor-1njchy-ledger-4-ec237" }
}

resource "aws_sagemaker_notebook_instance" "ledger_4_nb1237" {
  name          = "solor-1njchy-ledger-4-nb1237"
  role_arn      = aws_iam_role.ledger_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_4_nb1837" {
  name          = "solor-1njchy-ledger-4-nb1837"
  role_arn      = aws_iam_role.ledger_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_4_nb637" {
  name          = "solor-1njchy-ledger-4-nb637"
  role_arn      = aws_iam_role.ledger_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_40_ec21069" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_40_svc.name
  tags                 = { Name = "solor-1njchy-ledger-40-ec21069" }
}

resource "aws_instance" "ledger_40_ec21669" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_40_svc.name
  tags                 = { Name = "solor-1njchy-ledger-40-ec21669" }
}

resource "aws_instance" "ledger_40_ec2469" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_40_svc.name
  tags                 = { Name = "solor-1njchy-ledger-40-ec2469" }
}

resource "aws_instance" "ledger_41_ec21081" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_41_svc.name
  tags                 = { Name = "solor-1njchy-ledger-41-ec21081" }
}

resource "aws_instance" "ledger_41_ec21681" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_41_svc.name
  tags                 = { Name = "solor-1njchy-ledger-41-ec21681" }
}

resource "aws_instance" "ledger_41_ec2481" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_41_svc.name
  tags                 = { Name = "solor-1njchy-ledger-41-ec2481" }
}

resource "aws_instance" "ledger_42_ec21093" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_42_svc.name
  tags                 = { Name = "solor-1njchy-ledger-42-ec21093" }
}

resource "aws_sagemaker_notebook_instance" "ledger_42_nb493" {
  name          = "solor-1njchy-ledger-42-nb493"
  role_arn      = aws_iam_role.ledger_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_42_stack1693" {
  name          = "solor-1njchy-ledger-42-stack1693"
  iam_role_arn  = aws_iam_role.ledger_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_43_stack1105" {
  name          = "solor-1njchy-ledger-43-stack1105"
  iam_role_arn  = aws_iam_role.ledger_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_43_stack1705" {
  name          = "solor-1njchy-ledger-43-stack1705"
  iam_role_arn  = aws_iam_role.ledger_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_43_stack505" {
  name          = "solor-1njchy-ledger-43-stack505"
  iam_role_arn  = aws_iam_role.ledger_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_44_ec21717" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_44_svc.name
  tags                 = { Name = "solor-1njchy-ledger-44-ec21717" }
}

resource "aws_glue_dev_endpoint" "ledger_44_glue517" {
  name     = "solor-1njchy-ledger-44-glue517"
  role_arn = aws_iam_role.ledger_44_glue_role.arn
}

resource "aws_cloudformation_stack" "ledger_44_stack1117" {
  name          = "solor-1njchy-ledger-44-stack1117"
  iam_role_arn  = aws_iam_role.ledger_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_45_ec21729" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_45_svc.name
  tags                 = { Name = "solor-1njchy-ledger-45-ec21729" }
}

resource "aws_instance" "ledger_45_ec2529" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_45_svc.name
  tags                 = { Name = "solor-1njchy-ledger-45-ec2529" }
}

resource "aws_cloudformation_stack" "ledger_45_stack1129" {
  name          = "solor-1njchy-ledger-45-stack1129"
  iam_role_arn  = aws_iam_role.ledger_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "ledger_46_glue1741" {
  name     = "solor-1njchy-ledger-46-glue1741"
  role_arn = aws_iam_role.ledger_46_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_46_nb1141" {
  name          = "solor-1njchy-ledger-46-nb1141"
  role_arn      = aws_iam_role.ledger_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_46_stack541" {
  name          = "solor-1njchy-ledger-46-stack541"
  iam_role_arn  = aws_iam_role.ledger_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_47_ec21153" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_47_svc.name
  tags                 = { Name = "solor-1njchy-ledger-47-ec21153" }
}

resource "aws_instance" "ledger_47_ec2553" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_47_svc.name
  tags                 = { Name = "solor-1njchy-ledger-47-ec2553" }
}

resource "aws_sagemaker_notebook_instance" "ledger_47_nb1753" {
  name          = "solor-1njchy-ledger-47-nb1753"
  role_arn      = aws_iam_role.ledger_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_48_nb1765" {
  name          = "solor-1njchy-ledger-48-nb1765"
  role_arn      = aws_iam_role.ledger_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_48_stack1165" {
  name          = "solor-1njchy-ledger-48-stack1165"
  iam_role_arn  = aws_iam_role.ledger_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "ledger_48_stack565" {
  name          = "solor-1njchy-ledger-48-stack565"
  iam_role_arn  = aws_iam_role.ledger_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_49_ec2577" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_49_svc.name
  tags                 = { Name = "solor-1njchy-ledger-49-ec2577" }
}

resource "aws_sagemaker_notebook_instance" "ledger_49_nb1777" {
  name          = "solor-1njchy-ledger-49-nb1777"
  role_arn      = aws_iam_role.ledger_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_49_stack1177" {
  name          = "solor-1njchy-ledger-49-stack1177"
  iam_role_arn  = aws_iam_role.ledger_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_5_ec249" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_5_svc.name
  tags                 = { Name = "solor-1njchy-ledger-5-ec249" }
}

resource "aws_glue_dev_endpoint" "ledger_5_glue649" {
  name     = "solor-1njchy-ledger-5-glue649"
  role_arn = aws_iam_role.ledger_5_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_5_nb1249" {
  name          = "solor-1njchy-ledger-5-nb1249"
  role_arn      = aws_iam_role.ledger_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_5_stack1849" {
  name          = "solor-1njchy-ledger-5-stack1849"
  iam_role_arn  = aws_iam_role.ledger_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_50_ec21189" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_50_svc.name
  tags                 = { Name = "solor-1njchy-ledger-50-ec21189" }
}

resource "aws_instance" "ledger_50_ec2589" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_50_svc.name
  tags                 = { Name = "solor-1njchy-ledger-50-ec2589" }
}

resource "aws_sagemaker_notebook_instance" "ledger_50_nb1789" {
  name          = "solor-1njchy-ledger-50-nb1789"
  role_arn      = aws_iam_role.ledger_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_6_ec21861" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_6_svc.name
  tags                 = { Name = "solor-1njchy-ledger-6-ec21861" }
}

resource "aws_instance" "ledger_6_ec261" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_6_svc.name
  tags                 = { Name = "solor-1njchy-ledger-6-ec261" }
}

resource "aws_instance" "ledger_6_ec2661" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_6_svc.name
  tags                 = { Name = "solor-1njchy-ledger-6-ec2661" }
}

resource "aws_glue_dev_endpoint" "ledger_6_glue1261" {
  name     = "solor-1njchy-ledger-6-glue1261"
  role_arn = aws_iam_role.ledger_6_glue_role.arn
}

resource "aws_instance" "ledger_7_ec2673" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_7_svc.name
  tags                 = { Name = "solor-1njchy-ledger-7-ec2673" }
}

resource "aws_sagemaker_notebook_instance" "ledger_7_nb1273" {
  name          = "solor-1njchy-ledger-7-nb1273"
  role_arn      = aws_iam_role.ledger_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_7_nb73" {
  name          = "solor-1njchy-ledger-7-nb73"
  role_arn      = aws_iam_role.ledger_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "ledger_7_stack1873" {
  name          = "solor-1njchy-ledger-7-stack1873"
  iam_role_arn  = aws_iam_role.ledger_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "ledger_8_ec285" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_8_svc.name
  tags                 = { Name = "solor-1njchy-ledger-8-ec285" }
}

resource "aws_glue_dev_endpoint" "ledger_8_glue1285" {
  name     = "solor-1njchy-ledger-8-glue1285"
  role_arn = aws_iam_role.ledger_8_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "ledger_8_nb1885" {
  name          = "solor-1njchy-ledger-8-nb1885"
  role_arn      = aws_iam_role.ledger_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_8_nb685" {
  name          = "solor-1njchy-ledger-8-nb685"
  role_arn      = aws_iam_role.ledger_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_9_ec2697" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_9_svc.name
  tags                 = { Name = "solor-1njchy-ledger-9-ec2697" }
}

resource "aws_instance" "ledger_9_ec297" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_9_svc.name
  tags                 = { Name = "solor-1njchy-ledger-9-ec297" }
}

resource "aws_sagemaker_notebook_instance" "ledger_9_nb1297" {
  name          = "solor-1njchy-ledger-9-nb1297"
  role_arn      = aws_iam_role.ledger_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_9_nb1897" {
  name          = "solor-1njchy-ledger-9-nb1897"
  role_arn      = aws_iam_role.ledger_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "ledger_ec21" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_svc.name
  tags                 = { Name = "solor-1njchy-ledger-ec21" }
}

resource "aws_instance" "ledger_ec2601" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.ledger_svc.name
  tags                 = { Name = "solor-1njchy-ledger-ec2601" }
}

resource "aws_sagemaker_notebook_instance" "ledger_nb1201" {
  name          = "solor-1njchy-ledger-nb1201"
  role_arn      = aws_iam_role.ledger_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "ledger_nb1801" {
  name          = "solor-1njchy-ledger-nb1801"
  role_arn      = aws_iam_role.ledger_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_10_ec21915" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_10_svc.name
  tags                 = { Name = "solor-1njchy-lending-10-ec21915" }
}

resource "aws_sagemaker_notebook_instance" "lending_10_nb115" {
  name          = "solor-1njchy-lending-10-nb115"
  role_arn      = aws_iam_role.lending_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_10_stack1315" {
  name          = "solor-1njchy-lending-10-stack1315"
  iam_role_arn  = aws_iam_role.lending_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_10_stack715" {
  name          = "solor-1njchy-lending-10-stack715"
  iam_role_arn  = aws_iam_role.lending_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_11_ec2127" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_11_svc.name
  tags                 = { Name = "solor-1njchy-lending-11-ec2127" }
}

resource "aws_instance" "lending_11_ec21327" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_11_svc.name
  tags                 = { Name = "solor-1njchy-lending-11-ec21327" }
}

resource "aws_cloudformation_stack" "lending_11_stack1927" {
  name          = "solor-1njchy-lending-11-stack1927"
  iam_role_arn  = aws_iam_role.lending_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_11_stack727" {
  name          = "solor-1njchy-lending-11-stack727"
  iam_role_arn  = aws_iam_role.lending_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_12_ec21339" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_12_svc.name
  tags                 = { Name = "solor-1njchy-lending-12-ec21339" }
}

resource "aws_instance" "lending_12_ec21939" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_12_svc.name
  tags                 = { Name = "solor-1njchy-lending-12-ec21939" }
}

resource "aws_instance" "lending_12_ec2739" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_12_svc.name
  tags                 = { Name = "solor-1njchy-lending-12-ec2739" }
}

resource "aws_cloudformation_stack" "lending_12_stack139" {
  name          = "solor-1njchy-lending-12-stack139"
  iam_role_arn  = aws_iam_role.lending_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_13_ec21951" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_13_svc.name
  tags                 = { Name = "solor-1njchy-lending-13-ec21951" }
}

resource "aws_instance" "lending_13_ec2751" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_13_svc.name
  tags                 = { Name = "solor-1njchy-lending-13-ec2751" }
}

resource "aws_sagemaker_notebook_instance" "lending_13_nb1351" {
  name          = "solor-1njchy-lending-13-nb1351"
  role_arn      = aws_iam_role.lending_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_13_stack151" {
  name          = "solor-1njchy-lending-13-stack151"
  iam_role_arn  = aws_iam_role.lending_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_14_ec2163" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_14_svc.name
  tags                 = { Name = "solor-1njchy-lending-14-ec2163" }
}

resource "aws_glue_dev_endpoint" "lending_14_glue1363" {
  name     = "solor-1njchy-lending-14-glue1363"
  role_arn = aws_iam_role.lending_14_glue_role.arn
}

resource "aws_glue_dev_endpoint" "lending_14_glue1963" {
  name     = "solor-1njchy-lending-14-glue1963"
  role_arn = aws_iam_role.lending_14_glue_role.arn
}

resource "aws_glue_dev_endpoint" "lending_14_glue763" {
  name     = "solor-1njchy-lending-14-glue763"
  role_arn = aws_iam_role.lending_14_glue_role.arn
}

resource "aws_instance" "lending_15_ec2175" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_15_svc.name
  tags                 = { Name = "solor-1njchy-lending-15-ec2175" }
}

resource "aws_sagemaker_notebook_instance" "lending_15_nb775" {
  name          = "solor-1njchy-lending-15-nb775"
  role_arn      = aws_iam_role.lending_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_15_stack1375" {
  name          = "solor-1njchy-lending-15-stack1375"
  iam_role_arn  = aws_iam_role.lending_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_15_stack1975" {
  name          = "solor-1njchy-lending-15-stack1975"
  iam_role_arn  = aws_iam_role.lending_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_16_ec2187" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_16_svc.name
  tags                 = { Name = "solor-1njchy-lending-16-ec2187" }
}

resource "aws_instance" "lending_16_ec21987" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_16_svc.name
  tags                 = { Name = "solor-1njchy-lending-16-ec21987" }
}

resource "aws_sagemaker_notebook_instance" "lending_16_nb787" {
  name          = "solor-1njchy-lending-16-nb787"
  role_arn      = aws_iam_role.lending_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_16_stack1387" {
  name          = "solor-1njchy-lending-16-stack1387"
  iam_role_arn  = aws_iam_role.lending_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_17_ec21399" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_17_svc.name
  tags                 = { Name = "solor-1njchy-lending-17-ec21399" }
}

resource "aws_instance" "lending_17_ec2199" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_17_svc.name
  tags                 = { Name = "solor-1njchy-lending-17-ec2199" }
}

resource "aws_instance" "lending_17_ec21999" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_17_svc.name
  tags                 = { Name = "solor-1njchy-lending-17-ec21999" }
}

resource "aws_instance" "lending_17_ec2799" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_17_svc.name
  tags                 = { Name = "solor-1njchy-lending-17-ec2799" }
}

resource "aws_instance" "lending_18_ec21411" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_18_svc.name
  tags                 = { Name = "solor-1njchy-lending-18-ec21411" }
}

resource "aws_instance" "lending_18_ec2811" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_18_svc.name
  tags                 = { Name = "solor-1njchy-lending-18-ec2811" }
}

resource "aws_cloudformation_stack" "lending_18_stack211" {
  name          = "solor-1njchy-lending-18-stack211"
  iam_role_arn  = aws_iam_role.lending_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_19_ec21423" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_19_svc.name
  tags                 = { Name = "solor-1njchy-lending-19-ec21423" }
}

resource "aws_instance" "lending_19_ec2223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_19_svc.name
  tags                 = { Name = "solor-1njchy-lending-19-ec2223" }
}

resource "aws_cloudformation_stack" "lending_19_stack823" {
  name          = "solor-1njchy-lending-19-stack823"
  iam_role_arn  = aws_iam_role.lending_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_2_ec21819" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_2_svc.name
  tags                 = { Name = "solor-1njchy-lending-2-ec21819" }
}

resource "aws_sagemaker_notebook_instance" "lending_2_nb1219" {
  name          = "solor-1njchy-lending-2-nb1219"
  role_arn      = aws_iam_role.lending_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_2_nb619" {
  name          = "solor-1njchy-lending-2-nb619"
  role_arn      = aws_iam_role.lending_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_2_stack19" {
  name          = "solor-1njchy-lending-2-stack19"
  iam_role_arn  = aws_iam_role.lending_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_20_ec2235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_20_svc.name
  tags                 = { Name = "solor-1njchy-lending-20-ec2235" }
}

resource "aws_instance" "lending_20_ec2835" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_20_svc.name
  tags                 = { Name = "solor-1njchy-lending-20-ec2835" }
}

resource "aws_sagemaker_notebook_instance" "lending_20_nb1435" {
  name          = "solor-1njchy-lending-20-nb1435"
  role_arn      = aws_iam_role.lending_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_21_ec21447" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_21_svc.name
  tags                 = { Name = "solor-1njchy-lending-21-ec21447" }
}

resource "aws_instance" "lending_21_ec2847" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_21_svc.name
  tags                 = { Name = "solor-1njchy-lending-21-ec2847" }
}

resource "aws_sagemaker_notebook_instance" "lending_21_nb247" {
  name          = "solor-1njchy-lending-21-nb247"
  role_arn      = aws_iam_role.lending_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "lending_22_glue859" {
  name     = "solor-1njchy-lending-22-glue859"
  role_arn = aws_iam_role.lending_22_glue_role.arn
}

resource "aws_cloudformation_stack" "lending_22_stack1459" {
  name          = "solor-1njchy-lending-22-stack1459"
  iam_role_arn  = aws_iam_role.lending_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_22_stack259" {
  name          = "solor-1njchy-lending-22-stack259"
  iam_role_arn  = aws_iam_role.lending_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_23_ec2871" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_23_svc.name
  tags                 = { Name = "solor-1njchy-lending-23-ec2871" }
}

resource "aws_glue_dev_endpoint" "lending_23_glue271" {
  name     = "solor-1njchy-lending-23-glue271"
  role_arn = aws_iam_role.lending_23_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "lending_23_nb1471" {
  name          = "solor-1njchy-lending-23-nb1471"
  role_arn      = aws_iam_role.lending_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_24_ec2283" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_24_svc.name
  tags                 = { Name = "solor-1njchy-lending-24-ec2283" }
}

resource "aws_sagemaker_notebook_instance" "lending_24_nb883" {
  name          = "solor-1njchy-lending-24-nb883"
  role_arn      = aws_iam_role.lending_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_24_stack1483" {
  name          = "solor-1njchy-lending-24-stack1483"
  iam_role_arn  = aws_iam_role.lending_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_25_ec21495" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_25_svc.name
  tags                 = { Name = "solor-1njchy-lending-25-ec21495" }
}

resource "aws_instance" "lending_25_ec2895" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_25_svc.name
  tags                 = { Name = "solor-1njchy-lending-25-ec2895" }
}

resource "aws_sagemaker_notebook_instance" "lending_25_nb295" {
  name          = "solor-1njchy-lending-25-nb295"
  role_arn      = aws_iam_role.lending_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_26_ec21507" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_26_svc.name
  tags                 = { Name = "solor-1njchy-lending-26-ec21507" }
}

resource "aws_instance" "lending_26_ec2307" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_26_svc.name
  tags                 = { Name = "solor-1njchy-lending-26-ec2307" }
}

resource "aws_sagemaker_notebook_instance" "lending_26_nb907" {
  name          = "solor-1njchy-lending-26-nb907"
  role_arn      = aws_iam_role.lending_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_27_ec21519" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_27_svc.name
  tags                 = { Name = "solor-1njchy-lending-27-ec21519" }
}

resource "aws_instance" "lending_27_ec2319" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_27_svc.name
  tags                 = { Name = "solor-1njchy-lending-27-ec2319" }
}

resource "aws_sagemaker_notebook_instance" "lending_27_nb919" {
  name          = "solor-1njchy-lending-27-nb919"
  role_arn      = aws_iam_role.lending_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_28_nb1531" {
  name          = "solor-1njchy-lending-28-nb1531"
  role_arn      = aws_iam_role.lending_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_28_stack331" {
  name          = "solor-1njchy-lending-28-stack331"
  iam_role_arn  = aws_iam_role.lending_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_28_stack931" {
  name          = "solor-1njchy-lending-28-stack931"
  iam_role_arn  = aws_iam_role.lending_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_29_ec21543" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_29_svc.name
  tags                 = { Name = "solor-1njchy-lending-29-ec21543" }
}

resource "aws_instance" "lending_29_ec2343" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_29_svc.name
  tags                 = { Name = "solor-1njchy-lending-29-ec2343" }
}

resource "aws_sagemaker_notebook_instance" "lending_29_nb943" {
  name          = "solor-1njchy-lending-29-nb943"
  role_arn      = aws_iam_role.lending_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_3_ec21231" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_3_svc.name
  tags                 = { Name = "solor-1njchy-lending-3-ec21231" }
}

resource "aws_instance" "lending_3_ec21831" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_3_svc.name
  tags                 = { Name = "solor-1njchy-lending-3-ec21831" }
}

resource "aws_instance" "lending_3_ec231" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_3_svc.name
  tags                 = { Name = "solor-1njchy-lending-3-ec231" }
}

resource "aws_instance" "lending_3_ec2631" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_3_svc.name
  tags                 = { Name = "solor-1njchy-lending-3-ec2631" }
}

resource "aws_instance" "lending_30_ec21555" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_30_svc.name
  tags                 = { Name = "solor-1njchy-lending-30-ec21555" }
}

resource "aws_instance" "lending_30_ec2355" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_30_svc.name
  tags                 = { Name = "solor-1njchy-lending-30-ec2355" }
}

resource "aws_sagemaker_notebook_instance" "lending_30_nb955" {
  name          = "solor-1njchy-lending-30-nb955"
  role_arn      = aws_iam_role.lending_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_31_ec21567" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_31_svc.name
  tags                 = { Name = "solor-1njchy-lending-31-ec21567" }
}

resource "aws_glue_dev_endpoint" "lending_31_glue967" {
  name     = "solor-1njchy-lending-31-glue967"
  role_arn = aws_iam_role.lending_31_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "lending_31_nb367" {
  name          = "solor-1njchy-lending-31-nb367"
  role_arn      = aws_iam_role.lending_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_32_ec21579" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_32_svc.name
  tags                 = { Name = "solor-1njchy-lending-32-ec21579" }
}

resource "aws_sagemaker_notebook_instance" "lending_32_nb379" {
  name          = "solor-1njchy-lending-32-nb379"
  role_arn      = aws_iam_role.lending_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_32_nb979" {
  name          = "solor-1njchy-lending-32-nb979"
  role_arn      = aws_iam_role.lending_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_33_ec21591" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_33_svc.name
  tags                 = { Name = "solor-1njchy-lending-33-ec21591" }
}

resource "aws_sagemaker_notebook_instance" "lending_33_nb391" {
  name          = "solor-1njchy-lending-33-nb391"
  role_arn      = aws_iam_role.lending_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_33_nb991" {
  name          = "solor-1njchy-lending-33-nb991"
  role_arn      = aws_iam_role.lending_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_34_ec21603" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_34_svc.name
  tags                 = { Name = "solor-1njchy-lending-34-ec21603" }
}

resource "aws_instance" "lending_34_ec2403" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_34_svc.name
  tags                 = { Name = "solor-1njchy-lending-34-ec2403" }
}

resource "aws_cloudformation_stack" "lending_34_stack1003" {
  name          = "solor-1njchy-lending-34-stack1003"
  iam_role_arn  = aws_iam_role.lending_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_35_ec21615" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_35_svc.name
  tags                 = { Name = "solor-1njchy-lending-35-ec21615" }
}

resource "aws_instance" "lending_35_ec2415" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_35_svc.name
  tags                 = { Name = "solor-1njchy-lending-35-ec2415" }
}

resource "aws_sagemaker_notebook_instance" "lending_35_nb1015" {
  name          = "solor-1njchy-lending-35-nb1015"
  role_arn      = aws_iam_role.lending_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_36_ec21027" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_36_svc.name
  tags                 = { Name = "solor-1njchy-lending-36-ec21027" }
}

resource "aws_instance" "lending_36_ec2427" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_36_svc.name
  tags                 = { Name = "solor-1njchy-lending-36-ec2427" }
}

resource "aws_sagemaker_notebook_instance" "lending_36_nb1627" {
  name          = "solor-1njchy-lending-36-nb1627"
  role_arn      = aws_iam_role.lending_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_37_ec21039" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_37_svc.name
  tags                 = { Name = "solor-1njchy-lending-37-ec21039" }
}

resource "aws_instance" "lending_37_ec2439" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_37_svc.name
  tags                 = { Name = "solor-1njchy-lending-37-ec2439" }
}

resource "aws_cloudformation_stack" "lending_37_stack1639" {
  name          = "solor-1njchy-lending-37-stack1639"
  iam_role_arn  = aws_iam_role.lending_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_38_ec2451" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_38_svc.name
  tags                 = { Name = "solor-1njchy-lending-38-ec2451" }
}

resource "aws_sagemaker_notebook_instance" "lending_38_nb1051" {
  name          = "solor-1njchy-lending-38-nb1051"
  role_arn      = aws_iam_role.lending_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_38_stack1651" {
  name          = "solor-1njchy-lending-38-stack1651"
  iam_role_arn  = aws_iam_role.lending_38_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_39_ec21063" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_39_svc.name
  tags                 = { Name = "solor-1njchy-lending-39-ec21063" }
}

resource "aws_sagemaker_notebook_instance" "lending_39_nb463" {
  name          = "solor-1njchy-lending-39-nb463"
  role_arn      = aws_iam_role.lending_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_39_stack1663" {
  name          = "solor-1njchy-lending-39-stack1663"
  iam_role_arn  = aws_iam_role.lending_39_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_4_ec21843" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_4_svc.name
  tags                 = { Name = "solor-1njchy-lending-4-ec21843" }
}

resource "aws_instance" "lending_4_ec243" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_4_svc.name
  tags                 = { Name = "solor-1njchy-lending-4-ec243" }
}

resource "aws_sagemaker_notebook_instance" "lending_4_nb643" {
  name          = "solor-1njchy-lending-4-nb643"
  role_arn      = aws_iam_role.lending_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_4_stack1243" {
  name          = "solor-1njchy-lending-4-stack1243"
  iam_role_arn  = aws_iam_role.lending_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_40_ec21675" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_40_svc.name
  tags                 = { Name = "solor-1njchy-lending-40-ec21675" }
}

resource "aws_instance" "lending_40_ec2475" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_40_svc.name
  tags                 = { Name = "solor-1njchy-lending-40-ec2475" }
}

resource "aws_sagemaker_notebook_instance" "lending_40_nb1075" {
  name          = "solor-1njchy-lending-40-nb1075"
  role_arn      = aws_iam_role.lending_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_41_ec21087" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_41_svc.name
  tags                 = { Name = "solor-1njchy-lending-41-ec21087" }
}

resource "aws_instance" "lending_41_ec2487" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_41_svc.name
  tags                 = { Name = "solor-1njchy-lending-41-ec2487" }
}

resource "aws_sagemaker_notebook_instance" "lending_41_nb1687" {
  name          = "solor-1njchy-lending-41-nb1687"
  role_arn      = aws_iam_role.lending_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_42_nb1099" {
  name          = "solor-1njchy-lending-42-nb1099"
  role_arn      = aws_iam_role.lending_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_42_stack1699" {
  name          = "solor-1njchy-lending-42-stack1699"
  iam_role_arn  = aws_iam_role.lending_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_42_stack499" {
  name          = "solor-1njchy-lending-42-stack499"
  iam_role_arn  = aws_iam_role.lending_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_43_ec21711" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_43_svc.name
  tags                 = { Name = "solor-1njchy-lending-43-ec21711" }
}

resource "aws_instance" "lending_43_ec2511" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_43_svc.name
  tags                 = { Name = "solor-1njchy-lending-43-ec2511" }
}

resource "aws_sagemaker_notebook_instance" "lending_43_nb1111" {
  name          = "solor-1njchy-lending-43-nb1111"
  role_arn      = aws_iam_role.lending_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_44_ec21123" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_44_svc.name
  tags                 = { Name = "solor-1njchy-lending-44-ec21123" }
}

resource "aws_instance" "lending_44_ec21723" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_44_svc.name
  tags                 = { Name = "solor-1njchy-lending-44-ec21723" }
}

resource "aws_glue_dev_endpoint" "lending_44_glue523" {
  name     = "solor-1njchy-lending-44-glue523"
  role_arn = aws_iam_role.lending_44_glue_role.arn
}

resource "aws_instance" "lending_45_ec21735" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_45_svc.name
  tags                 = { Name = "solor-1njchy-lending-45-ec21735" }
}

resource "aws_sagemaker_notebook_instance" "lending_45_nb1135" {
  name          = "solor-1njchy-lending-45-nb1135"
  role_arn      = aws_iam_role.lending_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "lending_45_nb535" {
  name          = "solor-1njchy-lending-45-nb535"
  role_arn      = aws_iam_role.lending_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_46_ec21147" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_46_svc.name
  tags                 = { Name = "solor-1njchy-lending-46-ec21147" }
}

resource "aws_instance" "lending_46_ec2547" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_46_svc.name
  tags                 = { Name = "solor-1njchy-lending-46-ec2547" }
}

resource "aws_cloudformation_stack" "lending_46_stack1747" {
  name          = "solor-1njchy-lending-46-stack1747"
  iam_role_arn  = aws_iam_role.lending_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_47_ec21159" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_47_svc.name
  tags                 = { Name = "solor-1njchy-lending-47-ec21159" }
}

resource "aws_glue_dev_endpoint" "lending_47_glue1759" {
  name     = "solor-1njchy-lending-47-glue1759"
  role_arn = aws_iam_role.lending_47_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "lending_47_nb559" {
  name          = "solor-1njchy-lending-47-nb559"
  role_arn      = aws_iam_role.lending_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_48_ec2571" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_48_svc.name
  tags                 = { Name = "solor-1njchy-lending-48-ec2571" }
}

resource "aws_sagemaker_notebook_instance" "lending_48_nb1771" {
  name          = "solor-1njchy-lending-48-nb1771"
  role_arn      = aws_iam_role.lending_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_48_stack1171" {
  name          = "solor-1njchy-lending-48-stack1171"
  iam_role_arn  = aws_iam_role.lending_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "lending_49_nb1783" {
  name          = "solor-1njchy-lending-49-nb1783"
  role_arn      = aws_iam_role.lending_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "lending_49_stack1183" {
  name          = "solor-1njchy-lending-49-stack1183"
  iam_role_arn  = aws_iam_role.lending_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_49_stack583" {
  name          = "solor-1njchy-lending-49-stack583"
  iam_role_arn  = aws_iam_role.lending_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_5_ec21855" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_5_svc.name
  tags                 = { Name = "solor-1njchy-lending-5-ec21855" }
}

resource "aws_instance" "lending_5_ec255" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_5_svc.name
  tags                 = { Name = "solor-1njchy-lending-5-ec255" }
}

resource "aws_instance" "lending_5_ec2655" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_5_svc.name
  tags                 = { Name = "solor-1njchy-lending-5-ec2655" }
}

resource "aws_glue_dev_endpoint" "lending_5_glue1255" {
  name     = "solor-1njchy-lending-5-glue1255"
  role_arn = aws_iam_role.lending_5_glue_role.arn
}

resource "aws_instance" "lending_50_ec21195" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_50_svc.name
  tags                 = { Name = "solor-1njchy-lending-50-ec21195" }
}

resource "aws_instance" "lending_50_ec21795" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_50_svc.name
  tags                 = { Name = "solor-1njchy-lending-50-ec21795" }
}

resource "aws_glue_dev_endpoint" "lending_50_glue595" {
  name     = "solor-1njchy-lending-50-glue595"
  role_arn = aws_iam_role.lending_50_glue_role.arn
}

resource "aws_instance" "lending_6_ec21267" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_6_svc.name
  tags                 = { Name = "solor-1njchy-lending-6-ec21267" }
}

resource "aws_instance" "lending_6_ec2667" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_6_svc.name
  tags                 = { Name = "solor-1njchy-lending-6-ec2667" }
}

resource "aws_instance" "lending_6_ec267" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_6_svc.name
  tags                 = { Name = "solor-1njchy-lending-6-ec267" }
}

resource "aws_cloudformation_stack" "lending_6_stack1867" {
  name          = "solor-1njchy-lending-6-stack1867"
  iam_role_arn  = aws_iam_role.lending_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_7_ec21879" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_7_svc.name
  tags                 = { Name = "solor-1njchy-lending-7-ec21879" }
}

resource "aws_instance" "lending_7_ec279" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_7_svc.name
  tags                 = { Name = "solor-1njchy-lending-7-ec279" }
}

resource "aws_glue_dev_endpoint" "lending_7_glue679" {
  name     = "solor-1njchy-lending-7-glue679"
  role_arn = aws_iam_role.lending_7_glue_role.arn
}

resource "aws_cloudformation_stack" "lending_7_stack1279" {
  name          = "solor-1njchy-lending-7-stack1279"
  iam_role_arn  = aws_iam_role.lending_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_8_ec21891" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_8_svc.name
  tags                 = { Name = "solor-1njchy-lending-8-ec21891" }
}

resource "aws_instance" "lending_8_ec2691" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_8_svc.name
  tags                 = { Name = "solor-1njchy-lending-8-ec2691" }
}

resource "aws_instance" "lending_8_ec291" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_8_svc.name
  tags                 = { Name = "solor-1njchy-lending-8-ec291" }
}

resource "aws_sagemaker_notebook_instance" "lending_8_nb1291" {
  name          = "solor-1njchy-lending-8-nb1291"
  role_arn      = aws_iam_role.lending_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "lending_9_ec21303" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_9_svc.name
  tags                 = { Name = "solor-1njchy-lending-9-ec21303" }
}

resource "aws_instance" "lending_9_ec2703" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_9_svc.name
  tags                 = { Name = "solor-1njchy-lending-9-ec2703" }
}

resource "aws_cloudformation_stack" "lending_9_stack103" {
  name          = "solor-1njchy-lending-9-stack103"
  iam_role_arn  = aws_iam_role.lending_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "lending_9_stack1903" {
  name          = "solor-1njchy-lending-9-stack1903"
  iam_role_arn  = aws_iam_role.lending_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "lending_ec21807" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_svc.name
  tags                 = { Name = "solor-1njchy-lending-ec21807" }
}

resource "aws_instance" "lending_ec2607" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.lending_svc.name
  tags                 = { Name = "solor-1njchy-lending-ec2607" }
}

resource "aws_glue_dev_endpoint" "lending_glue7" {
  name     = "solor-1njchy-lending-glue7"
  role_arn = aws_iam_role.lending_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "lending_nb1207" {
  name          = "solor-1njchy-lending-nb1207"
  role_arn      = aws_iam_role.lending_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_10_ec2117" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_10_svc.name
  tags                 = { Name = "solor-1njchy-mobile-10-ec2117" }
}

resource "aws_instance" "mobile_10_ec2717" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_10_svc.name
  tags                 = { Name = "solor-1njchy-mobile-10-ec2717" }
}

resource "aws_sagemaker_notebook_instance" "mobile_10_nb1317" {
  name          = "solor-1njchy-mobile-10-nb1317"
  role_arn      = aws_iam_role.mobile_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_10_stack1917" {
  name          = "solor-1njchy-mobile-10-stack1917"
  iam_role_arn  = aws_iam_role.mobile_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_11_ec2129" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_11_svc.name
  tags                 = { Name = "solor-1njchy-mobile-11-ec2129" }
}

resource "aws_instance" "mobile_11_ec21329" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_11_svc.name
  tags                 = { Name = "solor-1njchy-mobile-11-ec21329" }
}

resource "aws_instance" "mobile_11_ec21929" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_11_svc.name
  tags                 = { Name = "solor-1njchy-mobile-11-ec21929" }
}

resource "aws_cloudformation_stack" "mobile_11_stack729" {
  name          = "solor-1njchy-mobile-11-stack729"
  iam_role_arn  = aws_iam_role.mobile_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "mobile_12_glue1341" {
  name     = "solor-1njchy-mobile-12-glue1341"
  role_arn = aws_iam_role.mobile_12_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_12_nb141" {
  name          = "solor-1njchy-mobile-12-nb141"
  role_arn      = aws_iam_role.mobile_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_12_nb1941" {
  name          = "solor-1njchy-mobile-12-nb1941"
  role_arn      = aws_iam_role.mobile_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_12_stack741" {
  name          = "solor-1njchy-mobile-12-stack741"
  iam_role_arn  = aws_iam_role.mobile_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_13_ec21953" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_13_svc.name
  tags                 = { Name = "solor-1njchy-mobile-13-ec21953" }
}

resource "aws_cloudformation_stack" "mobile_13_stack1353" {
  name          = "solor-1njchy-mobile-13-stack1353"
  iam_role_arn  = aws_iam_role.mobile_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_13_stack153" {
  name          = "solor-1njchy-mobile-13-stack153"
  iam_role_arn  = aws_iam_role.mobile_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_13_stack753" {
  name          = "solor-1njchy-mobile-13-stack753"
  iam_role_arn  = aws_iam_role.mobile_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_14_ec21365" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_14_svc.name
  tags                 = { Name = "solor-1njchy-mobile-14-ec21365" }
}

resource "aws_instance" "mobile_14_ec2165" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_14_svc.name
  tags                 = { Name = "solor-1njchy-mobile-14-ec2165" }
}

resource "aws_sagemaker_notebook_instance" "mobile_14_nb1965" {
  name          = "solor-1njchy-mobile-14-nb1965"
  role_arn      = aws_iam_role.mobile_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_14_nb765" {
  name          = "solor-1njchy-mobile-14-nb765"
  role_arn      = aws_iam_role.mobile_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_15_ec21377" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_15_svc.name
  tags                 = { Name = "solor-1njchy-mobile-15-ec21377" }
}

resource "aws_instance" "mobile_15_ec2177" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_15_svc.name
  tags                 = { Name = "solor-1njchy-mobile-15-ec2177" }
}

resource "aws_glue_dev_endpoint" "mobile_15_glue777" {
  name     = "solor-1njchy-mobile-15-glue777"
  role_arn = aws_iam_role.mobile_15_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_15_stack1977" {
  name          = "solor-1njchy-mobile-15-stack1977"
  iam_role_arn  = aws_iam_role.mobile_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_16_ec2789" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_16_svc.name
  tags                 = { Name = "solor-1njchy-mobile-16-ec2789" }
}

resource "aws_sagemaker_notebook_instance" "mobile_16_nb189" {
  name          = "solor-1njchy-mobile-16-nb189"
  role_arn      = aws_iam_role.mobile_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_16_nb1989" {
  name          = "solor-1njchy-mobile-16-nb1989"
  role_arn      = aws_iam_role.mobile_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_16_stack1389" {
  name          = "solor-1njchy-mobile-16-stack1389"
  iam_role_arn  = aws_iam_role.mobile_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_17_ec21401" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_17_svc.name
  tags                 = { Name = "solor-1njchy-mobile-17-ec21401" }
}

resource "aws_instance" "mobile_17_ec2201" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_17_svc.name
  tags                 = { Name = "solor-1njchy-mobile-17-ec2201" }
}

resource "aws_sagemaker_notebook_instance" "mobile_17_nb801" {
  name          = "solor-1njchy-mobile-17-nb801"
  role_arn      = aws_iam_role.mobile_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_18_ec21413" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_18_svc.name
  tags                 = { Name = "solor-1njchy-mobile-18-ec21413" }
}

resource "aws_instance" "mobile_18_ec2213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_18_svc.name
  tags                 = { Name = "solor-1njchy-mobile-18-ec2213" }
}

resource "aws_glue_dev_endpoint" "mobile_18_glue813" {
  name     = "solor-1njchy-mobile-18-glue813"
  role_arn = aws_iam_role.mobile_18_glue_role.arn
}

resource "aws_instance" "mobile_19_ec2225" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_19_svc.name
  tags                 = { Name = "solor-1njchy-mobile-19-ec2225" }
}

resource "aws_glue_dev_endpoint" "mobile_19_glue1425" {
  name     = "solor-1njchy-mobile-19-glue1425"
  role_arn = aws_iam_role.mobile_19_glue_role.arn
}

resource "aws_glue_dev_endpoint" "mobile_19_glue825" {
  name     = "solor-1njchy-mobile-19-glue825"
  role_arn = aws_iam_role.mobile_19_glue_role.arn
}

resource "aws_glue_dev_endpoint" "mobile_2_glue621" {
  name     = "solor-1njchy-mobile-2-glue621"
  role_arn = aws_iam_role.mobile_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_2_nb21" {
  name          = "solor-1njchy-mobile-2-nb21"
  role_arn      = aws_iam_role.mobile_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_2_stack1221" {
  name          = "solor-1njchy-mobile-2-stack1221"
  iam_role_arn  = aws_iam_role.mobile_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_2_stack1821" {
  name          = "solor-1njchy-mobile-2-stack1821"
  iam_role_arn  = aws_iam_role.mobile_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_20_ec2237" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_20_svc.name
  tags                 = { Name = "solor-1njchy-mobile-20-ec2237" }
}

resource "aws_instance" "mobile_20_ec2837" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_20_svc.name
  tags                 = { Name = "solor-1njchy-mobile-20-ec2837" }
}

resource "aws_cloudformation_stack" "mobile_20_stack1437" {
  name          = "solor-1njchy-mobile-20-stack1437"
  iam_role_arn  = aws_iam_role.mobile_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_21_ec21449" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_21_svc.name
  tags                 = { Name = "solor-1njchy-mobile-21-ec21449" }
}

resource "aws_instance" "mobile_21_ec2249" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_21_svc.name
  tags                 = { Name = "solor-1njchy-mobile-21-ec2249" }
}

resource "aws_cloudformation_stack" "mobile_21_stack849" {
  name          = "solor-1njchy-mobile-21-stack849"
  iam_role_arn  = aws_iam_role.mobile_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_22_ec21461" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_22_svc.name
  tags                 = { Name = "solor-1njchy-mobile-22-ec21461" }
}

resource "aws_instance" "mobile_22_ec2261" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_22_svc.name
  tags                 = { Name = "solor-1njchy-mobile-22-ec2261" }
}

resource "aws_instance" "mobile_22_ec2861" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_22_svc.name
  tags                 = { Name = "solor-1njchy-mobile-22-ec2861" }
}

resource "aws_instance" "mobile_23_ec21473" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_23_svc.name
  tags                 = { Name = "solor-1njchy-mobile-23-ec21473" }
}

resource "aws_instance" "mobile_23_ec2273" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_23_svc.name
  tags                 = { Name = "solor-1njchy-mobile-23-ec2273" }
}

resource "aws_cloudformation_stack" "mobile_23_stack873" {
  name          = "solor-1njchy-mobile-23-stack873"
  iam_role_arn  = aws_iam_role.mobile_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "mobile_24_glue1485" {
  name     = "solor-1njchy-mobile-24-glue1485"
  role_arn = aws_iam_role.mobile_24_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_24_nb285" {
  name          = "solor-1njchy-mobile-24-nb285"
  role_arn      = aws_iam_role.mobile_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_24_nb885" {
  name          = "solor-1njchy-mobile-24-nb885"
  role_arn      = aws_iam_role.mobile_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_25_ec21497" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_25_svc.name
  tags                 = { Name = "solor-1njchy-mobile-25-ec21497" }
}

resource "aws_instance" "mobile_25_ec2297" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_25_svc.name
  tags                 = { Name = "solor-1njchy-mobile-25-ec2297" }
}

resource "aws_instance" "mobile_25_ec2897" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_25_svc.name
  tags                 = { Name = "solor-1njchy-mobile-25-ec2897" }
}

resource "aws_sagemaker_notebook_instance" "mobile_26_nb1509" {
  name          = "solor-1njchy-mobile-26-nb1509"
  role_arn      = aws_iam_role.mobile_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_26_nb909" {
  name          = "solor-1njchy-mobile-26-nb909"
  role_arn      = aws_iam_role.mobile_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_26_stack309" {
  name          = "solor-1njchy-mobile-26-stack309"
  iam_role_arn  = aws_iam_role.mobile_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_27_ec2921" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_27_svc.name
  tags                 = { Name = "solor-1njchy-mobile-27-ec2921" }
}

resource "aws_sagemaker_notebook_instance" "mobile_27_nb321" {
  name          = "solor-1njchy-mobile-27-nb321"
  role_arn      = aws_iam_role.mobile_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_27_stack1521" {
  name          = "solor-1njchy-mobile-27-stack1521"
  iam_role_arn  = aws_iam_role.mobile_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_28_ec2333" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_28_svc.name
  tags                 = { Name = "solor-1njchy-mobile-28-ec2333" }
}

resource "aws_instance" "mobile_28_ec2933" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_28_svc.name
  tags                 = { Name = "solor-1njchy-mobile-28-ec2933" }
}

resource "aws_sagemaker_notebook_instance" "mobile_28_nb1533" {
  name          = "solor-1njchy-mobile-28-nb1533"
  role_arn      = aws_iam_role.mobile_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_29_ec21545" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_29_svc.name
  tags                 = { Name = "solor-1njchy-mobile-29-ec21545" }
}

resource "aws_instance" "mobile_29_ec2945" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_29_svc.name
  tags                 = { Name = "solor-1njchy-mobile-29-ec2945" }
}

resource "aws_glue_dev_endpoint" "mobile_29_glue345" {
  name     = "solor-1njchy-mobile-29-glue345"
  role_arn = aws_iam_role.mobile_29_glue_role.arn
}

resource "aws_instance" "mobile_3_ec233" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_3_svc.name
  tags                 = { Name = "solor-1njchy-mobile-3-ec233" }
}

resource "aws_glue_dev_endpoint" "mobile_3_glue633" {
  name     = "solor-1njchy-mobile-3-glue633"
  role_arn = aws_iam_role.mobile_3_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_3_stack1233" {
  name          = "solor-1njchy-mobile-3-stack1233"
  iam_role_arn  = aws_iam_role.mobile_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_3_stack1833" {
  name          = "solor-1njchy-mobile-3-stack1833"
  iam_role_arn  = aws_iam_role.mobile_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_30_ec2357" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_30_svc.name
  tags                 = { Name = "solor-1njchy-mobile-30-ec2357" }
}

resource "aws_glue_dev_endpoint" "mobile_30_glue1557" {
  name     = "solor-1njchy-mobile-30-glue1557"
  role_arn = aws_iam_role.mobile_30_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_30_stack957" {
  name          = "solor-1njchy-mobile-30-stack957"
  iam_role_arn  = aws_iam_role.mobile_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_31_ec21569" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_31_svc.name
  tags                 = { Name = "solor-1njchy-mobile-31-ec21569" }
}

resource "aws_instance" "mobile_31_ec2969" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_31_svc.name
  tags                 = { Name = "solor-1njchy-mobile-31-ec2969" }
}

resource "aws_glue_dev_endpoint" "mobile_31_glue369" {
  name     = "solor-1njchy-mobile-31-glue369"
  role_arn = aws_iam_role.mobile_31_glue_role.arn
}

resource "aws_instance" "mobile_32_ec21581" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_32_svc.name
  tags                 = { Name = "solor-1njchy-mobile-32-ec21581" }
}

resource "aws_glue_dev_endpoint" "mobile_32_glue381" {
  name     = "solor-1njchy-mobile-32-glue381"
  role_arn = aws_iam_role.mobile_32_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_32_stack981" {
  name          = "solor-1njchy-mobile-32-stack981"
  iam_role_arn  = aws_iam_role.mobile_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_33_ec2993" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_33_svc.name
  tags                 = { Name = "solor-1njchy-mobile-33-ec2993" }
}

resource "aws_sagemaker_notebook_instance" "mobile_33_nb1593" {
  name          = "solor-1njchy-mobile-33-nb1593"
  role_arn      = aws_iam_role.mobile_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_33_nb393" {
  name          = "solor-1njchy-mobile-33-nb393"
  role_arn      = aws_iam_role.mobile_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "mobile_34_glue1005" {
  name     = "solor-1njchy-mobile-34-glue1005"
  role_arn = aws_iam_role.mobile_34_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_34_nb1605" {
  name          = "solor-1njchy-mobile-34-nb1605"
  role_arn      = aws_iam_role.mobile_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_34_nb405" {
  name          = "solor-1njchy-mobile-34-nb405"
  role_arn      = aws_iam_role.mobile_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_35_ec21017" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_35_svc.name
  tags                 = { Name = "solor-1njchy-mobile-35-ec21017" }
}

resource "aws_instance" "mobile_35_ec21617" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_35_svc.name
  tags                 = { Name = "solor-1njchy-mobile-35-ec21617" }
}

resource "aws_instance" "mobile_35_ec2417" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_35_svc.name
  tags                 = { Name = "solor-1njchy-mobile-35-ec2417" }
}

resource "aws_glue_dev_endpoint" "mobile_36_glue1629" {
  name     = "solor-1njchy-mobile-36-glue1629"
  role_arn = aws_iam_role.mobile_36_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_36_nb429" {
  name          = "solor-1njchy-mobile-36-nb429"
  role_arn      = aws_iam_role.mobile_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_36_stack1029" {
  name          = "solor-1njchy-mobile-36-stack1029"
  iam_role_arn  = aws_iam_role.mobile_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_37_ec21041" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_37_svc.name
  tags                 = { Name = "solor-1njchy-mobile-37-ec21041" }
}

resource "aws_instance" "mobile_37_ec21641" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_37_svc.name
  tags                 = { Name = "solor-1njchy-mobile-37-ec21641" }
}

resource "aws_instance" "mobile_37_ec2441" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_37_svc.name
  tags                 = { Name = "solor-1njchy-mobile-37-ec2441" }
}

resource "aws_instance" "mobile_38_ec21053" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_38_svc.name
  tags                 = { Name = "solor-1njchy-mobile-38-ec21053" }
}

resource "aws_instance" "mobile_38_ec21653" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_38_svc.name
  tags                 = { Name = "solor-1njchy-mobile-38-ec21653" }
}

resource "aws_instance" "mobile_38_ec2453" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_38_svc.name
  tags                 = { Name = "solor-1njchy-mobile-38-ec2453" }
}

resource "aws_instance" "mobile_39_ec21065" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_39_svc.name
  tags                 = { Name = "solor-1njchy-mobile-39-ec21065" }
}

resource "aws_sagemaker_notebook_instance" "mobile_39_nb465" {
  name          = "solor-1njchy-mobile-39-nb465"
  role_arn      = aws_iam_role.mobile_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_39_stack1665" {
  name          = "solor-1njchy-mobile-39-stack1665"
  iam_role_arn  = aws_iam_role.mobile_39_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_4_ec21245" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_4_svc.name
  tags                 = { Name = "solor-1njchy-mobile-4-ec21245" }
}

resource "aws_glue_dev_endpoint" "mobile_4_glue645" {
  name     = "solor-1njchy-mobile-4-glue645"
  role_arn = aws_iam_role.mobile_4_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_4_nb45" {
  name          = "solor-1njchy-mobile-4-nb45"
  role_arn      = aws_iam_role.mobile_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_4_stack1845" {
  name          = "solor-1njchy-mobile-4-stack1845"
  iam_role_arn  = aws_iam_role.mobile_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_40_ec2477" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_40_svc.name
  tags                 = { Name = "solor-1njchy-mobile-40-ec2477" }
}

resource "aws_glue_dev_endpoint" "mobile_40_glue1077" {
  name     = "solor-1njchy-mobile-40-glue1077"
  role_arn = aws_iam_role.mobile_40_glue_role.arn
}

resource "aws_glue_dev_endpoint" "mobile_40_glue1677" {
  name     = "solor-1njchy-mobile-40-glue1677"
  role_arn = aws_iam_role.mobile_40_glue_role.arn
}

resource "aws_instance" "mobile_41_ec2489" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_41_svc.name
  tags                 = { Name = "solor-1njchy-mobile-41-ec2489" }
}

resource "aws_sagemaker_notebook_instance" "mobile_41_nb1089" {
  name          = "solor-1njchy-mobile-41-nb1089"
  role_arn      = aws_iam_role.mobile_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_41_stack1689" {
  name          = "solor-1njchy-mobile-41-stack1689"
  iam_role_arn  = aws_iam_role.mobile_41_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_42_ec2501" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_42_svc.name
  tags                 = { Name = "solor-1njchy-mobile-42-ec2501" }
}

resource "aws_sagemaker_notebook_instance" "mobile_42_nb1101" {
  name          = "solor-1njchy-mobile-42-nb1101"
  role_arn      = aws_iam_role.mobile_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "mobile_42_nb1701" {
  name          = "solor-1njchy-mobile-42-nb1701"
  role_arn      = aws_iam_role.mobile_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_43_ec21113" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_43_svc.name
  tags                 = { Name = "solor-1njchy-mobile-43-ec21113" }
}

resource "aws_cloudformation_stack" "mobile_43_stack1713" {
  name          = "solor-1njchy-mobile-43-stack1713"
  iam_role_arn  = aws_iam_role.mobile_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_43_stack513" {
  name          = "solor-1njchy-mobile-43-stack513"
  iam_role_arn  = aws_iam_role.mobile_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_44_ec21125" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_44_svc.name
  tags                 = { Name = "solor-1njchy-mobile-44-ec21125" }
}

resource "aws_instance" "mobile_44_ec21725" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_44_svc.name
  tags                 = { Name = "solor-1njchy-mobile-44-ec21725" }
}

resource "aws_instance" "mobile_44_ec2525" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_44_svc.name
  tags                 = { Name = "solor-1njchy-mobile-44-ec2525" }
}

resource "aws_instance" "mobile_45_ec2537" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_45_svc.name
  tags                 = { Name = "solor-1njchy-mobile-45-ec2537" }
}

resource "aws_cloudformation_stack" "mobile_45_stack1137" {
  name          = "solor-1njchy-mobile-45-stack1137"
  iam_role_arn  = aws_iam_role.mobile_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_45_stack1737" {
  name          = "solor-1njchy-mobile-45-stack1737"
  iam_role_arn  = aws_iam_role.mobile_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_46_ec21149" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_46_svc.name
  tags                 = { Name = "solor-1njchy-mobile-46-ec21149" }
}

resource "aws_instance" "mobile_46_ec21749" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_46_svc.name
  tags                 = { Name = "solor-1njchy-mobile-46-ec21749" }
}

resource "aws_glue_dev_endpoint" "mobile_46_glue549" {
  name     = "solor-1njchy-mobile-46-glue549"
  role_arn = aws_iam_role.mobile_46_glue_role.arn
}

resource "aws_instance" "mobile_47_ec21161" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_47_svc.name
  tags                 = { Name = "solor-1njchy-mobile-47-ec21161" }
}

resource "aws_instance" "mobile_47_ec21761" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_47_svc.name
  tags                 = { Name = "solor-1njchy-mobile-47-ec21761" }
}

resource "aws_instance" "mobile_47_ec2561" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_47_svc.name
  tags                 = { Name = "solor-1njchy-mobile-47-ec2561" }
}

resource "aws_instance" "mobile_48_ec2573" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_48_svc.name
  tags                 = { Name = "solor-1njchy-mobile-48-ec2573" }
}

resource "aws_sagemaker_notebook_instance" "mobile_48_nb1173" {
  name          = "solor-1njchy-mobile-48-nb1173"
  role_arn      = aws_iam_role.mobile_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_48_stack1773" {
  name          = "solor-1njchy-mobile-48-stack1773"
  iam_role_arn  = aws_iam_role.mobile_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_49_ec2585" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_49_svc.name
  tags                 = { Name = "solor-1njchy-mobile-49-ec2585" }
}

resource "aws_glue_dev_endpoint" "mobile_49_glue1185" {
  name     = "solor-1njchy-mobile-49-glue1185"
  role_arn = aws_iam_role.mobile_49_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_49_nb1785" {
  name          = "solor-1njchy-mobile-49-nb1785"
  role_arn      = aws_iam_role.mobile_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_5_ec257" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_5_svc.name
  tags                 = { Name = "solor-1njchy-mobile-5-ec257" }
}

resource "aws_instance" "mobile_5_ec2657" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_5_svc.name
  tags                 = { Name = "solor-1njchy-mobile-5-ec2657" }
}

resource "aws_glue_dev_endpoint" "mobile_5_glue1257" {
  name     = "solor-1njchy-mobile-5-glue1257"
  role_arn = aws_iam_role.mobile_5_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_5_stack1857" {
  name          = "solor-1njchy-mobile-5-stack1857"
  iam_role_arn  = aws_iam_role.mobile_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_50_ec21197" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_50_svc.name
  tags                 = { Name = "solor-1njchy-mobile-50-ec21197" }
}

resource "aws_glue_dev_endpoint" "mobile_50_glue1797" {
  name     = "solor-1njchy-mobile-50-glue1797"
  role_arn = aws_iam_role.mobile_50_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "mobile_50_nb597" {
  name          = "solor-1njchy-mobile-50-nb597"
  role_arn      = aws_iam_role.mobile_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "mobile_6_ec21269" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_6_svc.name
  tags                 = { Name = "solor-1njchy-mobile-6-ec21269" }
}

resource "aws_cloudformation_stack" "mobile_6_stack1869" {
  name          = "solor-1njchy-mobile-6-stack1869"
  iam_role_arn  = aws_iam_role.mobile_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_6_stack669" {
  name          = "solor-1njchy-mobile-6-stack669"
  iam_role_arn  = aws_iam_role.mobile_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_6_stack69" {
  name          = "solor-1njchy-mobile-6-stack69"
  iam_role_arn  = aws_iam_role.mobile_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_7_ec21281" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_7_svc.name
  tags                 = { Name = "solor-1njchy-mobile-7-ec21281" }
}

resource "aws_instance" "mobile_7_ec21881" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_7_svc.name
  tags                 = { Name = "solor-1njchy-mobile-7-ec21881" }
}

resource "aws_instance" "mobile_7_ec2681" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_7_svc.name
  tags                 = { Name = "solor-1njchy-mobile-7-ec2681" }
}

resource "aws_instance" "mobile_7_ec281" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_7_svc.name
  tags                 = { Name = "solor-1njchy-mobile-7-ec281" }
}

resource "aws_instance" "mobile_8_ec21293" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_8_svc.name
  tags                 = { Name = "solor-1njchy-mobile-8-ec21293" }
}

resource "aws_glue_dev_endpoint" "mobile_8_glue93" {
  name     = "solor-1njchy-mobile-8-glue93"
  role_arn = aws_iam_role.mobile_8_glue_role.arn
}

resource "aws_cloudformation_stack" "mobile_8_stack1893" {
  name          = "solor-1njchy-mobile-8-stack1893"
  iam_role_arn  = aws_iam_role.mobile_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "mobile_8_stack693" {
  name          = "solor-1njchy-mobile-8-stack693"
  iam_role_arn  = aws_iam_role.mobile_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_9_ec2105" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_9_svc.name
  tags                 = { Name = "solor-1njchy-mobile-9-ec2105" }
}

resource "aws_instance" "mobile_9_ec21905" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_9_svc.name
  tags                 = { Name = "solor-1njchy-mobile-9-ec21905" }
}

resource "aws_instance" "mobile_9_ec2705" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_9_svc.name
  tags                 = { Name = "solor-1njchy-mobile-9-ec2705" }
}

resource "aws_cloudformation_stack" "mobile_9_stack1305" {
  name          = "solor-1njchy-mobile-9-stack1305"
  iam_role_arn  = aws_iam_role.mobile_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "mobile_ec21209" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "solor-1njchy-mobile-ec21209" }
}

resource "aws_instance" "mobile_ec2609" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.mobile_svc.name
  tags                 = { Name = "solor-1njchy-mobile-ec2609" }
}

resource "aws_sagemaker_notebook_instance" "mobile_nb9" {
  name          = "solor-1njchy-mobile-nb9"
  role_arn      = aws_iam_role.mobile_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "mobile_stack1809" {
  name          = "solor-1njchy-mobile-stack1809"
  iam_role_arn  = aws_iam_role.mobile_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_10_ec2108" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_10_svc.name
  tags                 = { Name = "solor-1njchy-payments-10-ec2108" }
}

resource "aws_instance" "payments_10_ec21308" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_10_svc.name
  tags                 = { Name = "solor-1njchy-payments-10-ec21308" }
}

resource "aws_instance" "payments_10_ec21908" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_10_svc.name
  tags                 = { Name = "solor-1njchy-payments-10-ec21908" }
}

resource "aws_glue_dev_endpoint" "payments_10_glue708" {
  name     = "solor-1njchy-payments-10-glue708"
  role_arn = aws_iam_role.payments_10_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_11_nb1920" {
  name          = "solor-1njchy-payments-11-nb1920"
  role_arn      = aws_iam_role.payments_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_11_stack120" {
  name          = "solor-1njchy-payments-11-stack120"
  iam_role_arn  = aws_iam_role.payments_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_11_stack1320" {
  name          = "solor-1njchy-payments-11-stack1320"
  iam_role_arn  = aws_iam_role.payments_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_11_stack720" {
  name          = "solor-1njchy-payments-11-stack720"
  iam_role_arn  = aws_iam_role.payments_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_12_ec21332" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_12_svc.name
  tags                 = { Name = "solor-1njchy-payments-12-ec21332" }
}

resource "aws_instance" "payments_12_ec21932" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_12_svc.name
  tags                 = { Name = "solor-1njchy-payments-12-ec21932" }
}

resource "aws_glue_dev_endpoint" "payments_12_glue132" {
  name     = "solor-1njchy-payments-12-glue132"
  role_arn = aws_iam_role.payments_12_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_12_nb732" {
  name          = "solor-1njchy-payments-12-nb732"
  role_arn      = aws_iam_role.payments_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_13_ec21344" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_13_svc.name
  tags                 = { Name = "solor-1njchy-payments-13-ec21344" }
}

resource "aws_instance" "payments_13_ec2744" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_13_svc.name
  tags                 = { Name = "solor-1njchy-payments-13-ec2744" }
}

resource "aws_sagemaker_notebook_instance" "payments_13_nb144" {
  name          = "solor-1njchy-payments-13-nb144"
  role_arn      = aws_iam_role.payments_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_13_stack1944" {
  name          = "solor-1njchy-payments-13-stack1944"
  iam_role_arn  = aws_iam_role.payments_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_14_ec21356" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_14_svc.name
  tags                 = { Name = "solor-1njchy-payments-14-ec21356" }
}

resource "aws_instance" "payments_14_ec21956" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_14_svc.name
  tags                 = { Name = "solor-1njchy-payments-14-ec21956" }
}

resource "aws_glue_dev_endpoint" "payments_14_glue756" {
  name     = "solor-1njchy-payments-14-glue756"
  role_arn = aws_iam_role.payments_14_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_14_nb156" {
  name          = "solor-1njchy-payments-14-nb156"
  role_arn      = aws_iam_role.payments_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_15_ec21368" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_15_svc.name
  tags                 = { Name = "solor-1njchy-payments-15-ec21368" }
}

resource "aws_instance" "payments_15_ec2168" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_15_svc.name
  tags                 = { Name = "solor-1njchy-payments-15-ec2168" }
}

resource "aws_instance" "payments_15_ec2768" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_15_svc.name
  tags                 = { Name = "solor-1njchy-payments-15-ec2768" }
}

resource "aws_sagemaker_notebook_instance" "payments_15_nb1968" {
  name          = "solor-1njchy-payments-15-nb1968"
  role_arn      = aws_iam_role.payments_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_16_ec21380" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_16_svc.name
  tags                 = { Name = "solor-1njchy-payments-16-ec21380" }
}

resource "aws_instance" "payments_16_ec2180" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_16_svc.name
  tags                 = { Name = "solor-1njchy-payments-16-ec2180" }
}

resource "aws_instance" "payments_16_ec21980" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_16_svc.name
  tags                 = { Name = "solor-1njchy-payments-16-ec21980" }
}

resource "aws_glue_dev_endpoint" "payments_16_glue780" {
  name     = "solor-1njchy-payments-16-glue780"
  role_arn = aws_iam_role.payments_16_glue_role.arn
}

resource "aws_instance" "payments_17_ec21392" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_17_svc.name
  tags                 = { Name = "solor-1njchy-payments-17-ec21392" }
}

resource "aws_instance" "payments_17_ec2192" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_17_svc.name
  tags                 = { Name = "solor-1njchy-payments-17-ec2192" }
}

resource "aws_instance" "payments_17_ec2792" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_17_svc.name
  tags                 = { Name = "solor-1njchy-payments-17-ec2792" }
}

resource "aws_sagemaker_notebook_instance" "payments_17_nb1992" {
  name          = "solor-1njchy-payments-17-nb1992"
  role_arn      = aws_iam_role.payments_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_18_ec21404" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_18_svc.name
  tags                 = { Name = "solor-1njchy-payments-18-ec21404" }
}

resource "aws_instance" "payments_18_ec2804" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_18_svc.name
  tags                 = { Name = "solor-1njchy-payments-18-ec2804" }
}

resource "aws_sagemaker_notebook_instance" "payments_18_nb204" {
  name          = "solor-1njchy-payments-18-nb204"
  role_arn      = aws_iam_role.payments_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_19_ec2816" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_19_svc.name
  tags                 = { Name = "solor-1njchy-payments-19-ec2816" }
}

resource "aws_glue_dev_endpoint" "payments_19_glue1416" {
  name     = "solor-1njchy-payments-19-glue1416"
  role_arn = aws_iam_role.payments_19_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_19_nb216" {
  name          = "solor-1njchy-payments-19-nb216"
  role_arn      = aws_iam_role.payments_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_2_ec212" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_2_svc.name
  tags                 = { Name = "solor-1njchy-payments-2-ec212" }
}

resource "aws_instance" "payments_2_ec2612" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_2_svc.name
  tags                 = { Name = "solor-1njchy-payments-2-ec2612" }
}

resource "aws_glue_dev_endpoint" "payments_2_glue1212" {
  name     = "solor-1njchy-payments-2-glue1212"
  role_arn = aws_iam_role.payments_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_2_nb1812" {
  name          = "solor-1njchy-payments-2-nb1812"
  role_arn      = aws_iam_role.payments_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_20_nb228" {
  name          = "solor-1njchy-payments-20-nb228"
  role_arn      = aws_iam_role.payments_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_20_nb828" {
  name          = "solor-1njchy-payments-20-nb828"
  role_arn      = aws_iam_role.payments_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_20_stack1428" {
  name          = "solor-1njchy-payments-20-stack1428"
  iam_role_arn  = aws_iam_role.payments_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_21_ec2840" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_21_svc.name
  tags                 = { Name = "solor-1njchy-payments-21-ec2840" }
}

resource "aws_glue_dev_endpoint" "payments_21_glue1440" {
  name     = "solor-1njchy-payments-21-glue1440"
  role_arn = aws_iam_role.payments_21_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_21_nb240" {
  name          = "solor-1njchy-payments-21-nb240"
  role_arn      = aws_iam_role.payments_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_22_ec2252" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_22_svc.name
  tags                 = { Name = "solor-1njchy-payments-22-ec2252" }
}

resource "aws_glue_dev_endpoint" "payments_22_glue852" {
  name     = "solor-1njchy-payments-22-glue852"
  role_arn = aws_iam_role.payments_22_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_22_nb1452" {
  name          = "solor-1njchy-payments-22-nb1452"
  role_arn      = aws_iam_role.payments_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_23_ec2264" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_23_svc.name
  tags                 = { Name = "solor-1njchy-payments-23-ec2264" }
}

resource "aws_instance" "payments_23_ec2864" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_23_svc.name
  tags                 = { Name = "solor-1njchy-payments-23-ec2864" }
}

resource "aws_glue_dev_endpoint" "payments_23_glue1464" {
  name     = "solor-1njchy-payments-23-glue1464"
  role_arn = aws_iam_role.payments_23_glue_role.arn
}

resource "aws_instance" "payments_24_ec2276" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_24_svc.name
  tags                 = { Name = "solor-1njchy-payments-24-ec2276" }
}

resource "aws_sagemaker_notebook_instance" "payments_24_nb1476" {
  name          = "solor-1njchy-payments-24-nb1476"
  role_arn      = aws_iam_role.payments_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_24_stack876" {
  name          = "solor-1njchy-payments-24-stack876"
  iam_role_arn  = aws_iam_role.payments_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_25_ec2888" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_25_svc.name
  tags                 = { Name = "solor-1njchy-payments-25-ec2888" }
}

resource "aws_glue_dev_endpoint" "payments_25_glue1488" {
  name     = "solor-1njchy-payments-25-glue1488"
  role_arn = aws_iam_role.payments_25_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_25_nb288" {
  name          = "solor-1njchy-payments-25-nb288"
  role_arn      = aws_iam_role.payments_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_26_ec21500" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_26_svc.name
  tags                 = { Name = "solor-1njchy-payments-26-ec21500" }
}

resource "aws_glue_dev_endpoint" "payments_26_glue300" {
  name     = "solor-1njchy-payments-26-glue300"
  role_arn = aws_iam_role.payments_26_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_26_stack900" {
  name          = "solor-1njchy-payments-26-stack900"
  iam_role_arn  = aws_iam_role.payments_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_27_ec21512" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_27_svc.name
  tags                 = { Name = "solor-1njchy-payments-27-ec21512" }
}

resource "aws_instance" "payments_27_ec2312" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_27_svc.name
  tags                 = { Name = "solor-1njchy-payments-27-ec2312" }
}

resource "aws_instance" "payments_27_ec2912" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_27_svc.name
  tags                 = { Name = "solor-1njchy-payments-27-ec2912" }
}

resource "aws_instance" "payments_28_ec2924" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_28_svc.name
  tags                 = { Name = "solor-1njchy-payments-28-ec2924" }
}

resource "aws_cloudformation_stack" "payments_28_stack1524" {
  name          = "solor-1njchy-payments-28-stack1524"
  iam_role_arn  = aws_iam_role.payments_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_28_stack324" {
  name          = "solor-1njchy-payments-28-stack324"
  iam_role_arn  = aws_iam_role.payments_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_29_ec21536" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_29_svc.name
  tags                 = { Name = "solor-1njchy-payments-29-ec21536" }
}

resource "aws_instance" "payments_29_ec2936" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_29_svc.name
  tags                 = { Name = "solor-1njchy-payments-29-ec2936" }
}

resource "aws_glue_dev_endpoint" "payments_29_glue336" {
  name     = "solor-1njchy-payments-29-glue336"
  role_arn = aws_iam_role.payments_29_glue_role.arn
}

resource "aws_instance" "payments_3_ec21224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_3_svc.name
  tags                 = { Name = "solor-1njchy-payments-3-ec21224" }
}

resource "aws_instance" "payments_3_ec224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_3_svc.name
  tags                 = { Name = "solor-1njchy-payments-3-ec224" }
}

resource "aws_sagemaker_notebook_instance" "payments_3_nb1824" {
  name          = "solor-1njchy-payments-3-nb1824"
  role_arn      = aws_iam_role.payments_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_3_stack624" {
  name          = "solor-1njchy-payments-3-stack624"
  iam_role_arn  = aws_iam_role.payments_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_30_ec21548" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_30_svc.name
  tags                 = { Name = "solor-1njchy-payments-30-ec21548" }
}

resource "aws_instance" "payments_30_ec2348" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_30_svc.name
  tags                 = { Name = "solor-1njchy-payments-30-ec2348" }
}

resource "aws_sagemaker_notebook_instance" "payments_30_nb948" {
  name          = "solor-1njchy-payments-30-nb948"
  role_arn      = aws_iam_role.payments_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_31_ec2360" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_31_svc.name
  tags                 = { Name = "solor-1njchy-payments-31-ec2360" }
}

resource "aws_glue_dev_endpoint" "payments_31_glue960" {
  name     = "solor-1njchy-payments-31-glue960"
  role_arn = aws_iam_role.payments_31_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_31_nb1560" {
  name          = "solor-1njchy-payments-31-nb1560"
  role_arn      = aws_iam_role.payments_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "payments_32_glue1572" {
  name     = "solor-1njchy-payments-32-glue1572"
  role_arn = aws_iam_role.payments_32_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_32_stack372" {
  name          = "solor-1njchy-payments-32-stack372"
  iam_role_arn  = aws_iam_role.payments_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_32_stack972" {
  name          = "solor-1njchy-payments-32-stack972"
  iam_role_arn  = aws_iam_role.payments_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_33_ec2984" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_33_svc.name
  tags                 = { Name = "solor-1njchy-payments-33-ec2984" }
}

resource "aws_cloudformation_stack" "payments_33_stack1584" {
  name          = "solor-1njchy-payments-33-stack1584"
  iam_role_arn  = aws_iam_role.payments_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_33_stack384" {
  name          = "solor-1njchy-payments-33-stack384"
  iam_role_arn  = aws_iam_role.payments_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_34_ec2396" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_34_svc.name
  tags                 = { Name = "solor-1njchy-payments-34-ec2396" }
}

resource "aws_sagemaker_notebook_instance" "payments_34_nb1596" {
  name          = "solor-1njchy-payments-34-nb1596"
  role_arn      = aws_iam_role.payments_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_34_nb996" {
  name          = "solor-1njchy-payments-34-nb996"
  role_arn      = aws_iam_role.payments_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_35_ec21008" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_35_svc.name
  tags                 = { Name = "solor-1njchy-payments-35-ec21008" }
}

resource "aws_sagemaker_notebook_instance" "payments_35_nb1608" {
  name          = "solor-1njchy-payments-35-nb1608"
  role_arn      = aws_iam_role.payments_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_35_nb408" {
  name          = "solor-1njchy-payments-35-nb408"
  role_arn      = aws_iam_role.payments_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_36_ec2420" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_36_svc.name
  tags                 = { Name = "solor-1njchy-payments-36-ec2420" }
}

resource "aws_sagemaker_notebook_instance" "payments_36_nb1020" {
  name          = "solor-1njchy-payments-36-nb1020"
  role_arn      = aws_iam_role.payments_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_36_stack1620" {
  name          = "solor-1njchy-payments-36-stack1620"
  iam_role_arn  = aws_iam_role.payments_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_37_ec21032" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_37_svc.name
  tags                 = { Name = "solor-1njchy-payments-37-ec21032" }
}

resource "aws_instance" "payments_37_ec21632" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_37_svc.name
  tags                 = { Name = "solor-1njchy-payments-37-ec21632" }
}

resource "aws_cloudformation_stack" "payments_37_stack432" {
  name          = "solor-1njchy-payments-37-stack432"
  iam_role_arn  = aws_iam_role.payments_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_38_ec21644" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_38_svc.name
  tags                 = { Name = "solor-1njchy-payments-38-ec21644" }
}

resource "aws_sagemaker_notebook_instance" "payments_38_nb1044" {
  name          = "solor-1njchy-payments-38-nb1044"
  role_arn      = aws_iam_role.payments_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_38_nb444" {
  name          = "solor-1njchy-payments-38-nb444"
  role_arn      = aws_iam_role.payments_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_39_ec21056" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_39_svc.name
  tags                 = { Name = "solor-1njchy-payments-39-ec21056" }
}

resource "aws_sagemaker_notebook_instance" "payments_39_nb1656" {
  name          = "solor-1njchy-payments-39-nb1656"
  role_arn      = aws_iam_role.payments_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "payments_39_nb456" {
  name          = "solor-1njchy-payments-39-nb456"
  role_arn      = aws_iam_role.payments_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_4_ec21236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_4_svc.name
  tags                 = { Name = "solor-1njchy-payments-4-ec21236" }
}

resource "aws_instance" "payments_4_ec2636" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_4_svc.name
  tags                 = { Name = "solor-1njchy-payments-4-ec2636" }
}

resource "aws_glue_dev_endpoint" "payments_4_glue1836" {
  name     = "solor-1njchy-payments-4-glue1836"
  role_arn = aws_iam_role.payments_4_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_4_stack36" {
  name          = "solor-1njchy-payments-4-stack36"
  iam_role_arn  = aws_iam_role.payments_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_40_ec2468" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_40_svc.name
  tags                 = { Name = "solor-1njchy-payments-40-ec2468" }
}

resource "aws_glue_dev_endpoint" "payments_40_glue1668" {
  name     = "solor-1njchy-payments-40-glue1668"
  role_arn = aws_iam_role.payments_40_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_40_nb1068" {
  name          = "solor-1njchy-payments-40-nb1068"
  role_arn      = aws_iam_role.payments_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_41_ec2480" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_41_svc.name
  tags                 = { Name = "solor-1njchy-payments-41-ec2480" }
}

resource "aws_glue_dev_endpoint" "payments_41_glue1080" {
  name     = "solor-1njchy-payments-41-glue1080"
  role_arn = aws_iam_role.payments_41_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_41_nb1680" {
  name          = "solor-1njchy-payments-41-nb1680"
  role_arn      = aws_iam_role.payments_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_42_ec21092" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_42_svc.name
  tags                 = { Name = "solor-1njchy-payments-42-ec21092" }
}

resource "aws_instance" "payments_42_ec2492" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_42_svc.name
  tags                 = { Name = "solor-1njchy-payments-42-ec2492" }
}

resource "aws_sagemaker_notebook_instance" "payments_42_nb1692" {
  name          = "solor-1njchy-payments-42-nb1692"
  role_arn      = aws_iam_role.payments_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_43_ec2504" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_43_svc.name
  tags                 = { Name = "solor-1njchy-payments-43-ec2504" }
}

resource "aws_glue_dev_endpoint" "payments_43_glue1704" {
  name     = "solor-1njchy-payments-43-glue1704"
  role_arn = aws_iam_role.payments_43_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_43_stack1104" {
  name          = "solor-1njchy-payments-43-stack1104"
  iam_role_arn  = aws_iam_role.payments_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_44_ec21716" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_44_svc.name
  tags                 = { Name = "solor-1njchy-payments-44-ec21716" }
}

resource "aws_sagemaker_notebook_instance" "payments_44_nb516" {
  name          = "solor-1njchy-payments-44-nb516"
  role_arn      = aws_iam_role.payments_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_44_stack1116" {
  name          = "solor-1njchy-payments-44-stack1116"
  iam_role_arn  = aws_iam_role.payments_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "payments_45_glue1728" {
  name     = "solor-1njchy-payments-45-glue1728"
  role_arn = aws_iam_role.payments_45_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_45_nb528" {
  name          = "solor-1njchy-payments-45-nb528"
  role_arn      = aws_iam_role.payments_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_45_stack1128" {
  name          = "solor-1njchy-payments-45-stack1128"
  iam_role_arn  = aws_iam_role.payments_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_46_ec21140" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_46_svc.name
  tags                 = { Name = "solor-1njchy-payments-46-ec21140" }
}

resource "aws_glue_dev_endpoint" "payments_46_glue1740" {
  name     = "solor-1njchy-payments-46-glue1740"
  role_arn = aws_iam_role.payments_46_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "payments_46_nb540" {
  name          = "solor-1njchy-payments-46-nb540"
  role_arn      = aws_iam_role.payments_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_47_ec2552" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_47_svc.name
  tags                 = { Name = "solor-1njchy-payments-47-ec2552" }
}

resource "aws_glue_dev_endpoint" "payments_47_glue1152" {
  name     = "solor-1njchy-payments-47-glue1152"
  role_arn = aws_iam_role.payments_47_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_47_stack1752" {
  name          = "solor-1njchy-payments-47-stack1752"
  iam_role_arn  = aws_iam_role.payments_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_48_ec21164" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_48_svc.name
  tags                 = { Name = "solor-1njchy-payments-48-ec21164" }
}

resource "aws_instance" "payments_48_ec21764" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_48_svc.name
  tags                 = { Name = "solor-1njchy-payments-48-ec21764" }
}

resource "aws_sagemaker_notebook_instance" "payments_48_nb564" {
  name          = "solor-1njchy-payments-48-nb564"
  role_arn      = aws_iam_role.payments_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_49_ec21176" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_49_svc.name
  tags                 = { Name = "solor-1njchy-payments-49-ec21176" }
}

resource "aws_instance" "payments_49_ec2576" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_49_svc.name
  tags                 = { Name = "solor-1njchy-payments-49-ec2576" }
}

resource "aws_glue_dev_endpoint" "payments_49_glue1776" {
  name     = "solor-1njchy-payments-49-glue1776"
  role_arn = aws_iam_role.payments_49_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_5_stack1248" {
  name          = "solor-1njchy-payments-5-stack1248"
  iam_role_arn  = aws_iam_role.payments_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_5_stack1848" {
  name          = "solor-1njchy-payments-5-stack1848"
  iam_role_arn  = aws_iam_role.payments_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_5_stack48" {
  name          = "solor-1njchy-payments-5-stack48"
  iam_role_arn  = aws_iam_role.payments_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_5_stack648" {
  name          = "solor-1njchy-payments-5-stack648"
  iam_role_arn  = aws_iam_role.payments_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_50_ec21188" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_50_svc.name
  tags                 = { Name = "solor-1njchy-payments-50-ec21188" }
}

resource "aws_instance" "payments_50_ec2588" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_50_svc.name
  tags                 = { Name = "solor-1njchy-payments-50-ec2588" }
}

resource "aws_sagemaker_notebook_instance" "payments_50_nb1788" {
  name          = "solor-1njchy-payments-50-nb1788"
  role_arn      = aws_iam_role.payments_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_6_ec21860" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_6_svc.name
  tags                 = { Name = "solor-1njchy-payments-6-ec21860" }
}

resource "aws_instance" "payments_6_ec2660" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_6_svc.name
  tags                 = { Name = "solor-1njchy-payments-6-ec2660" }
}

resource "aws_sagemaker_notebook_instance" "payments_6_nb60" {
  name          = "solor-1njchy-payments-6-nb60"
  role_arn      = aws_iam_role.payments_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_6_stack1260" {
  name          = "solor-1njchy-payments-6-stack1260"
  iam_role_arn  = aws_iam_role.payments_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_7_ec2672" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_7_svc.name
  tags                 = { Name = "solor-1njchy-payments-7-ec2672" }
}

resource "aws_instance" "payments_7_ec272" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_7_svc.name
  tags                 = { Name = "solor-1njchy-payments-7-ec272" }
}

resource "aws_cloudformation_stack" "payments_7_stack1272" {
  name          = "solor-1njchy-payments-7-stack1272"
  iam_role_arn  = aws_iam_role.payments_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_7_stack1872" {
  name          = "solor-1njchy-payments-7-stack1872"
  iam_role_arn  = aws_iam_role.payments_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_8_ec21284" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_8_svc.name
  tags                 = { Name = "solor-1njchy-payments-8-ec21284" }
}

resource "aws_glue_dev_endpoint" "payments_8_glue84" {
  name     = "solor-1njchy-payments-8-glue84"
  role_arn = aws_iam_role.payments_8_glue_role.arn
}

resource "aws_cloudformation_stack" "payments_8_stack1884" {
  name          = "solor-1njchy-payments-8-stack1884"
  iam_role_arn  = aws_iam_role.payments_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "payments_8_stack684" {
  name          = "solor-1njchy-payments-8-stack684"
  iam_role_arn  = aws_iam_role.payments_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "payments_9_ec21296" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_9_svc.name
  tags                 = { Name = "solor-1njchy-payments-9-ec21296" }
}

resource "aws_instance" "payments_9_ec21896" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_9_svc.name
  tags                 = { Name = "solor-1njchy-payments-9-ec21896" }
}

resource "aws_instance" "payments_9_ec296" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_9_svc.name
  tags                 = { Name = "solor-1njchy-payments-9-ec296" }
}

resource "aws_sagemaker_notebook_instance" "payments_9_nb696" {
  name          = "solor-1njchy-payments-9-nb696"
  role_arn      = aws_iam_role.payments_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "payments_ec20" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_svc.name
  tags                 = { Name = "solor-1njchy-payments-ec20" }
}

resource "aws_instance" "payments_ec21800" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.payments_svc.name
  tags                 = { Name = "solor-1njchy-payments-ec21800" }
}

resource "aws_sagemaker_notebook_instance" "payments_nb1200" {
  name          = "solor-1njchy-payments-nb1200"
  role_arn      = aws_iam_role.payments_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "payments_stack600" {
  name          = "solor-1njchy-payments-stack600"
  iam_role_arn  = aws_iam_role.payments_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_10_ec2118" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_10_svc.name
  tags                 = { Name = "solor-1njchy-platform-10-ec2118" }
}

resource "aws_instance" "platform_10_ec2718" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_10_svc.name
  tags                 = { Name = "solor-1njchy-platform-10-ec2718" }
}

resource "aws_sagemaker_notebook_instance" "platform_10_nb1318" {
  name          = "solor-1njchy-platform-10-nb1318"
  role_arn      = aws_iam_role.platform_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_10_nb1918" {
  name          = "solor-1njchy-platform-10-nb1918"
  role_arn      = aws_iam_role.platform_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_11_ec2730" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_11_svc.name
  tags                 = { Name = "solor-1njchy-platform-11-ec2730" }
}

resource "aws_sagemaker_notebook_instance" "platform_11_nb130" {
  name          = "solor-1njchy-platform-11-nb130"
  role_arn      = aws_iam_role.platform_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_11_nb1930" {
  name          = "solor-1njchy-platform-11-nb1930"
  role_arn      = aws_iam_role.platform_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_11_stack1330" {
  name          = "solor-1njchy-platform-11-stack1330"
  iam_role_arn  = aws_iam_role.platform_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_12_ec21342" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_12_svc.name
  tags                 = { Name = "solor-1njchy-platform-12-ec21342" }
}

resource "aws_sagemaker_notebook_instance" "platform_12_nb1942" {
  name          = "solor-1njchy-platform-12-nb1942"
  role_arn      = aws_iam_role.platform_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_12_stack142" {
  name          = "solor-1njchy-platform-12-stack142"
  iam_role_arn  = aws_iam_role.platform_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_12_stack742" {
  name          = "solor-1njchy-platform-12-stack742"
  iam_role_arn  = aws_iam_role.platform_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_13_ec21354" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_13_svc.name
  tags                 = { Name = "solor-1njchy-platform-13-ec21354" }
}

resource "aws_instance" "platform_13_ec21954" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_13_svc.name
  tags                 = { Name = "solor-1njchy-platform-13-ec21954" }
}

resource "aws_glue_dev_endpoint" "platform_13_glue754" {
  name     = "solor-1njchy-platform-13-glue754"
  role_arn = aws_iam_role.platform_13_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "platform_13_nb154" {
  name          = "solor-1njchy-platform-13-nb154"
  role_arn      = aws_iam_role.platform_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_14_ec21366" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_14_svc.name
  tags                 = { Name = "solor-1njchy-platform-14-ec21366" }
}

resource "aws_instance" "platform_14_ec2166" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_14_svc.name
  tags                 = { Name = "solor-1njchy-platform-14-ec2166" }
}

resource "aws_sagemaker_notebook_instance" "platform_14_nb1966" {
  name          = "solor-1njchy-platform-14-nb1966"
  role_arn      = aws_iam_role.platform_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_14_stack766" {
  name          = "solor-1njchy-platform-14-stack766"
  iam_role_arn  = aws_iam_role.platform_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_15_ec21978" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_15_svc.name
  tags                 = { Name = "solor-1njchy-platform-15-ec21978" }
}

resource "aws_glue_dev_endpoint" "platform_15_glue178" {
  name     = "solor-1njchy-platform-15-glue178"
  role_arn = aws_iam_role.platform_15_glue_role.arn
}

resource "aws_glue_dev_endpoint" "platform_15_glue778" {
  name     = "solor-1njchy-platform-15-glue778"
  role_arn = aws_iam_role.platform_15_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "platform_15_nb1378" {
  name          = "solor-1njchy-platform-15-nb1378"
  role_arn      = aws_iam_role.platform_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_16_ec21390" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_16_svc.name
  tags                 = { Name = "solor-1njchy-platform-16-ec21390" }
}

resource "aws_instance" "platform_16_ec21990" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_16_svc.name
  tags                 = { Name = "solor-1njchy-platform-16-ec21990" }
}

resource "aws_sagemaker_notebook_instance" "platform_16_nb190" {
  name          = "solor-1njchy-platform-16-nb190"
  role_arn      = aws_iam_role.platform_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_16_nb790" {
  name          = "solor-1njchy-platform-16-nb790"
  role_arn      = aws_iam_role.platform_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_17_ec21402" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_17_svc.name
  tags                 = { Name = "solor-1njchy-platform-17-ec21402" }
}

resource "aws_instance" "platform_17_ec2202" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_17_svc.name
  tags                 = { Name = "solor-1njchy-platform-17-ec2202" }
}

resource "aws_instance" "platform_17_ec2802" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_17_svc.name
  tags                 = { Name = "solor-1njchy-platform-17-ec2802" }
}

resource "aws_instance" "platform_18_ec21414" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_18_svc.name
  tags                 = { Name = "solor-1njchy-platform-18-ec21414" }
}

resource "aws_instance" "platform_18_ec2814" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_18_svc.name
  tags                 = { Name = "solor-1njchy-platform-18-ec2814" }
}

resource "aws_sagemaker_notebook_instance" "platform_18_nb214" {
  name          = "solor-1njchy-platform-18-nb214"
  role_arn      = aws_iam_role.platform_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_19_ec21426" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_19_svc.name
  tags                 = { Name = "solor-1njchy-platform-19-ec21426" }
}

resource "aws_instance" "platform_19_ec2826" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_19_svc.name
  tags                 = { Name = "solor-1njchy-platform-19-ec2826" }
}

resource "aws_glue_dev_endpoint" "platform_19_glue226" {
  name     = "solor-1njchy-platform-19-glue226"
  role_arn = aws_iam_role.platform_19_glue_role.arn
}

resource "aws_instance" "platform_2_ec21222" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_2_svc.name
  tags                 = { Name = "solor-1njchy-platform-2-ec21222" }
}

resource "aws_instance" "platform_2_ec21822" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_2_svc.name
  tags                 = { Name = "solor-1njchy-platform-2-ec21822" }
}

resource "aws_instance" "platform_2_ec222" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_2_svc.name
  tags                 = { Name = "solor-1njchy-platform-2-ec222" }
}

resource "aws_instance" "platform_2_ec2622" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_2_svc.name
  tags                 = { Name = "solor-1njchy-platform-2-ec2622" }
}

resource "aws_instance" "platform_20_ec21438" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_20_svc.name
  tags                 = { Name = "solor-1njchy-platform-20-ec21438" }
}

resource "aws_instance" "platform_20_ec2838" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_20_svc.name
  tags                 = { Name = "solor-1njchy-platform-20-ec2838" }
}

resource "aws_glue_dev_endpoint" "platform_20_glue238" {
  name     = "solor-1njchy-platform-20-glue238"
  role_arn = aws_iam_role.platform_20_glue_role.arn
}

resource "aws_instance" "platform_21_ec21450" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_21_svc.name
  tags                 = { Name = "solor-1njchy-platform-21-ec21450" }
}

resource "aws_instance" "platform_21_ec2250" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_21_svc.name
  tags                 = { Name = "solor-1njchy-platform-21-ec2250" }
}

resource "aws_instance" "platform_21_ec2850" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_21_svc.name
  tags                 = { Name = "solor-1njchy-platform-21-ec2850" }
}

resource "aws_instance" "platform_22_ec2262" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_22_svc.name
  tags                 = { Name = "solor-1njchy-platform-22-ec2262" }
}

resource "aws_glue_dev_endpoint" "platform_22_glue862" {
  name     = "solor-1njchy-platform-22-glue862"
  role_arn = aws_iam_role.platform_22_glue_role.arn
}

resource "aws_cloudformation_stack" "platform_22_stack1462" {
  name          = "solor-1njchy-platform-22-stack1462"
  iam_role_arn  = aws_iam_role.platform_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_23_ec2274" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_23_svc.name
  tags                 = { Name = "solor-1njchy-platform-23-ec2274" }
}

resource "aws_instance" "platform_23_ec2874" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_23_svc.name
  tags                 = { Name = "solor-1njchy-platform-23-ec2874" }
}

resource "aws_sagemaker_notebook_instance" "platform_23_nb1474" {
  name          = "solor-1njchy-platform-23-nb1474"
  role_arn      = aws_iam_role.platform_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_24_nb286" {
  name          = "solor-1njchy-platform-24-nb286"
  role_arn      = aws_iam_role.platform_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_24_nb886" {
  name          = "solor-1njchy-platform-24-nb886"
  role_arn      = aws_iam_role.platform_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_24_stack1486" {
  name          = "solor-1njchy-platform-24-stack1486"
  iam_role_arn  = aws_iam_role.platform_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_25_ec21498" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_25_svc.name
  tags                 = { Name = "solor-1njchy-platform-25-ec21498" }
}

resource "aws_cloudformation_stack" "platform_25_stack298" {
  name          = "solor-1njchy-platform-25-stack298"
  iam_role_arn  = aws_iam_role.platform_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_25_stack898" {
  name          = "solor-1njchy-platform-25-stack898"
  iam_role_arn  = aws_iam_role.platform_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_26_ec2310" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_26_svc.name
  tags                 = { Name = "solor-1njchy-platform-26-ec2310" }
}

resource "aws_instance" "platform_26_ec2910" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_26_svc.name
  tags                 = { Name = "solor-1njchy-platform-26-ec2910" }
}

resource "aws_cloudformation_stack" "platform_26_stack1510" {
  name          = "solor-1njchy-platform-26-stack1510"
  iam_role_arn  = aws_iam_role.platform_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_27_ec21522" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_27_svc.name
  tags                 = { Name = "solor-1njchy-platform-27-ec21522" }
}

resource "aws_instance" "platform_27_ec2322" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_27_svc.name
  tags                 = { Name = "solor-1njchy-platform-27-ec2322" }
}

resource "aws_cloudformation_stack" "platform_27_stack922" {
  name          = "solor-1njchy-platform-27-stack922"
  iam_role_arn  = aws_iam_role.platform_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_28_ec21534" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_28_svc.name
  tags                 = { Name = "solor-1njchy-platform-28-ec21534" }
}

resource "aws_instance" "platform_28_ec2334" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_28_svc.name
  tags                 = { Name = "solor-1njchy-platform-28-ec2334" }
}

resource "aws_cloudformation_stack" "platform_28_stack934" {
  name          = "solor-1njchy-platform-28-stack934"
  iam_role_arn  = aws_iam_role.platform_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_29_ec21546" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_29_svc.name
  tags                 = { Name = "solor-1njchy-platform-29-ec21546" }
}

resource "aws_instance" "platform_29_ec2346" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_29_svc.name
  tags                 = { Name = "solor-1njchy-platform-29-ec2346" }
}

resource "aws_cloudformation_stack" "platform_29_stack946" {
  name          = "solor-1njchy-platform-29-stack946"
  iam_role_arn  = aws_iam_role.platform_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_3_ec21234" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_3_svc.name
  tags                 = { Name = "solor-1njchy-platform-3-ec21234" }
}

resource "aws_instance" "platform_3_ec234" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_3_svc.name
  tags                 = { Name = "solor-1njchy-platform-3-ec234" }
}

resource "aws_glue_dev_endpoint" "platform_3_glue1834" {
  name     = "solor-1njchy-platform-3-glue1834"
  role_arn = aws_iam_role.platform_3_glue_role.arn
}

resource "aws_cloudformation_stack" "platform_3_stack634" {
  name          = "solor-1njchy-platform-3-stack634"
  iam_role_arn  = aws_iam_role.platform_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_30_ec2958" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_30_svc.name
  tags                 = { Name = "solor-1njchy-platform-30-ec2958" }
}

resource "aws_glue_dev_endpoint" "platform_30_glue1558" {
  name     = "solor-1njchy-platform-30-glue1558"
  role_arn = aws_iam_role.platform_30_glue_role.arn
}

resource "aws_cloudformation_stack" "platform_30_stack358" {
  name          = "solor-1njchy-platform-30-stack358"
  iam_role_arn  = aws_iam_role.platform_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_31_ec2970" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_31_svc.name
  tags                 = { Name = "solor-1njchy-platform-31-ec2970" }
}

resource "aws_cloudformation_stack" "platform_31_stack1570" {
  name          = "solor-1njchy-platform-31-stack1570"
  iam_role_arn  = aws_iam_role.platform_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_31_stack370" {
  name          = "solor-1njchy-platform-31-stack370"
  iam_role_arn  = aws_iam_role.platform_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_32_ec21582" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_32_svc.name
  tags                 = { Name = "solor-1njchy-platform-32-ec21582" }
}

resource "aws_sagemaker_notebook_instance" "platform_32_nb382" {
  name          = "solor-1njchy-platform-32-nb382"
  role_arn      = aws_iam_role.platform_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_32_nb982" {
  name          = "solor-1njchy-platform-32-nb982"
  role_arn      = aws_iam_role.platform_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_33_ec2394" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_33_svc.name
  tags                 = { Name = "solor-1njchy-platform-33-ec2394" }
}

resource "aws_sagemaker_notebook_instance" "platform_33_nb1594" {
  name          = "solor-1njchy-platform-33-nb1594"
  role_arn      = aws_iam_role.platform_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_33_nb994" {
  name          = "solor-1njchy-platform-33-nb994"
  role_arn      = aws_iam_role.platform_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_34_ec21006" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_34_svc.name
  tags                 = { Name = "solor-1njchy-platform-34-ec21006" }
}

resource "aws_instance" "platform_34_ec21606" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_34_svc.name
  tags                 = { Name = "solor-1njchy-platform-34-ec21606" }
}

resource "aws_instance" "platform_34_ec2406" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_34_svc.name
  tags                 = { Name = "solor-1njchy-platform-34-ec2406" }
}

resource "aws_instance" "platform_35_ec21618" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_35_svc.name
  tags                 = { Name = "solor-1njchy-platform-35-ec21618" }
}

resource "aws_glue_dev_endpoint" "platform_35_glue1018" {
  name     = "solor-1njchy-platform-35-glue1018"
  role_arn = aws_iam_role.platform_35_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "platform_35_nb418" {
  name          = "solor-1njchy-platform-35-nb418"
  role_arn      = aws_iam_role.platform_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_36_ec21030" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_36_svc.name
  tags                 = { Name = "solor-1njchy-platform-36-ec21030" }
}

resource "aws_sagemaker_notebook_instance" "platform_36_nb1630" {
  name          = "solor-1njchy-platform-36-nb1630"
  role_arn      = aws_iam_role.platform_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_36_stack430" {
  name          = "solor-1njchy-platform-36-stack430"
  iam_role_arn  = aws_iam_role.platform_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_37_ec21642" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_37_svc.name
  tags                 = { Name = "solor-1njchy-platform-37-ec21642" }
}

resource "aws_instance" "platform_37_ec2442" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_37_svc.name
  tags                 = { Name = "solor-1njchy-platform-37-ec2442" }
}

resource "aws_cloudformation_stack" "platform_37_stack1042" {
  name          = "solor-1njchy-platform-37-stack1042"
  iam_role_arn  = aws_iam_role.platform_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_38_ec21654" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_38_svc.name
  tags                 = { Name = "solor-1njchy-platform-38-ec21654" }
}

resource "aws_instance" "platform_38_ec2454" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_38_svc.name
  tags                 = { Name = "solor-1njchy-platform-38-ec2454" }
}

resource "aws_sagemaker_notebook_instance" "platform_38_nb1054" {
  name          = "solor-1njchy-platform-38-nb1054"
  role_arn      = aws_iam_role.platform_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_39_ec21666" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_39_svc.name
  tags                 = { Name = "solor-1njchy-platform-39-ec21666" }
}

resource "aws_sagemaker_notebook_instance" "platform_39_nb1066" {
  name          = "solor-1njchy-platform-39-nb1066"
  role_arn      = aws_iam_role.platform_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_39_stack466" {
  name          = "solor-1njchy-platform-39-stack466"
  iam_role_arn  = aws_iam_role.platform_39_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_4_ec2646" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_4_svc.name
  tags                 = { Name = "solor-1njchy-platform-4-ec2646" }
}

resource "aws_sagemaker_notebook_instance" "platform_4_nb46" {
  name          = "solor-1njchy-platform-4-nb46"
  role_arn      = aws_iam_role.platform_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_4_stack1246" {
  name          = "solor-1njchy-platform-4-stack1246"
  iam_role_arn  = aws_iam_role.platform_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_4_stack1846" {
  name          = "solor-1njchy-platform-4-stack1846"
  iam_role_arn  = aws_iam_role.platform_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_40_ec21678" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_40_svc.name
  tags                 = { Name = "solor-1njchy-platform-40-ec21678" }
}

resource "aws_sagemaker_notebook_instance" "platform_40_nb1078" {
  name          = "solor-1njchy-platform-40-nb1078"
  role_arn      = aws_iam_role.platform_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_40_stack478" {
  name          = "solor-1njchy-platform-40-stack478"
  iam_role_arn  = aws_iam_role.platform_40_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_41_ec2490" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_41_svc.name
  tags                 = { Name = "solor-1njchy-platform-41-ec2490" }
}

resource "aws_sagemaker_notebook_instance" "platform_41_nb1090" {
  name          = "solor-1njchy-platform-41-nb1090"
  role_arn      = aws_iam_role.platform_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_41_nb1690" {
  name          = "solor-1njchy-platform-41-nb1690"
  role_arn      = aws_iam_role.platform_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_42_ec21702" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_42_svc.name
  tags                 = { Name = "solor-1njchy-platform-42-ec21702" }
}

resource "aws_instance" "platform_42_ec2502" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_42_svc.name
  tags                 = { Name = "solor-1njchy-platform-42-ec2502" }
}

resource "aws_sagemaker_notebook_instance" "platform_42_nb1102" {
  name          = "solor-1njchy-platform-42-nb1102"
  role_arn      = aws_iam_role.platform_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_43_ec21114" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_43_svc.name
  tags                 = { Name = "solor-1njchy-platform-43-ec21114" }
}

resource "aws_sagemaker_notebook_instance" "platform_43_nb1714" {
  name          = "solor-1njchy-platform-43-nb1714"
  role_arn      = aws_iam_role.platform_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_43_stack514" {
  name          = "solor-1njchy-platform-43-stack514"
  iam_role_arn  = aws_iam_role.platform_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_44_ec21726" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_44_svc.name
  tags                 = { Name = "solor-1njchy-platform-44-ec21726" }
}

resource "aws_instance" "platform_44_ec2526" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_44_svc.name
  tags                 = { Name = "solor-1njchy-platform-44-ec2526" }
}

resource "aws_sagemaker_notebook_instance" "platform_44_nb1126" {
  name          = "solor-1njchy-platform-44-nb1126"
  role_arn      = aws_iam_role.platform_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_45_ec21138" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_45_svc.name
  tags                 = { Name = "solor-1njchy-platform-45-ec21138" }
}

resource "aws_instance" "platform_45_ec21738" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_45_svc.name
  tags                 = { Name = "solor-1njchy-platform-45-ec21738" }
}

resource "aws_instance" "platform_45_ec2538" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_45_svc.name
  tags                 = { Name = "solor-1njchy-platform-45-ec2538" }
}

resource "aws_instance" "platform_46_ec21150" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_46_svc.name
  tags                 = { Name = "solor-1njchy-platform-46-ec21150" }
}

resource "aws_instance" "platform_46_ec2550" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_46_svc.name
  tags                 = { Name = "solor-1njchy-platform-46-ec2550" }
}

resource "aws_sagemaker_notebook_instance" "platform_46_nb1750" {
  name          = "solor-1njchy-platform-46-nb1750"
  role_arn      = aws_iam_role.platform_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_47_ec21162" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_47_svc.name
  tags                 = { Name = "solor-1njchy-platform-47-ec21162" }
}

resource "aws_instance" "platform_47_ec2562" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_47_svc.name
  tags                 = { Name = "solor-1njchy-platform-47-ec2562" }
}

resource "aws_sagemaker_notebook_instance" "platform_47_nb1762" {
  name          = "solor-1njchy-platform-47-nb1762"
  role_arn      = aws_iam_role.platform_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_48_ec21174" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_48_svc.name
  tags                 = { Name = "solor-1njchy-platform-48-ec21174" }
}

resource "aws_instance" "platform_48_ec2574" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_48_svc.name
  tags                 = { Name = "solor-1njchy-platform-48-ec2574" }
}

resource "aws_glue_dev_endpoint" "platform_48_glue1774" {
  name     = "solor-1njchy-platform-48-glue1774"
  role_arn = aws_iam_role.platform_48_glue_role.arn
}

resource "aws_instance" "platform_49_ec21186" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_49_svc.name
  tags                 = { Name = "solor-1njchy-platform-49-ec21186" }
}

resource "aws_instance" "platform_49_ec21786" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_49_svc.name
  tags                 = { Name = "solor-1njchy-platform-49-ec21786" }
}

resource "aws_instance" "platform_49_ec2586" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_49_svc.name
  tags                 = { Name = "solor-1njchy-platform-49-ec2586" }
}

resource "aws_instance" "platform_5_ec21858" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_5_svc.name
  tags                 = { Name = "solor-1njchy-platform-5-ec21858" }
}

resource "aws_instance" "platform_5_ec2658" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_5_svc.name
  tags                 = { Name = "solor-1njchy-platform-5-ec2658" }
}

resource "aws_cloudformation_stack" "platform_5_stack1258" {
  name          = "solor-1njchy-platform-5-stack1258"
  iam_role_arn  = aws_iam_role.platform_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_5_stack58" {
  name          = "solor-1njchy-platform-5-stack58"
  iam_role_arn  = aws_iam_role.platform_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_50_ec21198" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_50_svc.name
  tags                 = { Name = "solor-1njchy-platform-50-ec21198" }
}

resource "aws_instance" "platform_50_ec2598" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_50_svc.name
  tags                 = { Name = "solor-1njchy-platform-50-ec2598" }
}

resource "aws_sagemaker_notebook_instance" "platform_50_nb1798" {
  name          = "solor-1njchy-platform-50-nb1798"
  role_arn      = aws_iam_role.platform_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "platform_6_ec21870" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_6_svc.name
  tags                 = { Name = "solor-1njchy-platform-6-ec21870" }
}

resource "aws_sagemaker_notebook_instance" "platform_6_nb1270" {
  name          = "solor-1njchy-platform-6-nb1270"
  role_arn      = aws_iam_role.platform_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_6_stack670" {
  name          = "solor-1njchy-platform-6-stack670"
  iam_role_arn  = aws_iam_role.platform_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_6_stack70" {
  name          = "solor-1njchy-platform-6-stack70"
  iam_role_arn  = aws_iam_role.platform_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_7_ec21282" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_7_svc.name
  tags                 = { Name = "solor-1njchy-platform-7-ec21282" }
}

resource "aws_sagemaker_notebook_instance" "platform_7_nb1882" {
  name          = "solor-1njchy-platform-7-nb1882"
  role_arn      = aws_iam_role.platform_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_7_nb682" {
  name          = "solor-1njchy-platform-7-nb682"
  role_arn      = aws_iam_role.platform_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_7_nb82" {
  name          = "solor-1njchy-platform-7-nb82"
  role_arn      = aws_iam_role.platform_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_8_nb1894" {
  name          = "solor-1njchy-platform-8-nb1894"
  role_arn      = aws_iam_role.platform_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "platform_8_nb694" {
  name          = "solor-1njchy-platform-8-nb694"
  role_arn      = aws_iam_role.platform_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_8_stack1294" {
  name          = "solor-1njchy-platform-8-stack1294"
  iam_role_arn  = aws_iam_role.platform_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_8_stack94" {
  name          = "solor-1njchy-platform-8-stack94"
  iam_role_arn  = aws_iam_role.platform_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_9_ec21306" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_9_svc.name
  tags                 = { Name = "solor-1njchy-platform-9-ec21306" }
}

resource "aws_cloudformation_stack" "platform_9_stack106" {
  name          = "solor-1njchy-platform-9-stack106"
  iam_role_arn  = aws_iam_role.platform_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_9_stack1906" {
  name          = "solor-1njchy-platform-9-stack1906"
  iam_role_arn  = aws_iam_role.platform_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "platform_9_stack706" {
  name          = "solor-1njchy-platform-9-stack706"
  iam_role_arn  = aws_iam_role.platform_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "platform_ec210" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.platform_svc.name
  tags                 = { Name = "solor-1njchy-platform-ec210" }
}

resource "aws_glue_dev_endpoint" "platform_glue1810" {
  name     = "solor-1njchy-platform-glue1810"
  role_arn = aws_iam_role.platform_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "platform_nb1210" {
  name          = "solor-1njchy-platform-nb1210"
  role_arn      = aws_iam_role.platform_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "platform_stack610" {
  name          = "solor-1njchy-platform-stack610"
  iam_role_arn  = aws_iam_role.platform_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_10_ec21316" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_10_svc.name
  tags                 = { Name = "solor-1njchy-reporting-10-ec21316" }
}

resource "aws_instance" "reporting_10_ec2716" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_10_svc.name
  tags                 = { Name = "solor-1njchy-reporting-10-ec2716" }
}

resource "aws_sagemaker_notebook_instance" "reporting_10_nb116" {
  name          = "solor-1njchy-reporting-10-nb116"
  role_arn      = aws_iam_role.reporting_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_10_nb1916" {
  name          = "solor-1njchy-reporting-10-nb1916"
  role_arn      = aws_iam_role.reporting_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_11_ec21328" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_11_svc.name
  tags                 = { Name = "solor-1njchy-reporting-11-ec21328" }
}

resource "aws_instance" "reporting_11_ec21928" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_11_svc.name
  tags                 = { Name = "solor-1njchy-reporting-11-ec21928" }
}

resource "aws_instance" "reporting_11_ec2728" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_11_svc.name
  tags                 = { Name = "solor-1njchy-reporting-11-ec2728" }
}

resource "aws_sagemaker_notebook_instance" "reporting_11_nb128" {
  name          = "solor-1njchy-reporting-11-nb128"
  role_arn      = aws_iam_role.reporting_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_12_ec21340" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_12_svc.name
  tags                 = { Name = "solor-1njchy-reporting-12-ec21340" }
}

resource "aws_instance" "reporting_12_ec2140" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_12_svc.name
  tags                 = { Name = "solor-1njchy-reporting-12-ec2140" }
}

resource "aws_glue_dev_endpoint" "reporting_12_glue740" {
  name     = "solor-1njchy-reporting-12-glue740"
  role_arn = aws_iam_role.reporting_12_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_12_nb1940" {
  name          = "solor-1njchy-reporting-12-nb1940"
  role_arn      = aws_iam_role.reporting_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_13_nb1952" {
  name          = "solor-1njchy-reporting-13-nb1952"
  role_arn      = aws_iam_role.reporting_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_13_stack1352" {
  name          = "solor-1njchy-reporting-13-stack1352"
  iam_role_arn  = aws_iam_role.reporting_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_13_stack152" {
  name          = "solor-1njchy-reporting-13-stack152"
  iam_role_arn  = aws_iam_role.reporting_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_13_stack752" {
  name          = "solor-1njchy-reporting-13-stack752"
  iam_role_arn  = aws_iam_role.reporting_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_14_ec2164" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_14_svc.name
  tags                 = { Name = "solor-1njchy-reporting-14-ec2164" }
}

resource "aws_instance" "reporting_14_ec2764" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_14_svc.name
  tags                 = { Name = "solor-1njchy-reporting-14-ec2764" }
}

resource "aws_sagemaker_notebook_instance" "reporting_14_nb1964" {
  name          = "solor-1njchy-reporting-14-nb1964"
  role_arn      = aws_iam_role.reporting_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_14_stack1364" {
  name          = "solor-1njchy-reporting-14-stack1364"
  iam_role_arn  = aws_iam_role.reporting_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_15_ec21376" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_15_svc.name
  tags                 = { Name = "solor-1njchy-reporting-15-ec21376" }
}

resource "aws_sagemaker_notebook_instance" "reporting_15_nb1976" {
  name          = "solor-1njchy-reporting-15-nb1976"
  role_arn      = aws_iam_role.reporting_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_15_stack176" {
  name          = "solor-1njchy-reporting-15-stack176"
  iam_role_arn  = aws_iam_role.reporting_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_15_stack776" {
  name          = "solor-1njchy-reporting-15-stack776"
  iam_role_arn  = aws_iam_role.reporting_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_16_ec21388" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_16_svc.name
  tags                 = { Name = "solor-1njchy-reporting-16-ec21388" }
}

resource "aws_instance" "reporting_16_ec2188" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_16_svc.name
  tags                 = { Name = "solor-1njchy-reporting-16-ec2188" }
}

resource "aws_instance" "reporting_16_ec21988" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_16_svc.name
  tags                 = { Name = "solor-1njchy-reporting-16-ec21988" }
}

resource "aws_instance" "reporting_16_ec2788" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_16_svc.name
  tags                 = { Name = "solor-1njchy-reporting-16-ec2788" }
}

resource "aws_instance" "reporting_17_ec21400" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_17_svc.name
  tags                 = { Name = "solor-1njchy-reporting-17-ec21400" }
}

resource "aws_sagemaker_notebook_instance" "reporting_17_nb800" {
  name          = "solor-1njchy-reporting-17-nb800"
  role_arn      = aws_iam_role.reporting_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_17_stack200" {
  name          = "solor-1njchy-reporting-17-stack200"
  iam_role_arn  = aws_iam_role.reporting_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_18_ec21412" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_18_svc.name
  tags                 = { Name = "solor-1njchy-reporting-18-ec21412" }
}

resource "aws_sagemaker_notebook_instance" "reporting_18_nb812" {
  name          = "solor-1njchy-reporting-18-nb812"
  role_arn      = aws_iam_role.reporting_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_18_stack212" {
  name          = "solor-1njchy-reporting-18-stack212"
  iam_role_arn  = aws_iam_role.reporting_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_19_ec2824" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_19_svc.name
  tags                 = { Name = "solor-1njchy-reporting-19-ec2824" }
}

resource "aws_cloudformation_stack" "reporting_19_stack1424" {
  name          = "solor-1njchy-reporting-19-stack1424"
  iam_role_arn  = aws_iam_role.reporting_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_19_stack224" {
  name          = "solor-1njchy-reporting-19-stack224"
  iam_role_arn  = aws_iam_role.reporting_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_2_ec21220" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_2_svc.name
  tags                 = { Name = "solor-1njchy-reporting-2-ec21220" }
}

resource "aws_instance" "reporting_2_ec220" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_2_svc.name
  tags                 = { Name = "solor-1njchy-reporting-2-ec220" }
}

resource "aws_instance" "reporting_2_ec2620" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_2_svc.name
  tags                 = { Name = "solor-1njchy-reporting-2-ec2620" }
}

resource "aws_glue_dev_endpoint" "reporting_2_glue1820" {
  name     = "solor-1njchy-reporting-2-glue1820"
  role_arn = aws_iam_role.reporting_2_glue_role.arn
}

resource "aws_instance" "reporting_20_ec21436" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_20_svc.name
  tags                 = { Name = "solor-1njchy-reporting-20-ec21436" }
}

resource "aws_instance" "reporting_20_ec2236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_20_svc.name
  tags                 = { Name = "solor-1njchy-reporting-20-ec2236" }
}

resource "aws_instance" "reporting_20_ec2836" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_20_svc.name
  tags                 = { Name = "solor-1njchy-reporting-20-ec2836" }
}

resource "aws_instance" "reporting_21_ec21448" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_21_svc.name
  tags                 = { Name = "solor-1njchy-reporting-21-ec21448" }
}

resource "aws_instance" "reporting_21_ec2248" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_21_svc.name
  tags                 = { Name = "solor-1njchy-reporting-21-ec2248" }
}

resource "aws_instance" "reporting_21_ec2848" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_21_svc.name
  tags                 = { Name = "solor-1njchy-reporting-21-ec2848" }
}

resource "aws_instance" "reporting_22_ec21460" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_22_svc.name
  tags                 = { Name = "solor-1njchy-reporting-22-ec21460" }
}

resource "aws_instance" "reporting_22_ec2260" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_22_svc.name
  tags                 = { Name = "solor-1njchy-reporting-22-ec2260" }
}

resource "aws_instance" "reporting_22_ec2860" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_22_svc.name
  tags                 = { Name = "solor-1njchy-reporting-22-ec2860" }
}

resource "aws_instance" "reporting_23_ec21472" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_23_svc.name
  tags                 = { Name = "solor-1njchy-reporting-23-ec21472" }
}

resource "aws_cloudformation_stack" "reporting_23_stack272" {
  name          = "solor-1njchy-reporting-23-stack272"
  iam_role_arn  = aws_iam_role.reporting_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_23_stack872" {
  name          = "solor-1njchy-reporting-23-stack872"
  iam_role_arn  = aws_iam_role.reporting_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_24_ec2884" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_24_svc.name
  tags                 = { Name = "solor-1njchy-reporting-24-ec2884" }
}

resource "aws_sagemaker_notebook_instance" "reporting_24_nb284" {
  name          = "solor-1njchy-reporting-24-nb284"
  role_arn      = aws_iam_role.reporting_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_24_stack1484" {
  name          = "solor-1njchy-reporting-24-stack1484"
  iam_role_arn  = aws_iam_role.reporting_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "reporting_25_nb1496" {
  name          = "solor-1njchy-reporting-25-nb1496"
  role_arn      = aws_iam_role.reporting_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_25_nb296" {
  name          = "solor-1njchy-reporting-25-nb296"
  role_arn      = aws_iam_role.reporting_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_25_stack896" {
  name          = "solor-1njchy-reporting-25-stack896"
  iam_role_arn  = aws_iam_role.reporting_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_26_ec2308" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_26_svc.name
  tags                 = { Name = "solor-1njchy-reporting-26-ec2308" }
}

resource "aws_sagemaker_notebook_instance" "reporting_26_nb1508" {
  name          = "solor-1njchy-reporting-26-nb1508"
  role_arn      = aws_iam_role.reporting_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_26_stack908" {
  name          = "solor-1njchy-reporting-26-stack908"
  iam_role_arn  = aws_iam_role.reporting_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_27_ec2320" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_27_svc.name
  tags                 = { Name = "solor-1njchy-reporting-27-ec2320" }
}

resource "aws_instance" "reporting_27_ec2920" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_27_svc.name
  tags                 = { Name = "solor-1njchy-reporting-27-ec2920" }
}

resource "aws_cloudformation_stack" "reporting_27_stack1520" {
  name          = "solor-1njchy-reporting-27-stack1520"
  iam_role_arn  = aws_iam_role.reporting_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_28_ec21532" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_28_svc.name
  tags                 = { Name = "solor-1njchy-reporting-28-ec21532" }
}

resource "aws_instance" "reporting_28_ec2332" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_28_svc.name
  tags                 = { Name = "solor-1njchy-reporting-28-ec2332" }
}

resource "aws_instance" "reporting_28_ec2932" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_28_svc.name
  tags                 = { Name = "solor-1njchy-reporting-28-ec2932" }
}

resource "aws_instance" "reporting_29_ec2944" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_29_svc.name
  tags                 = { Name = "solor-1njchy-reporting-29-ec2944" }
}

resource "aws_glue_dev_endpoint" "reporting_29_glue1544" {
  name     = "solor-1njchy-reporting-29-glue1544"
  role_arn = aws_iam_role.reporting_29_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_29_nb344" {
  name          = "solor-1njchy-reporting-29-nb344"
  role_arn      = aws_iam_role.reporting_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_3_ec21232" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_3_svc.name
  tags                 = { Name = "solor-1njchy-reporting-3-ec21232" }
}

resource "aws_instance" "reporting_3_ec21832" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_3_svc.name
  tags                 = { Name = "solor-1njchy-reporting-3-ec21832" }
}

resource "aws_instance" "reporting_3_ec232" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_3_svc.name
  tags                 = { Name = "solor-1njchy-reporting-3-ec232" }
}

resource "aws_sagemaker_notebook_instance" "reporting_3_nb632" {
  name          = "solor-1njchy-reporting-3-nb632"
  role_arn      = aws_iam_role.reporting_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_30_ec2356" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_30_svc.name
  tags                 = { Name = "solor-1njchy-reporting-30-ec2356" }
}

resource "aws_sagemaker_notebook_instance" "reporting_30_nb956" {
  name          = "solor-1njchy-reporting-30-nb956"
  role_arn      = aws_iam_role.reporting_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_30_stack1556" {
  name          = "solor-1njchy-reporting-30-stack1556"
  iam_role_arn  = aws_iam_role.reporting_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_31_ec2368" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_31_svc.name
  tags                 = { Name = "solor-1njchy-reporting-31-ec2368" }
}

resource "aws_glue_dev_endpoint" "reporting_31_glue1568" {
  name     = "solor-1njchy-reporting-31-glue1568"
  role_arn = aws_iam_role.reporting_31_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_31_nb968" {
  name          = "solor-1njchy-reporting-31-nb968"
  role_arn      = aws_iam_role.reporting_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_32_ec21580" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_32_svc.name
  tags                 = { Name = "solor-1njchy-reporting-32-ec21580" }
}

resource "aws_glue_dev_endpoint" "reporting_32_glue380" {
  name     = "solor-1njchy-reporting-32-glue380"
  role_arn = aws_iam_role.reporting_32_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_32_nb980" {
  name          = "solor-1njchy-reporting-32-nb980"
  role_arn      = aws_iam_role.reporting_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_33_ec2992" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_33_svc.name
  tags                 = { Name = "solor-1njchy-reporting-33-ec2992" }
}

resource "aws_sagemaker_notebook_instance" "reporting_33_nb392" {
  name          = "solor-1njchy-reporting-33-nb392"
  role_arn      = aws_iam_role.reporting_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_33_stack1592" {
  name          = "solor-1njchy-reporting-33-stack1592"
  iam_role_arn  = aws_iam_role.reporting_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_34_ec21604" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_34_svc.name
  tags                 = { Name = "solor-1njchy-reporting-34-ec21604" }
}

resource "aws_instance" "reporting_34_ec2404" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_34_svc.name
  tags                 = { Name = "solor-1njchy-reporting-34-ec2404" }
}

resource "aws_sagemaker_notebook_instance" "reporting_34_nb1004" {
  name          = "solor-1njchy-reporting-34-nb1004"
  role_arn      = aws_iam_role.reporting_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_35_ec21016" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_35_svc.name
  tags                 = { Name = "solor-1njchy-reporting-35-ec21016" }
}

resource "aws_instance" "reporting_35_ec2416" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_35_svc.name
  tags                 = { Name = "solor-1njchy-reporting-35-ec2416" }
}

resource "aws_sagemaker_notebook_instance" "reporting_35_nb1616" {
  name          = "solor-1njchy-reporting-35-nb1616"
  role_arn      = aws_iam_role.reporting_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_36_ec2428" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_36_svc.name
  tags                 = { Name = "solor-1njchy-reporting-36-ec2428" }
}

resource "aws_cloudformation_stack" "reporting_36_stack1028" {
  name          = "solor-1njchy-reporting-36-stack1028"
  iam_role_arn  = aws_iam_role.reporting_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "reporting_36_stack1628" {
  name          = "solor-1njchy-reporting-36-stack1628"
  iam_role_arn  = aws_iam_role.reporting_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_37_ec21040" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_37_svc.name
  tags                 = { Name = "solor-1njchy-reporting-37-ec21040" }
}

resource "aws_instance" "reporting_37_ec2440" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_37_svc.name
  tags                 = { Name = "solor-1njchy-reporting-37-ec2440" }
}

resource "aws_cloudformation_stack" "reporting_37_stack1640" {
  name          = "solor-1njchy-reporting-37-stack1640"
  iam_role_arn  = aws_iam_role.reporting_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_38_ec21052" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_38_svc.name
  tags                 = { Name = "solor-1njchy-reporting-38-ec21052" }
}

resource "aws_instance" "reporting_38_ec21652" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_38_svc.name
  tags                 = { Name = "solor-1njchy-reporting-38-ec21652" }
}

resource "aws_cloudformation_stack" "reporting_38_stack452" {
  name          = "solor-1njchy-reporting-38-stack452"
  iam_role_arn  = aws_iam_role.reporting_38_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_39_ec21064" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_39_svc.name
  tags                 = { Name = "solor-1njchy-reporting-39-ec21064" }
}

resource "aws_instance" "reporting_39_ec2464" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_39_svc.name
  tags                 = { Name = "solor-1njchy-reporting-39-ec2464" }
}

resource "aws_cloudformation_stack" "reporting_39_stack1664" {
  name          = "solor-1njchy-reporting-39-stack1664"
  iam_role_arn  = aws_iam_role.reporting_39_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "reporting_4_nb1244" {
  name          = "solor-1njchy-reporting-4-nb1244"
  role_arn      = aws_iam_role.reporting_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_4_nb1844" {
  name          = "solor-1njchy-reporting-4-nb1844"
  role_arn      = aws_iam_role.reporting_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_4_nb44" {
  name          = "solor-1njchy-reporting-4-nb44"
  role_arn      = aws_iam_role.reporting_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_4_stack644" {
  name          = "solor-1njchy-reporting-4-stack644"
  iam_role_arn  = aws_iam_role.reporting_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_40_ec21076" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_40_svc.name
  tags                 = { Name = "solor-1njchy-reporting-40-ec21076" }
}

resource "aws_instance" "reporting_40_ec2476" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_40_svc.name
  tags                 = { Name = "solor-1njchy-reporting-40-ec2476" }
}

resource "aws_sagemaker_notebook_instance" "reporting_40_nb1676" {
  name          = "solor-1njchy-reporting-40-nb1676"
  role_arn      = aws_iam_role.reporting_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "reporting_41_glue1088" {
  name     = "solor-1njchy-reporting-41-glue1088"
  role_arn = aws_iam_role.reporting_41_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_41_nb1688" {
  name          = "solor-1njchy-reporting-41-nb1688"
  role_arn      = aws_iam_role.reporting_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_41_nb488" {
  name          = "solor-1njchy-reporting-41-nb488"
  role_arn      = aws_iam_role.reporting_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_42_ec21100" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_42_svc.name
  tags                 = { Name = "solor-1njchy-reporting-42-ec21100" }
}

resource "aws_instance" "reporting_42_ec21700" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_42_svc.name
  tags                 = { Name = "solor-1njchy-reporting-42-ec21700" }
}

resource "aws_sagemaker_notebook_instance" "reporting_42_nb500" {
  name          = "solor-1njchy-reporting-42-nb500"
  role_arn      = aws_iam_role.reporting_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_43_ec21712" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_43_svc.name
  tags                 = { Name = "solor-1njchy-reporting-43-ec21712" }
}

resource "aws_instance" "reporting_43_ec2512" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_43_svc.name
  tags                 = { Name = "solor-1njchy-reporting-43-ec2512" }
}

resource "aws_sagemaker_notebook_instance" "reporting_43_nb1112" {
  name          = "solor-1njchy-reporting-43-nb1112"
  role_arn      = aws_iam_role.reporting_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_44_ec21124" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_44_svc.name
  tags                 = { Name = "solor-1njchy-reporting-44-ec21124" }
}

resource "aws_instance" "reporting_44_ec21724" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_44_svc.name
  tags                 = { Name = "solor-1njchy-reporting-44-ec21724" }
}

resource "aws_cloudformation_stack" "reporting_44_stack524" {
  name          = "solor-1njchy-reporting-44-stack524"
  iam_role_arn  = aws_iam_role.reporting_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "reporting_45_glue1136" {
  name     = "solor-1njchy-reporting-45-glue1136"
  role_arn = aws_iam_role.reporting_45_glue_role.arn
}

resource "aws_glue_dev_endpoint" "reporting_45_glue1736" {
  name     = "solor-1njchy-reporting-45-glue1736"
  role_arn = aws_iam_role.reporting_45_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_45_nb536" {
  name          = "solor-1njchy-reporting-45-nb536"
  role_arn      = aws_iam_role.reporting_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_46_ec21748" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_46_svc.name
  tags                 = { Name = "solor-1njchy-reporting-46-ec21748" }
}

resource "aws_sagemaker_notebook_instance" "reporting_46_nb1148" {
  name          = "solor-1njchy-reporting-46-nb1148"
  role_arn      = aws_iam_role.reporting_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_46_stack548" {
  name          = "solor-1njchy-reporting-46-stack548"
  iam_role_arn  = aws_iam_role.reporting_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_47_ec2560" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_47_svc.name
  tags                 = { Name = "solor-1njchy-reporting-47-ec2560" }
}

resource "aws_glue_dev_endpoint" "reporting_47_glue1160" {
  name     = "solor-1njchy-reporting-47-glue1160"
  role_arn = aws_iam_role.reporting_47_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_47_nb1760" {
  name          = "solor-1njchy-reporting-47-nb1760"
  role_arn      = aws_iam_role.reporting_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_48_ec21172" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_48_svc.name
  tags                 = { Name = "solor-1njchy-reporting-48-ec21172" }
}

resource "aws_instance" "reporting_48_ec21772" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_48_svc.name
  tags                 = { Name = "solor-1njchy-reporting-48-ec21772" }
}

resource "aws_instance" "reporting_48_ec2572" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_48_svc.name
  tags                 = { Name = "solor-1njchy-reporting-48-ec2572" }
}

resource "aws_instance" "reporting_49_ec21184" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_49_svc.name
  tags                 = { Name = "solor-1njchy-reporting-49-ec21184" }
}

resource "aws_sagemaker_notebook_instance" "reporting_49_nb1784" {
  name          = "solor-1njchy-reporting-49-nb1784"
  role_arn      = aws_iam_role.reporting_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "reporting_49_nb584" {
  name          = "solor-1njchy-reporting-49-nb584"
  role_arn      = aws_iam_role.reporting_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "reporting_5_ec21856" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_5_svc.name
  tags                 = { Name = "solor-1njchy-reporting-5-ec21856" }
}

resource "aws_instance" "reporting_5_ec2656" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_5_svc.name
  tags                 = { Name = "solor-1njchy-reporting-5-ec2656" }
}

resource "aws_sagemaker_notebook_instance" "reporting_5_nb1256" {
  name          = "solor-1njchy-reporting-5-nb1256"
  role_arn      = aws_iam_role.reporting_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_5_stack56" {
  name          = "solor-1njchy-reporting-5-stack56"
  iam_role_arn  = aws_iam_role.reporting_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_50_ec21796" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_50_svc.name
  tags                 = { Name = "solor-1njchy-reporting-50-ec21796" }
}

resource "aws_instance" "reporting_50_ec2596" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_50_svc.name
  tags                 = { Name = "solor-1njchy-reporting-50-ec2596" }
}

resource "aws_glue_dev_endpoint" "reporting_50_glue1196" {
  name     = "solor-1njchy-reporting-50-glue1196"
  role_arn = aws_iam_role.reporting_50_glue_role.arn
}

resource "aws_instance" "reporting_6_ec21868" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_6_svc.name
  tags                 = { Name = "solor-1njchy-reporting-6-ec21868" }
}

resource "aws_instance" "reporting_6_ec268" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_6_svc.name
  tags                 = { Name = "solor-1njchy-reporting-6-ec268" }
}

resource "aws_glue_dev_endpoint" "reporting_6_glue668" {
  name     = "solor-1njchy-reporting-6-glue668"
  role_arn = aws_iam_role.reporting_6_glue_role.arn
}

resource "aws_cloudformation_stack" "reporting_6_stack1268" {
  name          = "solor-1njchy-reporting-6-stack1268"
  iam_role_arn  = aws_iam_role.reporting_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_7_ec280" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_7_svc.name
  tags                 = { Name = "solor-1njchy-reporting-7-ec280" }
}

resource "aws_glue_dev_endpoint" "reporting_7_glue1880" {
  name     = "solor-1njchy-reporting-7-glue1880"
  role_arn = aws_iam_role.reporting_7_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "reporting_7_nb680" {
  name          = "solor-1njchy-reporting-7-nb680"
  role_arn      = aws_iam_role.reporting_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "reporting_7_stack1280" {
  name          = "solor-1njchy-reporting-7-stack1280"
  iam_role_arn  = aws_iam_role.reporting_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_8_ec21892" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_8_svc.name
  tags                 = { Name = "solor-1njchy-reporting-8-ec21892" }
}

resource "aws_instance" "reporting_8_ec2692" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_8_svc.name
  tags                 = { Name = "solor-1njchy-reporting-8-ec2692" }
}

resource "aws_glue_dev_endpoint" "reporting_8_glue92" {
  name     = "solor-1njchy-reporting-8-glue92"
  role_arn = aws_iam_role.reporting_8_glue_role.arn
}

resource "aws_cloudformation_stack" "reporting_8_stack1292" {
  name          = "solor-1njchy-reporting-8-stack1292"
  iam_role_arn  = aws_iam_role.reporting_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_9_ec2104" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_9_svc.name
  tags                 = { Name = "solor-1njchy-reporting-9-ec2104" }
}

resource "aws_instance" "reporting_9_ec21904" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_9_svc.name
  tags                 = { Name = "solor-1njchy-reporting-9-ec21904" }
}

resource "aws_instance" "reporting_9_ec2704" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_9_svc.name
  tags                 = { Name = "solor-1njchy-reporting-9-ec2704" }
}

resource "aws_cloudformation_stack" "reporting_9_stack1304" {
  name          = "solor-1njchy-reporting-9-stack1304"
  iam_role_arn  = aws_iam_role.reporting_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "reporting_ec21208" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_svc.name
  tags                 = { Name = "solor-1njchy-reporting-ec21208" }
}

resource "aws_instance" "reporting_ec2608" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_svc.name
  tags                 = { Name = "solor-1njchy-reporting-ec2608" }
}

resource "aws_instance" "reporting_ec28" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.reporting_svc.name
  tags                 = { Name = "solor-1njchy-reporting-ec28" }
}

resource "aws_cloudformation_stack" "reporting_stack1808" {
  name          = "solor-1njchy-reporting-stack1808"
  iam_role_arn  = aws_iam_role.reporting_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_10_ec21910" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_10_svc.name
  tags                 = { Name = "solor-1njchy-risk-10-ec21910" }
}

resource "aws_instance" "risk_10_ec2710" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_10_svc.name
  tags                 = { Name = "solor-1njchy-risk-10-ec2710" }
}

resource "aws_glue_dev_endpoint" "risk_10_glue110" {
  name     = "solor-1njchy-risk-10-glue110"
  role_arn = aws_iam_role.risk_10_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_10_nb1310" {
  name          = "solor-1njchy-risk-10-nb1310"
  role_arn      = aws_iam_role.risk_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_11_ec21322" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_11_svc.name
  tags                 = { Name = "solor-1njchy-risk-11-ec21322" }
}

resource "aws_instance" "risk_11_ec2722" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_11_svc.name
  tags                 = { Name = "solor-1njchy-risk-11-ec2722" }
}

resource "aws_sagemaker_notebook_instance" "risk_11_nb122" {
  name          = "solor-1njchy-risk-11-nb122"
  role_arn      = aws_iam_role.risk_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_11_stack1922" {
  name          = "solor-1njchy-risk-11-stack1922"
  iam_role_arn  = aws_iam_role.risk_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_12_ec2134" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_12_svc.name
  tags                 = { Name = "solor-1njchy-risk-12-ec2134" }
}

resource "aws_instance" "risk_12_ec2734" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_12_svc.name
  tags                 = { Name = "solor-1njchy-risk-12-ec2734" }
}

resource "aws_sagemaker_notebook_instance" "risk_12_nb1934" {
  name          = "solor-1njchy-risk-12-nb1934"
  role_arn      = aws_iam_role.risk_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_12_stack1334" {
  name          = "solor-1njchy-risk-12-stack1334"
  iam_role_arn  = aws_iam_role.risk_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_13_ec2746" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_13_svc.name
  tags                 = { Name = "solor-1njchy-risk-13-ec2746" }
}

resource "aws_sagemaker_notebook_instance" "risk_13_nb1346" {
  name          = "solor-1njchy-risk-13-nb1346"
  role_arn      = aws_iam_role.risk_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_13_stack146" {
  name          = "solor-1njchy-risk-13-stack146"
  iam_role_arn  = aws_iam_role.risk_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_13_stack1946" {
  name          = "solor-1njchy-risk-13-stack1946"
  iam_role_arn  = aws_iam_role.risk_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_14_ec21358" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_14_svc.name
  tags                 = { Name = "solor-1njchy-risk-14-ec21358" }
}

resource "aws_instance" "risk_14_ec2158" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_14_svc.name
  tags                 = { Name = "solor-1njchy-risk-14-ec2158" }
}

resource "aws_cloudformation_stack" "risk_14_stack1958" {
  name          = "solor-1njchy-risk-14-stack1958"
  iam_role_arn  = aws_iam_role.risk_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_14_stack758" {
  name          = "solor-1njchy-risk-14-stack758"
  iam_role_arn  = aws_iam_role.risk_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_15_ec2770" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_15_svc.name
  tags                 = { Name = "solor-1njchy-risk-15-ec2770" }
}

resource "aws_glue_dev_endpoint" "risk_15_glue170" {
  name     = "solor-1njchy-risk-15-glue170"
  role_arn = aws_iam_role.risk_15_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_15_nb1370" {
  name          = "solor-1njchy-risk-15-nb1370"
  role_arn      = aws_iam_role.risk_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_15_stack1970" {
  name          = "solor-1njchy-risk-15-stack1970"
  iam_role_arn  = aws_iam_role.risk_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_16_ec21982" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_16_svc.name
  tags                 = { Name = "solor-1njchy-risk-16-ec21982" }
}

resource "aws_sagemaker_notebook_instance" "risk_16_nb1382" {
  name          = "solor-1njchy-risk-16-nb1382"
  role_arn      = aws_iam_role.risk_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_16_nb182" {
  name          = "solor-1njchy-risk-16-nb182"
  role_arn      = aws_iam_role.risk_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_16_nb782" {
  name          = "solor-1njchy-risk-16-nb782"
  role_arn      = aws_iam_role.risk_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_17_ec2794" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_17_svc.name
  tags                 = { Name = "solor-1njchy-risk-17-ec2794" }
}

resource "aws_sagemaker_notebook_instance" "risk_17_nb194" {
  name          = "solor-1njchy-risk-17-nb194"
  role_arn      = aws_iam_role.risk_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_17_stack1394" {
  name          = "solor-1njchy-risk-17-stack1394"
  iam_role_arn  = aws_iam_role.risk_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_17_stack1994" {
  name          = "solor-1njchy-risk-17-stack1994"
  iam_role_arn  = aws_iam_role.risk_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_18_ec21406" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_18_svc.name
  tags                 = { Name = "solor-1njchy-risk-18-ec21406" }
}

resource "aws_instance" "risk_18_ec2206" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_18_svc.name
  tags                 = { Name = "solor-1njchy-risk-18-ec2206" }
}

resource "aws_sagemaker_notebook_instance" "risk_18_nb806" {
  name          = "solor-1njchy-risk-18-nb806"
  role_arn      = aws_iam_role.risk_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_19_ec21418" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_19_svc.name
  tags                 = { Name = "solor-1njchy-risk-19-ec21418" }
}

resource "aws_instance" "risk_19_ec2818" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_19_svc.name
  tags                 = { Name = "solor-1njchy-risk-19-ec2818" }
}

resource "aws_sagemaker_notebook_instance" "risk_19_nb218" {
  name          = "solor-1njchy-risk-19-nb218"
  role_arn      = aws_iam_role.risk_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_2_ec214" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_2_svc.name
  tags                 = { Name = "solor-1njchy-risk-2-ec214" }
}

resource "aws_instance" "risk_2_ec2614" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_2_svc.name
  tags                 = { Name = "solor-1njchy-risk-2-ec2614" }
}

resource "aws_sagemaker_notebook_instance" "risk_2_nb1814" {
  name          = "solor-1njchy-risk-2-nb1814"
  role_arn      = aws_iam_role.risk_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_2_stack1214" {
  name          = "solor-1njchy-risk-2-stack1214"
  iam_role_arn  = aws_iam_role.risk_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_20_ec21430" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_20_svc.name
  tags                 = { Name = "solor-1njchy-risk-20-ec21430" }
}

resource "aws_instance" "risk_20_ec2230" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_20_svc.name
  tags                 = { Name = "solor-1njchy-risk-20-ec2230" }
}

resource "aws_instance" "risk_20_ec2830" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_20_svc.name
  tags                 = { Name = "solor-1njchy-risk-20-ec2830" }
}

resource "aws_instance" "risk_21_ec2242" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_21_svc.name
  tags                 = { Name = "solor-1njchy-risk-21-ec2242" }
}

resource "aws_glue_dev_endpoint" "risk_21_glue1442" {
  name     = "solor-1njchy-risk-21-glue1442"
  role_arn = aws_iam_role.risk_21_glue_role.arn
}

resource "aws_cloudformation_stack" "risk_21_stack842" {
  name          = "solor-1njchy-risk-21-stack842"
  iam_role_arn  = aws_iam_role.risk_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_22_ec2254" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_22_svc.name
  tags                 = { Name = "solor-1njchy-risk-22-ec2254" }
}

resource "aws_glue_dev_endpoint" "risk_22_glue854" {
  name     = "solor-1njchy-risk-22-glue854"
  role_arn = aws_iam_role.risk_22_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_22_nb1454" {
  name          = "solor-1njchy-risk-22-nb1454"
  role_arn      = aws_iam_role.risk_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_23_ec2866" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_23_svc.name
  tags                 = { Name = "solor-1njchy-risk-23-ec2866" }
}

resource "aws_glue_dev_endpoint" "risk_23_glue1466" {
  name     = "solor-1njchy-risk-23-glue1466"
  role_arn = aws_iam_role.risk_23_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_23_nb266" {
  name          = "solor-1njchy-risk-23-nb266"
  role_arn      = aws_iam_role.risk_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_24_ec2278" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_24_svc.name
  tags                 = { Name = "solor-1njchy-risk-24-ec2278" }
}

resource "aws_instance" "risk_24_ec2878" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_24_svc.name
  tags                 = { Name = "solor-1njchy-risk-24-ec2878" }
}

resource "aws_sagemaker_notebook_instance" "risk_24_nb1478" {
  name          = "solor-1njchy-risk-24-nb1478"
  role_arn      = aws_iam_role.risk_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_25_ec2890" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_25_svc.name
  tags                 = { Name = "solor-1njchy-risk-25-ec2890" }
}

resource "aws_cloudformation_stack" "risk_25_stack1490" {
  name          = "solor-1njchy-risk-25-stack1490"
  iam_role_arn  = aws_iam_role.risk_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_25_stack290" {
  name          = "solor-1njchy-risk-25-stack290"
  iam_role_arn  = aws_iam_role.risk_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_26_ec21502" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_26_svc.name
  tags                 = { Name = "solor-1njchy-risk-26-ec21502" }
}

resource "aws_instance" "risk_26_ec2302" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_26_svc.name
  tags                 = { Name = "solor-1njchy-risk-26-ec2302" }
}

resource "aws_instance" "risk_26_ec2902" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_26_svc.name
  tags                 = { Name = "solor-1njchy-risk-26-ec2902" }
}

resource "aws_cloudformation_stack" "risk_27_stack1514" {
  name          = "solor-1njchy-risk-27-stack1514"
  iam_role_arn  = aws_iam_role.risk_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_27_stack314" {
  name          = "solor-1njchy-risk-27-stack314"
  iam_role_arn  = aws_iam_role.risk_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_27_stack914" {
  name          = "solor-1njchy-risk-27-stack914"
  iam_role_arn  = aws_iam_role.risk_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_28_ec21526" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_28_svc.name
  tags                 = { Name = "solor-1njchy-risk-28-ec21526" }
}

resource "aws_instance" "risk_28_ec2926" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_28_svc.name
  tags                 = { Name = "solor-1njchy-risk-28-ec2926" }
}

resource "aws_cloudformation_stack" "risk_28_stack326" {
  name          = "solor-1njchy-risk-28-stack326"
  iam_role_arn  = aws_iam_role.risk_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_29_ec21538" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_29_svc.name
  tags                 = { Name = "solor-1njchy-risk-29-ec21538" }
}

resource "aws_instance" "risk_29_ec2338" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_29_svc.name
  tags                 = { Name = "solor-1njchy-risk-29-ec2338" }
}

resource "aws_sagemaker_notebook_instance" "risk_29_nb938" {
  name          = "solor-1njchy-risk-29-nb938"
  role_arn      = aws_iam_role.risk_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_3_ec21226" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_3_svc.name
  tags                 = { Name = "solor-1njchy-risk-3-ec21226" }
}

resource "aws_glue_dev_endpoint" "risk_3_glue26" {
  name     = "solor-1njchy-risk-3-glue26"
  role_arn = aws_iam_role.risk_3_glue_role.arn
}

resource "aws_glue_dev_endpoint" "risk_3_glue626" {
  name     = "solor-1njchy-risk-3-glue626"
  role_arn = aws_iam_role.risk_3_glue_role.arn
}

resource "aws_cloudformation_stack" "risk_3_stack1826" {
  name          = "solor-1njchy-risk-3-stack1826"
  iam_role_arn  = aws_iam_role.risk_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_30_ec2950" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_30_svc.name
  tags                 = { Name = "solor-1njchy-risk-30-ec2950" }
}

resource "aws_glue_dev_endpoint" "risk_30_glue1550" {
  name     = "solor-1njchy-risk-30-glue1550"
  role_arn = aws_iam_role.risk_30_glue_role.arn
}

resource "aws_cloudformation_stack" "risk_30_stack350" {
  name          = "solor-1njchy-risk-30-stack350"
  iam_role_arn  = aws_iam_role.risk_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_31_ec21562" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_31_svc.name
  tags                 = { Name = "solor-1njchy-risk-31-ec21562" }
}

resource "aws_sagemaker_notebook_instance" "risk_31_nb962" {
  name          = "solor-1njchy-risk-31-nb962"
  role_arn      = aws_iam_role.risk_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_31_stack362" {
  name          = "solor-1njchy-risk-31-stack362"
  iam_role_arn  = aws_iam_role.risk_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_32_ec21574" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_32_svc.name
  tags                 = { Name = "solor-1njchy-risk-32-ec21574" }
}

resource "aws_instance" "risk_32_ec2974" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_32_svc.name
  tags                 = { Name = "solor-1njchy-risk-32-ec2974" }
}

resource "aws_cloudformation_stack" "risk_32_stack374" {
  name          = "solor-1njchy-risk-32-stack374"
  iam_role_arn  = aws_iam_role.risk_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_33_ec21586" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_33_svc.name
  tags                 = { Name = "solor-1njchy-risk-33-ec21586" }
}

resource "aws_instance" "risk_33_ec2386" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_33_svc.name
  tags                 = { Name = "solor-1njchy-risk-33-ec2386" }
}

resource "aws_instance" "risk_33_ec2986" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_33_svc.name
  tags                 = { Name = "solor-1njchy-risk-33-ec2986" }
}

resource "aws_instance" "risk_34_ec2398" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_34_svc.name
  tags                 = { Name = "solor-1njchy-risk-34-ec2398" }
}

resource "aws_glue_dev_endpoint" "risk_34_glue998" {
  name     = "solor-1njchy-risk-34-glue998"
  role_arn = aws_iam_role.risk_34_glue_role.arn
}

resource "aws_cloudformation_stack" "risk_34_stack1598" {
  name          = "solor-1njchy-risk-34-stack1598"
  iam_role_arn  = aws_iam_role.risk_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_35_ec21010" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_35_svc.name
  tags                 = { Name = "solor-1njchy-risk-35-ec21010" }
}

resource "aws_sagemaker_notebook_instance" "risk_35_nb410" {
  name          = "solor-1njchy-risk-35-nb410"
  role_arn      = aws_iam_role.risk_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_35_stack1610" {
  name          = "solor-1njchy-risk-35-stack1610"
  iam_role_arn  = aws_iam_role.risk_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "risk_36_nb1622" {
  name          = "solor-1njchy-risk-36-nb1622"
  role_arn      = aws_iam_role.risk_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_36_nb422" {
  name          = "solor-1njchy-risk-36-nb422"
  role_arn      = aws_iam_role.risk_36_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_36_stack1022" {
  name          = "solor-1njchy-risk-36-stack1022"
  iam_role_arn  = aws_iam_role.risk_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_37_ec21034" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_37_svc.name
  tags                 = { Name = "solor-1njchy-risk-37-ec21034" }
}

resource "aws_cloudformation_stack" "risk_37_stack1634" {
  name          = "solor-1njchy-risk-37-stack1634"
  iam_role_arn  = aws_iam_role.risk_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_37_stack434" {
  name          = "solor-1njchy-risk-37-stack434"
  iam_role_arn  = aws_iam_role.risk_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_38_ec21046" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_38_svc.name
  tags                 = { Name = "solor-1njchy-risk-38-ec21046" }
}

resource "aws_glue_dev_endpoint" "risk_38_glue1646" {
  name     = "solor-1njchy-risk-38-glue1646"
  role_arn = aws_iam_role.risk_38_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_38_nb446" {
  name          = "solor-1njchy-risk-38-nb446"
  role_arn      = aws_iam_role.risk_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_39_ec21058" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_39_svc.name
  tags                 = { Name = "solor-1njchy-risk-39-ec21058" }
}

resource "aws_instance" "risk_39_ec21658" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_39_svc.name
  tags                 = { Name = "solor-1njchy-risk-39-ec21658" }
}

resource "aws_instance" "risk_39_ec2458" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_39_svc.name
  tags                 = { Name = "solor-1njchy-risk-39-ec2458" }
}

resource "aws_instance" "risk_4_ec238" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_4_svc.name
  tags                 = { Name = "solor-1njchy-risk-4-ec238" }
}

resource "aws_glue_dev_endpoint" "risk_4_glue1238" {
  name     = "solor-1njchy-risk-4-glue1238"
  role_arn = aws_iam_role.risk_4_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "risk_4_nb1838" {
  name          = "solor-1njchy-risk-4-nb1838"
  role_arn      = aws_iam_role.risk_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_4_stack638" {
  name          = "solor-1njchy-risk-4-stack638"
  iam_role_arn  = aws_iam_role.risk_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "risk_40_nb1670" {
  name          = "solor-1njchy-risk-40-nb1670"
  role_arn      = aws_iam_role.risk_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_40_nb470" {
  name          = "solor-1njchy-risk-40-nb470"
  role_arn      = aws_iam_role.risk_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_40_stack1070" {
  name          = "solor-1njchy-risk-40-stack1070"
  iam_role_arn  = aws_iam_role.risk_40_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_41_ec21082" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_41_svc.name
  tags                 = { Name = "solor-1njchy-risk-41-ec21082" }
}

resource "aws_instance" "risk_41_ec21682" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_41_svc.name
  tags                 = { Name = "solor-1njchy-risk-41-ec21682" }
}

resource "aws_glue_dev_endpoint" "risk_41_glue482" {
  name     = "solor-1njchy-risk-41-glue482"
  role_arn = aws_iam_role.risk_41_glue_role.arn
}

resource "aws_instance" "risk_42_ec21094" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_42_svc.name
  tags                 = { Name = "solor-1njchy-risk-42-ec21094" }
}

resource "aws_instance" "risk_42_ec2494" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_42_svc.name
  tags                 = { Name = "solor-1njchy-risk-42-ec2494" }
}

resource "aws_cloudformation_stack" "risk_42_stack1694" {
  name          = "solor-1njchy-risk-42-stack1694"
  iam_role_arn  = aws_iam_role.risk_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "risk_43_nb1106" {
  name          = "solor-1njchy-risk-43-nb1106"
  role_arn      = aws_iam_role.risk_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_43_nb506" {
  name          = "solor-1njchy-risk-43-nb506"
  role_arn      = aws_iam_role.risk_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_43_stack1706" {
  name          = "solor-1njchy-risk-43-stack1706"
  iam_role_arn  = aws_iam_role.risk_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "risk_44_nb1718" {
  name          = "solor-1njchy-risk-44-nb1718"
  role_arn      = aws_iam_role.risk_44_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_44_stack1118" {
  name          = "solor-1njchy-risk-44-stack1118"
  iam_role_arn  = aws_iam_role.risk_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_44_stack518" {
  name          = "solor-1njchy-risk-44-stack518"
  iam_role_arn  = aws_iam_role.risk_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_45_ec21730" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_45_svc.name
  tags                 = { Name = "solor-1njchy-risk-45-ec21730" }
}

resource "aws_cloudformation_stack" "risk_45_stack1130" {
  name          = "solor-1njchy-risk-45-stack1130"
  iam_role_arn  = aws_iam_role.risk_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_45_stack530" {
  name          = "solor-1njchy-risk-45-stack530"
  iam_role_arn  = aws_iam_role.risk_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_46_ec21142" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_46_svc.name
  tags                 = { Name = "solor-1njchy-risk-46-ec21142" }
}

resource "aws_sagemaker_notebook_instance" "risk_46_nb542" {
  name          = "solor-1njchy-risk-46-nb542"
  role_arn      = aws_iam_role.risk_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_46_stack1742" {
  name          = "solor-1njchy-risk-46-stack1742"
  iam_role_arn  = aws_iam_role.risk_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_47_ec21154" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_47_svc.name
  tags                 = { Name = "solor-1njchy-risk-47-ec21154" }
}

resource "aws_sagemaker_notebook_instance" "risk_47_nb1754" {
  name          = "solor-1njchy-risk-47-nb1754"
  role_arn      = aws_iam_role.risk_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_47_nb554" {
  name          = "solor-1njchy-risk-47-nb554"
  role_arn      = aws_iam_role.risk_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "risk_48_ec2566" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_48_svc.name
  tags                 = { Name = "solor-1njchy-risk-48-ec2566" }
}

resource "aws_sagemaker_notebook_instance" "risk_48_nb1166" {
  name          = "solor-1njchy-risk-48-nb1166"
  role_arn      = aws_iam_role.risk_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_48_stack1766" {
  name          = "solor-1njchy-risk-48-stack1766"
  iam_role_arn  = aws_iam_role.risk_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_49_ec2578" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_49_svc.name
  tags                 = { Name = "solor-1njchy-risk-49-ec2578" }
}

resource "aws_cloudformation_stack" "risk_49_stack1178" {
  name          = "solor-1njchy-risk-49-stack1178"
  iam_role_arn  = aws_iam_role.risk_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_49_stack1778" {
  name          = "solor-1njchy-risk-49-stack1778"
  iam_role_arn  = aws_iam_role.risk_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_5_ec21250" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_5_svc.name
  tags                 = { Name = "solor-1njchy-risk-5-ec21250" }
}

resource "aws_sagemaker_notebook_instance" "risk_5_nb1850" {
  name          = "solor-1njchy-risk-5-nb1850"
  role_arn      = aws_iam_role.risk_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_5_stack50" {
  name          = "solor-1njchy-risk-5-stack50"
  iam_role_arn  = aws_iam_role.risk_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_5_stack650" {
  name          = "solor-1njchy-risk-5-stack650"
  iam_role_arn  = aws_iam_role.risk_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_50_ec21190" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_50_svc.name
  tags                 = { Name = "solor-1njchy-risk-50-ec21190" }
}

resource "aws_sagemaker_notebook_instance" "risk_50_nb1790" {
  name          = "solor-1njchy-risk-50-nb1790"
  role_arn      = aws_iam_role.risk_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_50_stack590" {
  name          = "solor-1njchy-risk-50-stack590"
  iam_role_arn  = aws_iam_role.risk_50_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_6_ec262" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_6_svc.name
  tags                 = { Name = "solor-1njchy-risk-6-ec262" }
}

resource "aws_sagemaker_notebook_instance" "risk_6_nb1262" {
  name          = "solor-1njchy-risk-6-nb1262"
  role_arn      = aws_iam_role.risk_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_6_nb662" {
  name          = "solor-1njchy-risk-6-nb662"
  role_arn      = aws_iam_role.risk_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_6_stack1862" {
  name          = "solor-1njchy-risk-6-stack1862"
  iam_role_arn  = aws_iam_role.risk_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_7_ec274" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_7_svc.name
  tags                 = { Name = "solor-1njchy-risk-7-ec274" }
}

resource "aws_sagemaker_notebook_instance" "risk_7_nb1874" {
  name          = "solor-1njchy-risk-7-nb1874"
  role_arn      = aws_iam_role.risk_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_7_stack1274" {
  name          = "solor-1njchy-risk-7-stack1274"
  iam_role_arn  = aws_iam_role.risk_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_7_stack674" {
  name          = "solor-1njchy-risk-7-stack674"
  iam_role_arn  = aws_iam_role.risk_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_8_ec286" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_8_svc.name
  tags                 = { Name = "solor-1njchy-risk-8-ec286" }
}

resource "aws_glue_dev_endpoint" "risk_8_glue686" {
  name     = "solor-1njchy-risk-8-glue686"
  role_arn = aws_iam_role.risk_8_glue_role.arn
}

resource "aws_cloudformation_stack" "risk_8_stack1286" {
  name          = "solor-1njchy-risk-8-stack1286"
  iam_role_arn  = aws_iam_role.risk_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "risk_8_stack1886" {
  name          = "solor-1njchy-risk-8-stack1886"
  iam_role_arn  = aws_iam_role.risk_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_9_ec2698" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_9_svc.name
  tags                 = { Name = "solor-1njchy-risk-9-ec2698" }
}

resource "aws_sagemaker_notebook_instance" "risk_9_nb1298" {
  name          = "solor-1njchy-risk-9-nb1298"
  role_arn      = aws_iam_role.risk_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "risk_9_nb98" {
  name          = "solor-1njchy-risk-9-nb98"
  role_arn      = aws_iam_role.risk_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "risk_9_stack1898" {
  name          = "solor-1njchy-risk-9-stack1898"
  iam_role_arn  = aws_iam_role.risk_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "risk_ec21202" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_svc.name
  tags                 = { Name = "solor-1njchy-risk-ec21202" }
}

resource "aws_instance" "risk_ec21802" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_svc.name
  tags                 = { Name = "solor-1njchy-risk-ec21802" }
}

resource "aws_instance" "risk_ec22" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.risk_svc.name
  tags                 = { Name = "solor-1njchy-risk-ec22" }
}

resource "aws_sagemaker_notebook_instance" "risk_nb602" {
  name          = "solor-1njchy-risk-nb602"
  role_arn      = aws_iam_role.risk_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_10_ec2112" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_10_svc.name
  tags                 = { Name = "solor-1njchy-trading-10-ec2112" }
}

resource "aws_instance" "trading_10_ec21312" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_10_svc.name
  tags                 = { Name = "solor-1njchy-trading-10-ec21312" }
}

resource "aws_sagemaker_notebook_instance" "trading_10_nb712" {
  name          = "solor-1njchy-trading-10-nb712"
  role_arn      = aws_iam_role.trading_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_10_stack1912" {
  name          = "solor-1njchy-trading-10-stack1912"
  iam_role_arn  = aws_iam_role.trading_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_11_ec21324" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_11_svc.name
  tags                 = { Name = "solor-1njchy-trading-11-ec21324" }
}

resource "aws_instance" "trading_11_ec21924" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_11_svc.name
  tags                 = { Name = "solor-1njchy-trading-11-ec21924" }
}

resource "aws_instance" "trading_11_ec2724" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_11_svc.name
  tags                 = { Name = "solor-1njchy-trading-11-ec2724" }
}

resource "aws_sagemaker_notebook_instance" "trading_11_nb124" {
  name          = "solor-1njchy-trading-11-nb124"
  role_arn      = aws_iam_role.trading_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_12_ec21336" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_12_svc.name
  tags                 = { Name = "solor-1njchy-trading-12-ec21336" }
}

resource "aws_glue_dev_endpoint" "trading_12_glue136" {
  name     = "solor-1njchy-trading-12-glue136"
  role_arn = aws_iam_role.trading_12_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "trading_12_nb1936" {
  name          = "solor-1njchy-trading-12-nb1936"
  role_arn      = aws_iam_role.trading_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_12_stack736" {
  name          = "solor-1njchy-trading-12-stack736"
  iam_role_arn  = aws_iam_role.trading_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_13_ec21348" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_13_svc.name
  tags                 = { Name = "solor-1njchy-trading-13-ec21348" }
}

resource "aws_instance" "trading_13_ec21948" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_13_svc.name
  tags                 = { Name = "solor-1njchy-trading-13-ec21948" }
}

resource "aws_sagemaker_notebook_instance" "trading_13_nb148" {
  name          = "solor-1njchy-trading-13-nb148"
  role_arn      = aws_iam_role.trading_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_13_nb748" {
  name          = "solor-1njchy-trading-13-nb748"
  role_arn      = aws_iam_role.trading_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_14_ec2760" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_14_svc.name
  tags                 = { Name = "solor-1njchy-trading-14-ec2760" }
}

resource "aws_sagemaker_notebook_instance" "trading_14_nb1960" {
  name          = "solor-1njchy-trading-14-nb1960"
  role_arn      = aws_iam_role.trading_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_14_stack1360" {
  name          = "solor-1njchy-trading-14-stack1360"
  iam_role_arn  = aws_iam_role.trading_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_14_stack160" {
  name          = "solor-1njchy-trading-14-stack160"
  iam_role_arn  = aws_iam_role.trading_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_15_ec2172" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_15_svc.name
  tags                 = { Name = "solor-1njchy-trading-15-ec2172" }
}

resource "aws_instance" "trading_15_ec2772" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_15_svc.name
  tags                 = { Name = "solor-1njchy-trading-15-ec2772" }
}

resource "aws_sagemaker_notebook_instance" "trading_15_nb1972" {
  name          = "solor-1njchy-trading-15-nb1972"
  role_arn      = aws_iam_role.trading_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_15_stack1372" {
  name          = "solor-1njchy-trading-15-stack1372"
  iam_role_arn  = aws_iam_role.trading_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_16_ec2784" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_16_svc.name
  tags                 = { Name = "solor-1njchy-trading-16-ec2784" }
}

resource "aws_sagemaker_notebook_instance" "trading_16_nb1984" {
  name          = "solor-1njchy-trading-16-nb1984"
  role_arn      = aws_iam_role.trading_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_16_stack1384" {
  name          = "solor-1njchy-trading-16-stack1384"
  iam_role_arn  = aws_iam_role.trading_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_16_stack184" {
  name          = "solor-1njchy-trading-16-stack184"
  iam_role_arn  = aws_iam_role.trading_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_17_ec21396" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_17_svc.name
  tags                 = { Name = "solor-1njchy-trading-17-ec21396" }
}

resource "aws_instance" "trading_17_ec2196" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_17_svc.name
  tags                 = { Name = "solor-1njchy-trading-17-ec2196" }
}

resource "aws_glue_dev_endpoint" "trading_17_glue796" {
  name     = "solor-1njchy-trading-17-glue796"
  role_arn = aws_iam_role.trading_17_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "trading_17_nb1996" {
  name          = "solor-1njchy-trading-17-nb1996"
  role_arn      = aws_iam_role.trading_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_18_ec2808" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_18_svc.name
  tags                 = { Name = "solor-1njchy-trading-18-ec2808" }
}

resource "aws_glue_dev_endpoint" "trading_18_glue208" {
  name     = "solor-1njchy-trading-18-glue208"
  role_arn = aws_iam_role.trading_18_glue_role.arn
}

resource "aws_cloudformation_stack" "trading_18_stack1408" {
  name          = "solor-1njchy-trading-18-stack1408"
  iam_role_arn  = aws_iam_role.trading_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "trading_19_glue1420" {
  name     = "solor-1njchy-trading-19-glue1420"
  role_arn = aws_iam_role.trading_19_glue_role.arn
}

resource "aws_glue_dev_endpoint" "trading_19_glue220" {
  name     = "solor-1njchy-trading-19-glue220"
  role_arn = aws_iam_role.trading_19_glue_role.arn
}

resource "aws_glue_dev_endpoint" "trading_19_glue820" {
  name     = "solor-1njchy-trading-19-glue820"
  role_arn = aws_iam_role.trading_19_glue_role.arn
}

resource "aws_instance" "trading_2_ec21216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_2_svc.name
  tags                 = { Name = "solor-1njchy-trading-2-ec21216" }
}

resource "aws_instance" "trading_2_ec216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_2_svc.name
  tags                 = { Name = "solor-1njchy-trading-2-ec216" }
}

resource "aws_instance" "trading_2_ec21816" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_2_svc.name
  tags                 = { Name = "solor-1njchy-trading-2-ec21816" }
}

resource "aws_glue_dev_endpoint" "trading_2_glue616" {
  name     = "solor-1njchy-trading-2-glue616"
  role_arn = aws_iam_role.trading_2_glue_role.arn
}

resource "aws_glue_dev_endpoint" "trading_20_glue1432" {
  name     = "solor-1njchy-trading-20-glue1432"
  role_arn = aws_iam_role.trading_20_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "trading_20_nb232" {
  name          = "solor-1njchy-trading-20-nb232"
  role_arn      = aws_iam_role.trading_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_20_stack832" {
  name          = "solor-1njchy-trading-20-stack832"
  iam_role_arn  = aws_iam_role.trading_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_21_ec2844" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_21_svc.name
  tags                 = { Name = "solor-1njchy-trading-21-ec2844" }
}

resource "aws_sagemaker_notebook_instance" "trading_21_nb1444" {
  name          = "solor-1njchy-trading-21-nb1444"
  role_arn      = aws_iam_role.trading_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_21_nb244" {
  name          = "solor-1njchy-trading-21-nb244"
  role_arn      = aws_iam_role.trading_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_22_ec21456" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_22_svc.name
  tags                 = { Name = "solor-1njchy-trading-22-ec21456" }
}

resource "aws_instance" "trading_22_ec2256" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_22_svc.name
  tags                 = { Name = "solor-1njchy-trading-22-ec2256" }
}

resource "aws_cloudformation_stack" "trading_22_stack856" {
  name          = "solor-1njchy-trading-22-stack856"
  iam_role_arn  = aws_iam_role.trading_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_23_ec21468" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_23_svc.name
  tags                 = { Name = "solor-1njchy-trading-23-ec21468" }
}

resource "aws_sagemaker_notebook_instance" "trading_23_nb868" {
  name          = "solor-1njchy-trading-23-nb868"
  role_arn      = aws_iam_role.trading_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_23_stack268" {
  name          = "solor-1njchy-trading-23-stack268"
  iam_role_arn  = aws_iam_role.trading_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "trading_24_nb1480" {
  name          = "solor-1njchy-trading-24-nb1480"
  role_arn      = aws_iam_role.trading_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_24_stack280" {
  name          = "solor-1njchy-trading-24-stack280"
  iam_role_arn  = aws_iam_role.trading_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_24_stack880" {
  name          = "solor-1njchy-trading-24-stack880"
  iam_role_arn  = aws_iam_role.trading_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_25_ec21492" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_25_svc.name
  tags                 = { Name = "solor-1njchy-trading-25-ec21492" }
}

resource "aws_instance" "trading_25_ec2292" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_25_svc.name
  tags                 = { Name = "solor-1njchy-trading-25-ec2292" }
}

resource "aws_cloudformation_stack" "trading_25_stack892" {
  name          = "solor-1njchy-trading-25-stack892"
  iam_role_arn  = aws_iam_role.trading_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_26_ec21504" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_26_svc.name
  tags                 = { Name = "solor-1njchy-trading-26-ec21504" }
}

resource "aws_instance" "trading_26_ec2304" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_26_svc.name
  tags                 = { Name = "solor-1njchy-trading-26-ec2304" }
}

resource "aws_instance" "trading_26_ec2904" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_26_svc.name
  tags                 = { Name = "solor-1njchy-trading-26-ec2904" }
}

resource "aws_instance" "trading_27_ec21516" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_27_svc.name
  tags                 = { Name = "solor-1njchy-trading-27-ec21516" }
}

resource "aws_instance" "trading_27_ec2316" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_27_svc.name
  tags                 = { Name = "solor-1njchy-trading-27-ec2316" }
}

resource "aws_instance" "trading_27_ec2916" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_27_svc.name
  tags                 = { Name = "solor-1njchy-trading-27-ec2916" }
}

resource "aws_instance" "trading_28_ec21528" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_28_svc.name
  tags                 = { Name = "solor-1njchy-trading-28-ec21528" }
}

resource "aws_instance" "trading_28_ec2928" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_28_svc.name
  tags                 = { Name = "solor-1njchy-trading-28-ec2928" }
}

resource "aws_sagemaker_notebook_instance" "trading_28_nb328" {
  name          = "solor-1njchy-trading-28-nb328"
  role_arn      = aws_iam_role.trading_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_29_nb340" {
  name          = "solor-1njchy-trading-29-nb340"
  role_arn      = aws_iam_role.trading_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_29_stack1540" {
  name          = "solor-1njchy-trading-29-stack1540"
  iam_role_arn  = aws_iam_role.trading_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_29_stack940" {
  name          = "solor-1njchy-trading-29-stack940"
  iam_role_arn  = aws_iam_role.trading_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_3_ec21228" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_3_svc.name
  tags                 = { Name = "solor-1njchy-trading-3-ec21228" }
}

resource "aws_sagemaker_notebook_instance" "trading_3_nb1828" {
  name          = "solor-1njchy-trading-3-nb1828"
  role_arn      = aws_iam_role.trading_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_3_stack28" {
  name          = "solor-1njchy-trading-3-stack28"
  iam_role_arn  = aws_iam_role.trading_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_3_stack628" {
  name          = "solor-1njchy-trading-3-stack628"
  iam_role_arn  = aws_iam_role.trading_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_30_ec2352" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_30_svc.name
  tags                 = { Name = "solor-1njchy-trading-30-ec2352" }
}

resource "aws_instance" "trading_30_ec2952" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_30_svc.name
  tags                 = { Name = "solor-1njchy-trading-30-ec2952" }
}

resource "aws_cloudformation_stack" "trading_30_stack1552" {
  name          = "solor-1njchy-trading-30-stack1552"
  iam_role_arn  = aws_iam_role.trading_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_31_ec21564" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_31_svc.name
  tags                 = { Name = "solor-1njchy-trading-31-ec21564" }
}

resource "aws_instance" "trading_31_ec2964" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_31_svc.name
  tags                 = { Name = "solor-1njchy-trading-31-ec2964" }
}

resource "aws_glue_dev_endpoint" "trading_31_glue364" {
  name     = "solor-1njchy-trading-31-glue364"
  role_arn = aws_iam_role.trading_31_glue_role.arn
}

resource "aws_instance" "trading_32_ec2376" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_32_svc.name
  tags                 = { Name = "solor-1njchy-trading-32-ec2376" }
}

resource "aws_sagemaker_notebook_instance" "trading_32_nb976" {
  name          = "solor-1njchy-trading-32-nb976"
  role_arn      = aws_iam_role.trading_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_32_stack1576" {
  name          = "solor-1njchy-trading-32-stack1576"
  iam_role_arn  = aws_iam_role.trading_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_33_ec21588" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_33_svc.name
  tags                 = { Name = "solor-1njchy-trading-33-ec21588" }
}

resource "aws_instance" "trading_33_ec2988" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_33_svc.name
  tags                 = { Name = "solor-1njchy-trading-33-ec2988" }
}

resource "aws_cloudformation_stack" "trading_33_stack388" {
  name          = "solor-1njchy-trading-33-stack388"
  iam_role_arn  = aws_iam_role.trading_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_34_ec21000" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_34_svc.name
  tags                 = { Name = "solor-1njchy-trading-34-ec21000" }
}

resource "aws_instance" "trading_34_ec21600" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_34_svc.name
  tags                 = { Name = "solor-1njchy-trading-34-ec21600" }
}

resource "aws_instance" "trading_34_ec2400" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_34_svc.name
  tags                 = { Name = "solor-1njchy-trading-34-ec2400" }
}

resource "aws_instance" "trading_35_ec21012" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_35_svc.name
  tags                 = { Name = "solor-1njchy-trading-35-ec21012" }
}

resource "aws_instance" "trading_35_ec21612" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_35_svc.name
  tags                 = { Name = "solor-1njchy-trading-35-ec21612" }
}

resource "aws_instance" "trading_35_ec2412" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_35_svc.name
  tags                 = { Name = "solor-1njchy-trading-35-ec2412" }
}

resource "aws_instance" "trading_36_ec21024" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_36_svc.name
  tags                 = { Name = "solor-1njchy-trading-36-ec21024" }
}

resource "aws_instance" "trading_36_ec21624" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_36_svc.name
  tags                 = { Name = "solor-1njchy-trading-36-ec21624" }
}

resource "aws_instance" "trading_36_ec2424" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_36_svc.name
  tags                 = { Name = "solor-1njchy-trading-36-ec2424" }
}

resource "aws_instance" "trading_37_ec21636" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_37_svc.name
  tags                 = { Name = "solor-1njchy-trading-37-ec21636" }
}

resource "aws_sagemaker_notebook_instance" "trading_37_nb1036" {
  name          = "solor-1njchy-trading-37-nb1036"
  role_arn      = aws_iam_role.trading_37_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_37_nb436" {
  name          = "solor-1njchy-trading-37-nb436"
  role_arn      = aws_iam_role.trading_37_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_38_ec21048" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_38_svc.name
  tags                 = { Name = "solor-1njchy-trading-38-ec21048" }
}

resource "aws_instance" "trading_38_ec21648" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_38_svc.name
  tags                 = { Name = "solor-1njchy-trading-38-ec21648" }
}

resource "aws_glue_dev_endpoint" "trading_38_glue448" {
  name     = "solor-1njchy-trading-38-glue448"
  role_arn = aws_iam_role.trading_38_glue_role.arn
}

resource "aws_instance" "trading_39_ec21060" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_39_svc.name
  tags                 = { Name = "solor-1njchy-trading-39-ec21060" }
}

resource "aws_instance" "trading_39_ec2460" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_39_svc.name
  tags                 = { Name = "solor-1njchy-trading-39-ec2460" }
}

resource "aws_sagemaker_notebook_instance" "trading_39_nb1660" {
  name          = "solor-1njchy-trading-39-nb1660"
  role_arn      = aws_iam_role.trading_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_4_ec21840" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_4_svc.name
  tags                 = { Name = "solor-1njchy-trading-4-ec21840" }
}

resource "aws_instance" "trading_4_ec240" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_4_svc.name
  tags                 = { Name = "solor-1njchy-trading-4-ec240" }
}

resource "aws_instance" "trading_4_ec2640" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_4_svc.name
  tags                 = { Name = "solor-1njchy-trading-4-ec2640" }
}

resource "aws_glue_dev_endpoint" "trading_4_glue1240" {
  name     = "solor-1njchy-trading-4-glue1240"
  role_arn = aws_iam_role.trading_4_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "trading_40_nb1072" {
  name          = "solor-1njchy-trading-40-nb1072"
  role_arn      = aws_iam_role.trading_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_40_nb1672" {
  name          = "solor-1njchy-trading-40-nb1672"
  role_arn      = aws_iam_role.trading_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_40_nb472" {
  name          = "solor-1njchy-trading-40-nb472"
  role_arn      = aws_iam_role.trading_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_41_ec21084" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_41_svc.name
  tags                 = { Name = "solor-1njchy-trading-41-ec21084" }
}

resource "aws_instance" "trading_41_ec21684" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_41_svc.name
  tags                 = { Name = "solor-1njchy-trading-41-ec21684" }
}

resource "aws_instance" "trading_41_ec2484" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_41_svc.name
  tags                 = { Name = "solor-1njchy-trading-41-ec2484" }
}

resource "aws_sagemaker_notebook_instance" "trading_42_nb1096" {
  name          = "solor-1njchy-trading-42-nb1096"
  role_arn      = aws_iam_role.trading_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_42_nb496" {
  name          = "solor-1njchy-trading-42-nb496"
  role_arn      = aws_iam_role.trading_42_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_42_stack1696" {
  name          = "solor-1njchy-trading-42-stack1696"
  iam_role_arn  = aws_iam_role.trading_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "trading_43_nb1108" {
  name          = "solor-1njchy-trading-43-nb1108"
  role_arn      = aws_iam_role.trading_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_43_nb508" {
  name          = "solor-1njchy-trading-43-nb508"
  role_arn      = aws_iam_role.trading_43_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_43_stack1708" {
  name          = "solor-1njchy-trading-43-stack1708"
  iam_role_arn  = aws_iam_role.trading_43_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_44_ec21720" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_44_svc.name
  tags                 = { Name = "solor-1njchy-trading-44-ec21720" }
}

resource "aws_instance" "trading_44_ec2520" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_44_svc.name
  tags                 = { Name = "solor-1njchy-trading-44-ec2520" }
}

resource "aws_cloudformation_stack" "trading_44_stack1120" {
  name          = "solor-1njchy-trading-44-stack1120"
  iam_role_arn  = aws_iam_role.trading_44_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_45_ec21132" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_45_svc.name
  tags                 = { Name = "solor-1njchy-trading-45-ec21132" }
}

resource "aws_instance" "trading_45_ec2532" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_45_svc.name
  tags                 = { Name = "solor-1njchy-trading-45-ec2532" }
}

resource "aws_cloudformation_stack" "trading_45_stack1732" {
  name          = "solor-1njchy-trading-45-stack1732"
  iam_role_arn  = aws_iam_role.trading_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_46_ec21744" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_46_svc.name
  tags                 = { Name = "solor-1njchy-trading-46-ec21744" }
}

resource "aws_sagemaker_notebook_instance" "trading_46_nb544" {
  name          = "solor-1njchy-trading-46-nb544"
  role_arn      = aws_iam_role.trading_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_46_stack1144" {
  name          = "solor-1njchy-trading-46-stack1144"
  iam_role_arn  = aws_iam_role.trading_46_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_47_ec2556" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_47_svc.name
  tags                 = { Name = "solor-1njchy-trading-47-ec2556" }
}

resource "aws_sagemaker_notebook_instance" "trading_47_nb1756" {
  name          = "solor-1njchy-trading-47-nb1756"
  role_arn      = aws_iam_role.trading_47_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_47_stack1156" {
  name          = "solor-1njchy-trading-47-stack1156"
  iam_role_arn  = aws_iam_role.trading_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "trading_48_nb1168" {
  name          = "solor-1njchy-trading-48-nb1168"
  role_arn      = aws_iam_role.trading_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "trading_48_nb1768" {
  name          = "solor-1njchy-trading-48-nb1768"
  role_arn      = aws_iam_role.trading_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_48_stack568" {
  name          = "solor-1njchy-trading-48-stack568"
  iam_role_arn  = aws_iam_role.trading_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_49_ec2580" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_49_svc.name
  tags                 = { Name = "solor-1njchy-trading-49-ec2580" }
}

resource "aws_sagemaker_notebook_instance" "trading_49_nb1780" {
  name          = "solor-1njchy-trading-49-nb1780"
  role_arn      = aws_iam_role.trading_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_49_stack1180" {
  name          = "solor-1njchy-trading-49-stack1180"
  iam_role_arn  = aws_iam_role.trading_49_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_5_ec21252" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_5_svc.name
  tags                 = { Name = "solor-1njchy-trading-5-ec21252" }
}

resource "aws_instance" "trading_5_ec21852" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_5_svc.name
  tags                 = { Name = "solor-1njchy-trading-5-ec21852" }
}

resource "aws_instance" "trading_5_ec2652" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_5_svc.name
  tags                 = { Name = "solor-1njchy-trading-5-ec2652" }
}

resource "aws_cloudformation_stack" "trading_5_stack52" {
  name          = "solor-1njchy-trading-5-stack52"
  iam_role_arn  = aws_iam_role.trading_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_50_ec21792" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_50_svc.name
  tags                 = { Name = "solor-1njchy-trading-50-ec21792" }
}

resource "aws_instance" "trading_50_ec2592" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_50_svc.name
  tags                 = { Name = "solor-1njchy-trading-50-ec2592" }
}

resource "aws_sagemaker_notebook_instance" "trading_50_nb1192" {
  name          = "solor-1njchy-trading-50-nb1192"
  role_arn      = aws_iam_role.trading_50_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_6_ec21264" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_6_svc.name
  tags                 = { Name = "solor-1njchy-trading-6-ec21264" }
}

resource "aws_sagemaker_notebook_instance" "trading_6_nb1864" {
  name          = "solor-1njchy-trading-6-nb1864"
  role_arn      = aws_iam_role.trading_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_6_stack64" {
  name          = "solor-1njchy-trading-6-stack64"
  iam_role_arn  = aws_iam_role.trading_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "trading_6_stack664" {
  name          = "solor-1njchy-trading-6-stack664"
  iam_role_arn  = aws_iam_role.trading_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_7_ec2676" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_7_svc.name
  tags                 = { Name = "solor-1njchy-trading-7-ec2676" }
}

resource "aws_instance" "trading_7_ec276" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_7_svc.name
  tags                 = { Name = "solor-1njchy-trading-7-ec276" }
}

resource "aws_sagemaker_notebook_instance" "trading_7_nb1876" {
  name          = "solor-1njchy-trading-7-nb1876"
  role_arn      = aws_iam_role.trading_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_7_stack1276" {
  name          = "solor-1njchy-trading-7-stack1276"
  iam_role_arn  = aws_iam_role.trading_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_8_ec21288" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_8_svc.name
  tags                 = { Name = "solor-1njchy-trading-8-ec21288" }
}

resource "aws_instance" "trading_8_ec2688" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_8_svc.name
  tags                 = { Name = "solor-1njchy-trading-8-ec2688" }
}

resource "aws_instance" "trading_8_ec288" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_8_svc.name
  tags                 = { Name = "solor-1njchy-trading-8-ec288" }
}

resource "aws_sagemaker_notebook_instance" "trading_8_nb1888" {
  name          = "solor-1njchy-trading-8-nb1888"
  role_arn      = aws_iam_role.trading_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "trading_9_ec21300" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_9_svc.name
  tags                 = { Name = "solor-1njchy-trading-9-ec21300" }
}

resource "aws_instance" "trading_9_ec2700" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_9_svc.name
  tags                 = { Name = "solor-1njchy-trading-9-ec2700" }
}

resource "aws_sagemaker_notebook_instance" "trading_9_nb100" {
  name          = "solor-1njchy-trading-9-nb100"
  role_arn      = aws_iam_role.trading_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_9_stack1900" {
  name          = "solor-1njchy-trading-9-stack1900"
  iam_role_arn  = aws_iam_role.trading_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "trading_ec21804" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_svc.name
  tags                 = { Name = "solor-1njchy-trading-ec21804" }
}

resource "aws_instance" "trading_ec2604" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.trading_svc.name
  tags                 = { Name = "solor-1njchy-trading-ec2604" }
}

resource "aws_sagemaker_notebook_instance" "trading_nb4" {
  name          = "solor-1njchy-trading-nb4"
  role_arn      = aws_iam_role.trading_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "trading_stack1204" {
  name          = "solor-1njchy-trading-stack1204"
  iam_role_arn  = aws_iam_role.trading_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_10_ec21913" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_10_svc.name
  tags                 = { Name = "solor-1njchy-treasury-10-ec21913" }
}

resource "aws_sagemaker_notebook_instance" "treasury_10_nb1313" {
  name          = "solor-1njchy-treasury-10-nb1313"
  role_arn      = aws_iam_role.treasury_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_10_nb713" {
  name          = "solor-1njchy-treasury-10-nb713"
  role_arn      = aws_iam_role.treasury_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_10_stack113" {
  name          = "solor-1njchy-treasury-10-stack113"
  iam_role_arn  = aws_iam_role.treasury_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_11_ec21325" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_11_svc.name
  tags                 = { Name = "solor-1njchy-treasury-11-ec21325" }
}

resource "aws_instance" "treasury_11_ec21925" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_11_svc.name
  tags                 = { Name = "solor-1njchy-treasury-11-ec21925" }
}

resource "aws_instance" "treasury_11_ec2725" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_11_svc.name
  tags                 = { Name = "solor-1njchy-treasury-11-ec2725" }
}

resource "aws_cloudformation_stack" "treasury_11_stack125" {
  name          = "solor-1njchy-treasury-11-stack125"
  iam_role_arn  = aws_iam_role.treasury_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_12_ec21337" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_12_svc.name
  tags                 = { Name = "solor-1njchy-treasury-12-ec21337" }
}

resource "aws_instance" "treasury_12_ec2737" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_12_svc.name
  tags                 = { Name = "solor-1njchy-treasury-12-ec2737" }
}

resource "aws_glue_dev_endpoint" "treasury_12_glue1937" {
  name     = "solor-1njchy-treasury-12-glue1937"
  role_arn = aws_iam_role.treasury_12_glue_role.arn
}

resource "aws_cloudformation_stack" "treasury_12_stack137" {
  name          = "solor-1njchy-treasury-12-stack137"
  iam_role_arn  = aws_iam_role.treasury_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_13_ec21349" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_13_svc.name
  tags                 = { Name = "solor-1njchy-treasury-13-ec21349" }
}

resource "aws_instance" "treasury_13_ec2149" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_13_svc.name
  tags                 = { Name = "solor-1njchy-treasury-13-ec2149" }
}

resource "aws_instance" "treasury_13_ec2749" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_13_svc.name
  tags                 = { Name = "solor-1njchy-treasury-13-ec2749" }
}

resource "aws_sagemaker_notebook_instance" "treasury_13_nb1949" {
  name          = "solor-1njchy-treasury-13-nb1949"
  role_arn      = aws_iam_role.treasury_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_14_ec21961" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_14_svc.name
  tags                 = { Name = "solor-1njchy-treasury-14-ec21961" }
}

resource "aws_sagemaker_notebook_instance" "treasury_14_nb161" {
  name          = "solor-1njchy-treasury-14-nb161"
  role_arn      = aws_iam_role.treasury_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_14_stack1361" {
  name          = "solor-1njchy-treasury-14-stack1361"
  iam_role_arn  = aws_iam_role.treasury_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_14_stack761" {
  name          = "solor-1njchy-treasury-14-stack761"
  iam_role_arn  = aws_iam_role.treasury_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_15_ec2173" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_15_svc.name
  tags                 = { Name = "solor-1njchy-treasury-15-ec2173" }
}

resource "aws_instance" "treasury_15_ec21973" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_15_svc.name
  tags                 = { Name = "solor-1njchy-treasury-15-ec21973" }
}

resource "aws_glue_dev_endpoint" "treasury_15_glue1373" {
  name     = "solor-1njchy-treasury-15-glue1373"
  role_arn = aws_iam_role.treasury_15_glue_role.arn
}

resource "aws_cloudformation_stack" "treasury_15_stack773" {
  name          = "solor-1njchy-treasury-15-stack773"
  iam_role_arn  = aws_iam_role.treasury_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_16_ec21385" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_16_svc.name
  tags                 = { Name = "solor-1njchy-treasury-16-ec21385" }
}

resource "aws_instance" "treasury_16_ec2785" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_16_svc.name
  tags                 = { Name = "solor-1njchy-treasury-16-ec2785" }
}

resource "aws_sagemaker_notebook_instance" "treasury_16_nb185" {
  name          = "solor-1njchy-treasury-16-nb185"
  role_arn      = aws_iam_role.treasury_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_16_stack1985" {
  name          = "solor-1njchy-treasury-16-stack1985"
  iam_role_arn  = aws_iam_role.treasury_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_17_ec21997" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_17_svc.name
  tags                 = { Name = "solor-1njchy-treasury-17-ec21997" }
}

resource "aws_sagemaker_notebook_instance" "treasury_17_nb197" {
  name          = "solor-1njchy-treasury-17-nb197"
  role_arn      = aws_iam_role.treasury_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_17_stack1397" {
  name          = "solor-1njchy-treasury-17-stack1397"
  iam_role_arn  = aws_iam_role.treasury_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_17_stack797" {
  name          = "solor-1njchy-treasury-17-stack797"
  iam_role_arn  = aws_iam_role.treasury_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_18_ec21409" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_18_svc.name
  tags                 = { Name = "solor-1njchy-treasury-18-ec21409" }
}

resource "aws_instance" "treasury_18_ec2209" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_18_svc.name
  tags                 = { Name = "solor-1njchy-treasury-18-ec2209" }
}

resource "aws_cloudformation_stack" "treasury_18_stack809" {
  name          = "solor-1njchy-treasury-18-stack809"
  iam_role_arn  = aws_iam_role.treasury_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_19_ec2821" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_19_svc.name
  tags                 = { Name = "solor-1njchy-treasury-19-ec2821" }
}

resource "aws_cloudformation_stack" "treasury_19_stack1421" {
  name          = "solor-1njchy-treasury-19-stack1421"
  iam_role_arn  = aws_iam_role.treasury_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_19_stack221" {
  name          = "solor-1njchy-treasury-19-stack221"
  iam_role_arn  = aws_iam_role.treasury_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_2_ec217" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_2_svc.name
  tags                 = { Name = "solor-1njchy-treasury-2-ec217" }
}

resource "aws_instance" "treasury_2_ec2617" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_2_svc.name
  tags                 = { Name = "solor-1njchy-treasury-2-ec2617" }
}

resource "aws_sagemaker_notebook_instance" "treasury_2_nb1217" {
  name          = "solor-1njchy-treasury-2-nb1217"
  role_arn      = aws_iam_role.treasury_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_2_nb1817" {
  name          = "solor-1njchy-treasury-2-nb1817"
  role_arn      = aws_iam_role.treasury_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_20_ec2233" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_20_svc.name
  tags                 = { Name = "solor-1njchy-treasury-20-ec2233" }
}

resource "aws_instance" "treasury_20_ec2833" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_20_svc.name
  tags                 = { Name = "solor-1njchy-treasury-20-ec2833" }
}

resource "aws_sagemaker_notebook_instance" "treasury_20_nb1433" {
  name          = "solor-1njchy-treasury-20-nb1433"
  role_arn      = aws_iam_role.treasury_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_21_ec21445" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_21_svc.name
  tags                 = { Name = "solor-1njchy-treasury-21-ec21445" }
}

resource "aws_instance" "treasury_21_ec2845" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_21_svc.name
  tags                 = { Name = "solor-1njchy-treasury-21-ec2845" }
}

resource "aws_cloudformation_stack" "treasury_21_stack245" {
  name          = "solor-1njchy-treasury-21-stack245"
  iam_role_arn  = aws_iam_role.treasury_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "treasury_22_glue257" {
  name     = "solor-1njchy-treasury-22-glue257"
  role_arn = aws_iam_role.treasury_22_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "treasury_22_nb1457" {
  name          = "solor-1njchy-treasury-22-nb1457"
  role_arn      = aws_iam_role.treasury_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_22_stack857" {
  name          = "solor-1njchy-treasury-22-stack857"
  iam_role_arn  = aws_iam_role.treasury_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_23_ec21469" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_23_svc.name
  tags                 = { Name = "solor-1njchy-treasury-23-ec21469" }
}

resource "aws_instance" "treasury_23_ec2269" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_23_svc.name
  tags                 = { Name = "solor-1njchy-treasury-23-ec2269" }
}

resource "aws_instance" "treasury_23_ec2869" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_23_svc.name
  tags                 = { Name = "solor-1njchy-treasury-23-ec2869" }
}

resource "aws_instance" "treasury_24_ec21481" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_24_svc.name
  tags                 = { Name = "solor-1njchy-treasury-24-ec21481" }
}

resource "aws_instance" "treasury_24_ec2281" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_24_svc.name
  tags                 = { Name = "solor-1njchy-treasury-24-ec2281" }
}

resource "aws_instance" "treasury_24_ec2881" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_24_svc.name
  tags                 = { Name = "solor-1njchy-treasury-24-ec2881" }
}

resource "aws_instance" "treasury_25_ec21493" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_25_svc.name
  tags                 = { Name = "solor-1njchy-treasury-25-ec21493" }
}

resource "aws_instance" "treasury_25_ec2293" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_25_svc.name
  tags                 = { Name = "solor-1njchy-treasury-25-ec2293" }
}

resource "aws_cloudformation_stack" "treasury_25_stack893" {
  name          = "solor-1njchy-treasury-25-stack893"
  iam_role_arn  = aws_iam_role.treasury_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_26_ec21505" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_26_svc.name
  tags                 = { Name = "solor-1njchy-treasury-26-ec21505" }
}

resource "aws_instance" "treasury_26_ec2905" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_26_svc.name
  tags                 = { Name = "solor-1njchy-treasury-26-ec2905" }
}

resource "aws_glue_dev_endpoint" "treasury_26_glue305" {
  name     = "solor-1njchy-treasury-26-glue305"
  role_arn = aws_iam_role.treasury_26_glue_role.arn
}

resource "aws_instance" "treasury_27_ec21517" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_27_svc.name
  tags                 = { Name = "solor-1njchy-treasury-27-ec21517" }
}

resource "aws_cloudformation_stack" "treasury_27_stack317" {
  name          = "solor-1njchy-treasury-27-stack317"
  iam_role_arn  = aws_iam_role.treasury_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_27_stack917" {
  name          = "solor-1njchy-treasury-27-stack917"
  iam_role_arn  = aws_iam_role.treasury_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_28_ec2329" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_28_svc.name
  tags                 = { Name = "solor-1njchy-treasury-28-ec2329" }
}

resource "aws_sagemaker_notebook_instance" "treasury_28_nb1529" {
  name          = "solor-1njchy-treasury-28-nb1529"
  role_arn      = aws_iam_role.treasury_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_28_stack929" {
  name          = "solor-1njchy-treasury-28-stack929"
  iam_role_arn  = aws_iam_role.treasury_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_29_ec21541" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_29_svc.name
  tags                 = { Name = "solor-1njchy-treasury-29-ec21541" }
}

resource "aws_instance" "treasury_29_ec2341" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_29_svc.name
  tags                 = { Name = "solor-1njchy-treasury-29-ec2341" }
}

resource "aws_sagemaker_notebook_instance" "treasury_29_nb941" {
  name          = "solor-1njchy-treasury-29-nb941"
  role_arn      = aws_iam_role.treasury_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_3_ec21829" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_3_svc.name
  tags                 = { Name = "solor-1njchy-treasury-3-ec21829" }
}

resource "aws_glue_dev_endpoint" "treasury_3_glue629" {
  name     = "solor-1njchy-treasury-3-glue629"
  role_arn = aws_iam_role.treasury_3_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "treasury_3_nb1229" {
  name          = "solor-1njchy-treasury-3-nb1229"
  role_arn      = aws_iam_role.treasury_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_3_nb29" {
  name          = "solor-1njchy-treasury-3-nb29"
  role_arn      = aws_iam_role.treasury_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "treasury_30_glue1553" {
  name     = "solor-1njchy-treasury-30-glue1553"
  role_arn = aws_iam_role.treasury_30_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "treasury_30_nb353" {
  name          = "solor-1njchy-treasury-30-nb353"
  role_arn      = aws_iam_role.treasury_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_30_stack953" {
  name          = "solor-1njchy-treasury-30-stack953"
  iam_role_arn  = aws_iam_role.treasury_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_31_ec21565" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_31_svc.name
  tags                 = { Name = "solor-1njchy-treasury-31-ec21565" }
}

resource "aws_instance" "treasury_31_ec2365" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_31_svc.name
  tags                 = { Name = "solor-1njchy-treasury-31-ec2365" }
}

resource "aws_instance" "treasury_31_ec2965" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_31_svc.name
  tags                 = { Name = "solor-1njchy-treasury-31-ec2965" }
}

resource "aws_instance" "treasury_32_ec2377" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_32_svc.name
  tags                 = { Name = "solor-1njchy-treasury-32-ec2377" }
}

resource "aws_glue_dev_endpoint" "treasury_32_glue1577" {
  name     = "solor-1njchy-treasury-32-glue1577"
  role_arn = aws_iam_role.treasury_32_glue_role.arn
}

resource "aws_cloudformation_stack" "treasury_32_stack977" {
  name          = "solor-1njchy-treasury-32-stack977"
  iam_role_arn  = aws_iam_role.treasury_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_33_ec21589" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_33_svc.name
  tags                 = { Name = "solor-1njchy-treasury-33-ec21589" }
}

resource "aws_sagemaker_notebook_instance" "treasury_33_nb989" {
  name          = "solor-1njchy-treasury-33-nb989"
  role_arn      = aws_iam_role.treasury_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_33_stack389" {
  name          = "solor-1njchy-treasury-33-stack389"
  iam_role_arn  = aws_iam_role.treasury_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_34_ec21001" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_34_svc.name
  tags                 = { Name = "solor-1njchy-treasury-34-ec21001" }
}

resource "aws_sagemaker_notebook_instance" "treasury_34_nb1601" {
  name          = "solor-1njchy-treasury-34-nb1601"
  role_arn      = aws_iam_role.treasury_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_34_nb401" {
  name          = "solor-1njchy-treasury-34-nb401"
  role_arn      = aws_iam_role.treasury_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_35_ec21013" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_35_svc.name
  tags                 = { Name = "solor-1njchy-treasury-35-ec21013" }
}

resource "aws_sagemaker_notebook_instance" "treasury_35_nb1613" {
  name          = "solor-1njchy-treasury-35-nb1613"
  role_arn      = aws_iam_role.treasury_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_35_nb413" {
  name          = "solor-1njchy-treasury-35-nb413"
  role_arn      = aws_iam_role.treasury_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_36_ec21625" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_36_svc.name
  tags                 = { Name = "solor-1njchy-treasury-36-ec21625" }
}

resource "aws_instance" "treasury_36_ec2425" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_36_svc.name
  tags                 = { Name = "solor-1njchy-treasury-36-ec2425" }
}

resource "aws_cloudformation_stack" "treasury_36_stack1025" {
  name          = "solor-1njchy-treasury-36-stack1025"
  iam_role_arn  = aws_iam_role.treasury_36_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_37_ec21037" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_37_svc.name
  tags                 = { Name = "solor-1njchy-treasury-37-ec21037" }
}

resource "aws_instance" "treasury_37_ec21637" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_37_svc.name
  tags                 = { Name = "solor-1njchy-treasury-37-ec21637" }
}

resource "aws_cloudformation_stack" "treasury_37_stack437" {
  name          = "solor-1njchy-treasury-37-stack437"
  iam_role_arn  = aws_iam_role.treasury_37_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_38_ec2449" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_38_svc.name
  tags                 = { Name = "solor-1njchy-treasury-38-ec2449" }
}

resource "aws_sagemaker_notebook_instance" "treasury_38_nb1649" {
  name          = "solor-1njchy-treasury-38-nb1649"
  role_arn      = aws_iam_role.treasury_38_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_38_stack1049" {
  name          = "solor-1njchy-treasury-38-stack1049"
  iam_role_arn  = aws_iam_role.treasury_38_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_39_ec21061" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_39_svc.name
  tags                 = { Name = "solor-1njchy-treasury-39-ec21061" }
}

resource "aws_sagemaker_notebook_instance" "treasury_39_nb1661" {
  name          = "solor-1njchy-treasury-39-nb1661"
  role_arn      = aws_iam_role.treasury_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_39_nb461" {
  name          = "solor-1njchy-treasury-39-nb461"
  role_arn      = aws_iam_role.treasury_39_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_4_nb1841" {
  name          = "solor-1njchy-treasury-4-nb1841"
  role_arn      = aws_iam_role.treasury_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_4_stack1241" {
  name          = "solor-1njchy-treasury-4-stack1241"
  iam_role_arn  = aws_iam_role.treasury_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_4_stack41" {
  name          = "solor-1njchy-treasury-4-stack41"
  iam_role_arn  = aws_iam_role.treasury_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_4_stack641" {
  name          = "solor-1njchy-treasury-4-stack641"
  iam_role_arn  = aws_iam_role.treasury_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_40_ec21073" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_40_svc.name
  tags                 = { Name = "solor-1njchy-treasury-40-ec21073" }
}

resource "aws_instance" "treasury_40_ec2473" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_40_svc.name
  tags                 = { Name = "solor-1njchy-treasury-40-ec2473" }
}

resource "aws_sagemaker_notebook_instance" "treasury_40_nb1673" {
  name          = "solor-1njchy-treasury-40-nb1673"
  role_arn      = aws_iam_role.treasury_40_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_41_ec21085" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_41_svc.name
  tags                 = { Name = "solor-1njchy-treasury-41-ec21085" }
}

resource "aws_sagemaker_notebook_instance" "treasury_41_nb1685" {
  name          = "solor-1njchy-treasury-41-nb1685"
  role_arn      = aws_iam_role.treasury_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "treasury_41_nb485" {
  name          = "solor-1njchy-treasury-41-nb485"
  role_arn      = aws_iam_role.treasury_41_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_42_stack1097" {
  name          = "solor-1njchy-treasury-42-stack1097"
  iam_role_arn  = aws_iam_role.treasury_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_42_stack1697" {
  name          = "solor-1njchy-treasury-42-stack1697"
  iam_role_arn  = aws_iam_role.treasury_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_42_stack497" {
  name          = "solor-1njchy-treasury-42-stack497"
  iam_role_arn  = aws_iam_role.treasury_42_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_43_ec21109" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_43_svc.name
  tags                 = { Name = "solor-1njchy-treasury-43-ec21109" }
}

resource "aws_instance" "treasury_43_ec21709" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_43_svc.name
  tags                 = { Name = "solor-1njchy-treasury-43-ec21709" }
}

resource "aws_instance" "treasury_43_ec2509" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_43_svc.name
  tags                 = { Name = "solor-1njchy-treasury-43-ec2509" }
}

resource "aws_instance" "treasury_44_ec21121" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_44_svc.name
  tags                 = { Name = "solor-1njchy-treasury-44-ec21121" }
}

resource "aws_instance" "treasury_44_ec21721" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_44_svc.name
  tags                 = { Name = "solor-1njchy-treasury-44-ec21721" }
}

resource "aws_glue_dev_endpoint" "treasury_44_glue521" {
  name     = "solor-1njchy-treasury-44-glue521"
  role_arn = aws_iam_role.treasury_44_glue_role.arn
}

resource "aws_instance" "treasury_45_ec2533" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_45_svc.name
  tags                 = { Name = "solor-1njchy-treasury-45-ec2533" }
}

resource "aws_sagemaker_notebook_instance" "treasury_45_nb1133" {
  name          = "solor-1njchy-treasury-45-nb1133"
  role_arn      = aws_iam_role.treasury_45_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_45_stack1733" {
  name          = "solor-1njchy-treasury-45-stack1733"
  iam_role_arn  = aws_iam_role.treasury_45_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_46_ec2545" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_46_svc.name
  tags                 = { Name = "solor-1njchy-treasury-46-ec2545" }
}

resource "aws_glue_dev_endpoint" "treasury_46_glue1145" {
  name     = "solor-1njchy-treasury-46-glue1145"
  role_arn = aws_iam_role.treasury_46_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "treasury_46_nb1745" {
  name          = "solor-1njchy-treasury-46-nb1745"
  role_arn      = aws_iam_role.treasury_46_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_47_ec2557" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_47_svc.name
  tags                 = { Name = "solor-1njchy-treasury-47-ec2557" }
}

resource "aws_cloudformation_stack" "treasury_47_stack1157" {
  name          = "solor-1njchy-treasury-47-stack1157"
  iam_role_arn  = aws_iam_role.treasury_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_47_stack1757" {
  name          = "solor-1njchy-treasury-47-stack1757"
  iam_role_arn  = aws_iam_role.treasury_47_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "treasury_48_glue1769" {
  name     = "solor-1njchy-treasury-48-glue1769"
  role_arn = aws_iam_role.treasury_48_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "treasury_48_nb569" {
  name          = "solor-1njchy-treasury-48-nb569"
  role_arn      = aws_iam_role.treasury_48_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_48_stack1169" {
  name          = "solor-1njchy-treasury-48-stack1169"
  iam_role_arn  = aws_iam_role.treasury_48_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_49_ec21181" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_49_svc.name
  tags                 = { Name = "solor-1njchy-treasury-49-ec21181" }
}

resource "aws_instance" "treasury_49_ec2581" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_49_svc.name
  tags                 = { Name = "solor-1njchy-treasury-49-ec2581" }
}

resource "aws_sagemaker_notebook_instance" "treasury_49_nb1781" {
  name          = "solor-1njchy-treasury-49-nb1781"
  role_arn      = aws_iam_role.treasury_49_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_5_ec21253" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_5_svc.name
  tags                 = { Name = "solor-1njchy-treasury-5-ec21253" }
}

resource "aws_glue_dev_endpoint" "treasury_5_glue1853" {
  name     = "solor-1njchy-treasury-5-glue1853"
  role_arn = aws_iam_role.treasury_5_glue_role.arn
}

resource "aws_cloudformation_stack" "treasury_5_stack53" {
  name          = "solor-1njchy-treasury-5-stack53"
  iam_role_arn  = aws_iam_role.treasury_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_5_stack653" {
  name          = "solor-1njchy-treasury-5-stack653"
  iam_role_arn  = aws_iam_role.treasury_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_50_ec21193" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_50_svc.name
  tags                 = { Name = "solor-1njchy-treasury-50-ec21193" }
}

resource "aws_instance" "treasury_50_ec21793" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_50_svc.name
  tags                 = { Name = "solor-1njchy-treasury-50-ec21793" }
}

resource "aws_glue_dev_endpoint" "treasury_50_glue593" {
  name     = "solor-1njchy-treasury-50-glue593"
  role_arn = aws_iam_role.treasury_50_glue_role.arn
}

resource "aws_instance" "treasury_6_ec21865" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_6_svc.name
  tags                 = { Name = "solor-1njchy-treasury-6-ec21865" }
}

resource "aws_glue_dev_endpoint" "treasury_6_glue1265" {
  name     = "solor-1njchy-treasury-6-glue1265"
  role_arn = aws_iam_role.treasury_6_glue_role.arn
}

resource "aws_glue_dev_endpoint" "treasury_6_glue665" {
  name     = "solor-1njchy-treasury-6-glue665"
  role_arn = aws_iam_role.treasury_6_glue_role.arn
}

resource "aws_cloudformation_stack" "treasury_6_stack65" {
  name          = "solor-1njchy-treasury-6-stack65"
  iam_role_arn  = aws_iam_role.treasury_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_7_ec21277" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_7_svc.name
  tags                 = { Name = "solor-1njchy-treasury-7-ec21277" }
}

resource "aws_instance" "treasury_7_ec21877" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_7_svc.name
  tags                 = { Name = "solor-1njchy-treasury-7-ec21877" }
}

resource "aws_instance" "treasury_7_ec2677" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_7_svc.name
  tags                 = { Name = "solor-1njchy-treasury-7-ec2677" }
}

resource "aws_sagemaker_notebook_instance" "treasury_7_nb77" {
  name          = "solor-1njchy-treasury-7-nb77"
  role_arn      = aws_iam_role.treasury_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "treasury_8_ec2689" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_8_svc.name
  tags                 = { Name = "solor-1njchy-treasury-8-ec2689" }
}

resource "aws_sagemaker_notebook_instance" "treasury_8_nb89" {
  name          = "solor-1njchy-treasury-8-nb89"
  role_arn      = aws_iam_role.treasury_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_8_stack1289" {
  name          = "solor-1njchy-treasury-8-stack1289"
  iam_role_arn  = aws_iam_role.treasury_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "treasury_8_stack1889" {
  name          = "solor-1njchy-treasury-8-stack1889"
  iam_role_arn  = aws_iam_role.treasury_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_9_ec2101" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_9_svc.name
  tags                 = { Name = "solor-1njchy-treasury-9-ec2101" }
}

resource "aws_instance" "treasury_9_ec21901" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_9_svc.name
  tags                 = { Name = "solor-1njchy-treasury-9-ec21901" }
}

resource "aws_instance" "treasury_9_ec2701" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_9_svc.name
  tags                 = { Name = "solor-1njchy-treasury-9-ec2701" }
}

resource "aws_cloudformation_stack" "treasury_9_stack1301" {
  name          = "solor-1njchy-treasury-9-stack1301"
  iam_role_arn  = aws_iam_role.treasury_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "treasury_ec21205" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_svc.name
  tags                 = { Name = "solor-1njchy-treasury-ec21205" }
}

resource "aws_instance" "treasury_ec21805" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.treasury_svc.name
  tags                 = { Name = "solor-1njchy-treasury-ec21805" }
}

resource "aws_sagemaker_notebook_instance" "treasury_nb5" {
  name          = "solor-1njchy-treasury-nb5"
  role_arn      = aws_iam_role.treasury_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "treasury_stack605" {
  name          = "solor-1njchy-treasury-stack605"
  iam_role_arn  = aws_iam_role.treasury_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}
