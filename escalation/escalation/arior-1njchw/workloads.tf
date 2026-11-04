data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "audit_10_ec2950" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_10_svc.name
  tags                 = { Name = "arior-1njchw-audit-10-ec2950" }
}

resource "aws_sagemaker_notebook_instance" "audit_10_nb118" {
  name          = "arior-1njchw-audit-10-nb118"
  role_arn      = aws_iam_role.audit_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "audit_10_nb534" {
  name          = "arior-1njchw-audit-10-nb534"
  role_arn      = aws_iam_role.audit_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "audit_11_glue130" {
  name     = "arior-1njchw-audit-11-glue130"
  role_arn = aws_iam_role.audit_11_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_11_nb962" {
  name          = "arior-1njchw-audit-11-nb962"
  role_arn      = aws_iam_role.audit_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "audit_11_stack546" {
  name          = "arior-1njchw-audit-11-stack546"
  iam_role_arn  = aws_iam_role.audit_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_12_ec2558" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_12_svc.name
  tags                 = { Name = "arior-1njchw-audit-12-ec2558" }
}

resource "aws_instance" "audit_12_ec2974" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_12_svc.name
  tags                 = { Name = "arior-1njchw-audit-12-ec2974" }
}

resource "aws_glue_dev_endpoint" "audit_12_glue142" {
  name     = "arior-1njchw-audit-12-glue142"
  role_arn = aws_iam_role.audit_12_glue_role.arn
}

resource "aws_instance" "audit_13_ec2154" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_13_svc.name
  tags                 = { Name = "arior-1njchw-audit-13-ec2154" }
}

resource "aws_sagemaker_notebook_instance" "audit_13_nb570" {
  name          = "arior-1njchw-audit-13-nb570"
  role_arn      = aws_iam_role.audit_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "audit_13_nb986" {
  name          = "arior-1njchw-audit-13-nb986"
  role_arn      = aws_iam_role.audit_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_14_ec2998" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_14_svc.name
  tags                 = { Name = "arior-1njchw-audit-14-ec2998" }
}

resource "aws_cloudformation_stack" "audit_14_stack166" {
  name          = "arior-1njchw-audit-14-stack166"
  iam_role_arn  = aws_iam_role.audit_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "audit_14_stack582" {
  name          = "arior-1njchw-audit-14-stack582"
  iam_role_arn  = aws_iam_role.audit_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_15_ec2178" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_15_svc.name
  tags                 = { Name = "arior-1njchw-audit-15-ec2178" }
}

resource "aws_glue_dev_endpoint" "audit_15_glue594" {
  name     = "arior-1njchw-audit-15-glue594"
  role_arn = aws_iam_role.audit_15_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_16_nb190" {
  name          = "arior-1njchw-audit-16-nb190"
  role_arn      = aws_iam_role.audit_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "audit_16_nb606" {
  name          = "arior-1njchw-audit-16-nb606"
  role_arn      = aws_iam_role.audit_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_17_ec2202" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_17_svc.name
  tags                 = { Name = "arior-1njchw-audit-17-ec2202" }
}

resource "aws_instance" "audit_17_ec2618" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_17_svc.name
  tags                 = { Name = "arior-1njchw-audit-17-ec2618" }
}

resource "aws_glue_dev_endpoint" "audit_18_glue214" {
  name     = "arior-1njchw-audit-18-glue214"
  role_arn = aws_iam_role.audit_18_glue_role.arn
}

resource "aws_cloudformation_stack" "audit_18_stack630" {
  name          = "arior-1njchw-audit-18-stack630"
  iam_role_arn  = aws_iam_role.audit_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_19_ec2226" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_19_svc.name
  tags                 = { Name = "arior-1njchw-audit-19-ec2226" }
}

resource "aws_sagemaker_notebook_instance" "audit_19_nb642" {
  name          = "arior-1njchw-audit-19-nb642"
  role_arn      = aws_iam_role.audit_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "audit_2_glue22" {
  name     = "arior-1njchw-audit-2-glue22"
  role_arn = aws_iam_role.audit_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_2_nb438" {
  name          = "arior-1njchw-audit-2-nb438"
  role_arn      = aws_iam_role.audit_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "audit_2_nb854" {
  name          = "arior-1njchw-audit-2-nb854"
  role_arn      = aws_iam_role.audit_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_20_ec2238" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_20_svc.name
  tags                 = { Name = "arior-1njchw-audit-20-ec2238" }
}

resource "aws_sagemaker_notebook_instance" "audit_20_nb654" {
  name          = "arior-1njchw-audit-20-nb654"
  role_arn      = aws_iam_role.audit_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_21_ec2250" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_21_svc.name
  tags                 = { Name = "arior-1njchw-audit-21-ec2250" }
}

resource "aws_cloudformation_stack" "audit_21_stack666" {
  name          = "arior-1njchw-audit-21-stack666"
  iam_role_arn  = aws_iam_role.audit_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_22_ec2262" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_22_svc.name
  tags                 = { Name = "arior-1njchw-audit-22-ec2262" }
}

resource "aws_instance" "audit_22_ec2678" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_22_svc.name
  tags                 = { Name = "arior-1njchw-audit-22-ec2678" }
}

resource "aws_sagemaker_notebook_instance" "audit_23_nb274" {
  name          = "arior-1njchw-audit-23-nb274"
  role_arn      = aws_iam_role.audit_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "audit_23_stack690" {
  name          = "arior-1njchw-audit-23-stack690"
  iam_role_arn  = aws_iam_role.audit_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_24_ec2702" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_24_svc.name
  tags                 = { Name = "arior-1njchw-audit-24-ec2702" }
}

resource "aws_sagemaker_notebook_instance" "audit_24_nb286" {
  name          = "arior-1njchw-audit-24-nb286"
  role_arn      = aws_iam_role.audit_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_25_ec2298" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_25_svc.name
  tags                 = { Name = "arior-1njchw-audit-25-ec2298" }
}

resource "aws_cloudformation_stack" "audit_25_stack714" {
  name          = "arior-1njchw-audit-25-stack714"
  iam_role_arn  = aws_iam_role.audit_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "audit_26_glue310" {
  name     = "arior-1njchw-audit-26-glue310"
  role_arn = aws_iam_role.audit_26_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_26_nb726" {
  name          = "arior-1njchw-audit-26-nb726"
  role_arn      = aws_iam_role.audit_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_27_ec2322" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_27_svc.name
  tags                 = { Name = "arior-1njchw-audit-27-ec2322" }
}

resource "aws_cloudformation_stack" "audit_27_stack738" {
  name          = "arior-1njchw-audit-27-stack738"
  iam_role_arn  = aws_iam_role.audit_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_28_ec2334" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_28_svc.name
  tags                 = { Name = "arior-1njchw-audit-28-ec2334" }
}

resource "aws_instance" "audit_28_ec2750" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_28_svc.name
  tags                 = { Name = "arior-1njchw-audit-28-ec2750" }
}

resource "aws_instance" "audit_29_ec2762" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_29_svc.name
  tags                 = { Name = "arior-1njchw-audit-29-ec2762" }
}

resource "aws_glue_dev_endpoint" "audit_29_glue346" {
  name     = "arior-1njchw-audit-29-glue346"
  role_arn = aws_iam_role.audit_29_glue_role.arn
}

resource "aws_instance" "audit_3_ec234" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_3_svc.name
  tags                 = { Name = "arior-1njchw-audit-3-ec234" }
}

resource "aws_instance" "audit_3_ec2450" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_3_svc.name
  tags                 = { Name = "arior-1njchw-audit-3-ec2450" }
}

resource "aws_glue_dev_endpoint" "audit_3_glue866" {
  name     = "arior-1njchw-audit-3-glue866"
  role_arn = aws_iam_role.audit_3_glue_role.arn
}

resource "aws_instance" "audit_30_ec2774" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_30_svc.name
  tags                 = { Name = "arior-1njchw-audit-30-ec2774" }
}

resource "aws_cloudformation_stack" "audit_30_stack358" {
  name          = "arior-1njchw-audit-30-stack358"
  iam_role_arn  = aws_iam_role.audit_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_31_ec2786" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_31_svc.name
  tags                 = { Name = "arior-1njchw-audit-31-ec2786" }
}

resource "aws_sagemaker_notebook_instance" "audit_31_nb370" {
  name          = "arior-1njchw-audit-31-nb370"
  role_arn      = aws_iam_role.audit_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_32_ec2798" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_32_svc.name
  tags                 = { Name = "arior-1njchw-audit-32-ec2798" }
}

resource "aws_sagemaker_notebook_instance" "audit_32_nb382" {
  name          = "arior-1njchw-audit-32-nb382"
  role_arn      = aws_iam_role.audit_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_33_ec2810" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_33_svc.name
  tags                 = { Name = "arior-1njchw-audit-33-ec2810" }
}

resource "aws_cloudformation_stack" "audit_33_stack394" {
  name          = "arior-1njchw-audit-33-stack394"
  iam_role_arn  = aws_iam_role.audit_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_34_ec2822" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_34_svc.name
  tags                 = { Name = "arior-1njchw-audit-34-ec2822" }
}

resource "aws_glue_dev_endpoint" "audit_34_glue406" {
  name     = "arior-1njchw-audit-34-glue406"
  role_arn = aws_iam_role.audit_34_glue_role.arn
}

resource "aws_instance" "audit_4_ec2462" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_4_svc.name
  tags                 = { Name = "arior-1njchw-audit-4-ec2462" }
}

resource "aws_instance" "audit_4_ec2878" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_4_svc.name
  tags                 = { Name = "arior-1njchw-audit-4-ec2878" }
}

resource "aws_sagemaker_notebook_instance" "audit_4_nb46" {
  name          = "arior-1njchw-audit-4-nb46"
  role_arn      = aws_iam_role.audit_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "audit_5_ec258" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_5_svc.name
  tags                 = { Name = "arior-1njchw-audit-5-ec258" }
}

resource "aws_glue_dev_endpoint" "audit_5_glue474" {
  name     = "arior-1njchw-audit-5-glue474"
  role_arn = aws_iam_role.audit_5_glue_role.arn
}

resource "aws_cloudformation_stack" "audit_5_stack890" {
  name          = "arior-1njchw-audit-5-stack890"
  iam_role_arn  = aws_iam_role.audit_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_6_ec2486" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_6_svc.name
  tags                 = { Name = "arior-1njchw-audit-6-ec2486" }
}

resource "aws_instance" "audit_6_ec2902" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_6_svc.name
  tags                 = { Name = "arior-1njchw-audit-6-ec2902" }
}

resource "aws_cloudformation_stack" "audit_6_stack70" {
  name          = "arior-1njchw-audit-6-stack70"
  iam_role_arn  = aws_iam_role.audit_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_7_ec2914" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_7_svc.name
  tags                 = { Name = "arior-1njchw-audit-7-ec2914" }
}

resource "aws_glue_dev_endpoint" "audit_7_glue82" {
  name     = "arior-1njchw-audit-7-glue82"
  role_arn = aws_iam_role.audit_7_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_7_nb498" {
  name          = "arior-1njchw-audit-7-nb498"
  role_arn      = aws_iam_role.audit_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "audit_8_glue510" {
  name     = "arior-1njchw-audit-8-glue510"
  role_arn = aws_iam_role.audit_8_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_8_nb926" {
  name          = "arior-1njchw-audit-8-nb926"
  role_arn      = aws_iam_role.audit_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "audit_8_nb94" {
  name          = "arior-1njchw-audit-8-nb94"
  role_arn      = aws_iam_role.audit_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "audit_9_glue522" {
  name     = "arior-1njchw-audit-9-glue522"
  role_arn = aws_iam_role.audit_9_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "audit_9_nb106" {
  name          = "arior-1njchw-audit-9-nb106"
  role_arn      = aws_iam_role.audit_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "audit_9_stack938" {
  name          = "arior-1njchw-audit-9-stack938"
  iam_role_arn  = aws_iam_role.audit_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "audit_ec2426" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_svc.name
  tags                 = { Name = "arior-1njchw-audit-ec2426" }
}

resource "aws_instance" "audit_ec2842" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.audit_svc.name
  tags                 = { Name = "arior-1njchw-audit-ec2842" }
}

resource "aws_sagemaker_notebook_instance" "audit_nb10" {
  name          = "arior-1njchw-audit-nb10"
  role_arn      = aws_iam_role.audit_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_10_ec2535" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_10_svc.name
  tags                 = { Name = "arior-1njchw-benefits-10-ec2535" }
}

resource "aws_sagemaker_notebook_instance" "benefits_10_nb951" {
  name          = "arior-1njchw-benefits-10-nb951"
  role_arn      = aws_iam_role.benefits_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_10_stack119" {
  name          = "arior-1njchw-benefits-10-stack119"
  iam_role_arn  = aws_iam_role.benefits_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_11_ec2131" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_11_svc.name
  tags                 = { Name = "arior-1njchw-benefits-11-ec2131" }
}

resource "aws_instance" "benefits_11_ec2963" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_11_svc.name
  tags                 = { Name = "arior-1njchw-benefits-11-ec2963" }
}

resource "aws_cloudformation_stack" "benefits_11_stack547" {
  name          = "arior-1njchw-benefits-11-stack547"
  iam_role_arn  = aws_iam_role.benefits_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_12_ec2559" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_12_svc.name
  tags                 = { Name = "arior-1njchw-benefits-12-ec2559" }
}

resource "aws_instance" "benefits_12_ec2975" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_12_svc.name
  tags                 = { Name = "arior-1njchw-benefits-12-ec2975" }
}

resource "aws_glue_dev_endpoint" "benefits_12_glue143" {
  name     = "arior-1njchw-benefits-12-glue143"
  role_arn = aws_iam_role.benefits_12_glue_role.arn
}

resource "aws_instance" "benefits_13_ec2155" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_13_svc.name
  tags                 = { Name = "arior-1njchw-benefits-13-ec2155" }
}

resource "aws_instance" "benefits_13_ec2571" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_13_svc.name
  tags                 = { Name = "arior-1njchw-benefits-13-ec2571" }
}

resource "aws_cloudformation_stack" "benefits_13_stack987" {
  name          = "arior-1njchw-benefits-13-stack987"
  iam_role_arn  = aws_iam_role.benefits_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_14_ec2999" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_14_svc.name
  tags                 = { Name = "arior-1njchw-benefits-14-ec2999" }
}

resource "aws_cloudformation_stack" "benefits_14_stack167" {
  name          = "arior-1njchw-benefits-14-stack167"
  iam_role_arn  = aws_iam_role.benefits_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "benefits_14_stack583" {
  name          = "arior-1njchw-benefits-14-stack583"
  iam_role_arn  = aws_iam_role.benefits_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "benefits_15_nb179" {
  name          = "arior-1njchw-benefits-15-nb179"
  role_arn      = aws_iam_role.benefits_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_15_stack595" {
  name          = "arior-1njchw-benefits-15-stack595"
  iam_role_arn  = aws_iam_role.benefits_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_16_ec2191" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_16_svc.name
  tags                 = { Name = "arior-1njchw-benefits-16-ec2191" }
}

resource "aws_sagemaker_notebook_instance" "benefits_16_nb607" {
  name          = "arior-1njchw-benefits-16-nb607"
  role_arn      = aws_iam_role.benefits_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_17_stack203" {
  name          = "arior-1njchw-benefits-17-stack203"
  iam_role_arn  = aws_iam_role.benefits_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "benefits_17_stack619" {
  name          = "arior-1njchw-benefits-17-stack619"
  iam_role_arn  = aws_iam_role.benefits_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_18_ec2631" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_18_svc.name
  tags                 = { Name = "arior-1njchw-benefits-18-ec2631" }
}

resource "aws_sagemaker_notebook_instance" "benefits_18_nb215" {
  name          = "arior-1njchw-benefits-18-nb215"
  role_arn      = aws_iam_role.benefits_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_19_ec2643" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_19_svc.name
  tags                 = { Name = "arior-1njchw-benefits-19-ec2643" }
}

resource "aws_sagemaker_notebook_instance" "benefits_19_nb227" {
  name          = "arior-1njchw-benefits-19-nb227"
  role_arn      = aws_iam_role.benefits_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_2_ec223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_2_svc.name
  tags                 = { Name = "arior-1njchw-benefits-2-ec223" }
}

resource "aws_instance" "benefits_2_ec2439" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_2_svc.name
  tags                 = { Name = "arior-1njchw-benefits-2-ec2439" }
}

resource "aws_sagemaker_notebook_instance" "benefits_2_nb855" {
  name          = "arior-1njchw-benefits-2-nb855"
  role_arn      = aws_iam_role.benefits_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_20_ec2655" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_20_svc.name
  tags                 = { Name = "arior-1njchw-benefits-20-ec2655" }
}

resource "aws_cloudformation_stack" "benefits_20_stack239" {
  name          = "arior-1njchw-benefits-20-stack239"
  iam_role_arn  = aws_iam_role.benefits_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_21_ec2251" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_21_svc.name
  tags                 = { Name = "arior-1njchw-benefits-21-ec2251" }
}

resource "aws_instance" "benefits_21_ec2667" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_21_svc.name
  tags                 = { Name = "arior-1njchw-benefits-21-ec2667" }
}

resource "aws_instance" "benefits_22_ec2679" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_22_svc.name
  tags                 = { Name = "arior-1njchw-benefits-22-ec2679" }
}

resource "aws_cloudformation_stack" "benefits_22_stack263" {
  name          = "arior-1njchw-benefits-22-stack263"
  iam_role_arn  = aws_iam_role.benefits_22_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_23_ec2275" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_23_svc.name
  tags                 = { Name = "arior-1njchw-benefits-23-ec2275" }
}

resource "aws_sagemaker_notebook_instance" "benefits_23_nb691" {
  name          = "arior-1njchw-benefits-23-nb691"
  role_arn      = aws_iam_role.benefits_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_24_ec2287" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_24_svc.name
  tags                 = { Name = "arior-1njchw-benefits-24-ec2287" }
}

