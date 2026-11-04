resource "aws_s3_bucket" "lambda_src" {
  bucket = "axtri-1bmokt-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "api_2_analytics_fn27" {
  function_name = "axtri-1bmokt-api-2-analytics-fn27"
  role          = aws_iam_role.api_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_uploads_fn25" {
  function_name = "axtri-1bmokt-api-uploads-fn25"
  role          = aws_iam_role.api_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_3_analytics_fn32" {
  function_name = "axtri-1bmokt-auth-3-analytics-fn32"
  role          = aws_iam_role.auth_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_uploads_fn12" {
  function_name = "axtri-1bmokt-billing-2-uploads-fn12"
  role          = aws_iam_role.support_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_uploads_fn22" {
  function_name = "axtri-1bmokt-billing-2-uploads-fn22"
  role          = aws_iam_role.billing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_uploads_fn30" {
  function_name = "axtri-1bmokt-billing-2-uploads-fn30"
  role          = aws_iam_role.billing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_uploads_fn7" {
  function_name = "axtri-1bmokt-billing-2-uploads-fn7"
  role          = aws_iam_role.billing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_3_backups_fn6" {
  function_name = "axtri-1bmokt-billing-3-backups-fn6"
  role          = aws_iam_role.mobile_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_backups_fn20" {
  function_name = "axtri-1bmokt-billing-backups-fn20"
  role          = aws_iam_role.growth_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_2_exports_fn35" {
  function_name = "axtri-1bmokt-data-2-exports-fn35"
  role          = aws_iam_role.web_3_analytics_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_2_exports_fn40" {
  function_name = "axtri-1bmokt-data-2-exports-fn40"
  role          = aws_iam_role.data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_3_logs_fn28" {
  function_name = "axtri-1bmokt-data-3-logs-fn28"
  role          = aws_iam_role.growth_2_uploads_svc48.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_3_logs_fn4" {
  function_name = "axtri-1bmokt-data-3-logs-fn4"
  role          = aws_iam_role.data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_analytics_fn18" {
  function_name = "axtri-1bmokt-data-analytics-fn18"
  role          = aws_iam_role.api_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_backups_fn11" {
  function_name = "axtri-1bmokt-data-backups-fn11"
  role          = aws_iam_role.data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_backups_fn2" {
  function_name = "axtri-1bmokt-data-backups-fn2"
  role          = aws_iam_role.data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_backups_fn38" {
  function_name = "axtri-1bmokt-data-backups-fn38"
  role          = aws_iam_role.data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_2_uploads_fn9" {
  function_name = "axtri-1bmokt-growth-2-uploads-fn9"
  role          = aws_iam_role.growth_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_2_assets_fn19" {
  function_name = "axtri-1bmokt-infra-2-assets-fn19"
  role          = aws_iam_role.search_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_2_analytics_fn13" {
  function_name = "axtri-1bmokt-ml-2-analytics-fn13"
  role          = aws_iam_role.ml_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_2_analytics_fn15" {
  function_name = "axtri-1bmokt-ml-2-analytics-fn15"
  role          = aws_iam_role.ml_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_uploads_fn0" {
  function_name = "axtri-1bmokt-ml-uploads-fn0"
  role          = aws_iam_role.data_3_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_uploads_fn10" {
  function_name = "axtri-1bmokt-ml-uploads-fn10"
  role          = aws_iam_role.ml_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_2_assets_fn39" {
  function_name = "axtri-1bmokt-mobile-2-assets-fn39"
  role          = aws_iam_role.api_uploads_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_backups_fn1" {
  function_name = "axtri-1bmokt-mobile-3-backups-fn1"
  role          = aws_iam_role.api_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_backups_fn16" {
  function_name = "axtri-1bmokt-mobile-3-backups-fn16"
  role          = aws_iam_role.support_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_exports_fn34" {
  function_name = "axtri-1bmokt-mobile-exports-fn34"
  role          = aws_iam_role.search_2_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_exports_fn8" {
  function_name = "axtri-1bmokt-mobile-exports-fn8"
  role          = aws_iam_role.mobile_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_2_assets_fn37" {
  function_name = "axtri-1bmokt-notifications-2-assets-fn37"
  role          = aws_iam_role.notifications_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_exports_fn33" {
  function_name = "axtri-1bmokt-notifications-exports-fn33"
  role          = aws_iam_role.notifications_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_2_analytics_fn17" {
  function_name = "axtri-1bmokt-search-2-analytics-fn17"
  role          = aws_iam_role.support_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_2_uploads_fn26" {
  function_name = "axtri-1bmokt-search-2-uploads-fn26"
  role          = aws_iam_role.search_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_2_uploads_fn3" {
  function_name = "axtri-1bmokt-search-2-uploads-fn3"
  role          = aws_iam_role.search_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_3_assets_fn31" {
  function_name = "axtri-1bmokt-search-3-assets-fn31"
  role          = aws_iam_role.search_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_3_exports_fn21" {
  function_name = "axtri-1bmokt-search-3-exports-fn21"
  role          = aws_iam_role.search_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_exports_fn5" {
  function_name = "axtri-1bmokt-search-exports-fn5"
  role          = aws_iam_role.search_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_analytics_fn14" {
  function_name = "axtri-1bmokt-support-analytics-fn14"
  role          = aws_iam_role.support_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_2_analytics_fn24" {
  function_name = "axtri-1bmokt-web-2-analytics-fn24"
  role          = aws_iam_role.web_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_3_backups_fn36" {
  function_name = "axtri-1bmokt-web-3-backups-fn36"
  role          = aws_iam_role.web_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_3_logs_fn29" {
  function_name = "axtri-1bmokt-web-3-logs-fn29"
  role          = aws_iam_role.web_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_exports_fn23" {
  function_name = "axtri-1bmokt-web-exports-fn23"
  role          = aws_iam_role.web_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
