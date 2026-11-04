resource "aws_s3_bucket" "lambda_src" {
  bucket = "taax-zq0zi-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "citizen_portal_audit_fn0" {
  function_name = "taax-zq0zi-citizen-portal-audit-fn0"
  role          = aws_iam_role.records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_audit_fn1" {
  function_name = "taax-zq0zi-citizen-portal-audit-fn1"
  role          = aws_iam_role.citizen_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