resource "aws_sagemaker_notebook_instance" "benefits_24_nb703" {
  name          = "arior-1njchw-benefits-24-nb703"
  role_arn      = aws_iam_role.benefits_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "benefits_25_nb715" {
  name          = "arior-1njchw-benefits-25-nb715"
  role_arn      = aws_iam_role.benefits_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_25_stack299" {
  name          = "arior-1njchw-benefits-25-stack299"
  iam_role_arn  = aws_iam_role.benefits_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_26_ec2311" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_26_svc.name
  tags                 = { Name = "arior-1njchw-benefits-26-ec2311" }
}

resource "aws_cloudformation_stack" "benefits_26_stack727" {
  name          = "arior-1njchw-benefits-26-stack727"
  iam_role_arn  = aws_iam_role.benefits_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_27_ec2323" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_27_svc.name
  tags                 = { Name = "arior-1njchw-benefits-27-ec2323" }
}

resource "aws_instance" "benefits_27_ec2739" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_27_svc.name
  tags                 = { Name = "arior-1njchw-benefits-27-ec2739" }
}

resource "aws_glue_dev_endpoint" "benefits_28_glue335" {
  name     = "arior-1njchw-benefits-28-glue335"
  role_arn = aws_iam_role.benefits_28_glue_role.arn
}

resource "aws_cloudformation_stack" "benefits_28_stack751" {
  name          = "arior-1njchw-benefits-28-stack751"
  iam_role_arn  = aws_iam_role.benefits_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_29_ec2347" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_29_svc.name
  tags                 = { Name = "arior-1njchw-benefits-29-ec2347" }
}

resource "aws_glue_dev_endpoint" "benefits_29_glue763" {
  name     = "arior-1njchw-benefits-29-glue763"
  role_arn = aws_iam_role.benefits_29_glue_role.arn
}

resource "aws_instance" "benefits_3_ec2867" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_3_svc.name
  tags                 = { Name = "arior-1njchw-benefits-3-ec2867" }
}

resource "aws_glue_dev_endpoint" "benefits_3_glue35" {
  name     = "arior-1njchw-benefits-3-glue35"
  role_arn = aws_iam_role.benefits_3_glue_role.arn
}

resource "aws_cloudformation_stack" "benefits_3_stack451" {
  name          = "arior-1njchw-benefits-3-stack451"
  iam_role_arn  = aws_iam_role.benefits_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "benefits_30_glue775" {
  name     = "arior-1njchw-benefits-30-glue775"
  role_arn = aws_iam_role.benefits_30_glue_role.arn
}

resource "aws_cloudformation_stack" "benefits_30_stack359" {
  name          = "arior-1njchw-benefits-30-stack359"
  iam_role_arn  = aws_iam_role.benefits_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "benefits_31_glue371" {
  name     = "arior-1njchw-benefits-31-glue371"
  role_arn = aws_iam_role.benefits_31_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "benefits_31_nb787" {
  name          = "arior-1njchw-benefits-31-nb787"
  role_arn      = aws_iam_role.benefits_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_32_ec2383" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_32_svc.name
  tags                 = { Name = "arior-1njchw-benefits-32-ec2383" }
}

resource "aws_cloudformation_stack" "benefits_32_stack799" {
  name          = "arior-1njchw-benefits-32-stack799"
  iam_role_arn  = aws_iam_role.benefits_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_33_ec2811" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_33_svc.name
  tags                 = { Name = "arior-1njchw-benefits-33-ec2811" }
}

resource "aws_sagemaker_notebook_instance" "benefits_33_nb395" {
  name          = "arior-1njchw-benefits-33-nb395"
  role_arn      = aws_iam_role.benefits_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "benefits_34_ec2407" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_34_svc.name
  tags                 = { Name = "arior-1njchw-benefits-34-ec2407" }
}

resource "aws_instance" "benefits_34_ec2823" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_34_svc.name
  tags                 = { Name = "arior-1njchw-benefits-34-ec2823" }
}

resource "aws_instance" "benefits_4_ec2463" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_4_svc.name
  tags                 = { Name = "arior-1njchw-benefits-4-ec2463" }
}

resource "aws_glue_dev_endpoint" "benefits_4_glue47" {
  name     = "arior-1njchw-benefits-4-glue47"
  role_arn = aws_iam_role.benefits_4_glue_role.arn
}

resource "aws_cloudformation_stack" "benefits_4_stack879" {
  name          = "arior-1njchw-benefits-4-stack879"
  iam_role_arn  = aws_iam_role.benefits_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_5_ec259" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_5_svc.name
  tags                 = { Name = "arior-1njchw-benefits-5-ec259" }
}

resource "aws_cloudformation_stack" "benefits_5_stack475" {
  name          = "arior-1njchw-benefits-5-stack475"
  iam_role_arn  = aws_iam_role.benefits_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "benefits_5_stack891" {
  name          = "arior-1njchw-benefits-5-stack891"
  iam_role_arn  = aws_iam_role.benefits_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "benefits_6_nb71" {
  name          = "arior-1njchw-benefits-6-nb71"
  role_arn      = aws_iam_role.benefits_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "benefits_6_nb903" {
  name          = "arior-1njchw-benefits-6-nb903"
  role_arn      = aws_iam_role.benefits_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_6_stack487" {
  name          = "arior-1njchw-benefits-6-stack487"
  iam_role_arn  = aws_iam_role.benefits_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_7_ec2499" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_7_svc.name
  tags                 = { Name = "arior-1njchw-benefits-7-ec2499" }
}

resource "aws_instance" "benefits_7_ec283" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_7_svc.name
  tags                 = { Name = "arior-1njchw-benefits-7-ec283" }
}

resource "aws_cloudformation_stack" "benefits_7_stack915" {
  name          = "arior-1njchw-benefits-7-stack915"
  iam_role_arn  = aws_iam_role.benefits_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_8_ec295" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_8_svc.name
  tags                 = { Name = "arior-1njchw-benefits-8-ec295" }
}

resource "aws_sagemaker_notebook_instance" "benefits_8_nb511" {
  name          = "arior-1njchw-benefits-8-nb511"
  role_arn      = aws_iam_role.benefits_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "benefits_8_nb927" {
  name          = "arior-1njchw-benefits-8-nb927"
  role_arn      = aws_iam_role.benefits_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "benefits_9_nb107" {
  name          = "arior-1njchw-benefits-9-nb107"
  role_arn      = aws_iam_role.benefits_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "benefits_9_stack523" {
  name          = "arior-1njchw-benefits-9-stack523"
  iam_role_arn  = aws_iam_role.benefits_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "benefits_9_stack939" {
  name          = "arior-1njchw-benefits-9-stack939"
  iam_role_arn  = aws_iam_role.benefits_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "benefits_ec211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_svc.name
  tags                 = { Name = "arior-1njchw-benefits-ec211" }
}

resource "aws_instance" "benefits_ec2843" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.benefits_svc.name
  tags                 = { Name = "arior-1njchw-benefits-ec2843" }
}

resource "aws_cloudformation_stack" "benefits_stack427" {
  name          = "arior-1njchw-benefits-stack427"
  iam_role_arn  = aws_iam_role.benefits_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_10_ec2108" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_10_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-10-ec2108" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_10_nb940" {
  name          = "arior-1njchw-citizen-portal-10-nb940"
  role_arn      = aws_iam_role.citizen_portal_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_10_stack524" {
  name          = "arior-1njchw-citizen-portal-10-stack524"
  iam_role_arn  = aws_iam_role.citizen_portal_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_11_ec2120" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_11_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-11-ec2120" }
}

resource "aws_instance" "citizen_portal_11_ec2952" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_11_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-11-ec2952" }
}

resource "aws_cloudformation_stack" "citizen_portal_11_stack536" {
  name          = "arior-1njchw-citizen-portal-11-stack536"
  iam_role_arn  = aws_iam_role.citizen_portal_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_12_nb132" {
  name          = "arior-1njchw-citizen-portal-12-nb132"
  role_arn      = aws_iam_role.citizen_portal_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_12_nb548" {
  name          = "arior-1njchw-citizen-portal-12-nb548"
  role_arn      = aws_iam_role.citizen_portal_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_12_stack964" {
  name          = "arior-1njchw-citizen-portal-12-stack964"
  iam_role_arn  = aws_iam_role.citizen_portal_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_13_ec2144" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_13_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-13-ec2144" }
}

resource "aws_instance" "citizen_portal_13_ec2976" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_13_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-13-ec2976" }
}

resource "aws_cloudformation_stack" "citizen_portal_13_stack560" {
  name          = "arior-1njchw-citizen-portal-13-stack560"
  iam_role_arn  = aws_iam_role.citizen_portal_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_14_ec2572" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_14_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-14-ec2572" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_14_glue988" {
  name     = "arior-1njchw-citizen-portal-14-glue988"
  role_arn = aws_iam_role.citizen_portal_14_glue_role.arn
}

resource "aws_cloudformation_stack" "citizen_portal_14_stack156" {
  name          = "arior-1njchw-citizen-portal-14-stack156"
  iam_role_arn  = aws_iam_role.citizen_portal_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_15_ec2168" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_15_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-15-ec2168" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_15_glue584" {
  name     = "arior-1njchw-citizen-portal-15-glue584"
  role_arn = aws_iam_role.citizen_portal_15_glue_role.arn
}

resource "aws_instance" "citizen_portal_16_ec2180" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_16_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-16-ec2180" }
}

resource "aws_cloudformation_stack" "citizen_portal_16_stack596" {
  name          = "arior-1njchw-citizen-portal-16-stack596"
  iam_role_arn  = aws_iam_role.citizen_portal_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_17_ec2608" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_17_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-17-ec2608" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_17_nb192" {
  name          = "arior-1njchw-citizen-portal-17-nb192"
  role_arn      = aws_iam_role.citizen_portal_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_18_ec2620" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_18_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-18-ec2620" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_18_nb204" {
  name          = "arior-1njchw-citizen-portal-18-nb204"
  role_arn      = aws_iam_role.citizen_portal_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_19_ec2216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_19_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-19-ec2216" }
}

resource "aws_cloudformation_stack" "citizen_portal_19_stack632" {
  name          = "arior-1njchw-citizen-portal-19-stack632"
  iam_role_arn  = aws_iam_role.citizen_portal_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_2_ec212" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_2_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-2-ec212" }
}

resource "aws_instance" "citizen_portal_2_ec2428" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_2_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-2-ec2428" }
}

resource "aws_instance" "citizen_portal_2_ec2844" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_2_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-2-ec2844" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_20_glue228" {
  name     = "arior-1njchw-citizen-portal-20-glue228"
  role_arn = aws_iam_role.citizen_portal_20_glue_role.arn
}

resource "aws_cloudformation_stack" "citizen_portal_20_stack644" {
  name          = "arior-1njchw-citizen-portal-20-stack644"
  iam_role_arn  = aws_iam_role.citizen_portal_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_21_ec2656" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_21_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-21-ec2656" }
}

resource "aws_cloudformation_stack" "citizen_portal_21_stack240" {
  name          = "arior-1njchw-citizen-portal-21-stack240"
  iam_role_arn  = aws_iam_role.citizen_portal_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_22_ec2252" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_22_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-22-ec2252" }
}

resource "aws_instance" "citizen_portal_22_ec2668" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_22_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-22-ec2668" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_23_glue680" {
  name     = "arior-1njchw-citizen-portal-23-glue680"
  role_arn = aws_iam_role.citizen_portal_23_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_23_nb264" {
  name          = "arior-1njchw-citizen-portal-23-nb264"
  role_arn      = aws_iam_role.citizen_portal_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_24_ec2276" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_24_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-24-ec2276" }
}

resource "aws_instance" "citizen_portal_24_ec2692" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_24_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-24-ec2692" }
}

resource "aws_instance" "citizen_portal_25_ec2288" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_25_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-25-ec2288" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_25_glue704" {
  name     = "arior-1njchw-citizen-portal-25-glue704"
  role_arn = aws_iam_role.citizen_portal_25_glue_role.arn
}

resource "aws_instance" "citizen_portal_26_ec2300" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_26_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-26-ec2300" }
}

resource "aws_cloudformation_stack" "citizen_portal_26_stack716" {
  name          = "arior-1njchw-citizen-portal-26-stack716"
  iam_role_arn  = aws_iam_role.citizen_portal_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_27_ec2728" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_27_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-27-ec2728" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_27_nb312" {
  name          = "arior-1njchw-citizen-portal-27-nb312"
  role_arn      = aws_iam_role.citizen_portal_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_28_ec2324" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_28_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-28-ec2324" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_28_nb740" {
  name          = "arior-1njchw-citizen-portal-28-nb740"
  role_arn      = aws_iam_role.citizen_portal_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_29_ec2336" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_29_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-29-ec2336" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_29_nb752" {
  name          = "arior-1njchw-citizen-portal-29-nb752"
  role_arn      = aws_iam_role.citizen_portal_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "citizen_portal_3_ec224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_3_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-3-ec224" }
}

resource "aws_cloudformation_stack" "citizen_portal_3_stack440" {
  name          = "arior-1njchw-citizen-portal-3-stack440"
  iam_role_arn  = aws_iam_role.citizen_portal_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "citizen_portal_3_stack856" {
  name          = "arior-1njchw-citizen-portal-3-stack856"
  iam_role_arn  = aws_iam_role.citizen_portal_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_30_ec2348" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_30_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-30-ec2348" }
}

resource "aws_instance" "citizen_portal_30_ec2764" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_30_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-30-ec2764" }
}

resource "aws_instance" "citizen_portal_31_ec2360" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_31_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-31-ec2360" }
}

resource "aws_instance" "citizen_portal_31_ec2776" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_31_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-31-ec2776" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_32_nb372" {
  name          = "arior-1njchw-citizen-portal-32-nb372"
  role_arn      = aws_iam_role.citizen_portal_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_32_stack788" {
  name          = "arior-1njchw-citizen-portal-32-stack788"
  iam_role_arn  = aws_iam_role.citizen_portal_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_33_ec2384" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_33_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-33-ec2384" }
}

resource "aws_instance" "citizen_portal_33_ec2800" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_33_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-33-ec2800" }
}

resource "aws_cloudformation_stack" "citizen_portal_34_stack396" {
  name          = "arior-1njchw-citizen-portal-34-stack396"
  iam_role_arn  = aws_iam_role.citizen_portal_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "citizen_portal_34_stack812" {
  name          = "arior-1njchw-citizen-portal-34-stack812"
  iam_role_arn  = aws_iam_role.citizen_portal_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_35_ec2408" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_35_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-35-ec2408" }
}

resource "aws_instance" "citizen_portal_35_ec2824" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_35_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-35-ec2824" }
}

resource "aws_instance" "citizen_portal_4_ec236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_4_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-4-ec236" }
}

resource "aws_instance" "citizen_portal_4_ec2452" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_4_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-4-ec2452" }
}

resource "aws_instance" "citizen_portal_4_ec2868" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_4_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-4-ec2868" }
}

resource "aws_instance" "citizen_portal_5_ec2464" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_5_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-5-ec2464" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_5_nb48" {
  name          = "arior-1njchw-citizen-portal-5-nb48"
  role_arn      = aws_iam_role.citizen_portal_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_5_stack880" {
  name          = "arior-1njchw-citizen-portal-5-stack880"
  iam_role_arn  = aws_iam_role.citizen_portal_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_6_ec260" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_6_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-6-ec260" }
}

resource "aws_sagemaker_notebook_instance" "citizen_portal_6_nb476" {
  name          = "arior-1njchw-citizen-portal-6-nb476"
  role_arn      = aws_iam_role.citizen_portal_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "citizen_portal_6_stack892" {
  name          = "arior-1njchw-citizen-portal-6-stack892"
  iam_role_arn  = aws_iam_role.citizen_portal_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_7_ec2488" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_7_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-7-ec2488" }
}

resource "aws_instance" "citizen_portal_7_ec272" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_7_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-7-ec272" }
}

resource "aws_cloudformation_stack" "citizen_portal_7_stack904" {
  name          = "arior-1njchw-citizen-portal-7-stack904"
  iam_role_arn  = aws_iam_role.citizen_portal_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "citizen_portal_8_ec2500" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_8_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-8-ec2500" }
}

resource "aws_instance" "citizen_portal_8_ec284" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_8_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-8-ec284" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_8_glue916" {
  name     = "arior-1njchw-citizen-portal-8-glue916"
  role_arn = aws_iam_role.citizen_portal_8_glue_role.arn
}

resource "aws_instance" "citizen_portal_9_ec2512" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_9_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-9-ec2512" }
}

resource "aws_instance" "citizen_portal_9_ec2928" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_9_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-9-ec2928" }
}

resource "aws_glue_dev_endpoint" "citizen_portal_9_glue96" {
  name     = "arior-1njchw-citizen-portal-9-glue96"
  role_arn = aws_iam_role.citizen_portal_9_glue_role.arn
}

resource "aws_instance" "citizen_portal_ec20" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.citizen_portal_svc.name
  tags                 = { Name = "arior-1njchw-citizen-portal-ec20" }
}

resource "aws_cloudformation_stack" "citizen_portal_stack416" {
  name          = "arior-1njchw-citizen-portal-stack416"
  iam_role_arn  = aws_iam_role.citizen_portal_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "citizen_portal_stack832" {
  name          = "arior-1njchw-citizen-portal-stack832"
  iam_role_arn  = aws_iam_role.citizen_portal_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_10_ec2111" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_10_svc.name
  tags                 = { Name = "arior-1njchw-gis-10-ec2111" }
}

resource "aws_instance" "gis_10_ec2943" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_10_svc.name
  tags                 = { Name = "arior-1njchw-gis-10-ec2943" }
}

resource "aws_sagemaker_notebook_instance" "gis_10_nb527" {
  name          = "arior-1njchw-gis-10-nb527"
  role_arn      = aws_iam_role.gis_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_11_ec2123" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_11_svc.name
  tags                 = { Name = "arior-1njchw-gis-11-ec2123" }
}

resource "aws_sagemaker_notebook_instance" "gis_11_nb539" {
  name          = "arior-1njchw-gis-11-nb539"
  role_arn      = aws_iam_role.gis_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "gis_11_stack955" {
  name          = "arior-1njchw-gis-11-stack955"
  iam_role_arn  = aws_iam_role.gis_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_12_ec2135" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_12_svc.name
  tags                 = { Name = "arior-1njchw-gis-12-ec2135" }
}

resource "aws_instance" "gis_12_ec2551" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_12_svc.name
  tags                 = { Name = "arior-1njchw-gis-12-ec2551" }
}

