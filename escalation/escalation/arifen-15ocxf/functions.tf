resource "aws_s3_bucket" "lambda_src" {
  bucket = "arifen-15ocxf-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "analytics_2_imaging_fn0" {
  function_name = "arifen-15ocxf-analytics-2-imaging-fn0"
  role          = aws_iam_role.analytics_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "analytics_2_imaging_fn13" {
  function_name = "arifen-15ocxf-analytics-2-imaging-fn13"
  role          = aws_iam_role.analytics_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_ehr_fn19" {
  function_name = "arifen-15ocxf-billing-ehr-fn19"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_reports_fn27" {
  function_name = "arifen-15ocxf-billing-reports-fn27"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "claims_2_imaging_fn17" {
  function_name = "arifen-15ocxf-claims-2-imaging-fn17"
  role          = aws_iam_role.clinical_data_2_ehr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "claims_phi_fn23" {
  function_name = "arifen-15ocxf-claims-phi-fn23"
  role          = aws_iam_role.billing_reports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_2_ehr_fn11" {
  function_name = "arifen-15ocxf-clinical-data-2-ehr-fn11"
  role          = aws_iam_role.telehealth_2_ehr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_2_ehr_fn6" {
  function_name = "arifen-15ocxf-clinical-data-2-ehr-fn6"
  role          = aws_iam_role.clinical_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_2_ehr_fn9" {
  function_name = "arifen-15ocxf-clinical-data-2-ehr-fn9"
  role          = aws_iam_role.clinical_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_2_reports_fn3" {
  function_name = "arifen-15ocxf-clinical-data-2-reports-fn3"
  role          = aws_iam_role.clinical_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "clinical_data_audit_fn24" {
  function_name = "arifen-15ocxf-clinical-data-audit-fn24"
  role          = aws_iam_role.clinical_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_2_claims_fn1" {
  function_name = "arifen-15ocxf-imaging-2-claims-fn1"
  role          = aws_iam_role.imaging_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_2_phi_fn10" {
  function_name = "arifen-15ocxf-imaging-2-phi-fn10"
  role          = aws_iam_role.compliance_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_phi_fn5" {
  function_name = "arifen-15ocxf-imaging-phi-fn5"
  role          = aws_iam_role.imaging_phi_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_reports_fn12" {
  function_name = "arifen-15ocxf-imaging-reports-fn12"
  role          = aws_iam_role.imaging_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lab_systems_claims_fn21" {
  function_name = "arifen-15ocxf-lab-systems-claims-fn21"
  role          = aws_iam_role.lab_systems_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lab_systems_claims_fn25" {
  function_name = "arifen-15ocxf-lab-systems-claims-fn25"
  role          = aws_iam_role.research_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lab_systems_phi_fn22" {
  function_name = "arifen-15ocxf-lab-systems-phi-fn22"
  role          = aws_iam_role.lab_systems_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "patient_portal_2_audit_fn2" {
  function_name = "arifen-15ocxf-patient-portal-2-audit-fn2"
  role          = aws_iam_role.patient_portal_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "pharmacy_audit_fn14" {
  function_name = "arifen-15ocxf-pharmacy-audit-fn14"
  role          = aws_iam_role.claims_phi_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "pharmacy_audit_fn26" {
  function_name = "arifen-15ocxf-pharmacy-audit-fn26"
  role          = aws_iam_role.pharmacy_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_2_ehr_fn20" {
  function_name = "arifen-15ocxf-research-2-ehr-fn20"
  role          = aws_iam_role.research_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_2_ehr_fn8" {
  function_name = "arifen-15ocxf-research-2-ehr-fn8"
  role          = aws_iam_role.analytics_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "scheduling_2_ehr_fn15" {
  function_name = "arifen-15ocxf-scheduling-2-ehr-fn15"
  role          = aws_iam_role.lab_systems_claims_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_2_claims_fn18" {
  function_name = "arifen-15ocxf-telehealth-2-claims-fn18"
  role          = aws_iam_role.telehealth_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_2_phi_fn4" {
  function_name = "arifen-15ocxf-telehealth-2-phi-fn4"
  role          = aws_iam_role.telehealth_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_2_phi_fn7" {
  function_name = "arifen-15ocxf-telehealth-2-phi-fn7"
  role          = aws_iam_role.telehealth_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "telehealth_audit_fn16" {
  function_name = "arifen-15ocxf-telehealth-audit-fn16"
  role          = aws_iam_role.billing_2_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
