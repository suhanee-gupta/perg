resource "aws_s3_bucket" "lambda_src" {
  bucket = "zenax-zq111-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "gis_public_data_fn1" {
  function_name = "zenax-zq111-gis-public-data-fn1"
  role          = aws_iam_role.gis_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_public_data_fn4" {
  function_name = "zenax-zq111-gis-public-data-fn4"
  role          = aws_iam_role.gis_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_audit_fn2" {
  function_name = "zenax-zq111-licensing-audit-fn2"
  role          = aws_iam_role.licensing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_records_fn3" {
  function_name = "zenax-zq111-licensing-records-fn3"
  role          = aws_iam_role.citizen_portal_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_backups_fn0" {
  function_name = "zenax-zq111-records-backups-fn0"
  role          = aws_iam_role.records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