resource "aws_cloudformation_stack" "gis_12_stack967" {
  name          = "arior-1njchw-gis-12-stack967"
  iam_role_arn  = aws_iam_role.gis_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_13_ec2147" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_13_svc.name
  tags                 = { Name = "arior-1njchw-gis-13-ec2147" }
}

resource "aws_instance" "gis_13_ec2563" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_13_svc.name
  tags                 = { Name = "arior-1njchw-gis-13-ec2563" }
}

resource "aws_glue_dev_endpoint" "gis_13_glue979" {
  name     = "arior-1njchw-gis-13-glue979"
  role_arn = aws_iam_role.gis_13_glue_role.arn
}

resource "aws_instance" "gis_14_ec2991" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_14_svc.name
  tags                 = { Name = "arior-1njchw-gis-14-ec2991" }
}

resource "aws_glue_dev_endpoint" "gis_14_glue575" {
  name     = "arior-1njchw-gis-14-glue575"
  role_arn = aws_iam_role.gis_14_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "gis_14_nb159" {
  name          = "arior-1njchw-gis-14-nb159"
  role_arn      = aws_iam_role.gis_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_15_ec2171" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_15_svc.name
  tags                 = { Name = "arior-1njchw-gis-15-ec2171" }
}

resource "aws_instance" "gis_15_ec2587" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_15_svc.name
  tags                 = { Name = "arior-1njchw-gis-15-ec2587" }
}

resource "aws_instance" "gis_16_ec2599" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_16_svc.name
  tags                 = { Name = "arior-1njchw-gis-16-ec2599" }
}

resource "aws_cloudformation_stack" "gis_16_stack183" {
  name          = "arior-1njchw-gis-16-stack183"
  iam_role_arn  = aws_iam_role.gis_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_17_ec2195" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_17_svc.name
  tags                 = { Name = "arior-1njchw-gis-17-ec2195" }
}

resource "aws_cloudformation_stack" "gis_17_stack611" {
  name          = "arior-1njchw-gis-17-stack611"
  iam_role_arn  = aws_iam_role.gis_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_18_ec2207" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_18_svc.name
  tags                 = { Name = "arior-1njchw-gis-18-ec2207" }
}

resource "aws_cloudformation_stack" "gis_18_stack623" {
  name          = "arior-1njchw-gis-18-stack623"
  iam_role_arn  = aws_iam_role.gis_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_19_ec2219" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_19_svc.name
  tags                 = { Name = "arior-1njchw-gis-19-ec2219" }
}

resource "aws_cloudformation_stack" "gis_19_stack635" {
  name          = "arior-1njchw-gis-19-stack635"
  iam_role_arn  = aws_iam_role.gis_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_2_ec215" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_2_svc.name
  tags                 = { Name = "arior-1njchw-gis-2-ec215" }
}

resource "aws_instance" "gis_2_ec2847" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_2_svc.name
  tags                 = { Name = "arior-1njchw-gis-2-ec2847" }
}

resource "aws_sagemaker_notebook_instance" "gis_2_nb431" {
  name          = "arior-1njchw-gis-2-nb431"
  role_arn      = aws_iam_role.gis_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_20_ec2231" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_20_svc.name
  tags                 = { Name = "arior-1njchw-gis-20-ec2231" }
}

resource "aws_cloudformation_stack" "gis_20_stack647" {
  name          = "arior-1njchw-gis-20-stack647"
  iam_role_arn  = aws_iam_role.gis_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_21_ec2243" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_21_svc.name
  tags                 = { Name = "arior-1njchw-gis-21-ec2243" }
}

resource "aws_instance" "gis_21_ec2659" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_21_svc.name
  tags                 = { Name = "arior-1njchw-gis-21-ec2659" }
}

resource "aws_instance" "gis_22_ec2255" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_22_svc.name
  tags                 = { Name = "arior-1njchw-gis-22-ec2255" }
}

resource "aws_instance" "gis_22_ec2671" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_22_svc.name
  tags                 = { Name = "arior-1njchw-gis-22-ec2671" }
}

resource "aws_glue_dev_endpoint" "gis_23_glue267" {
  name     = "arior-1njchw-gis-23-glue267"
  role_arn = aws_iam_role.gis_23_glue_role.arn
}

resource "aws_cloudformation_stack" "gis_23_stack683" {
  name          = "arior-1njchw-gis-23-stack683"
  iam_role_arn  = aws_iam_role.gis_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_24_ec2279" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_24_svc.name
  tags                 = { Name = "arior-1njchw-gis-24-ec2279" }
}

resource "aws_cloudformation_stack" "gis_24_stack695" {
  name          = "arior-1njchw-gis-24-stack695"
  iam_role_arn  = aws_iam_role.gis_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_25_ec2707" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_25_svc.name
  tags                 = { Name = "arior-1njchw-gis-25-ec2707" }
}

resource "aws_sagemaker_notebook_instance" "gis_25_nb291" {
  name          = "arior-1njchw-gis-25-nb291"
  role_arn      = aws_iam_role.gis_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_26_ec2719" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_26_svc.name
  tags                 = { Name = "arior-1njchw-gis-26-ec2719" }
}

resource "aws_sagemaker_notebook_instance" "gis_26_nb303" {
  name          = "arior-1njchw-gis-26-nb303"
  role_arn      = aws_iam_role.gis_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_27_ec2315" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_27_svc.name
  tags                 = { Name = "arior-1njchw-gis-27-ec2315" }
}

resource "aws_glue_dev_endpoint" "gis_27_glue731" {
  name     = "arior-1njchw-gis-27-glue731"
  role_arn = aws_iam_role.gis_27_glue_role.arn
}

resource "aws_instance" "gis_28_ec2743" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_28_svc.name
  tags                 = { Name = "arior-1njchw-gis-28-ec2743" }
}

resource "aws_sagemaker_notebook_instance" "gis_28_nb327" {
  name          = "arior-1njchw-gis-28-nb327"
  role_arn      = aws_iam_role.gis_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_29_ec2339" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_29_svc.name
  tags                 = { Name = "arior-1njchw-gis-29-ec2339" }
}

resource "aws_instance" "gis_29_ec2755" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_29_svc.name
  tags                 = { Name = "arior-1njchw-gis-29-ec2755" }
}

resource "aws_instance" "gis_3_ec227" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_3_svc.name
  tags                 = { Name = "arior-1njchw-gis-3-ec227" }
}

resource "aws_instance" "gis_3_ec2859" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_3_svc.name
  tags                 = { Name = "arior-1njchw-gis-3-ec2859" }
}

resource "aws_glue_dev_endpoint" "gis_3_glue443" {
  name     = "arior-1njchw-gis-3-glue443"
  role_arn = aws_iam_role.gis_3_glue_role.arn
}

resource "aws_instance" "gis_30_ec2351" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_30_svc.name
  tags                 = { Name = "arior-1njchw-gis-30-ec2351" }
}

resource "aws_instance" "gis_30_ec2767" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_30_svc.name
  tags                 = { Name = "arior-1njchw-gis-30-ec2767" }
}

resource "aws_instance" "gis_31_ec2779" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_31_svc.name
  tags                 = { Name = "arior-1njchw-gis-31-ec2779" }
}

resource "aws_cloudformation_stack" "gis_31_stack363" {
  name          = "arior-1njchw-gis-31-stack363"
  iam_role_arn  = aws_iam_role.gis_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_32_ec2375" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_32_svc.name
  tags                 = { Name = "arior-1njchw-gis-32-ec2375" }
}

resource "aws_instance" "gis_32_ec2791" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_32_svc.name
  tags                 = { Name = "arior-1njchw-gis-32-ec2791" }
}

resource "aws_instance" "gis_33_ec2803" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_33_svc.name
  tags                 = { Name = "arior-1njchw-gis-33-ec2803" }
}

resource "aws_cloudformation_stack" "gis_33_stack387" {
  name          = "arior-1njchw-gis-33-stack387"
  iam_role_arn  = aws_iam_role.gis_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "gis_34_glue815" {
  name     = "arior-1njchw-gis-34-glue815"
  role_arn = aws_iam_role.gis_34_glue_role.arn
}

resource "aws_cloudformation_stack" "gis_34_stack399" {
  name          = "arior-1njchw-gis-34-stack399"
  iam_role_arn  = aws_iam_role.gis_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_35_ec2411" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_35_svc.name
  tags                 = { Name = "arior-1njchw-gis-35-ec2411" }
}

resource "aws_instance" "gis_35_ec2827" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_35_svc.name
  tags                 = { Name = "arior-1njchw-gis-35-ec2827" }
}

resource "aws_instance" "gis_4_ec239" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_4_svc.name
  tags                 = { Name = "arior-1njchw-gis-4-ec239" }
}

resource "aws_glue_dev_endpoint" "gis_4_glue871" {
  name     = "arior-1njchw-gis-4-glue871"
  role_arn = aws_iam_role.gis_4_glue_role.arn
}

resource "aws_cloudformation_stack" "gis_4_stack455" {
  name          = "arior-1njchw-gis-4-stack455"
  iam_role_arn  = aws_iam_role.gis_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_5_ec251" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_5_svc.name
  tags                 = { Name = "arior-1njchw-gis-5-ec251" }
}

resource "aws_instance" "gis_5_ec2883" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_5_svc.name
  tags                 = { Name = "arior-1njchw-gis-5-ec2883" }
}

resource "aws_sagemaker_notebook_instance" "gis_5_nb467" {
  name          = "arior-1njchw-gis-5-nb467"
  role_arn      = aws_iam_role.gis_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_6_ec2895" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_6_svc.name
  tags                 = { Name = "arior-1njchw-gis-6-ec2895" }
}

resource "aws_glue_dev_endpoint" "gis_6_glue63" {
  name     = "arior-1njchw-gis-6-glue63"
  role_arn = aws_iam_role.gis_6_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "gis_6_nb479" {
  name          = "arior-1njchw-gis-6-nb479"
  role_arn      = aws_iam_role.gis_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "gis_7_nb491" {
  name          = "arior-1njchw-gis-7-nb491"
  role_arn      = aws_iam_role.gis_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "gis_7_stack75" {
  name          = "arior-1njchw-gis-7-stack75"
  iam_role_arn  = aws_iam_role.gis_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "gis_7_stack907" {
  name          = "arior-1njchw-gis-7-stack907"
  iam_role_arn  = aws_iam_role.gis_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "gis_8_ec287" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_8_svc.name
  tags                 = { Name = "arior-1njchw-gis-8-ec287" }
}

resource "aws_glue_dev_endpoint" "gis_8_glue919" {
  name     = "arior-1njchw-gis-8-glue919"
  role_arn = aws_iam_role.gis_8_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "gis_8_nb503" {
  name          = "arior-1njchw-gis-8-nb503"
  role_arn      = aws_iam_role.gis_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_9_ec2931" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_9_svc.name
  tags                 = { Name = "arior-1njchw-gis-9-ec2931" }
}

resource "aws_sagemaker_notebook_instance" "gis_9_nb515" {
  name          = "arior-1njchw-gis-9-nb515"
  role_arn      = aws_iam_role.gis_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "gis_9_nb99" {
  name          = "arior-1njchw-gis-9-nb99"
  role_arn      = aws_iam_role.gis_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "gis_ec23" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_svc.name
  tags                 = { Name = "arior-1njchw-gis-ec23" }
}

resource "aws_instance" "gis_ec2419" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.gis_svc.name
  tags                 = { Name = "arior-1njchw-gis-ec2419" }
}

resource "aws_glue_dev_endpoint" "gis_glue835" {
  name     = "arior-1njchw-gis-glue835"
  role_arn = aws_iam_role.gis_glue_role.arn
}

resource "aws_instance" "hr_10_ec2532" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_10_svc.name
  tags                 = { Name = "arior-1njchw-hr-10-ec2532" }
}

resource "aws_instance" "hr_10_ec2948" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_10_svc.name
  tags                 = { Name = "arior-1njchw-hr-10-ec2948" }
}

resource "aws_sagemaker_notebook_instance" "hr_10_nb116" {
  name          = "arior-1njchw-hr-10-nb116"
  role_arn      = aws_iam_role.hr_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_11_ec2544" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_11_svc.name
  tags                 = { Name = "arior-1njchw-hr-11-ec2544" }
}

resource "aws_instance" "hr_11_ec2960" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_11_svc.name
  tags                 = { Name = "arior-1njchw-hr-11-ec2960" }
}

resource "aws_cloudformation_stack" "hr_11_stack128" {
  name          = "arior-1njchw-hr-11-stack128"
  iam_role_arn  = aws_iam_role.hr_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_12_ec2140" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_12_svc.name
  tags                 = { Name = "arior-1njchw-hr-12-ec2140" }
}

resource "aws_instance" "hr_12_ec2556" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_12_svc.name
  tags                 = { Name = "arior-1njchw-hr-12-ec2556" }
}

resource "aws_sagemaker_notebook_instance" "hr_12_nb972" {
  name          = "arior-1njchw-hr-12-nb972"
  role_arn      = aws_iam_role.hr_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_13_ec2568" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_13_svc.name
  tags                 = { Name = "arior-1njchw-hr-13-ec2568" }
}

resource "aws_sagemaker_notebook_instance" "hr_13_nb152" {
  name          = "arior-1njchw-hr-13-nb152"
  role_arn      = aws_iam_role.hr_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "hr_13_stack984" {
  name          = "arior-1njchw-hr-13-stack984"
  iam_role_arn  = aws_iam_role.hr_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_14_ec2580" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_14_svc.name
  tags                 = { Name = "arior-1njchw-hr-14-ec2580" }
}

resource "aws_glue_dev_endpoint" "hr_14_glue164" {
  name     = "arior-1njchw-hr-14-glue164"
  role_arn = aws_iam_role.hr_14_glue_role.arn
}

resource "aws_cloudformation_stack" "hr_14_stack996" {
  name          = "arior-1njchw-hr-14-stack996"
  iam_role_arn  = aws_iam_role.hr_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "hr_15_nb176" {
  name          = "arior-1njchw-hr-15-nb176"
  role_arn      = aws_iam_role.hr_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "hr_15_nb592" {
  name          = "arior-1njchw-hr-15-nb592"
  role_arn      = aws_iam_role.hr_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_16_ec2188" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_16_svc.name
  tags                 = { Name = "arior-1njchw-hr-16-ec2188" }
}

resource "aws_instance" "hr_16_ec2604" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_16_svc.name
  tags                 = { Name = "arior-1njchw-hr-16-ec2604" }
}

resource "aws_instance" "hr_17_ec2616" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_17_svc.name
  tags                 = { Name = "arior-1njchw-hr-17-ec2616" }
}

resource "aws_cloudformation_stack" "hr_17_stack200" {
  name          = "arior-1njchw-hr-17-stack200"
  iam_role_arn  = aws_iam_role.hr_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_18_ec2628" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_18_svc.name
  tags                 = { Name = "arior-1njchw-hr-18-ec2628" }
}

resource "aws_cloudformation_stack" "hr_18_stack212" {
  name          = "arior-1njchw-hr-18-stack212"
  iam_role_arn  = aws_iam_role.hr_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_19_ec2224" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_19_svc.name
  tags                 = { Name = "arior-1njchw-hr-19-ec2224" }
}

resource "aws_sagemaker_notebook_instance" "hr_19_nb640" {
  name          = "arior-1njchw-hr-19-nb640"
  role_arn      = aws_iam_role.hr_19_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_2_ec220" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_2_svc.name
  tags                 = { Name = "arior-1njchw-hr-2-ec220" }
}

resource "aws_glue_dev_endpoint" "hr_2_glue436" {
  name     = "arior-1njchw-hr-2-glue436"
  role_arn = aws_iam_role.hr_2_glue_role.arn
}

resource "aws_cloudformation_stack" "hr_2_stack852" {
  name          = "arior-1njchw-hr-2-stack852"
  iam_role_arn  = aws_iam_role.hr_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_20_ec2236" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_20_svc.name
  tags                 = { Name = "arior-1njchw-hr-20-ec2236" }
}

resource "aws_cloudformation_stack" "hr_20_stack652" {
  name          = "arior-1njchw-hr-20-stack652"
  iam_role_arn  = aws_iam_role.hr_20_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_21_ec2248" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_21_svc.name
  tags                 = { Name = "arior-1njchw-hr-21-ec2248" }
}

resource "aws_glue_dev_endpoint" "hr_21_glue664" {
  name     = "arior-1njchw-hr-21-glue664"
  role_arn = aws_iam_role.hr_21_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "hr_22_nb260" {
  name          = "arior-1njchw-hr-22-nb260"
  role_arn      = aws_iam_role.hr_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "hr_22_nb676" {
  name          = "arior-1njchw-hr-22-nb676"
  role_arn      = aws_iam_role.hr_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "hr_23_nb272" {
  name          = "arior-1njchw-hr-23-nb272"
  role_arn      = aws_iam_role.hr_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "hr_23_stack688" {
  name          = "arior-1njchw-hr-23-stack688"
  iam_role_arn  = aws_iam_role.hr_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_24_ec2284" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_24_svc.name
  tags                 = { Name = "arior-1njchw-hr-24-ec2284" }
}

resource "aws_sagemaker_notebook_instance" "hr_24_nb700" {
  name          = "arior-1njchw-hr-24-nb700"
  role_arn      = aws_iam_role.hr_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_25_ec2296" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_25_svc.name
  tags                 = { Name = "arior-1njchw-hr-25-ec2296" }
}

resource "aws_glue_dev_endpoint" "hr_25_glue712" {
  name     = "arior-1njchw-hr-25-glue712"
  role_arn = aws_iam_role.hr_25_glue_role.arn
}

resource "aws_instance" "hr_26_ec2308" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_26_svc.name
  tags                 = { Name = "arior-1njchw-hr-26-ec2308" }
}

resource "aws_instance" "hr_26_ec2724" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_26_svc.name
  tags                 = { Name = "arior-1njchw-hr-26-ec2724" }
}

resource "aws_instance" "hr_27_ec2320" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_27_svc.name
  tags                 = { Name = "arior-1njchw-hr-27-ec2320" }
}

resource "aws_cloudformation_stack" "hr_27_stack736" {
  name          = "arior-1njchw-hr-27-stack736"
  iam_role_arn  = aws_iam_role.hr_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "hr_28_glue332" {
  name     = "arior-1njchw-hr-28-glue332"
  role_arn = aws_iam_role.hr_28_glue_role.arn
}

resource "aws_glue_dev_endpoint" "hr_28_glue748" {
  name     = "arior-1njchw-hr-28-glue748"
  role_arn = aws_iam_role.hr_28_glue_role.arn
}

resource "aws_instance" "hr_29_ec2344" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_29_svc.name
  tags                 = { Name = "arior-1njchw-hr-29-ec2344" }
}

resource "aws_cloudformation_stack" "hr_29_stack760" {
  name          = "arior-1njchw-hr-29-stack760"
  iam_role_arn  = aws_iam_role.hr_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_3_ec232" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_3_svc.name
  tags                 = { Name = "arior-1njchw-hr-3-ec232" }
}

resource "aws_instance" "hr_3_ec2864" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_3_svc.name
  tags                 = { Name = "arior-1njchw-hr-3-ec2864" }
}

resource "aws_cloudformation_stack" "hr_3_stack448" {
  name          = "arior-1njchw-hr-3-stack448"
  iam_role_arn  = aws_iam_role.hr_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "hr_30_nb356" {
  name          = "arior-1njchw-hr-30-nb356"
  role_arn      = aws_iam_role.hr_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "hr_30_nb772" {
  name          = "arior-1njchw-hr-30-nb772"
  role_arn      = aws_iam_role.hr_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_31_ec2784" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_31_svc.name
  tags                 = { Name = "arior-1njchw-hr-31-ec2784" }
}

resource "aws_cloudformation_stack" "hr_31_stack368" {
  name          = "arior-1njchw-hr-31-stack368"
  iam_role_arn  = aws_iam_role.hr_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_32_ec2796" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_32_svc.name
  tags                 = { Name = "arior-1njchw-hr-32-ec2796" }
}

resource "aws_sagemaker_notebook_instance" "hr_32_nb380" {
  name          = "arior-1njchw-hr-32-nb380"
  role_arn      = aws_iam_role.hr_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_33_ec2392" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_33_svc.name
  tags                 = { Name = "arior-1njchw-hr-33-ec2392" }
}

resource "aws_cloudformation_stack" "hr_33_stack808" {
  name          = "arior-1njchw-hr-33-stack808"
  iam_role_arn  = aws_iam_role.hr_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_34_ec2404" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_34_svc.name
  tags                 = { Name = "arior-1njchw-hr-34-ec2404" }
}

resource "aws_instance" "hr_34_ec2820" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_34_svc.name
  tags                 = { Name = "arior-1njchw-hr-34-ec2820" }
}

resource "aws_instance" "hr_4_ec244" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_4_svc.name
  tags                 = { Name = "arior-1njchw-hr-4-ec244" }
}

resource "aws_instance" "hr_4_ec2460" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_4_svc.name
  tags                 = { Name = "arior-1njchw-hr-4-ec2460" }
}

resource "aws_cloudformation_stack" "hr_4_stack876" {
  name          = "arior-1njchw-hr-4-stack876"
  iam_role_arn  = aws_iam_role.hr_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_5_ec2472" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_5_svc.name
  tags                 = { Name = "arior-1njchw-hr-5-ec2472" }
}

resource "aws_instance" "hr_5_ec2888" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_5_svc.name
  tags                 = { Name = "arior-1njchw-hr-5-ec2888" }
}

