resource "aws_glue_dev_endpoint" "clinical_data_glue0" {
  name     = "rynor-zq0uj-clinical-data-glue0"
  role_arn = aws_iam_role.clinical_data_glue_role.arn
}

resource "aws_cloudformation_stack" "patient_portal_stack1" {
  name          = "rynor-zq0uj-patient-portal-stack1"
  iam_role_arn  = aws_iam_role.patient_portal_stack_role.arn
  template_body = jsonencode({ Resources = { Placeholder = { Type = "AWS::CloudFormation::WaitConditionHandle" } } })
}
