resource "aws_s3_bucket" "lambda_src" {
  bucket = "ariari-15ocx0-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "analytics_audit_fn15" {
  function_name = "ariari-15ocx0-analytics-audit-fn15"
  role          = aws_iam_role.analytics_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "analytics_reports_fn7" {
  function_name = "ariari-15ocx0-analytics-reports-fn7"
  role          = aws_iam_role.claims_imaging_svc24.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_imaging_fn0" {
  function_name = "ariari-15ocx0-billing-2-imaging-fn0"
  role          = aws_iam_role.pharmacy_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_imaging_fn20" {
  function_name = "ariari-15ocx0-billing-2-imaging-fn20"
  role          = aws_iam_role.billing_2_imaging_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "claims_imaging_fn17" {
  function_name = "ariari-15ocx0-claims-imaging-fn17"
  role          = aws_iam_role.claims_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_2_reports_fn18" {
  function_name = "ariari-15ocx0-clinical-data-2-reports-fn18"
  role          = aws_iam_role.imaging_2_imaging_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_audit_fn19" {
  function_name = "ariari-15ocx0-clinical-data-audit-fn19"
  role          = aws_iam_role.clinical_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_imaging_fn16" {
  function_name = "ariari-15ocx0-clinical-data-imaging-fn16"
  role          = aws_iam_role.lab_systems_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_claims_fn14" {
  function_name = "ariari-15ocx0-imaging-claims-fn14"
  role          = aws_iam_role.compliance_claims_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_imaging_fn12" {
  function_name = "ariari-15ocx0-imaging-imaging-fn12"
  role          = aws_iam_role.billing_phi_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lab_systems_imaging_fn4" {
  function_name = "ariari-15ocx0-lab-systems-imaging-fn4"
  role          = aws_iam_role.billing_phi_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "patient_portal_2_ehr_fn3" {
  function_name = "ariari-15ocx0-patient-portal-2-ehr-fn3"
  role          = aws_iam_role.patient_portal_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "patient_portal_audit_fn9" {
  function_name = "ariari-15ocx0-patient-portal-audit-fn9"
  role          = aws_iam_role.patient_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "pharmacy_ehr_fn13" {
  function_name = "ariari-15ocx0-pharmacy-ehr-fn13"
  role          = aws_iam_role.pharmacy_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_claims_fn1" {
  function_name = "ariari-15ocx0-research-claims-fn1"
  role          = aws_iam_role.research_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_phi_fn2" {
  function_name = "ariari-15ocx0-research-phi-fn2"
  role          = aws_iam_role.research_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_phi_fn6" {
  function_name = "ariari-15ocx0-research-phi-fn6"
  role          = aws_iam_role.pharmacy_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "scheduling_imaging_fn5" {
  function_name = "ariari-15ocx0-scheduling-imaging-fn5"
  role          = aws_iam_role.clinical_data_audit_svc34.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_ehr_fn11" {
  function_name = "ariari-15ocx0-telehealth-ehr-fn11"
  role          = aws_iam_role.telehealth_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_imaging_fn10" {
  function_name = "ariari-15ocx0-telehealth-imaging-fn10"
  role          = aws_iam_role.telehealth_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_phi_fn8" {
  function_name = "ariari-15ocx0-telehealth-phi-fn8"
  role          = aws_iam_role.telehealth_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