resource "aws_sagemaker_notebook_instance" "hr_5_nb56" {
  name          = "arior-1njchw-hr-5-nb56"
  role_arn      = aws_iam_role.hr_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "hr_6_ec2484" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_6_svc.name
  tags                 = { Name = "arior-1njchw-hr-6-ec2484" }
}

resource "aws_sagemaker_notebook_instance" "hr_6_nb900" {
  name          = "arior-1njchw-hr-6-nb900"
  role_arn      = aws_iam_role.hr_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "hr_6_stack68" {
  name          = "arior-1njchw-hr-6-stack68"
  iam_role_arn  = aws_iam_role.hr_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "hr_7_glue80" {
  name     = "arior-1njchw-hr-7-glue80"
  role_arn = aws_iam_role.hr_7_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "hr_7_nb912" {
  name          = "arior-1njchw-hr-7-nb912"
  role_arn      = aws_iam_role.hr_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "hr_7_stack496" {
  name          = "arior-1njchw-hr-7-stack496"
  iam_role_arn  = aws_iam_role.hr_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_8_ec2508" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_8_svc.name
  tags                 = { Name = "arior-1njchw-hr-8-ec2508" }
}

resource "aws_instance" "hr_8_ec292" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_8_svc.name
  tags                 = { Name = "arior-1njchw-hr-8-ec292" }
}

resource "aws_instance" "hr_8_ec2924" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_8_svc.name
  tags                 = { Name = "arior-1njchw-hr-8-ec2924" }
}

resource "aws_glue_dev_endpoint" "hr_9_glue936" {
  name     = "arior-1njchw-hr-9-glue936"
  role_arn = aws_iam_role.hr_9_glue_role.arn
}

resource "aws_cloudformation_stack" "hr_9_stack104" {
  name          = "arior-1njchw-hr-9-stack104"
  iam_role_arn  = aws_iam_role.hr_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "hr_9_stack520" {
  name          = "arior-1njchw-hr-9-stack520"
  iam_role_arn  = aws_iam_role.hr_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "hr_ec2840" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.hr_svc.name
  tags                 = { Name = "arior-1njchw-hr-ec2840" }
}

resource "aws_glue_dev_endpoint" "hr_glue8" {
  name     = "arior-1njchw-hr-glue8"
  role_arn = aws_iam_role.hr_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "hr_nb424" {
  name          = "arior-1njchw-hr-nb424"
  role_arn      = aws_iam_role.hr_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "inj_ec2_w11" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r10.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w11" }
}

resource "aws_instance" "inj_ec2_w14" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r13.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w14" }
}

resource "aws_instance" "inj_ec2_w2" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r1.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w2" }
}

resource "aws_instance" "inj_ec2_w27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r26.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w27" }
}

resource "aws_instance" "inj_ec2_w30" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r29.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w30" }
}

resource "aws_instance" "inj_ec2_w36" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r35.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w36" }
}

resource "aws_instance" "inj_ec2_w5" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.inj_ec2_exec_r4.name
  tags                 = { Name = "arior-1njchw-inj-ec2-w5" }
}

resource "aws_glue_dev_endpoint" "inj_glue_w19" {
  name     = "arior-1njchw-inj-glue-w19"
  role_arn = aws_iam_role.inj_glue_exec_r18.arn
}

resource "aws_cloudformation_stack" "inj_stack_w51" {
  name          = "arior-1njchw-inj-stack-w51"
  iam_role_arn  = aws_iam_role.inj_stack_exec_r50.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_10_ec2117" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_10_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-10-ec2117" }
}

resource "aws_instance" "it_ops_10_ec2949" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_10_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-10-ec2949" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_10_nb533" {
  name          = "arior-1njchw-it-ops-10-nb533"
  role_arn      = aws_iam_role.it_ops_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "it_ops_11_glue961" {
  name     = "arior-1njchw-it-ops-11-glue961"
  role_arn = aws_iam_role.it_ops_11_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "it_ops_11_nb545" {
  name          = "arior-1njchw-it-ops-11-nb545"
  role_arn      = aws_iam_role.it_ops_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "it_ops_11_stack129" {
  name          = "arior-1njchw-it-ops-11-stack129"
  iam_role_arn  = aws_iam_role.it_ops_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_12_ec2557" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_12_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-12-ec2557" }
}

resource "aws_glue_dev_endpoint" "it_ops_12_glue141" {
  name     = "arior-1njchw-it-ops-12-glue141"
  role_arn = aws_iam_role.it_ops_12_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "it_ops_12_nb973" {
  name          = "arior-1njchw-it-ops-12-nb973"
  role_arn      = aws_iam_role.it_ops_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "it_ops_13_nb569" {
  name          = "arior-1njchw-it-ops-13-nb569"
  role_arn      = aws_iam_role.it_ops_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "it_ops_13_stack153" {
  name          = "arior-1njchw-it-ops-13-stack153"
  iam_role_arn  = aws_iam_role.it_ops_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "it_ops_13_stack985" {
  name          = "arior-1njchw-it-ops-13-stack985"
  iam_role_arn  = aws_iam_role.it_ops_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_14_ec2165" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_14_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-14-ec2165" }
}

resource "aws_instance" "it_ops_14_ec2581" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_14_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-14-ec2581" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_14_nb997" {
  name          = "arior-1njchw-it-ops-14-nb997"
  role_arn      = aws_iam_role.it_ops_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_15_ec2593" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_15_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-15-ec2593" }
}

resource "aws_cloudformation_stack" "it_ops_15_stack177" {
  name          = "arior-1njchw-it-ops-15-stack177"
  iam_role_arn  = aws_iam_role.it_ops_15_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_16_ec2189" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_16_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-16-ec2189" }
}

resource "aws_cloudformation_stack" "it_ops_16_stack605" {
  name          = "arior-1njchw-it-ops-16-stack605"
  iam_role_arn  = aws_iam_role.it_ops_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_17_ec2201" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_17_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-17-ec2201" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_17_nb617" {
  name          = "arior-1njchw-it-ops-17-nb617"
  role_arn      = aws_iam_role.it_ops_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_18_ec2213" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_18_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-18-ec2213" }
}

resource "aws_glue_dev_endpoint" "it_ops_18_glue629" {
  name     = "arior-1njchw-it-ops-18-glue629"
  role_arn = aws_iam_role.it_ops_18_glue_role.arn
}

resource "aws_instance" "it_ops_19_ec2225" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_19_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-19-ec2225" }
}

resource "aws_instance" "it_ops_19_ec2641" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_19_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-19-ec2641" }
}

resource "aws_glue_dev_endpoint" "it_ops_2_glue21" {
  name     = "arior-1njchw-it-ops-2-glue21"
  role_arn = aws_iam_role.it_ops_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "it_ops_2_nb437" {
  name          = "arior-1njchw-it-ops-2-nb437"
  role_arn      = aws_iam_role.it_ops_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "it_ops_2_stack853" {
  name          = "arior-1njchw-it-ops-2-stack853"
  iam_role_arn  = aws_iam_role.it_ops_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_20_ec2237" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_20_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-20-ec2237" }
}

resource "aws_instance" "it_ops_20_ec2653" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_20_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-20-ec2653" }
}

resource "aws_instance" "it_ops_21_ec2665" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_21_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-21-ec2665" }
}

resource "aws_cloudformation_stack" "it_ops_21_stack249" {
  name          = "arior-1njchw-it-ops-21-stack249"
  iam_role_arn  = aws_iam_role.it_ops_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "it_ops_22_glue261" {
  name     = "arior-1njchw-it-ops-22-glue261"
  role_arn = aws_iam_role.it_ops_22_glue_role.arn
}

resource "aws_glue_dev_endpoint" "it_ops_22_glue677" {
  name     = "arior-1njchw-it-ops-22-glue677"
  role_arn = aws_iam_role.it_ops_22_glue_role.arn
}

resource "aws_instance" "it_ops_23_ec2689" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_23_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-23-ec2689" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_23_nb273" {
  name          = "arior-1njchw-it-ops-23-nb273"
  role_arn      = aws_iam_role.it_ops_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_24_ec2285" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_24_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-24-ec2285" }
}

resource "aws_instance" "it_ops_24_ec2701" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_24_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-24-ec2701" }
}

resource "aws_instance" "it_ops_25_ec2297" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_25_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-25-ec2297" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_25_nb713" {
  name          = "arior-1njchw-it-ops-25-nb713"
  role_arn      = aws_iam_role.it_ops_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_26_ec2725" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_26_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-26-ec2725" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_26_nb309" {
  name          = "arior-1njchw-it-ops-26-nb309"
  role_arn      = aws_iam_role.it_ops_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_27_ec2737" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_27_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-27-ec2737" }
}

resource "aws_cloudformation_stack" "it_ops_27_stack321" {
  name          = "arior-1njchw-it-ops-27-stack321"
  iam_role_arn  = aws_iam_role.it_ops_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_28_ec2333" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_28_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-28-ec2333" }
}

resource "aws_cloudformation_stack" "it_ops_28_stack749" {
  name          = "arior-1njchw-it-ops-28-stack749"
  iam_role_arn  = aws_iam_role.it_ops_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "it_ops_29_nb345" {
  name          = "arior-1njchw-it-ops-29-nb345"
  role_arn      = aws_iam_role.it_ops_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "it_ops_29_nb761" {
  name          = "arior-1njchw-it-ops-29-nb761"
  role_arn      = aws_iam_role.it_ops_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_3_ec233" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_3_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-3-ec233" }
}

resource "aws_instance" "it_ops_3_ec2865" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_3_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-3-ec2865" }
}

resource "aws_cloudformation_stack" "it_ops_3_stack449" {
  name          = "arior-1njchw-it-ops-3-stack449"
  iam_role_arn  = aws_iam_role.it_ops_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "it_ops_30_glue357" {
  name     = "arior-1njchw-it-ops-30-glue357"
  role_arn = aws_iam_role.it_ops_30_glue_role.arn
}

resource "aws_glue_dev_endpoint" "it_ops_30_glue773" {
  name     = "arior-1njchw-it-ops-30-glue773"
  role_arn = aws_iam_role.it_ops_30_glue_role.arn
}

resource "aws_instance" "it_ops_31_ec2369" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_31_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-31-ec2369" }
}

resource "aws_cloudformation_stack" "it_ops_31_stack785" {
  name          = "arior-1njchw-it-ops-31-stack785"
  iam_role_arn  = aws_iam_role.it_ops_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_32_ec2381" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_32_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-32-ec2381" }
}

resource "aws_instance" "it_ops_32_ec2797" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_32_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-32-ec2797" }
}

resource "aws_instance" "it_ops_33_ec2393" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_33_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-33-ec2393" }
}

resource "aws_instance" "it_ops_33_ec2809" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_33_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-33-ec2809" }
}

resource "aws_instance" "it_ops_34_ec2821" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_34_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-34-ec2821" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_34_nb405" {
  name          = "arior-1njchw-it-ops-34-nb405"
  role_arn      = aws_iam_role.it_ops_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_4_ec2877" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_4_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-4-ec2877" }
}

resource "aws_glue_dev_endpoint" "it_ops_4_glue45" {
  name     = "arior-1njchw-it-ops-4-glue45"
  role_arn = aws_iam_role.it_ops_4_glue_role.arn
}

resource "aws_glue_dev_endpoint" "it_ops_4_glue461" {
  name     = "arior-1njchw-it-ops-4-glue461"
  role_arn = aws_iam_role.it_ops_4_glue_role.arn
}

resource "aws_instance" "it_ops_5_ec257" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_5_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-5-ec257" }
}

resource "aws_cloudformation_stack" "it_ops_5_stack473" {
  name          = "arior-1njchw-it-ops-5-stack473"
  iam_role_arn  = aws_iam_role.it_ops_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "it_ops_5_stack889" {
  name          = "arior-1njchw-it-ops-5-stack889"
  iam_role_arn  = aws_iam_role.it_ops_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_6_ec2485" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_6_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-6-ec2485" }
}

resource "aws_glue_dev_endpoint" "it_ops_6_glue901" {
  name     = "arior-1njchw-it-ops-6-glue901"
  role_arn = aws_iam_role.it_ops_6_glue_role.arn
}

resource "aws_cloudformation_stack" "it_ops_6_stack69" {
  name          = "arior-1njchw-it-ops-6-stack69"
  iam_role_arn  = aws_iam_role.it_ops_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_7_ec2497" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_7_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-7-ec2497" }
}

resource "aws_instance" "it_ops_7_ec281" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_7_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-7-ec281" }
}

resource "aws_cloudformation_stack" "it_ops_7_stack913" {
  name          = "arior-1njchw-it-ops-7-stack913"
  iam_role_arn  = aws_iam_role.it_ops_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_8_ec2509" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_8_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-8-ec2509" }
}

resource "aws_instance" "it_ops_8_ec293" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_8_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-8-ec293" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_8_nb925" {
  name          = "arior-1njchw-it-ops-8-nb925"
  role_arn      = aws_iam_role.it_ops_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "it_ops_9_ec2937" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_9_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-9-ec2937" }
}

resource "aws_sagemaker_notebook_instance" "it_ops_9_nb521" {
  name          = "arior-1njchw-it-ops-9-nb521"
  role_arn      = aws_iam_role.it_ops_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "it_ops_9_stack105" {
  name          = "arior-1njchw-it-ops-9-stack105"
  iam_role_arn  = aws_iam_role.it_ops_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "it_ops_ec2425" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-ec2425" }
}

resource "aws_instance" "it_ops_ec29" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.it_ops_svc.name
  tags                 = { Name = "arior-1njchw-it-ops-ec29" }
}

resource "aws_cloudformation_stack" "it_ops_stack841" {
  name          = "arior-1njchw-it-ops-stack841"
  iam_role_arn  = aws_iam_role.it_ops_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_10_ec2942" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_10_svc.name
  tags                 = { Name = "arior-1njchw-licensing-10-ec2942" }
}

resource "aws_sagemaker_notebook_instance" "licensing_10_nb110" {
  name          = "arior-1njchw-licensing-10-nb110"
  role_arn      = aws_iam_role.licensing_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_10_nb526" {
  name          = "arior-1njchw-licensing-10-nb526"
  role_arn      = aws_iam_role.licensing_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "licensing_11_ec2122" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_11_svc.name
  tags                 = { Name = "arior-1njchw-licensing-11-ec2122" }
}

resource "aws_sagemaker_notebook_instance" "licensing_11_nb538" {
  name          = "arior-1njchw-licensing-11-nb538"
  role_arn      = aws_iam_role.licensing_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_11_nb954" {
  name          = "arior-1njchw-licensing-11-nb954"
  role_arn      = aws_iam_role.licensing_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "licensing_12_ec2134" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_12_svc.name
  tags                 = { Name = "arior-1njchw-licensing-12-ec2134" }
}

resource "aws_instance" "licensing_12_ec2966" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_12_svc.name
  tags                 = { Name = "arior-1njchw-licensing-12-ec2966" }
}

