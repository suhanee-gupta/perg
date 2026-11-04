resource "aws_s3_bucket" "lambda_src" {
  bucket = "kasol-zq0qg-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "admissions_datasets_fn2" {
  function_name = "kasol-zq0qg-admissions-datasets-fn2"
  role          = aws_iam_role.admissions_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "library_datasets_fn4" {
  function_name = "kasol-zq0qg-library-datasets-fn4"
  role          = aws_iam_role.library_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lms_reports_fn1" {
  function_name = "kasol-zq0qg-lms-reports-fn1"
  role          = aws_iam_role.lms_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lms_reports_fn3" {
  function_name = "kasol-zq0qg-lms-reports-fn3"
  role          = aws_iam_role.lms_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "research_computing_reports_fn0" {
  function_name = "kasol-zq0qg-research-computing-reports-fn0"
  role          = aws_iam_role.research_computing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
