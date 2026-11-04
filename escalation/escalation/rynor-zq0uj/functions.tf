resource "aws_s3_bucket" "lambda_src" {
  bucket = "rynor-zq0uj-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "billing_audit_fn1" {
  function_name = "rynor-zq0uj-billing-audit-fn1"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_audit_fn4" {
  function_name = "rynor-zq0uj-billing-audit-fn4"
  role          = aws_iam_role.clinical_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_ehr_fn0" {
  function_name = "rynor-zq0uj-billing-ehr-fn0"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_ehr_fn2" {
  function_name = "rynor-zq0uj-billing-ehr-fn2"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "imaging_audit_fn3" {
  function_name = "rynor-zq0uj-imaging-audit-fn3"
  role          = aws_iam_role.patient_portal_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