resource "aws_sagemaker_notebook_instance" "licensing_12_nb550" {
  name          = "arior-1njchw-licensing-12-nb550"
  role_arn      = aws_iam_role.licensing_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "licensing_13_ec2146" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_13_svc.name
  tags                 = { Name = "arior-1njchw-licensing-13-ec2146" }
}

resource "aws_instance" "licensing_13_ec2562" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_13_svc.name
  tags                 = { Name = "arior-1njchw-licensing-13-ec2562" }
}

resource "aws_glue_dev_endpoint" "licensing_13_glue978" {
  name     = "arior-1njchw-licensing-13-glue978"
  role_arn = aws_iam_role.licensing_13_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_14_stack158" {
  name          = "arior-1njchw-licensing-14-stack158"
  iam_role_arn  = aws_iam_role.licensing_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "licensing_14_stack574" {
  name          = "arior-1njchw-licensing-14-stack574"
  iam_role_arn  = aws_iam_role.licensing_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "licensing_14_stack990" {
  name          = "arior-1njchw-licensing-14-stack990"
  iam_role_arn  = aws_iam_role.licensing_14_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_15_ec2170" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_15_svc.name
  tags                 = { Name = "arior-1njchw-licensing-15-ec2170" }
}

resource "aws_glue_dev_endpoint" "licensing_15_glue586" {
  name     = "arior-1njchw-licensing-15-glue586"
  role_arn = aws_iam_role.licensing_15_glue_role.arn
}

resource "aws_glue_dev_endpoint" "licensing_16_glue598" {
  name     = "arior-1njchw-licensing-16-glue598"
  role_arn = aws_iam_role.licensing_16_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_16_stack182" {
  name          = "arior-1njchw-licensing-16-stack182"
  iam_role_arn  = aws_iam_role.licensing_16_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_17_ec2194" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_17_svc.name
  tags                 = { Name = "arior-1njchw-licensing-17-ec2194" }
}

resource "aws_instance" "licensing_17_ec2610" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_17_svc.name
  tags                 = { Name = "arior-1njchw-licensing-17-ec2610" }
}

resource "aws_instance" "licensing_18_ec2622" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_18_svc.name
  tags                 = { Name = "arior-1njchw-licensing-18-ec2622" }
}

resource "aws_cloudformation_stack" "licensing_18_stack206" {
  name          = "arior-1njchw-licensing-18-stack206"
  iam_role_arn  = aws_iam_role.licensing_18_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "licensing_19_glue218" {
  name     = "arior-1njchw-licensing-19-glue218"
  role_arn = aws_iam_role.licensing_19_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_19_stack634" {
  name          = "arior-1njchw-licensing-19-stack634"
  iam_role_arn  = aws_iam_role.licensing_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_2_ec214" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_2_svc.name
  tags                 = { Name = "arior-1njchw-licensing-2-ec214" }
}

resource "aws_instance" "licensing_2_ec2430" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_2_svc.name
  tags                 = { Name = "arior-1njchw-licensing-2-ec2430" }
}

resource "aws_instance" "licensing_2_ec2846" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_2_svc.name
  tags                 = { Name = "arior-1njchw-licensing-2-ec2846" }
}

resource "aws_instance" "licensing_20_ec2646" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_20_svc.name
  tags                 = { Name = "arior-1njchw-licensing-20-ec2646" }
}

resource "aws_sagemaker_notebook_instance" "licensing_20_nb230" {
  name          = "arior-1njchw-licensing-20-nb230"
  role_arn      = aws_iam_role.licensing_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_21_nb658" {
  name          = "arior-1njchw-licensing-21-nb658"
  role_arn      = aws_iam_role.licensing_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_21_stack242" {
  name          = "arior-1njchw-licensing-21-stack242"
  iam_role_arn  = aws_iam_role.licensing_21_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_22_ec2254" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_22_svc.name
  tags                 = { Name = "arior-1njchw-licensing-22-ec2254" }
}

resource "aws_instance" "licensing_22_ec2670" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_22_svc.name
  tags                 = { Name = "arior-1njchw-licensing-22-ec2670" }
}

resource "aws_instance" "licensing_23_ec2682" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_23_svc.name
  tags                 = { Name = "arior-1njchw-licensing-23-ec2682" }
}

resource "aws_glue_dev_endpoint" "licensing_23_glue266" {
  name     = "arior-1njchw-licensing-23-glue266"
  role_arn = aws_iam_role.licensing_23_glue_role.arn
}

resource "aws_instance" "licensing_24_ec2278" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_24_svc.name
  tags                 = { Name = "arior-1njchw-licensing-24-ec2278" }
}

resource "aws_instance" "licensing_24_ec2694" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_24_svc.name
  tags                 = { Name = "arior-1njchw-licensing-24-ec2694" }
}

resource "aws_instance" "licensing_25_ec2706" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_25_svc.name
  tags                 = { Name = "arior-1njchw-licensing-25-ec2706" }
}

resource "aws_cloudformation_stack" "licensing_25_stack290" {
  name          = "arior-1njchw-licensing-25-stack290"
  iam_role_arn  = aws_iam_role.licensing_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_26_ec2718" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_26_svc.name
  tags                 = { Name = "arior-1njchw-licensing-26-ec2718" }
}

resource "aws_sagemaker_notebook_instance" "licensing_26_nb302" {
  name          = "arior-1njchw-licensing-26-nb302"
  role_arn      = aws_iam_role.licensing_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_27_nb730" {
  name          = "arior-1njchw-licensing-27-nb730"
  role_arn      = aws_iam_role.licensing_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_27_stack314" {
  name          = "arior-1njchw-licensing-27-stack314"
  iam_role_arn  = aws_iam_role.licensing_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_28_ec2326" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_28_svc.name
  tags                 = { Name = "arior-1njchw-licensing-28-ec2326" }
}

resource "aws_cloudformation_stack" "licensing_28_stack742" {
  name          = "arior-1njchw-licensing-28-stack742"
  iam_role_arn  = aws_iam_role.licensing_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_29_ec2338" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_29_svc.name
  tags                 = { Name = "arior-1njchw-licensing-29-ec2338" }
}

resource "aws_instance" "licensing_29_ec2754" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_29_svc.name
  tags                 = { Name = "arior-1njchw-licensing-29-ec2754" }
}

resource "aws_instance" "licensing_3_ec226" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_3_svc.name
  tags                 = { Name = "arior-1njchw-licensing-3-ec226" }
}

resource "aws_glue_dev_endpoint" "licensing_3_glue858" {
  name     = "arior-1njchw-licensing-3-glue858"
  role_arn = aws_iam_role.licensing_3_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_3_stack442" {
  name          = "arior-1njchw-licensing-3-stack442"
  iam_role_arn  = aws_iam_role.licensing_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "licensing_30_glue350" {
  name     = "arior-1njchw-licensing-30-glue350"
  role_arn = aws_iam_role.licensing_30_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_30_stack766" {
  name          = "arior-1njchw-licensing-30-stack766"
  iam_role_arn  = aws_iam_role.licensing_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "licensing_31_glue362" {
  name     = "arior-1njchw-licensing-31-glue362"
  role_arn = aws_iam_role.licensing_31_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "licensing_31_nb778" {
  name          = "arior-1njchw-licensing-31-nb778"
  role_arn      = aws_iam_role.licensing_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "licensing_32_glue790" {
  name     = "arior-1njchw-licensing-32-glue790"
  role_arn = aws_iam_role.licensing_32_glue_role.arn
}

resource "aws_cloudformation_stack" "licensing_32_stack374" {
  name          = "arior-1njchw-licensing-32-stack374"
  iam_role_arn  = aws_iam_role.licensing_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_33_ec2386" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_33_svc.name
  tags                 = { Name = "arior-1njchw-licensing-33-ec2386" }
}

resource "aws_glue_dev_endpoint" "licensing_33_glue802" {
  name     = "arior-1njchw-licensing-33-glue802"
  role_arn = aws_iam_role.licensing_33_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "licensing_34_nb814" {
  name          = "arior-1njchw-licensing-34-nb814"
  role_arn      = aws_iam_role.licensing_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_34_stack398" {
  name          = "arior-1njchw-licensing-34-stack398"
  iam_role_arn  = aws_iam_role.licensing_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "licensing_35_stack410" {
  name          = "arior-1njchw-licensing-35-stack410"
  iam_role_arn  = aws_iam_role.licensing_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "licensing_35_stack826" {
  name          = "arior-1njchw-licensing-35-stack826"
  iam_role_arn  = aws_iam_role.licensing_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_4_ec238" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_4_svc.name
  tags                 = { Name = "arior-1njchw-licensing-4-ec238" }
}

resource "aws_instance" "licensing_4_ec2454" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_4_svc.name
  tags                 = { Name = "arior-1njchw-licensing-4-ec2454" }
}

resource "aws_instance" "licensing_4_ec2870" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_4_svc.name
  tags                 = { Name = "arior-1njchw-licensing-4-ec2870" }
}

resource "aws_instance" "licensing_5_ec2466" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_5_svc.name
  tags                 = { Name = "arior-1njchw-licensing-5-ec2466" }
}

resource "aws_instance" "licensing_5_ec250" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_5_svc.name
  tags                 = { Name = "arior-1njchw-licensing-5-ec250" }
}

resource "aws_glue_dev_endpoint" "licensing_5_glue882" {
  name     = "arior-1njchw-licensing-5-glue882"
  role_arn = aws_iam_role.licensing_5_glue_role.arn
}

resource "aws_instance" "licensing_6_ec2894" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_6_svc.name
  tags                 = { Name = "arior-1njchw-licensing-6-ec2894" }
}

resource "aws_glue_dev_endpoint" "licensing_6_glue478" {
  name     = "arior-1njchw-licensing-6-glue478"
  role_arn = aws_iam_role.licensing_6_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "licensing_6_nb62" {
  name          = "arior-1njchw-licensing-6-nb62"
  role_arn      = aws_iam_role.licensing_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "licensing_7_ec2906" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_7_svc.name
  tags                 = { Name = "arior-1njchw-licensing-7-ec2906" }
}

resource "aws_sagemaker_notebook_instance" "licensing_7_nb490" {
  name          = "arior-1njchw-licensing-7-nb490"
  role_arn      = aws_iam_role.licensing_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_7_stack74" {
  name          = "arior-1njchw-licensing-7-stack74"
  iam_role_arn  = aws_iam_role.licensing_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_8_ec2502" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_8_svc.name
  tags                 = { Name = "arior-1njchw-licensing-8-ec2502" }
}

resource "aws_instance" "licensing_8_ec286" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_8_svc.name
  tags                 = { Name = "arior-1njchw-licensing-8-ec286" }
}

resource "aws_sagemaker_notebook_instance" "licensing_8_nb918" {
  name          = "arior-1njchw-licensing-8-nb918"
  role_arn      = aws_iam_role.licensing_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_9_nb514" {
  name          = "arior-1njchw-licensing-9-nb514"
  role_arn      = aws_iam_role.licensing_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "licensing_9_nb930" {
  name          = "arior-1njchw-licensing-9-nb930"
  role_arn      = aws_iam_role.licensing_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_9_stack98" {
  name          = "arior-1njchw-licensing-9-stack98"
  iam_role_arn  = aws_iam_role.licensing_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "licensing_ec2418" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.licensing_svc.name
  tags                 = { Name = "arior-1njchw-licensing-ec2418" }
}

resource "aws_sagemaker_notebook_instance" "licensing_nb2" {
  name          = "arior-1njchw-licensing-nb2"
  role_arn      = aws_iam_role.licensing_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "licensing_stack834" {
  name          = "arior-1njchw-licensing-stack834"
  iam_role_arn  = aws_iam_role.licensing_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_10_ec2947" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_10_svc.name
  tags                 = { Name = "arior-1njchw-open-data-10-ec2947" }
}

resource "aws_glue_dev_endpoint" "open_data_10_glue531" {
  name     = "arior-1njchw-open-data-10-glue531"
  role_arn = aws_iam_role.open_data_10_glue_role.arn
}

resource "aws_cloudformation_stack" "open_data_10_stack115" {
  name          = "arior-1njchw-open-data-10-stack115"
  iam_role_arn  = aws_iam_role.open_data_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_11_ec2127" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_11_svc.name
  tags                 = { Name = "arior-1njchw-open-data-11-ec2127" }
}

resource "aws_instance" "open_data_11_ec2959" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_11_svc.name
  tags                 = { Name = "arior-1njchw-open-data-11-ec2959" }
}

resource "aws_cloudformation_stack" "open_data_11_stack543" {
  name          = "arior-1njchw-open-data-11-stack543"
  iam_role_arn  = aws_iam_role.open_data_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_12_ec2139" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_12_svc.name
  tags                 = { Name = "arior-1njchw-open-data-12-ec2139" }
}

resource "aws_glue_dev_endpoint" "open_data_12_glue555" {
  name     = "arior-1njchw-open-data-12-glue555"
  role_arn = aws_iam_role.open_data_12_glue_role.arn
}

resource "aws_cloudformation_stack" "open_data_12_stack971" {
  name          = "arior-1njchw-open-data-12-stack971"
  iam_role_arn  = aws_iam_role.open_data_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_13_ec2151" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_13_svc.name
  tags                 = { Name = "arior-1njchw-open-data-13-ec2151" }
}

resource "aws_instance" "open_data_13_ec2567" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_13_svc.name
  tags                 = { Name = "arior-1njchw-open-data-13-ec2567" }
}

resource "aws_sagemaker_notebook_instance" "open_data_13_nb983" {
  name          = "arior-1njchw-open-data-13-nb983"
  role_arn      = aws_iam_role.open_data_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_14_ec2163" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_14_svc.name
  tags                 = { Name = "arior-1njchw-open-data-14-ec2163" }
}

resource "aws_instance" "open_data_14_ec2579" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_14_svc.name
  tags                 = { Name = "arior-1njchw-open-data-14-ec2579" }
}

resource "aws_instance" "open_data_14_ec2995" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_14_svc.name
  tags                 = { Name = "arior-1njchw-open-data-14-ec2995" }
}

resource "aws_instance" "open_data_15_ec2591" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_15_svc.name
  tags                 = { Name = "arior-1njchw-open-data-15-ec2591" }
}

resource "aws_sagemaker_notebook_instance" "open_data_15_nb175" {
  name          = "arior-1njchw-open-data-15-nb175"
  role_arn      = aws_iam_role.open_data_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_16_ec2187" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_16_svc.name
  tags                 = { Name = "arior-1njchw-open-data-16-ec2187" }
}

resource "aws_sagemaker_notebook_instance" "open_data_16_nb603" {
  name          = "arior-1njchw-open-data-16-nb603"
  role_arn      = aws_iam_role.open_data_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_17_ec2199" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_17_svc.name
  tags                 = { Name = "arior-1njchw-open-data-17-ec2199" }
}

resource "aws_sagemaker_notebook_instance" "open_data_17_nb615" {
  name          = "arior-1njchw-open-data-17-nb615"
  role_arn      = aws_iam_role.open_data_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_18_ec2211" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_18_svc.name
  tags                 = { Name = "arior-1njchw-open-data-18-ec2211" }
}

resource "aws_instance" "open_data_18_ec2627" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_18_svc.name
  tags                 = { Name = "arior-1njchw-open-data-18-ec2627" }
}

resource "aws_instance" "open_data_19_ec2223" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_19_svc.name
  tags                 = { Name = "arior-1njchw-open-data-19-ec2223" }
}

resource "aws_instance" "open_data_19_ec2639" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_19_svc.name
  tags                 = { Name = "arior-1njchw-open-data-19-ec2639" }
}

resource "aws_instance" "open_data_2_ec2435" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_2_svc.name
  tags                 = { Name = "arior-1njchw-open-data-2-ec2435" }
}

resource "aws_cloudformation_stack" "open_data_2_stack19" {
  name          = "arior-1njchw-open-data-2-stack19"
  iam_role_arn  = aws_iam_role.open_data_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "open_data_2_stack851" {
  name          = "arior-1njchw-open-data-2-stack851"
  iam_role_arn  = aws_iam_role.open_data_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_20_ec2235" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_20_svc.name
  tags                 = { Name = "arior-1njchw-open-data-20-ec2235" }
}

resource "aws_instance" "open_data_20_ec2651" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_20_svc.name
  tags                 = { Name = "arior-1njchw-open-data-20-ec2651" }
}

resource "aws_instance" "open_data_21_ec2247" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_21_svc.name
  tags                 = { Name = "arior-1njchw-open-data-21-ec2247" }
}

resource "aws_instance" "open_data_21_ec2663" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_21_svc.name
  tags                 = { Name = "arior-1njchw-open-data-21-ec2663" }
}

