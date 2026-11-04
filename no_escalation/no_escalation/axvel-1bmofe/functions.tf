resource "aws_s3_bucket" "lambda_src" {
  bucket = "axvel-1bmofe-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "api_2_analytics_fn77" {
  function_name = "axvel-1bmofe-api-2-analytics-fn77"
  role          = aws_iam_role.growth_7_uploads_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_3_assets_fn5" {
  function_name = "axvel-1bmofe-api-3-assets-fn5"
  role          = aws_iam_role.api_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_4_backups_fn37" {
  function_name = "axvel-1bmofe-api-4-backups-fn37"
  role          = aws_iam_role.search_6_uploads_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_4_backups_fn73" {
  function_name = "axvel-1bmofe-api-4-backups-fn73"
  role          = aws_iam_role.api_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_4_backups_fn75" {
  function_name = "axvel-1bmofe-api-4-backups-fn75"
  role          = aws_iam_role.api_4_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_4_exports_fn101" {
  function_name = "axvel-1bmofe-api-4-exports-fn101"
  role          = aws_iam_role.api_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_5_analytics_fn27" {
  function_name = "axvel-1bmofe-api-5-analytics-fn27"
  role          = aws_iam_role.infra_6_backups_svc145.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "api_6_analytics_fn91" {
  function_name = "axvel-1bmofe-api-6-analytics-fn91"
  role          = aws_iam_role.auth_2_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_3_exports_fn45" {
  function_name = "axvel-1bmofe-auth-3-exports-fn45"
  role          = aws_iam_role.auth_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_4_exports_fn36" {
  function_name = "axvel-1bmofe-auth-4-exports-fn36"
  role          = aws_iam_role.auth_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_5_assets_fn46" {
  function_name = "axvel-1bmofe-auth-5-assets-fn46"
  role          = aws_iam_role.ml_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_6_logs_fn85" {
  function_name = "axvel-1bmofe-auth-6-logs-fn85"
  role          = aws_iam_role.auth_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_analytics_fn63" {
  function_name = "axvel-1bmofe-auth-analytics-fn63"
  role          = aws_iam_role.data_3_analytics_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_backups_fn89" {
  function_name = "axvel-1bmofe-auth-backups-fn89"
  role          = aws_iam_role.infra_5_analytics_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "auth_exports_fn87" {
  function_name = "axvel-1bmofe-auth-exports-fn87"
  role          = aws_iam_role.auth_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_assets_fn7" {
  function_name = "axvel-1bmofe-billing-2-assets-fn7"
  role          = aws_iam_role.billing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_2_exports_fn97" {
  function_name = "axvel-1bmofe-billing-2-exports-fn97"
  role          = aws_iam_role.billing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_3_assets_fn57" {
  function_name = "axvel-1bmofe-billing-3-assets-fn57"
  role          = aws_iam_role.billing_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_3_backups_fn41" {
  function_name = "axvel-1bmofe-billing-3-backups-fn41"
  role          = aws_iam_role.infra_3_backups_svc189.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_4_uploads_fn105" {
  function_name = "axvel-1bmofe-billing-4-uploads-fn105"
  role          = aws_iam_role.growth_4_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_4_uploads_fn110" {
  function_name = "axvel-1bmofe-billing-4-uploads-fn110"
  role          = aws_iam_role.infra_4_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_5_logs_fn39" {
  function_name = "axvel-1bmofe-billing-5-logs-fn39"
  role          = aws_iam_role.notifications_6_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_6_logs_fn28" {
  function_name = "axvel-1bmofe-billing-6-logs-fn28"
  role          = aws_iam_role.billing_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_7_analytics_fn117" {
  function_name = "axvel-1bmofe-billing-7-analytics-fn117"
  role          = aws_iam_role.billing_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "billing_uploads_fn111" {
  function_name = "axvel-1bmofe-billing-uploads-fn111"
  role          = aws_iam_role.billing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_2_logs_fn66" {
  function_name = "axvel-1bmofe-data-2-logs-fn66"
  role          = aws_iam_role.web_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_3_uploads_fn84" {
  function_name = "axvel-1bmofe-data-3-uploads-fn84"
  role          = aws_iam_role.mobile_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_4_logs_fn19" {
  function_name = "axvel-1bmofe-data-4-logs-fn19"
  role          = aws_iam_role.notifications_6_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_4_logs_fn76" {
  function_name = "axvel-1bmofe-data-4-logs-fn76"
  role          = aws_iam_role.api_3_assets_svc105.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_4_uploads_fn65" {
  function_name = "axvel-1bmofe-data-4-uploads-fn65"
  role          = aws_iam_role.data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_6_exports_fn102" {
  function_name = "axvel-1bmofe-data-6-exports-fn102"
  role          = aws_iam_role.data_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_7_exports_fn17" {
  function_name = "axvel-1bmofe-data-7-exports-fn17"
  role          = aws_iam_role.data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_7_exports_fn82" {
  function_name = "axvel-1bmofe-data-7-exports-fn82"
  role          = aws_iam_role.data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_2_analytics_fn108" {
  function_name = "axvel-1bmofe-growth-2-analytics-fn108"
  role          = aws_iam_role.billing_6_assets_svc223.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_2_analytics_fn71" {
  function_name = "axvel-1bmofe-growth-2-analytics-fn71"
  role          = aws_iam_role.ml_5_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_2_analytics_fn78" {
  function_name = "axvel-1bmofe-growth-2-analytics-fn78"
  role          = aws_iam_role.notifications_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_3_logs_fn56" {
  function_name = "axvel-1bmofe-growth-3-logs-fn56"
  role          = aws_iam_role.mobile_2_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_4_exports_fn88" {
  function_name = "axvel-1bmofe-growth-4-exports-fn88"
  role          = aws_iam_role.support_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_5_exports_fn54" {
  function_name = "axvel-1bmofe-growth-5-exports-fn54"
  role          = aws_iam_role.growth_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_6_assets_fn48" {
  function_name = "axvel-1bmofe-growth-6-assets-fn48"
  role          = aws_iam_role.growth_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "growth_7_uploads_fn20" {
  function_name = "axvel-1bmofe-growth-7-uploads-fn20"
  role          = aws_iam_role.growth_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_3_backups_fn0" {
  function_name = "axvel-1bmofe-infra-3-backups-fn0"
  role          = aws_iam_role.infra_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_4_analytics_fn12" {
  function_name = "axvel-1bmofe-infra-4-analytics-fn12"
  role          = aws_iam_role.infra_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_4_analytics_fn15" {
  function_name = "axvel-1bmofe-infra-4-analytics-fn15"
  role          = aws_iam_role.billing_6_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_4_logs_fn14" {
  function_name = "axvel-1bmofe-infra-4-logs-fn14"
  role          = aws_iam_role.infra_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_5_exports_fn112" {
  function_name = "axvel-1bmofe-infra-5-exports-fn112"
  role          = aws_iam_role.infra_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_5_exports_fn72" {
  function_name = "axvel-1bmofe-infra-5-exports-fn72"
  role          = aws_iam_role.infra_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_6_backups_fn90" {
  function_name = "axvel-1bmofe-infra-6-backups-fn90"
  role          = aws_iam_role.infra_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_7_exports_fn11" {
  function_name = "axvel-1bmofe-infra-7-exports-fn11"
  role          = aws_iam_role.growth_3_logs_svc106.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_7_exports_fn31" {
  function_name = "axvel-1bmofe-infra-7-exports-fn31"
  role          = aws_iam_role.infra_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "infra_analytics_fn113" {
  function_name = "axvel-1bmofe-infra-analytics-fn113"
  role          = aws_iam_role.mobile_5_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_2_analytics_fn100" {
  function_name = "axvel-1bmofe-ml-2-analytics-fn100"
  role          = aws_iam_role.web_4_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_2_analytics_fn98" {
  function_name = "axvel-1bmofe-ml-2-analytics-fn98"
  role          = aws_iam_role.ml_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_2_exports_fn95" {
  function_name = "axvel-1bmofe-ml-2-exports-fn95"
  role          = aws_iam_role.auth_analytics_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_3_assets_fn44" {
  function_name = "axvel-1bmofe-ml-3-assets-fn44"
  role          = aws_iam_role.ml_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_4_analytics_fn106" {
  function_name = "axvel-1bmofe-ml-4-analytics-fn106"
  role          = aws_iam_role.ml_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_4_analytics_fn2" {
  function_name = "axvel-1bmofe-ml-4-analytics-fn2"
  role          = aws_iam_role.web_5_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_4_backups_fn40" {
  function_name = "axvel-1bmofe-ml-4-backups-fn40"
  role          = aws_iam_role.ml_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_5_logs_fn61" {
  function_name = "axvel-1bmofe-ml-5-logs-fn61"
  role          = aws_iam_role.ml_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_6_backups_fn38" {
  function_name = "axvel-1bmofe-ml-6-backups-fn38"
  role          = aws_iam_role.ml_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_analytics_fn70" {
  function_name = "axvel-1bmofe-ml-analytics-fn70"
  role          = aws_iam_role.ml_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ml_uploads_fn62" {
  function_name = "axvel-1bmofe-ml-uploads-fn62"
  role          = aws_iam_role.ml_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_2_analytics_fn18" {
  function_name = "axvel-1bmofe-mobile-2-analytics-fn18"
  role          = aws_iam_role.web_2_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_uploads_fn35" {
  function_name = "axvel-1bmofe-mobile-3-uploads-fn35"
  role          = aws_iam_role.mobile_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_4_logs_fn58" {
  function_name = "axvel-1bmofe-mobile-4-logs-fn58"
  role          = aws_iam_role.mobile_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_4_logs_fn83" {
  function_name = "axvel-1bmofe-mobile-4-logs-fn83"
  role          = aws_iam_role.infra_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_5_logs_fn43" {
  function_name = "axvel-1bmofe-mobile-5-logs-fn43"
  role          = aws_iam_role.mobile_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_exports_fn115" {
  function_name = "axvel-1bmofe-mobile-6-exports-fn115"
  role          = aws_iam_role.web_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_exports_fn99" {
  function_name = "axvel-1bmofe-mobile-6-exports-fn99"
  role          = aws_iam_role.mobile_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_uploads_fn55" {
  function_name = "axvel-1bmofe-mobile-6-uploads-fn55"
  role          = aws_iam_role.mobile_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_uploads_fn96" {
  function_name = "axvel-1bmofe-mobile-6-uploads-fn96"
  role          = aws_iam_role.mobile_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_7_logs_fn29" {
  function_name = "axvel-1bmofe-mobile-7-logs-fn29"
  role          = aws_iam_role.api_5_uploads_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_assets_fn64" {
  function_name = "axvel-1bmofe-mobile-assets-fn64"
  role          = aws_iam_role.mobile_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_2_analytics_fn34" {
  function_name = "axvel-1bmofe-notifications-2-analytics-fn34"
  role          = aws_iam_role.notifications_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_3_assets_fn3" {
  function_name = "axvel-1bmofe-notifications-3-assets-fn3"
  role          = aws_iam_role.notifications_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_3_uploads_fn80" {
  function_name = "axvel-1bmofe-notifications-3-uploads-fn80"
  role          = aws_iam_role.notifications_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_4_backups_fn104" {
  function_name = "axvel-1bmofe-notifications-4-backups-fn104"
  role          = aws_iam_role.mobile_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_4_backups_fn26" {
  function_name = "axvel-1bmofe-notifications-4-backups-fn26"
  role          = aws_iam_role.notifications_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_5_analytics_fn16" {
  function_name = "axvel-1bmofe-notifications-5-analytics-fn16"
  role          = aws_iam_role.ml_4_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_5_analytics_fn42" {
  function_name = "axvel-1bmofe-notifications-5-analytics-fn42"
  role          = aws_iam_role.notifications_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_5_analytics_fn59" {
  function_name = "axvel-1bmofe-notifications-5-analytics-fn59"
  role          = aws_iam_role.notifications_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_6_exports_fn22" {
  function_name = "axvel-1bmofe-notifications-6-exports-fn22"
  role          = aws_iam_role.notifications_3_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_6_exports_fn9" {
  function_name = "axvel-1bmofe-notifications-6-exports-fn9"
  role          = aws_iam_role.web_6_assets_svc220.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_6_logs_fn23" {
  function_name = "axvel-1bmofe-notifications-6-logs-fn23"
  role          = aws_iam_role.notifications_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_6_logs_fn51" {
  function_name = "axvel-1bmofe-notifications-6-logs-fn51"
  role          = aws_iam_role.notifications_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "notifications_analytics_fn93" {
  function_name = "axvel-1bmofe-notifications-analytics-fn93"
  role          = aws_iam_role.mobile_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_3_assets_fn1" {
  function_name = "axvel-1bmofe-search-3-assets-fn1"
  role          = aws_iam_role.search_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_3_uploads_fn32" {
  function_name = "axvel-1bmofe-search-3-uploads-fn32"
  role          = aws_iam_role.search_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_3_uploads_fn49" {
  function_name = "axvel-1bmofe-search-3-uploads-fn49"
  role          = aws_iam_role.search_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_4_exports_fn6" {
  function_name = "axvel-1bmofe-search-4-exports-fn6"
  role          = aws_iam_role.notifications_assets_svc250.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_4_exports_fn79" {
  function_name = "axvel-1bmofe-search-4-exports-fn79"
  role          = aws_iam_role.search_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_5_backups_fn94" {
  function_name = "axvel-1bmofe-search-5-backups-fn94"
  role          = aws_iam_role.search_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_5_logs_fn30" {
  function_name = "axvel-1bmofe-search-5-logs-fn30"
  role          = aws_iam_role.search_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_5_logs_fn92" {
  function_name = "axvel-1bmofe-search-5-logs-fn92"
  role          = aws_iam_role.search_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_6_uploads_fn10" {
  function_name = "axvel-1bmofe-search-6-uploads-fn10"
  role          = aws_iam_role.search_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_6_uploads_fn68" {
  function_name = "axvel-1bmofe-search-6-uploads-fn68"
  role          = aws_iam_role.web_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_7_backups_fn116" {
  function_name = "axvel-1bmofe-search-7-backups-fn116"
  role          = aws_iam_role.search_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_exports_fn24" {
  function_name = "axvel-1bmofe-search-exports-fn24"
  role          = aws_iam_role.mobile_5_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_exports_fn47" {
  function_name = "axvel-1bmofe-search-exports-fn47"
  role          = aws_iam_role.search_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "search_exports_fn53" {
  function_name = "axvel-1bmofe-search-exports-fn53"
  role          = aws_iam_role.search_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_2_logs_fn103" {
  function_name = "axvel-1bmofe-support-2-logs-fn103"
  role          = aws_iam_role.support_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_4_analytics_fn60" {
  function_name = "axvel-1bmofe-support-4-analytics-fn60"
  role          = aws_iam_role.notifications_3_uploads_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_4_backups_fn21" {
  function_name = "axvel-1bmofe-support-4-backups-fn21"
  role          = aws_iam_role.support_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_4_backups_fn52" {
  function_name = "axvel-1bmofe-support-4-backups-fn52"
  role          = aws_iam_role.support_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_5_assets_fn67" {
  function_name = "axvel-1bmofe-support-5-assets-fn67"
  role          = aws_iam_role.support_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_5_exports_fn69" {
  function_name = "axvel-1bmofe-support-5-exports-fn69"
  role          = aws_iam_role.data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_6_assets_fn8" {
  function_name = "axvel-1bmofe-support-6-assets-fn8"
  role          = aws_iam_role.web_4_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_6_logs_fn25" {
  function_name = "axvel-1bmofe-support-6-logs-fn25"
  role          = aws_iam_role.billing_2_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "support_logs_fn4" {
  function_name = "axvel-1bmofe-support-logs-fn4"
  role          = aws_iam_role.notifications_analytics_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_2_exports_fn81" {
  function_name = "axvel-1bmofe-web-2-exports-fn81"
  role          = aws_iam_role.ml_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_3_exports_fn74" {
  function_name = "axvel-1bmofe-web-3-exports-fn74"
  role          = aws_iam_role.auth_5_exports_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_4_assets_fn107" {
  function_name = "axvel-1bmofe-web-4-assets-fn107"
  role          = aws_iam_role.web_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_4_logs_fn114" {
  function_name = "axvel-1bmofe-web-4-logs-fn114"
  role          = aws_iam_role.web_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_5_uploads_fn109" {
  function_name = "axvel-1bmofe-web-5-uploads-fn109"
  role          = aws_iam_role.search_6_uploads_svc224.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_5_uploads_fn13" {
  function_name = "axvel-1bmofe-web-5-uploads-fn13"
  role          = aws_iam_role.web_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_5_uploads_fn33" {
  function_name = "axvel-1bmofe-web-5-uploads-fn33"
  role          = aws_iam_role.mobile_assets_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_exports_fn50" {
  function_name = "axvel-1bmofe-web-exports-fn50"
  role          = aws_iam_role.billing_6_logs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "web_uploads_fn86" {
  function_name = "axvel-1bmofe-web-uploads-fn86"
  role          = aws_iam_role.web_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