resource "aws_glue_dev_endpoint" "open_data_22_glue675" {
  name     = "arior-1njchw-open-data-22-glue675"
  role_arn = aws_iam_role.open_data_22_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "open_data_22_nb259" {
  name          = "arior-1njchw-open-data-22-nb259"
  role_arn      = aws_iam_role.open_data_22_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_23_ec2687" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_23_svc.name
  tags                 = { Name = "arior-1njchw-open-data-23-ec2687" }
}

resource "aws_cloudformation_stack" "open_data_23_stack271" {
  name          = "arior-1njchw-open-data-23-stack271"
  iam_role_arn  = aws_iam_role.open_data_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "open_data_24_nb699" {
  name          = "arior-1njchw-open-data-24-nb699"
  role_arn      = aws_iam_role.open_data_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "open_data_24_stack283" {
  name          = "arior-1njchw-open-data-24-stack283"
  iam_role_arn  = aws_iam_role.open_data_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "open_data_25_glue295" {
  name     = "arior-1njchw-open-data-25-glue295"
  role_arn = aws_iam_role.open_data_25_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "open_data_25_nb711" {
  name          = "arior-1njchw-open-data-25-nb711"
  role_arn      = aws_iam_role.open_data_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "open_data_26_glue307" {
  name     = "arior-1njchw-open-data-26-glue307"
  role_arn = aws_iam_role.open_data_26_glue_role.arn
}

resource "aws_cloudformation_stack" "open_data_26_stack723" {
  name          = "arior-1njchw-open-data-26-stack723"
  iam_role_arn  = aws_iam_role.open_data_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_27_ec2319" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_27_svc.name
  tags                 = { Name = "arior-1njchw-open-data-27-ec2319" }
}

resource "aws_cloudformation_stack" "open_data_27_stack735" {
  name          = "arior-1njchw-open-data-27-stack735"
  iam_role_arn  = aws_iam_role.open_data_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_28_ec2747" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_28_svc.name
  tags                 = { Name = "arior-1njchw-open-data-28-ec2747" }
}

resource "aws_cloudformation_stack" "open_data_28_stack331" {
  name          = "arior-1njchw-open-data-28-stack331"
  iam_role_arn  = aws_iam_role.open_data_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_29_ec2343" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_29_svc.name
  tags                 = { Name = "arior-1njchw-open-data-29-ec2343" }
}

resource "aws_cloudformation_stack" "open_data_29_stack759" {
  name          = "arior-1njchw-open-data-29-stack759"
  iam_role_arn  = aws_iam_role.open_data_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "open_data_3_glue31" {
  name     = "arior-1njchw-open-data-3-glue31"
  role_arn = aws_iam_role.open_data_3_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "open_data_3_nb863" {
  name          = "arior-1njchw-open-data-3-nb863"
  role_arn      = aws_iam_role.open_data_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "open_data_3_stack447" {
  name          = "arior-1njchw-open-data-3-stack447"
  iam_role_arn  = aws_iam_role.open_data_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_30_ec2355" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_30_svc.name
  tags                 = { Name = "arior-1njchw-open-data-30-ec2355" }
}

resource "aws_instance" "open_data_30_ec2771" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_30_svc.name
  tags                 = { Name = "arior-1njchw-open-data-30-ec2771" }
}

resource "aws_instance" "open_data_31_ec2367" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_31_svc.name
  tags                 = { Name = "arior-1njchw-open-data-31-ec2367" }
}

resource "aws_sagemaker_notebook_instance" "open_data_31_nb783" {
  name          = "arior-1njchw-open-data-31-nb783"
  role_arn      = aws_iam_role.open_data_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_32_ec2795" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_32_svc.name
  tags                 = { Name = "arior-1njchw-open-data-32-ec2795" }
}

resource "aws_cloudformation_stack" "open_data_32_stack379" {
  name          = "arior-1njchw-open-data-32-stack379"
  iam_role_arn  = aws_iam_role.open_data_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_33_ec2391" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_33_svc.name
  tags                 = { Name = "arior-1njchw-open-data-33-ec2391" }
}

resource "aws_instance" "open_data_33_ec2807" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_33_svc.name
  tags                 = { Name = "arior-1njchw-open-data-33-ec2807" }
}

resource "aws_instance" "open_data_34_ec2403" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_34_svc.name
  tags                 = { Name = "arior-1njchw-open-data-34-ec2403" }
}

resource "aws_sagemaker_notebook_instance" "open_data_34_nb819" {
  name          = "arior-1njchw-open-data-34-nb819"
  role_arn      = aws_iam_role.open_data_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "open_data_35_ec2415" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_35_svc.name
  tags                 = { Name = "arior-1njchw-open-data-35-ec2415" }
}

resource "aws_instance" "open_data_35_ec2831" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_35_svc.name
  tags                 = { Name = "arior-1njchw-open-data-35-ec2831" }
}

resource "aws_instance" "open_data_4_ec243" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_4_svc.name
  tags                 = { Name = "arior-1njchw-open-data-4-ec243" }
}

resource "aws_sagemaker_notebook_instance" "open_data_4_nb875" {
  name          = "arior-1njchw-open-data-4-nb875"
  role_arn      = aws_iam_role.open_data_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "open_data_4_stack459" {
  name          = "arior-1njchw-open-data-4-stack459"
  iam_role_arn  = aws_iam_role.open_data_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_5_ec255" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_5_svc.name
  tags                 = { Name = "arior-1njchw-open-data-5-ec255" }
}

resource "aws_instance" "open_data_5_ec2887" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_5_svc.name
  tags                 = { Name = "arior-1njchw-open-data-5-ec2887" }
}

resource "aws_cloudformation_stack" "open_data_5_stack471" {
  name          = "arior-1njchw-open-data-5-stack471"
  iam_role_arn  = aws_iam_role.open_data_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_6_ec2483" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_6_svc.name
  tags                 = { Name = "arior-1njchw-open-data-6-ec2483" }
}

resource "aws_sagemaker_notebook_instance" "open_data_6_nb67" {
  name          = "arior-1njchw-open-data-6-nb67"
  role_arn      = aws_iam_role.open_data_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "open_data_6_stack899" {
  name          = "arior-1njchw-open-data-6-stack899"
  iam_role_arn  = aws_iam_role.open_data_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_7_ec2495" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_7_svc.name
  tags                 = { Name = "arior-1njchw-open-data-7-ec2495" }
}

resource "aws_instance" "open_data_7_ec2911" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_7_svc.name
  tags                 = { Name = "arior-1njchw-open-data-7-ec2911" }
}

resource "aws_glue_dev_endpoint" "open_data_7_glue79" {
  name     = "arior-1njchw-open-data-7-glue79"
  role_arn = aws_iam_role.open_data_7_glue_role.arn
}

resource "aws_instance" "open_data_8_ec2507" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_8_svc.name
  tags                 = { Name = "arior-1njchw-open-data-8-ec2507" }
}

resource "aws_instance" "open_data_8_ec291" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_8_svc.name
  tags                 = { Name = "arior-1njchw-open-data-8-ec291" }
}

resource "aws_cloudformation_stack" "open_data_8_stack923" {
  name          = "arior-1njchw-open-data-8-stack923"
  iam_role_arn  = aws_iam_role.open_data_8_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "open_data_9_ec2103" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_9_svc.name
  tags                 = { Name = "arior-1njchw-open-data-9-ec2103" }
}

resource "aws_instance" "open_data_9_ec2519" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_9_svc.name
  tags                 = { Name = "arior-1njchw-open-data-9-ec2519" }
}

resource "aws_instance" "open_data_9_ec2935" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_9_svc.name
  tags                 = { Name = "arior-1njchw-open-data-9-ec2935" }
}

resource "aws_instance" "open_data_ec2423" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_svc.name
  tags                 = { Name = "arior-1njchw-open-data-ec2423" }
}

resource "aws_instance" "open_data_ec27" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_svc.name
  tags                 = { Name = "arior-1njchw-open-data-ec27" }
}

resource "aws_instance" "open_data_ec2839" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.open_data_svc.name
  tags                 = { Name = "arior-1njchw-open-data-ec2839" }
}

resource "aws_instance" "procurement_10_ec2112" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_10_svc.name
  tags                 = { Name = "arior-1njchw-procurement-10-ec2112" }
}

resource "aws_instance" "procurement_10_ec2944" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_10_svc.name
  tags                 = { Name = "arior-1njchw-procurement-10-ec2944" }
}

resource "aws_sagemaker_notebook_instance" "procurement_10_nb528" {
  name          = "arior-1njchw-procurement-10-nb528"
  role_arn      = aws_iam_role.procurement_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_11_ec2540" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_11_svc.name
  tags                 = { Name = "arior-1njchw-procurement-11-ec2540" }
}

resource "aws_glue_dev_endpoint" "procurement_11_glue124" {
  name     = "arior-1njchw-procurement-11-glue124"
  role_arn = aws_iam_role.procurement_11_glue_role.arn
}

resource "aws_cloudformation_stack" "procurement_11_stack956" {
  name          = "arior-1njchw-procurement-11-stack956"
  iam_role_arn  = aws_iam_role.procurement_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_12_ec2136" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_12_svc.name
  tags                 = { Name = "arior-1njchw-procurement-12-ec2136" }
}

resource "aws_instance" "procurement_12_ec2968" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_12_svc.name
  tags                 = { Name = "arior-1njchw-procurement-12-ec2968" }
}

resource "aws_sagemaker_notebook_instance" "procurement_12_nb552" {
  name          = "arior-1njchw-procurement-12-nb552"
  role_arn      = aws_iam_role.procurement_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_13_ec2980" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_13_svc.name
  tags                 = { Name = "arior-1njchw-procurement-13-ec2980" }
}

resource "aws_glue_dev_endpoint" "procurement_13_glue148" {
  name     = "arior-1njchw-procurement-13-glue148"
  role_arn = aws_iam_role.procurement_13_glue_role.arn
}

resource "aws_cloudformation_stack" "procurement_13_stack564" {
  name          = "arior-1njchw-procurement-13-stack564"
  iam_role_arn  = aws_iam_role.procurement_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_14_ec2576" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_14_svc.name
  tags                 = { Name = "arior-1njchw-procurement-14-ec2576" }
}

resource "aws_glue_dev_endpoint" "procurement_14_glue160" {
  name     = "arior-1njchw-procurement-14-glue160"
  role_arn = aws_iam_role.procurement_14_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "procurement_14_nb992" {
  name          = "arior-1njchw-procurement-14-nb992"
  role_arn      = aws_iam_role.procurement_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_15_ec2172" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_15_svc.name
  tags                 = { Name = "arior-1njchw-procurement-15-ec2172" }
}

resource "aws_instance" "procurement_15_ec2588" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_15_svc.name
  tags                 = { Name = "arior-1njchw-procurement-15-ec2588" }
}

resource "aws_instance" "procurement_16_ec2184" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_16_svc.name
  tags                 = { Name = "arior-1njchw-procurement-16-ec2184" }
}

resource "aws_instance" "procurement_16_ec2600" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_16_svc.name
  tags                 = { Name = "arior-1njchw-procurement-16-ec2600" }
}

resource "aws_instance" "procurement_17_ec2612" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_17_svc.name
  tags                 = { Name = "arior-1njchw-procurement-17-ec2612" }
}

resource "aws_sagemaker_notebook_instance" "procurement_17_nb196" {
  name          = "arior-1njchw-procurement-17-nb196"
  role_arn      = aws_iam_role.procurement_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_18_ec2624" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_18_svc.name
  tags                 = { Name = "arior-1njchw-procurement-18-ec2624" }
}

resource "aws_glue_dev_endpoint" "procurement_18_glue208" {
  name     = "arior-1njchw-procurement-18-glue208"
  role_arn = aws_iam_role.procurement_18_glue_role.arn
}

resource "aws_instance" "procurement_19_ec2636" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_19_svc.name
  tags                 = { Name = "arior-1njchw-procurement-19-ec2636" }
}

resource "aws_cloudformation_stack" "procurement_19_stack220" {
  name          = "arior-1njchw-procurement-19-stack220"
  iam_role_arn  = aws_iam_role.procurement_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_2_ec216" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_2_svc.name
  tags                 = { Name = "arior-1njchw-procurement-2-ec216" }
}

resource "aws_instance" "procurement_2_ec2432" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_2_svc.name
  tags                 = { Name = "arior-1njchw-procurement-2-ec2432" }
}

resource "aws_instance" "procurement_2_ec2848" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_2_svc.name
  tags                 = { Name = "arior-1njchw-procurement-2-ec2848" }
}

resource "aws_glue_dev_endpoint" "procurement_20_glue648" {
  name     = "arior-1njchw-procurement-20-glue648"
  role_arn = aws_iam_role.procurement_20_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "procurement_20_nb232" {
  name          = "arior-1njchw-procurement-20-nb232"
  role_arn      = aws_iam_role.procurement_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_21_ec2244" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_21_svc.name
  tags                 = { Name = "arior-1njchw-procurement-21-ec2244" }
}

resource "aws_instance" "procurement_21_ec2660" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_21_svc.name
  tags                 = { Name = "arior-1njchw-procurement-21-ec2660" }
}

resource "aws_instance" "procurement_22_ec2256" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_22_svc.name
  tags                 = { Name = "arior-1njchw-procurement-22-ec2256" }
}

resource "aws_instance" "procurement_22_ec2672" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_22_svc.name
  tags                 = { Name = "arior-1njchw-procurement-22-ec2672" }
}

resource "aws_sagemaker_notebook_instance" "procurement_23_nb684" {
  name          = "arior-1njchw-procurement-23-nb684"
  role_arn      = aws_iam_role.procurement_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "procurement_23_stack268" {
  name          = "arior-1njchw-procurement-23-stack268"
  iam_role_arn  = aws_iam_role.procurement_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_24_ec2696" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_24_svc.name
  tags                 = { Name = "arior-1njchw-procurement-24-ec2696" }
}

resource "aws_sagemaker_notebook_instance" "procurement_24_nb280" {
  name          = "arior-1njchw-procurement-24-nb280"
  role_arn      = aws_iam_role.procurement_24_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_25_ec2708" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_25_svc.name
  tags                 = { Name = "arior-1njchw-procurement-25-ec2708" }
}

resource "aws_cloudformation_stack" "procurement_25_stack292" {
  name          = "arior-1njchw-procurement-25-stack292"
  iam_role_arn  = aws_iam_role.procurement_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "procurement_26_nb720" {
  name          = "arior-1njchw-procurement-26-nb720"
  role_arn      = aws_iam_role.procurement_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "procurement_26_stack304" {
  name          = "arior-1njchw-procurement-26-stack304"
  iam_role_arn  = aws_iam_role.procurement_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "procurement_27_glue732" {
  name     = "arior-1njchw-procurement-27-glue732"
  role_arn = aws_iam_role.procurement_27_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "procurement_27_nb316" {
  name          = "arior-1njchw-procurement-27-nb316"
  role_arn      = aws_iam_role.procurement_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "procurement_28_glue328" {
  name     = "arior-1njchw-procurement-28-glue328"
  role_arn = aws_iam_role.procurement_28_glue_role.arn
}

resource "aws_glue_dev_endpoint" "procurement_28_glue744" {
  name     = "arior-1njchw-procurement-28-glue744"
  role_arn = aws_iam_role.procurement_28_glue_role.arn
}

resource "aws_instance" "procurement_29_ec2756" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_29_svc.name
  tags                 = { Name = "arior-1njchw-procurement-29-ec2756" }
}

resource "aws_sagemaker_notebook_instance" "procurement_29_nb340" {
  name          = "arior-1njchw-procurement-29-nb340"
  role_arn      = aws_iam_role.procurement_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_3_ec228" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_3_svc.name
  tags                 = { Name = "arior-1njchw-procurement-3-ec228" }
}

resource "aws_instance" "procurement_3_ec2860" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_3_svc.name
  tags                 = { Name = "arior-1njchw-procurement-3-ec2860" }
}

resource "aws_cloudformation_stack" "procurement_3_stack444" {
  name          = "arior-1njchw-procurement-3-stack444"
  iam_role_arn  = aws_iam_role.procurement_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_30_ec2352" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_30_svc.name
  tags                 = { Name = "arior-1njchw-procurement-30-ec2352" }
}

resource "aws_instance" "procurement_30_ec2768" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_30_svc.name
  tags                 = { Name = "arior-1njchw-procurement-30-ec2768" }
}

resource "aws_instance" "procurement_31_ec2364" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_31_svc.name
  tags                 = { Name = "arior-1njchw-procurement-31-ec2364" }
}

resource "aws_cloudformation_stack" "procurement_31_stack780" {
  name          = "arior-1njchw-procurement-31-stack780"
  iam_role_arn  = aws_iam_role.procurement_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_32_ec2376" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_32_svc.name
  tags                 = { Name = "arior-1njchw-procurement-32-ec2376" }
}

resource "aws_instance" "procurement_32_ec2792" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_32_svc.name
  tags                 = { Name = "arior-1njchw-procurement-32-ec2792" }
}

resource "aws_instance" "procurement_33_ec2804" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_33_svc.name
  tags                 = { Name = "arior-1njchw-procurement-33-ec2804" }
}

resource "aws_sagemaker_notebook_instance" "procurement_33_nb388" {
  name          = "arior-1njchw-procurement-33-nb388"
  role_arn      = aws_iam_role.procurement_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_34_ec2816" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_34_svc.name
  tags                 = { Name = "arior-1njchw-procurement-34-ec2816" }
}

resource "aws_cloudformation_stack" "procurement_34_stack400" {
  name          = "arior-1njchw-procurement-34-stack400"
  iam_role_arn  = aws_iam_role.procurement_34_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_35_ec2412" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_35_svc.name
  tags                 = { Name = "arior-1njchw-procurement-35-ec2412" }
}

resource "aws_instance" "procurement_35_ec2828" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_35_svc.name
  tags                 = { Name = "arior-1njchw-procurement-35-ec2828" }
}

resource "aws_instance" "procurement_4_ec2456" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_4_svc.name
  tags                 = { Name = "arior-1njchw-procurement-4-ec2456" }
}

resource "aws_instance" "procurement_4_ec2872" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_4_svc.name
  tags                 = { Name = "arior-1njchw-procurement-4-ec2872" }
}

resource "aws_cloudformation_stack" "procurement_4_stack40" {
  name          = "arior-1njchw-procurement-4-stack40"
  iam_role_arn  = aws_iam_role.procurement_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_5_ec252" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_5_svc.name
  tags                 = { Name = "arior-1njchw-procurement-5-ec252" }
}

resource "aws_instance" "procurement_5_ec2884" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_5_svc.name
  tags                 = { Name = "arior-1njchw-procurement-5-ec2884" }
}

resource "aws_sagemaker_notebook_instance" "procurement_5_nb468" {
  name          = "arior-1njchw-procurement-5-nb468"
  role_arn      = aws_iam_role.procurement_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_6_ec264" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_6_svc.name
  tags                 = { Name = "arior-1njchw-procurement-6-ec264" }
}

resource "aws_instance" "procurement_6_ec2896" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_6_svc.name
  tags                 = { Name = "arior-1njchw-procurement-6-ec2896" }
}

resource "aws_sagemaker_notebook_instance" "procurement_6_nb480" {
  name          = "arior-1njchw-procurement-6-nb480"
  role_arn      = aws_iam_role.procurement_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_7_ec276" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_7_svc.name
  tags                 = { Name = "arior-1njchw-procurement-7-ec276" }
}

resource "aws_instance" "procurement_7_ec2908" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_7_svc.name
  tags                 = { Name = "arior-1njchw-procurement-7-ec2908" }
}

resource "aws_cloudformation_stack" "procurement_7_stack492" {
  name          = "arior-1njchw-procurement-7-stack492"
  iam_role_arn  = aws_iam_role.procurement_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "procurement_8_ec288" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_8_svc.name
  tags                 = { Name = "arior-1njchw-procurement-8-ec288" }
}

resource "aws_instance" "procurement_8_ec2920" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_8_svc.name
  tags                 = { Name = "arior-1njchw-procurement-8-ec2920" }
}

resource "aws_sagemaker_notebook_instance" "procurement_8_nb504" {
  name          = "arior-1njchw-procurement-8-nb504"
  role_arn      = aws_iam_role.procurement_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "procurement_9_ec2516" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.procurement_9_svc.name
  tags                 = { Name = "arior-1njchw-procurement-9-ec2516" }
}

resource "aws_glue_dev_endpoint" "procurement_9_glue100" {
  name     = "arior-1njchw-procurement-9-glue100"
  role_arn = aws_iam_role.procurement_9_glue_role.arn
}

resource "aws_cloudformation_stack" "procurement_9_stack932" {
  name          = "arior-1njchw-procurement-9-stack932"
  iam_role_arn  = aws_iam_role.procurement_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "procurement_glue836" {
  name     = "arior-1njchw-procurement-glue836"
  role_arn = aws_iam_role.procurement_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "procurement_nb420" {
  name          = "arior-1njchw-procurement-nb420"
  role_arn      = aws_iam_role.procurement_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "procurement_stack4" {
  name          = "arior-1njchw-procurement-stack4"
  iam_role_arn  = aws_iam_role.procurement_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_10_ec2530" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_10_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-10-ec2530" }
}

resource "aws_glue_dev_endpoint" "public_safety_10_glue946" {
  name     = "arior-1njchw-public-safety-10-glue946"
  role_arn = aws_iam_role.public_safety_10_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "public_safety_10_nb114" {
  name          = "arior-1njchw-public-safety-10-nb114"
  role_arn      = aws_iam_role.public_safety_10_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_11_ec2126" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_11_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-11-ec2126" }
}

resource "aws_instance" "public_safety_11_ec2958" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_11_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-11-ec2958" }
}

resource "aws_cloudformation_stack" "public_safety_11_stack542" {
  name          = "arior-1njchw-public-safety-11-stack542"
  iam_role_arn  = aws_iam_role.public_safety_11_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_12_ec2138" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_12_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-12-ec2138" }
}

resource "aws_instance" "public_safety_12_ec2970" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_12_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-12-ec2970" }
}

resource "aws_cloudformation_stack" "public_safety_12_stack554" {
  name          = "arior-1njchw-public-safety-12-stack554"
  iam_role_arn  = aws_iam_role.public_safety_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_13_ec2566" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_13_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-13-ec2566" }
}

resource "aws_instance" "public_safety_13_ec2982" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_13_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-13-ec2982" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_13_nb150" {
  name          = "arior-1njchw-public-safety-13-nb150"
  role_arn      = aws_iam_role.public_safety_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_14_ec2162" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_14_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-14-ec2162" }
}

resource "aws_instance" "public_safety_14_ec2578" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_14_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-14-ec2578" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_14_nb994" {
  name          = "arior-1njchw-public-safety-14-nb994"
  role_arn      = aws_iam_role.public_safety_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_15_ec2174" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_15_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-15-ec2174" }
}

resource "aws_instance" "public_safety_15_ec2590" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_15_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-15-ec2590" }
}

resource "aws_instance" "public_safety_16_ec2186" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_16_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-16-ec2186" }
}

resource "aws_glue_dev_endpoint" "public_safety_16_glue602" {
  name     = "arior-1njchw-public-safety-16-glue602"
  role_arn = aws_iam_role.public_safety_16_glue_role.arn
}

resource "aws_instance" "public_safety_17_ec2614" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_17_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-17-ec2614" }
}

resource "aws_cloudformation_stack" "public_safety_17_stack198" {
  name          = "arior-1njchw-public-safety-17-stack198"
  iam_role_arn  = aws_iam_role.public_safety_17_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_18_ec2626" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_18_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-18-ec2626" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_18_nb210" {
  name          = "arior-1njchw-public-safety-18-nb210"
  role_arn      = aws_iam_role.public_safety_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_19_ec2222" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_19_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-19-ec2222" }
}

resource "aws_instance" "public_safety_19_ec2638" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_19_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-19-ec2638" }
}

resource "aws_glue_dev_endpoint" "public_safety_2_glue850" {
  name     = "arior-1njchw-public-safety-2-glue850"
  role_arn = aws_iam_role.public_safety_2_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "public_safety_2_nb18" {
  name          = "arior-1njchw-public-safety-2-nb18"
  role_arn      = aws_iam_role.public_safety_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "public_safety_2_nb434" {
  name          = "arior-1njchw-public-safety-2-nb434"
  role_arn      = aws_iam_role.public_safety_2_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "public_safety_20_glue234" {
  name     = "arior-1njchw-public-safety-20-glue234"
  role_arn = aws_iam_role.public_safety_20_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "public_safety_20_nb650" {
  name          = "arior-1njchw-public-safety-20-nb650"
  role_arn      = aws_iam_role.public_safety_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_21_ec2662" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_21_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-21-ec2662" }
}

resource "aws_glue_dev_endpoint" "public_safety_21_glue246" {
  name     = "arior-1njchw-public-safety-21-glue246"
  role_arn = aws_iam_role.public_safety_21_glue_role.arn
}

resource "aws_instance" "public_safety_22_ec2258" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_22_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-22-ec2258" }
}

resource "aws_instance" "public_safety_22_ec2674" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_22_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-22-ec2674" }
}

resource "aws_instance" "public_safety_23_ec2270" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_23_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-23-ec2270" }
}

resource "aws_instance" "public_safety_23_ec2686" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_23_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-23-ec2686" }
}

resource "aws_instance" "public_safety_24_ec2282" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_24_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-24-ec2282" }
}

resource "aws_instance" "public_safety_24_ec2698" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_24_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-24-ec2698" }
}

resource "aws_instance" "public_safety_25_ec2294" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_25_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-25-ec2294" }
}

resource "aws_cloudformation_stack" "public_safety_25_stack710" {
  name          = "arior-1njchw-public-safety-25-stack710"
  iam_role_arn  = aws_iam_role.public_safety_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_26_ec2306" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_26_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-26-ec2306" }
}

resource "aws_cloudformation_stack" "public_safety_26_stack722" {
  name          = "arior-1njchw-public-safety-26-stack722"
  iam_role_arn  = aws_iam_role.public_safety_26_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "public_safety_27_nb318" {
  name          = "arior-1njchw-public-safety-27-nb318"
  role_arn      = aws_iam_role.public_safety_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "public_safety_27_nb734" {
  name          = "arior-1njchw-public-safety-27-nb734"
  role_arn      = aws_iam_role.public_safety_27_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_28_ec2746" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_28_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-28-ec2746" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_28_nb330" {
  name          = "arior-1njchw-public-safety-28-nb330"
  role_arn      = aws_iam_role.public_safety_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_29_ec2758" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_29_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-29-ec2758" }
}

resource "aws_cloudformation_stack" "public_safety_29_stack342" {
  name          = "arior-1njchw-public-safety-29-stack342"
  iam_role_arn  = aws_iam_role.public_safety_29_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_3_ec230" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_3_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-3-ec230" }
}

resource "aws_instance" "public_safety_3_ec2862" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_3_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-3-ec2862" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_3_nb446" {
  name          = "arior-1njchw-public-safety-3-nb446"
  role_arn      = aws_iam_role.public_safety_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "public_safety_30_nb354" {
  name          = "arior-1njchw-public-safety-30-nb354"
  role_arn      = aws_iam_role.public_safety_30_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "public_safety_30_stack770" {
  name          = "arior-1njchw-public-safety-30-stack770"
  iam_role_arn  = aws_iam_role.public_safety_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_31_ec2366" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_31_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-31-ec2366" }
}

resource "aws_instance" "public_safety_31_ec2782" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_31_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-31-ec2782" }
}

resource "aws_instance" "public_safety_32_ec2378" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_32_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-32-ec2378" }
}

resource "aws_instance" "public_safety_32_ec2794" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_32_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-32-ec2794" }
}

resource "aws_glue_dev_endpoint" "public_safety_33_glue390" {
  name     = "arior-1njchw-public-safety-33-glue390"
  role_arn = aws_iam_role.public_safety_33_glue_role.arn
}

resource "aws_cloudformation_stack" "public_safety_33_stack806" {
  name          = "arior-1njchw-public-safety-33-stack806"
  iam_role_arn  = aws_iam_role.public_safety_33_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_34_ec2402" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_34_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-34-ec2402" }
}

resource "aws_instance" "public_safety_34_ec2818" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_34_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-34-ec2818" }
}

resource "aws_instance" "public_safety_35_ec2414" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_35_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-35-ec2414" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_35_nb830" {
  name          = "arior-1njchw-public-safety-35-nb830"
  role_arn      = aws_iam_role.public_safety_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_4_ec2458" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_4_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-4-ec2458" }
}

resource "aws_instance" "public_safety_4_ec2874" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_4_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-4-ec2874" }
}

resource "aws_cloudformation_stack" "public_safety_4_stack42" {
  name          = "arior-1njchw-public-safety-4-stack42"
  iam_role_arn  = aws_iam_role.public_safety_4_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_5_ec2470" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_5_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-5-ec2470" }
}

resource "aws_instance" "public_safety_5_ec254" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_5_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-5-ec254" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_5_nb886" {
  name          = "arior-1njchw-public-safety-5-nb886"
  role_arn      = aws_iam_role.public_safety_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_6_ec2482" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_6_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-6-ec2482" }
}

resource "aws_instance" "public_safety_6_ec266" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_6_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-6-ec266" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_6_nb898" {
  name          = "arior-1njchw-public-safety-6-nb898"
  role_arn      = aws_iam_role.public_safety_6_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_7_ec278" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_7_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-7-ec278" }
}

resource "aws_instance" "public_safety_7_ec2910" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_7_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-7-ec2910" }
}

resource "aws_cloudformation_stack" "public_safety_7_stack494" {
  name          = "arior-1njchw-public-safety-7-stack494"
  iam_role_arn  = aws_iam_role.public_safety_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "public_safety_8_ec2922" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_8_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-8-ec2922" }
}

resource "aws_sagemaker_notebook_instance" "public_safety_8_nb506" {
  name          = "arior-1njchw-public-safety-8-nb506"
  role_arn      = aws_iam_role.public_safety_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "public_safety_8_nb90" {
  name          = "arior-1njchw-public-safety-8-nb90"
  role_arn      = aws_iam_role.public_safety_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_9_ec2102" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_9_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-9-ec2102" }
}

resource "aws_glue_dev_endpoint" "public_safety_9_glue518" {
  name     = "arior-1njchw-public-safety-9-glue518"
  role_arn = aws_iam_role.public_safety_9_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "public_safety_9_nb934" {
  name          = "arior-1njchw-public-safety-9-nb934"
  role_arn      = aws_iam_role.public_safety_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "public_safety_ec2422" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-ec2422" }
}

resource "aws_instance" "public_safety_ec26" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-ec26" }
}

resource "aws_instance" "public_safety_ec2838" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.public_safety_svc.name
  tags                 = { Name = "arior-1njchw-public-safety-ec2838" }
}

resource "aws_instance" "records_10_ec2109" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_10_svc.name
  tags                 = { Name = "arior-1njchw-records-10-ec2109" }
}

resource "aws_instance" "records_10_ec2525" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_10_svc.name
  tags                 = { Name = "arior-1njchw-records-10-ec2525" }
}

resource "aws_glue_dev_endpoint" "records_10_glue941" {
  name     = "arior-1njchw-records-10-glue941"
  role_arn = aws_iam_role.records_10_glue_role.arn
}

resource "aws_instance" "records_11_ec2121" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_11_svc.name
  tags                 = { Name = "arior-1njchw-records-11-ec2121" }
}

resource "aws_instance" "records_11_ec2953" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_11_svc.name
  tags                 = { Name = "arior-1njchw-records-11-ec2953" }
}

resource "aws_glue_dev_endpoint" "records_11_glue537" {
  name     = "arior-1njchw-records-11-glue537"
  role_arn = aws_iam_role.records_11_glue_role.arn
}

resource "aws_instance" "records_12_ec2965" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_12_svc.name
  tags                 = { Name = "arior-1njchw-records-12-ec2965" }
}

resource "aws_sagemaker_notebook_instance" "records_12_nb133" {
  name          = "arior-1njchw-records-12-nb133"
  role_arn      = aws_iam_role.records_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "records_12_nb549" {
  name          = "arior-1njchw-records-12-nb549"
  role_arn      = aws_iam_role.records_12_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_13_ec2561" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_13_svc.name
  tags                 = { Name = "arior-1njchw-records-13-ec2561" }
}

resource "aws_glue_dev_endpoint" "records_13_glue145" {
  name     = "arior-1njchw-records-13-glue145"
  role_arn = aws_iam_role.records_13_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_13_nb977" {
  name          = "arior-1njchw-records-13-nb977"
  role_arn      = aws_iam_role.records_13_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_14_ec2157" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_14_svc.name
  tags                 = { Name = "arior-1njchw-records-14-ec2157" }
}

resource "aws_instance" "records_14_ec2573" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_14_svc.name
  tags                 = { Name = "arior-1njchw-records-14-ec2573" }
}

resource "aws_instance" "records_14_ec2989" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_14_svc.name
  tags                 = { Name = "arior-1njchw-records-14-ec2989" }
}

resource "aws_instance" "records_15_ec2169" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_15_svc.name
  tags                 = { Name = "arior-1njchw-records-15-ec2169" }
}

resource "aws_instance" "records_15_ec2585" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_15_svc.name
  tags                 = { Name = "arior-1njchw-records-15-ec2585" }
}

resource "aws_instance" "records_16_ec2597" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_16_svc.name
  tags                 = { Name = "arior-1njchw-records-16-ec2597" }
}

resource "aws_glue_dev_endpoint" "records_16_glue181" {
  name     = "arior-1njchw-records-16-glue181"
  role_arn = aws_iam_role.records_16_glue_role.arn
}

resource "aws_instance" "records_17_ec2193" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_17_svc.name
  tags                 = { Name = "arior-1njchw-records-17-ec2193" }
}

resource "aws_glue_dev_endpoint" "records_17_glue609" {
  name     = "arior-1njchw-records-17-glue609"
  role_arn = aws_iam_role.records_17_glue_role.arn
}

resource "aws_instance" "records_18_ec2205" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_18_svc.name
  tags                 = { Name = "arior-1njchw-records-18-ec2205" }
}

resource "aws_instance" "records_18_ec2621" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_18_svc.name
  tags                 = { Name = "arior-1njchw-records-18-ec2621" }
}

resource "aws_instance" "records_19_ec2217" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_19_svc.name
  tags                 = { Name = "arior-1njchw-records-19-ec2217" }
}

resource "aws_instance" "records_19_ec2633" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_19_svc.name
  tags                 = { Name = "arior-1njchw-records-19-ec2633" }
}

resource "aws_instance" "records_2_ec2429" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_2_svc.name
  tags                 = { Name = "arior-1njchw-records-2-ec2429" }
}

resource "aws_instance" "records_2_ec2845" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_2_svc.name
  tags                 = { Name = "arior-1njchw-records-2-ec2845" }
}

resource "aws_glue_dev_endpoint" "records_2_glue13" {
  name     = "arior-1njchw-records-2-glue13"
  role_arn = aws_iam_role.records_2_glue_role.arn
}

resource "aws_instance" "records_20_ec2229" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_20_svc.name
  tags                 = { Name = "arior-1njchw-records-20-ec2229" }
}

resource "aws_instance" "records_20_ec2645" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_20_svc.name
  tags                 = { Name = "arior-1njchw-records-20-ec2645" }
}

resource "aws_instance" "records_21_ec2241" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_21_svc.name
  tags                 = { Name = "arior-1njchw-records-21-ec2241" }
}

resource "aws_instance" "records_21_ec2657" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_21_svc.name
  tags                 = { Name = "arior-1njchw-records-21-ec2657" }
}

resource "aws_instance" "records_22_ec2253" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_22_svc.name
  tags                 = { Name = "arior-1njchw-records-22-ec2253" }
}

resource "aws_instance" "records_22_ec2669" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_22_svc.name
  tags                 = { Name = "arior-1njchw-records-22-ec2669" }
}

resource "aws_glue_dev_endpoint" "records_23_glue265" {
  name     = "arior-1njchw-records-23-glue265"
  role_arn = aws_iam_role.records_23_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_23_nb681" {
  name          = "arior-1njchw-records-23-nb681"
  role_arn      = aws_iam_role.records_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_24_ec2693" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_24_svc.name
  tags                 = { Name = "arior-1njchw-records-24-ec2693" }
}

resource "aws_cloudformation_stack" "records_24_stack277" {
  name          = "arior-1njchw-records-24-stack277"
  iam_role_arn  = aws_iam_role.records_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "records_25_nb705" {
  name          = "arior-1njchw-records-25-nb705"
  role_arn      = aws_iam_role.records_25_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "records_25_stack289" {
  name          = "arior-1njchw-records-25-stack289"
  iam_role_arn  = aws_iam_role.records_25_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "records_26_ec2717" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_26_svc.name
  tags                 = { Name = "arior-1njchw-records-26-ec2717" }
}

resource "aws_sagemaker_notebook_instance" "records_26_nb301" {
  name          = "arior-1njchw-records-26-nb301"
  role_arn      = aws_iam_role.records_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_27_ec2729" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_27_svc.name
  tags                 = { Name = "arior-1njchw-records-27-ec2729" }
}

resource "aws_cloudformation_stack" "records_27_stack313" {
  name          = "arior-1njchw-records-27-stack313"
  iam_role_arn  = aws_iam_role.records_27_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "records_28_ec2325" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_28_svc.name
  tags                 = { Name = "arior-1njchw-records-28-ec2325" }
}

resource "aws_sagemaker_notebook_instance" "records_28_nb741" {
  name          = "arior-1njchw-records-28-nb741"
  role_arn      = aws_iam_role.records_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "records_29_glue753" {
  name     = "arior-1njchw-records-29-glue753"
  role_arn = aws_iam_role.records_29_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_29_nb337" {
  name          = "arior-1njchw-records-29-nb337"
  role_arn      = aws_iam_role.records_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_3_ec225" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_3_svc.name
  tags                 = { Name = "arior-1njchw-records-3-ec225" }
}

resource "aws_glue_dev_endpoint" "records_3_glue857" {
  name     = "arior-1njchw-records-3-glue857"
  role_arn = aws_iam_role.records_3_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_3_nb441" {
  name          = "arior-1njchw-records-3-nb441"
  role_arn      = aws_iam_role.records_3_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_30_ec2349" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_30_svc.name
  tags                 = { Name = "arior-1njchw-records-30-ec2349" }
}

resource "aws_instance" "records_30_ec2765" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_30_svc.name
  tags                 = { Name = "arior-1njchw-records-30-ec2765" }
}

resource "aws_sagemaker_notebook_instance" "records_31_nb777" {
  name          = "arior-1njchw-records-31-nb777"
  role_arn      = aws_iam_role.records_31_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "records_31_stack361" {
  name          = "arior-1njchw-records-31-stack361"
  iam_role_arn  = aws_iam_role.records_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "records_32_nb373" {
  name          = "arior-1njchw-records-32-nb373"
  role_arn      = aws_iam_role.records_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "records_32_stack789" {
  name          = "arior-1njchw-records-32-stack789"
  iam_role_arn  = aws_iam_role.records_32_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "records_33_ec2385" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_33_svc.name
  tags                 = { Name = "arior-1njchw-records-33-ec2385" }
}

resource "aws_sagemaker_notebook_instance" "records_33_nb801" {
  name          = "arior-1njchw-records-33-nb801"
  role_arn      = aws_iam_role.records_33_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_34_ec2397" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_34_svc.name
  tags                 = { Name = "arior-1njchw-records-34-ec2397" }
}

resource "aws_instance" "records_34_ec2813" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_34_svc.name
  tags                 = { Name = "arior-1njchw-records-34-ec2813" }
}

resource "aws_instance" "records_35_ec2825" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_35_svc.name
  tags                 = { Name = "arior-1njchw-records-35-ec2825" }
}

resource "aws_sagemaker_notebook_instance" "records_35_nb409" {
  name          = "arior-1njchw-records-35-nb409"
  role_arn      = aws_iam_role.records_35_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_4_ec237" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_4_svc.name
  tags                 = { Name = "arior-1njchw-records-4-ec237" }
}

resource "aws_instance" "records_4_ec2453" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_4_svc.name
  tags                 = { Name = "arior-1njchw-records-4-ec2453" }
}

resource "aws_sagemaker_notebook_instance" "records_4_nb869" {
  name          = "arior-1njchw-records-4-nb869"
  role_arn      = aws_iam_role.records_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_5_ec2465" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_5_svc.name
  tags                 = { Name = "arior-1njchw-records-5-ec2465" }
}

resource "aws_instance" "records_5_ec249" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_5_svc.name
  tags                 = { Name = "arior-1njchw-records-5-ec249" }
}

resource "aws_sagemaker_notebook_instance" "records_5_nb881" {
  name          = "arior-1njchw-records-5-nb881"
  role_arn      = aws_iam_role.records_5_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_6_ec2893" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_6_svc.name
  tags                 = { Name = "arior-1njchw-records-6-ec2893" }
}

resource "aws_glue_dev_endpoint" "records_6_glue477" {
  name     = "arior-1njchw-records-6-glue477"
  role_arn = aws_iam_role.records_6_glue_role.arn
}

resource "aws_cloudformation_stack" "records_6_stack61" {
  name          = "arior-1njchw-records-6-stack61"
  iam_role_arn  = aws_iam_role.records_6_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "records_7_ec273" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_7_svc.name
  tags                 = { Name = "arior-1njchw-records-7-ec273" }
}

resource "aws_sagemaker_notebook_instance" "records_7_nb905" {
  name          = "arior-1njchw-records-7-nb905"
  role_arn      = aws_iam_role.records_7_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "records_7_stack489" {
  name          = "arior-1njchw-records-7-stack489"
  iam_role_arn  = aws_iam_role.records_7_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "records_8_ec2501" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_8_svc.name
  tags                 = { Name = "arior-1njchw-records-8-ec2501" }
}

resource "aws_instance" "records_8_ec285" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_8_svc.name
  tags                 = { Name = "arior-1njchw-records-8-ec285" }
}

resource "aws_instance" "records_8_ec2917" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_8_svc.name
  tags                 = { Name = "arior-1njchw-records-8-ec2917" }
}

resource "aws_instance" "records_9_ec2513" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_9_svc.name
  tags                 = { Name = "arior-1njchw-records-9-ec2513" }
}

resource "aws_glue_dev_endpoint" "records_9_glue97" {
  name     = "arior-1njchw-records-9-glue97"
  role_arn = aws_iam_role.records_9_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_9_nb929" {
  name          = "arior-1njchw-records-9-nb929"
  role_arn      = aws_iam_role.records_9_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "records_ec2833" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.records_svc.name
  tags                 = { Name = "arior-1njchw-records-ec2833" }
}

resource "aws_glue_dev_endpoint" "records_glue1" {
  name     = "arior-1njchw-records-glue1"
  role_arn = aws_iam_role.records_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "records_nb417" {
  name          = "arior-1njchw-records-nb417"
  role_arn      = aws_iam_role.records_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_10_ec2945" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_10_svc.name
  tags                 = { Name = "arior-1njchw-tax-10-ec2945" }
}

resource "aws_cloudformation_stack" "tax_10_stack113" {
  name          = "arior-1njchw-tax-10-stack113"
  iam_role_arn  = aws_iam_role.tax_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "tax_10_stack529" {
  name          = "arior-1njchw-tax-10-stack529"
  iam_role_arn  = aws_iam_role.tax_10_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_11_ec2125" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_11_svc.name
  tags                 = { Name = "arior-1njchw-tax-11-ec2125" }
}

resource "aws_glue_dev_endpoint" "tax_11_glue957" {
  name     = "arior-1njchw-tax-11-glue957"
  role_arn = aws_iam_role.tax_11_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "tax_11_nb541" {
  name          = "arior-1njchw-tax-11-nb541"
  role_arn      = aws_iam_role.tax_11_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_12_ec2137" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_12_svc.name
  tags                 = { Name = "arior-1njchw-tax-12-ec2137" }
}

resource "aws_instance" "tax_12_ec2553" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_12_svc.name
  tags                 = { Name = "arior-1njchw-tax-12-ec2553" }
}

resource "aws_cloudformation_stack" "tax_12_stack969" {
  name          = "arior-1njchw-tax-12-stack969"
  iam_role_arn  = aws_iam_role.tax_12_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_13_ec2149" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_13_svc.name
  tags                 = { Name = "arior-1njchw-tax-13-ec2149" }
}

resource "aws_instance" "tax_13_ec2981" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_13_svc.name
  tags                 = { Name = "arior-1njchw-tax-13-ec2981" }
}

resource "aws_cloudformation_stack" "tax_13_stack565" {
  name          = "arior-1njchw-tax-13-stack565"
  iam_role_arn  = aws_iam_role.tax_13_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_14_ec2161" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_14_svc.name
  tags                 = { Name = "arior-1njchw-tax-14-ec2161" }
}

resource "aws_sagemaker_notebook_instance" "tax_14_nb577" {
  name          = "arior-1njchw-tax-14-nb577"
  role_arn      = aws_iam_role.tax_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "tax_14_nb993" {
  name          = "arior-1njchw-tax-14-nb993"
  role_arn      = aws_iam_role.tax_14_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_15_ec2589" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_15_svc.name
  tags                 = { Name = "arior-1njchw-tax-15-ec2589" }
}

resource "aws_sagemaker_notebook_instance" "tax_15_nb173" {
  name          = "arior-1njchw-tax-15-nb173"
  role_arn      = aws_iam_role.tax_15_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_16_ec2601" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_16_svc.name
  tags                 = { Name = "arior-1njchw-tax-16-ec2601" }
}

resource "aws_sagemaker_notebook_instance" "tax_16_nb185" {
  name          = "arior-1njchw-tax-16-nb185"
  role_arn      = aws_iam_role.tax_16_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_17_ec2197" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_17_svc.name
  tags                 = { Name = "arior-1njchw-tax-17-ec2197" }
}

resource "aws_sagemaker_notebook_instance" "tax_17_nb613" {
  name          = "arior-1njchw-tax-17-nb613"
  role_arn      = aws_iam_role.tax_17_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_18_ec2625" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_18_svc.name
  tags                 = { Name = "arior-1njchw-tax-18-ec2625" }
}

resource "aws_sagemaker_notebook_instance" "tax_18_nb209" {
  name          = "arior-1njchw-tax-18-nb209"
  role_arn      = aws_iam_role.tax_18_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_19_ec2221" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_19_svc.name
  tags                 = { Name = "arior-1njchw-tax-19-ec2221" }
}

resource "aws_cloudformation_stack" "tax_19_stack637" {
  name          = "arior-1njchw-tax-19-stack637"
  iam_role_arn  = aws_iam_role.tax_19_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "tax_2_glue433" {
  name     = "arior-1njchw-tax-2-glue433"
  role_arn = aws_iam_role.tax_2_glue_role.arn
}

resource "aws_cloudformation_stack" "tax_2_stack17" {
  name          = "arior-1njchw-tax-2-stack17"
  iam_role_arn  = aws_iam_role.tax_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "tax_2_stack849" {
  name          = "arior-1njchw-tax-2-stack849"
  iam_role_arn  = aws_iam_role.tax_2_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_sagemaker_notebook_instance" "tax_20_nb233" {
  name          = "arior-1njchw-tax-20-nb233"
  role_arn      = aws_iam_role.tax_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "tax_20_nb649" {
  name          = "arior-1njchw-tax-20-nb649"
  role_arn      = aws_iam_role.tax_20_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_21_ec2661" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_21_svc.name
  tags                 = { Name = "arior-1njchw-tax-21-ec2661" }
}

resource "aws_sagemaker_notebook_instance" "tax_21_nb245" {
  name          = "arior-1njchw-tax-21-nb245"
  role_arn      = aws_iam_role.tax_21_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_22_ec2257" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_22_svc.name
  tags                 = { Name = "arior-1njchw-tax-22-ec2257" }
}

resource "aws_instance" "tax_22_ec2673" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_22_svc.name
  tags                 = { Name = "arior-1njchw-tax-22-ec2673" }
}

resource "aws_sagemaker_notebook_instance" "tax_23_nb269" {
  name          = "arior-1njchw-tax-23-nb269"
  role_arn      = aws_iam_role.tax_23_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "tax_23_stack685" {
  name          = "arior-1njchw-tax-23-stack685"
  iam_role_arn  = aws_iam_role.tax_23_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_24_ec2281" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_24_svc.name
  tags                 = { Name = "arior-1njchw-tax-24-ec2281" }
}

resource "aws_cloudformation_stack" "tax_24_stack697" {
  name          = "arior-1njchw-tax-24-stack697"
  iam_role_arn  = aws_iam_role.tax_24_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_25_ec2293" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_25_svc.name
  tags                 = { Name = "arior-1njchw-tax-25-ec2293" }
}

resource "aws_instance" "tax_25_ec2709" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_25_svc.name
  tags                 = { Name = "arior-1njchw-tax-25-ec2709" }
}

resource "aws_instance" "tax_26_ec2305" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_26_svc.name
  tags                 = { Name = "arior-1njchw-tax-26-ec2305" }
}

resource "aws_sagemaker_notebook_instance" "tax_26_nb721" {
  name          = "arior-1njchw-tax-26-nb721"
  role_arn      = aws_iam_role.tax_26_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_27_ec2317" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_27_svc.name
  tags                 = { Name = "arior-1njchw-tax-27-ec2317" }
}

resource "aws_instance" "tax_27_ec2733" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_27_svc.name
  tags                 = { Name = "arior-1njchw-tax-27-ec2733" }
}

resource "aws_sagemaker_notebook_instance" "tax_28_nb329" {
  name          = "arior-1njchw-tax-28-nb329"
  role_arn      = aws_iam_role.tax_28_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "tax_28_stack745" {
  name          = "arior-1njchw-tax-28-stack745"
  iam_role_arn  = aws_iam_role.tax_28_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_glue_dev_endpoint" "tax_29_glue341" {
  name     = "arior-1njchw-tax-29-glue341"
  role_arn = aws_iam_role.tax_29_glue_role.arn
}

resource "aws_sagemaker_notebook_instance" "tax_29_nb757" {
  name          = "arior-1njchw-tax-29-nb757"
  role_arn      = aws_iam_role.tax_29_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_3_ec2445" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_3_svc.name
  tags                 = { Name = "arior-1njchw-tax-3-ec2445" }
}

resource "aws_glue_dev_endpoint" "tax_3_glue29" {
  name     = "arior-1njchw-tax-3-glue29"
  role_arn = aws_iam_role.tax_3_glue_role.arn
}

resource "aws_cloudformation_stack" "tax_3_stack861" {
  name          = "arior-1njchw-tax-3-stack861"
  iam_role_arn  = aws_iam_role.tax_3_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_30_ec2769" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_30_svc.name
  tags                 = { Name = "arior-1njchw-tax-30-ec2769" }
}

resource "aws_cloudformation_stack" "tax_30_stack353" {
  name          = "arior-1njchw-tax-30-stack353"
  iam_role_arn  = aws_iam_role.tax_30_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_31_ec2781" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_31_svc.name
  tags                 = { Name = "arior-1njchw-tax-31-ec2781" }
}

resource "aws_cloudformation_stack" "tax_31_stack365" {
  name          = "arior-1njchw-tax-31-stack365"
  iam_role_arn  = aws_iam_role.tax_31_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_32_ec2377" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_32_svc.name
  tags                 = { Name = "arior-1njchw-tax-32-ec2377" }
}

resource "aws_sagemaker_notebook_instance" "tax_32_nb793" {
  name          = "arior-1njchw-tax-32-nb793"
  role_arn      = aws_iam_role.tax_32_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_33_ec2389" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_33_svc.name
  tags                 = { Name = "arior-1njchw-tax-33-ec2389" }
}

resource "aws_instance" "tax_33_ec2805" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_33_svc.name
  tags                 = { Name = "arior-1njchw-tax-33-ec2805" }
}

resource "aws_instance" "tax_34_ec2817" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_34_svc.name
  tags                 = { Name = "arior-1njchw-tax-34-ec2817" }
}

resource "aws_sagemaker_notebook_instance" "tax_34_nb401" {
  name          = "arior-1njchw-tax-34-nb401"
  role_arn      = aws_iam_role.tax_34_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_glue_dev_endpoint" "tax_35_glue829" {
  name     = "arior-1njchw-tax-35-glue829"
  role_arn = aws_iam_role.tax_35_glue_role.arn
}

resource "aws_cloudformation_stack" "tax_35_stack413" {
  name          = "arior-1njchw-tax-35-stack413"
  iam_role_arn  = aws_iam_role.tax_35_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_4_ec2457" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_4_svc.name
  tags                 = { Name = "arior-1njchw-tax-4-ec2457" }
}

resource "aws_sagemaker_notebook_instance" "tax_4_nb41" {
  name          = "arior-1njchw-tax-4-nb41"
  role_arn      = aws_iam_role.tax_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_sagemaker_notebook_instance" "tax_4_nb873" {
  name          = "arior-1njchw-tax-4-nb873"
  role_arn      = aws_iam_role.tax_4_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_instance" "tax_5_ec253" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_5_svc.name
  tags                 = { Name = "arior-1njchw-tax-5-ec253" }
}

resource "aws_instance" "tax_5_ec2885" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_5_svc.name
  tags                 = { Name = "arior-1njchw-tax-5-ec2885" }
}

resource "aws_cloudformation_stack" "tax_5_stack469" {
  name          = "arior-1njchw-tax-5-stack469"
  iam_role_arn  = aws_iam_role.tax_5_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_6_ec2481" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_6_svc.name
  tags                 = { Name = "arior-1njchw-tax-6-ec2481" }
}

resource "aws_instance" "tax_6_ec2897" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_6_svc.name
  tags                 = { Name = "arior-1njchw-tax-6-ec2897" }
}

resource "aws_glue_dev_endpoint" "tax_6_glue65" {
  name     = "arior-1njchw-tax-6-glue65"
  role_arn = aws_iam_role.tax_6_glue_role.arn
}

resource "aws_instance" "tax_7_ec2493" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_7_svc.name
  tags                 = { Name = "arior-1njchw-tax-7-ec2493" }
}

resource "aws_instance" "tax_7_ec277" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_7_svc.name
  tags                 = { Name = "arior-1njchw-tax-7-ec277" }
}

resource "aws_instance" "tax_7_ec2909" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_7_svc.name
  tags                 = { Name = "arior-1njchw-tax-7-ec2909" }
}

resource "aws_instance" "tax_8_ec2505" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_8_svc.name
  tags                 = { Name = "arior-1njchw-tax-8-ec2505" }
}

resource "aws_instance" "tax_8_ec289" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_8_svc.name
  tags                 = { Name = "arior-1njchw-tax-8-ec289" }
}

resource "aws_sagemaker_notebook_instance" "tax_8_nb921" {
  name          = "arior-1njchw-tax-8-nb921"
  role_arn      = aws_iam_role.tax_8_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "tax_9_stack101" {
  name          = "arior-1njchw-tax-9-stack101"
  iam_role_arn  = aws_iam_role.tax_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "tax_9_stack517" {
  name          = "arior-1njchw-tax-9-stack517"
  iam_role_arn  = aws_iam_role.tax_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_cloudformation_stack" "tax_9_stack933" {
  name          = "arior-1njchw-tax-9-stack933"
  iam_role_arn  = aws_iam_role.tax_9_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}

resource "aws_instance" "tax_ec2421" {
  ami                  = data.aws_ssm_parameter.al2023_ami.value
  instance_type        = "t3.nano"
  iam_instance_profile = aws_iam_instance_profile.tax_svc.name
  tags                 = { Name = "arior-1njchw-tax-ec2421" }
}

resource "aws_sagemaker_notebook_instance" "tax_nb5" {
  name          = "arior-1njchw-tax-nb5"
  role_arn      = aws_iam_role.tax_nb_role.arn
  instance_type = "ml.t3.medium"
}

resource "aws_cloudformation_stack" "tax_stack837" {
  name          = "arior-1njchw-tax-stack837"
  iam_role_arn  = aws_iam_role.tax_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}
