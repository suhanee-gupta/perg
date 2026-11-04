resource "aws_s3_bucket" "lambda_src" {
  bucket = "arior-1njchw-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "audit_10_filings_fn2158" {
  function_name = "arior-1njchw-audit-10-filings-fn2158"
  role          = aws_iam_role.it_ops_29_filings_svc6169.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_10_public_data_fn184" {
  function_name = "arior-1njchw-audit-10-public-data-fn184"
  role          = aws_iam_role.it_ops_14_backups_svc7237.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_10_public_data_fn209" {
  function_name = "arior-1njchw-audit-10-public-data-fn209"
  role          = aws_iam_role.gis_28_records_svc6151.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_10_records_fn936" {
  function_name = "arior-1njchw-audit-10-records-fn936"
  role          = aws_iam_role.audit_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn1032" {
  function_name = "arior-1njchw-audit-11-public-data-fn1032"
  role          = aws_iam_role.gis_13_gis_layers_svc5971.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn1150" {
  function_name = "arior-1njchw-audit-11-public-data-fn1150"
  role          = aws_iam_role.audit_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn1164" {
  function_name = "arior-1njchw-audit-11-public-data-fn1164"
  role          = aws_iam_role.records_32_public_data_svc2453.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn2211" {
  function_name = "arior-1njchw-audit-11-public-data-fn2211"
  role          = aws_iam_role.procurement_25_backups_svc7780.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn33" {
  function_name = "arior-1njchw-audit-11-public-data-fn33"
  role          = aws_iam_role.audit_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn441" {
  function_name = "arior-1njchw-audit-11-public-data-fn441"
  role          = aws_iam_role.audit_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_11_public_data_fn764" {
  function_name = "arior-1njchw-audit-11-public-data-fn764"
  role          = aws_iam_role.audit_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_12_audit_fn1467" {
  function_name = "arior-1njchw-audit-12-audit-fn1467"
  role          = aws_iam_role.gis_24_public_data_svc6935.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_12_audit_fn1619" {
  function_name = "arior-1njchw-audit-12-audit-fn1619"
  role          = aws_iam_role.records_8_audit_svc6741.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_12_audit_fn1756" {
  function_name = "arior-1njchw-audit-12-audit-fn1756"
  role          = aws_iam_role.records_30_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_12_audit_fn193" {
  function_name = "arior-1njchw-audit-12-audit-fn193"
  role          = aws_iam_role.audit_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_12_audit_fn198" {
  function_name = "arior-1njchw-audit-12-audit-fn198"
  role          = aws_iam_role.tax_13_gis_layers_svc5973.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_public_data_fn2493" {
  function_name = "arior-1njchw-audit-13-public-data-fn2493"
  role          = aws_iam_role.audit_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_public_data_fn515" {
  function_name = "arior-1njchw-audit-13-public-data-fn515"
  role          = aws_iam_role.it_ops_8_public_data_svc1757.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn1255" {
  function_name = "arior-1njchw-audit-13-records-fn1255"
  role          = aws_iam_role.audit_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn1521" {
  function_name = "arior-1njchw-audit-13-records-fn1521"
  role          = aws_iam_role.open_data_13_records_svc6807.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn2037" {
  function_name = "arior-1njchw-audit-13-records-fn2037"
  role          = aws_iam_role.records_17_backups_svc7265.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn622" {
  function_name = "arior-1njchw-audit-13-records-fn622"
  role          = aws_iam_role.audit_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn704" {
  function_name = "arior-1njchw-audit-13-records-fn704"
  role          = aws_iam_role.tax_2_records_svc7505.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn975" {
  function_name = "arior-1njchw-audit-13-records-fn975"
  role          = aws_iam_role.audit_8_gis_layers_svc2590.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_13_records_fn990" {
  function_name = "arior-1njchw-audit-13-records-fn990"
  role          = aws_iam_role.audit_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_audit_fn1485" {
  function_name = "arior-1njchw-audit-14-audit-fn1485"
  role          = aws_iam_role.benefits_7_public_data_svc2995.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_audit_fn793" {
  function_name = "arior-1njchw-audit-14-audit-fn793"
  role          = aws_iam_role.audit_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_filings_fn102" {
  function_name = "arior-1njchw-audit-14-filings-fn102"
  role          = aws_iam_role.audit_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_filings_fn1332" {
  function_name = "arior-1njchw-audit-14-filings-fn1332"
  role          = aws_iam_role.benefits_17_audit_svc7691.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_filings_fn194" {
  function_name = "arior-1njchw-audit-14-filings-fn194"
  role          = aws_iam_role.audit_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_records_fn1443" {
  function_name = "arior-1njchw-audit-14-records-fn1443"
  role          = aws_iam_role.audit_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_records_fn236" {
  function_name = "arior-1njchw-audit-14-records-fn236"
  role          = aws_iam_role.tax_11_audit_svc6781.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_records_fn264" {
  function_name = "arior-1njchw-audit-14-records-fn264"
  role          = aws_iam_role.audit_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_14_records_fn804" {
  function_name = "arior-1njchw-audit-14-records-fn804"
  role          = aws_iam_role.open_data_13_records_svc4311.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_audit_fn1053" {
  function_name = "arior-1njchw-audit-15-audit-fn1053"
  role          = aws_iam_role.audit_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_audit_fn2154" {
  function_name = "arior-1njchw-audit-15-audit-fn2154"
  role          = aws_iam_role.public_safety_19_filings_svc4798.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_audit_fn372" {
  function_name = "arior-1njchw-audit-15-audit-fn372"
  role          = aws_iam_role.open_data_25_records_svc5287.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_audit_fn572" {
  function_name = "arior-1njchw-audit-15-audit-fn572"
  role          = aws_iam_role.hr_21_gis_layers_svc1912.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_backups_fn22" {
  function_name = "arior-1njchw-audit-15-backups-fn22"
  role          = aws_iam_role.audit_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_public_data_fn1486" {
  function_name = "arior-1njchw-audit-15-public-data-fn1486"
  role          = aws_iam_role.records_16_audit_svc4757.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_public_data_fn1795" {
  function_name = "arior-1njchw-audit-15-public-data-fn1795"
  role          = aws_iam_role.audit_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_15_public_data_fn984" {
  function_name = "arior-1njchw-audit-15-public-data-fn984"
  role          = aws_iam_role.audit_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn1367" {
  function_name = "arior-1njchw-audit-16-audit-fn1367"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn1661" {
  function_name = "arior-1njchw-audit-16-audit-fn1661"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn1716" {
  function_name = "arior-1njchw-audit-16-audit-fn1716"
  role          = aws_iam_role.benefits_audit_svc4171.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn2011" {
  function_name = "arior-1njchw-audit-16-audit-fn2011"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn2340" {
  function_name = "arior-1njchw-audit-16-audit-fn2340"
  role          = aws_iam_role.procurement_20_filings_svc3144.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn337" {
  function_name = "arior-1njchw-audit-16-audit-fn337"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn43" {
  function_name = "arior-1njchw-audit-16-audit-fn43"
  role          = aws_iam_role.hr_32_gis_layers_svc5788.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn807" {
  function_name = "arior-1njchw-audit-16-audit-fn807"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_16_audit_fn995" {
  function_name = "arior-1njchw-audit-16-audit-fn995"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_17_records_fn1144" {
  function_name = "arior-1njchw-audit-17-records-fn1144"
  role          = aws_iam_role.audit_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_17_records_fn1328" {
  function_name = "arior-1njchw-audit-17-records-fn1328"
  role          = aws_iam_role.audit_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_17_records_fn429" {
  function_name = "arior-1njchw-audit-17-records-fn429"
  role          = aws_iam_role.audit_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_17_records_fn482" {
  function_name = "arior-1njchw-audit-17-records-fn482"
  role          = aws_iam_role.audit_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_audit_fn1052" {
  function_name = "arior-1njchw-audit-18-audit-fn1052"
  role          = aws_iam_role.audit_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_audit_fn404" {
  function_name = "arior-1njchw-audit-18-audit-fn404"
  role          = aws_iam_role.audit_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_audit_fn81" {
  function_name = "arior-1njchw-audit-18-audit-fn81"
  role          = aws_iam_role.it_ops_23_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_public_data_fn1214" {
  function_name = "arior-1njchw-audit-18-public-data-fn1214"
  role          = aws_iam_role.audit_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_public_data_fn1220" {
  function_name = "arior-1njchw-audit-18-public-data-fn1220"
  role          = aws_iam_role.audit_28_gis_layers_svc2830.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_public_data_fn2055" {
  function_name = "arior-1njchw-audit-18-public-data-fn2055"
  role          = aws_iam_role.audit_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_18_public_data_fn253" {
  function_name = "arior-1njchw-audit-18-public-data-fn253"
  role          = aws_iam_role.hr_23_backups_svc4848.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn1093" {
  function_name = "arior-1njchw-audit-19-filings-fn1093"
  role          = aws_iam_role.citizen_portal_22_public_data_svc7740.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn1148" {
  function_name = "arior-1njchw-audit-19-filings-fn1148"
  role          = aws_iam_role.audit_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn1414" {
  function_name = "arior-1njchw-audit-19-filings-fn1414"
  role          = aws_iam_role.licensing_4_audit_svc6278.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn1737" {
  function_name = "arior-1njchw-audit-19-filings-fn1737"
  role          = aws_iam_role.audit_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn1854" {
  function_name = "arior-1njchw-audit-19-filings-fn1854"
  role          = aws_iam_role.audit_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn2128" {
  function_name = "arior-1njchw-audit-19-filings-fn2128"
  role          = aws_iam_role.hr_9_backups_svc3016.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn435" {
  function_name = "arior-1njchw-audit-19-filings-fn435"
  role          = aws_iam_role.audit_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_19_filings_fn836" {
  function_name = "arior-1njchw-audit-19-filings-fn836"
  role          = aws_iam_role.it_ops_18_records_svc2709.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_filings_fn1155" {
  function_name = "arior-1njchw-audit-2-filings-fn1155"
  role          = aws_iam_role.gis_24_backups_svc4023.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_filings_fn1290" {
  function_name = "arior-1njchw-audit-2-filings-fn1290"
  role          = aws_iam_role.citizen_portal_23_audit_svc1096.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_filings_fn2393" {
  function_name = "arior-1njchw-audit-2-filings-fn2393"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_filings_fn61" {
  function_name = "arior-1njchw-audit-2-filings-fn61"
  role          = aws_iam_role.hr_14_records_svc6820.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn1805" {
  function_name = "arior-1njchw-audit-2-records-fn1805"
  role          = aws_iam_role.procurement_7_records_svc4236.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn187" {
  function_name = "arior-1njchw-audit-2-records-fn187"
  role          = aws_iam_role.open_data_21_records_svc2743.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn2397" {
  function_name = "arior-1njchw-audit-2-records-fn2397"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn289" {
  function_name = "arior-1njchw-audit-2-records-fn289"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn12" {
  function_name = "arior-1njchw-audit-20-audit-fn12"
  role          = aws_iam_role.open_data_30_public_data_svc3683.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn1504" {
  function_name = "arior-1njchw-audit-20-audit-fn1504"
  role          = aws_iam_role.audit_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn1760" {
  function_name = "arior-1njchw-audit-20-audit-fn1760"
  role          = aws_iam_role.licensing_4_audit_svc3782.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn1957" {
  function_name = "arior-1njchw-audit-20-audit-fn1957"
  role          = aws_iam_role.audit_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn293" {
  function_name = "arior-1njchw-audit-20-audit-fn293"
  role          = aws_iam_role.audit_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_20_audit_fn978" {
  function_name = "arior-1njchw-audit-20-audit-fn978"
  role          = aws_iam_role.audit_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn107" {
  function_name = "arior-1njchw-audit-21-audit-fn107"
  role          = aws_iam_role.hr_10_records_svc1780.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn1542" {
  function_name = "arior-1njchw-audit-21-audit-fn1542"
  role          = aws_iam_role.audit_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn1730" {
  function_name = "arior-1njchw-audit-21-audit-fn1730"
  role          = aws_iam_role.licensing_11_gis_layers_svc4698.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn2075" {
  function_name = "arior-1njchw-audit-21-audit-fn2075"
  role          = aws_iam_role.audit_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn2470" {
  function_name = "arior-1njchw-audit-21-audit-fn2470"
  role          = aws_iam_role.audit_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn368" {
  function_name = "arior-1njchw-audit-21-audit-fn368"
  role          = aws_iam_role.audit_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_21_audit_fn490" {
  function_name = "arior-1njchw-audit-21-audit-fn490"
  role          = aws_iam_role.gis_34_records_svc4559.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn105" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn105"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn1440" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn1440"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn1939" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn1939"
  role          = aws_iam_role.gis_30_gis_layers_svc3263.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn2007" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn2007"
  role          = aws_iam_role.open_data_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn2032" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn2032"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn312" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn312"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn520" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn520"
  role          = aws_iam_role.procurement_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn631" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn631"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_22_gis_layers_fn686" {
  function_name = "arior-1njchw-audit-22-gis-layers-fn686"
  role          = aws_iam_role.audit_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn118" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn118"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn1538" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn1538"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn1608" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn1608"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn171" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn171"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn1720" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn1720"
  role          = aws_iam_role.procurement_27_filings_svc7388.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn2023" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn2023"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn221" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn221"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn2214" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn2214"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn279" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn279"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_23_gis_layers_fn955" {
  function_name = "arior-1njchw-audit-23-gis-layers-fn955"
  role          = aws_iam_role.it_ops_31_records_svc4945.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn1" {
  function_name = "arior-1njchw-audit-24-filings-fn1"
  role          = aws_iam_role.audit_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn1588" {
  function_name = "arior-1njchw-audit-24-filings-fn1588"
  role          = aws_iam_role.audit_16_audit_svc5598.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn1961" {
  function_name = "arior-1njchw-audit-24-filings-fn1961"
  role          = aws_iam_role.procurement_24_public_data_svc3192.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn2201" {
  function_name = "arior-1njchw-audit-24-filings-fn2201"
  role          = aws_iam_role.benefits_28_gis_layers_svc5327.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn241" {
  function_name = "arior-1njchw-audit-24-filings-fn241"
  role          = aws_iam_role.hr_33_audit_svc7880.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn2441" {
  function_name = "arior-1njchw-audit-24-filings-fn2441"
  role          = aws_iam_role.licensing_27_records_svc5306.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn796" {
  function_name = "arior-1njchw-audit-24-filings-fn796"
  role          = aws_iam_role.citizen_portal_34_public_data_svc3308.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_24_filings_fn914" {
  function_name = "arior-1njchw-audit-24-filings-fn914"
  role          = aws_iam_role.open_data_9_backups_svc4679.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_public_data_fn1291" {
  function_name = "arior-1njchw-audit-25-public-data-fn1291"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_public_data_fn1869" {
  function_name = "arior-1njchw-audit-25-public-data-fn1869"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_public_data_fn2084" {
  function_name = "arior-1njchw-audit-25-public-data-fn2084"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_public_data_fn2399" {
  function_name = "arior-1njchw-audit-25-public-data-fn2399"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_records_fn1535" {
  function_name = "arior-1njchw-audit-25-records-fn1535"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_records_fn1887" {
  function_name = "arior-1njchw-audit-25-records-fn1887"
  role          = aws_iam_role.it_ops_audit_svc7081.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_records_fn2269" {
  function_name = "arior-1njchw-audit-25-records-fn2269"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_25_records_fn2460" {
  function_name = "arior-1njchw-audit-25-records-fn2460"
  role          = aws_iam_role.audit_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_26_gis_layers_fn1902" {
  function_name = "arior-1njchw-audit-26-gis-layers-fn1902"
  role          = aws_iam_role.gis_9_audit_svc4675.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_26_gis_layers_fn2039" {
  function_name = "arior-1njchw-audit-26-gis-layers-fn2039"
  role          = aws_iam_role.audit_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_26_gis_layers_fn716" {
  function_name = "arior-1njchw-audit-26-gis-layers-fn716"
  role          = aws_iam_role.audit_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_26_gis_layers_fn897" {
  function_name = "arior-1njchw-audit-26-gis-layers-fn897"
  role          = aws_iam_role.it_ops_8_records_svc5501.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_26_gis_layers_fn90" {
  function_name = "arior-1njchw-audit-26-gis-layers-fn90"
  role          = aws_iam_role.public_safety_13_backups_svc7222.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_filings_fn1230" {
  function_name = "arior-1njchw-audit-27-filings-fn1230"
  role          = aws_iam_role.audit_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_filings_fn1845" {
  function_name = "arior-1njchw-audit-27-filings-fn1845"
  role          = aws_iam_role.audit_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_filings_fn2193" {
  function_name = "arior-1njchw-audit-27-filings-fn2193"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_filings_fn332" {
  function_name = "arior-1njchw-audit-27-filings-fn332"
  role          = aws_iam_role.audit_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_gis_layers_fn1375" {
  function_name = "arior-1njchw-audit-27-gis-layers-fn1375"
  role          = aws_iam_role.hr_14_records_svc3908.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_gis_layers_fn2036" {
  function_name = "arior-1njchw-audit-27-gis-layers-fn2036"
  role          = aws_iam_role.licensing_19_backups_svc1050.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_27_gis_layers_fn330" {
  function_name = "arior-1njchw-audit-27-gis-layers-fn330"
  role          = aws_iam_role.audit_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_audit_fn1140" {
  function_name = "arior-1njchw-audit-28-audit-fn1140"
  role          = aws_iam_role.audit_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_audit_fn1452" {
  function_name = "arior-1njchw-audit-28-audit-fn1452"
  role          = aws_iam_role.audit_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_audit_fn2111" {
  function_name = "arior-1njchw-audit-28-audit-fn2111"
  role          = aws_iam_role.public_safety_17_backups_svc3526.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_audit_fn2296" {
  function_name = "arior-1njchw-audit-28-audit-fn2296"
  role          = aws_iam_role.gis_2_records_svc847.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_gis_layers_fn1223" {
  function_name = "arior-1njchw-audit-28-gis-layers-fn1223"
  role          = aws_iam_role.hr_12_public_data_svc3468.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_gis_layers_fn1561" {
  function_name = "arior-1njchw-audit-28-gis-layers-fn1561"
  role          = aws_iam_role.audit_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_gis_layers_fn1764" {
  function_name = "arior-1njchw-audit-28-gis-layers-fn1764"
  role          = aws_iam_role.procurement_28_gis_layers_svc1160.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_gis_layers_fn189" {
  function_name = "arior-1njchw-audit-28-gis-layers-fn189"
  role          = aws_iam_role.it_ops_27_gis_layers_svc737.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_28_gis_layers_fn1963" {
  function_name = "arior-1njchw-audit-28-gis-layers-fn1963"
  role          = aws_iam_role.audit_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn1703" {
  function_name = "arior-1njchw-audit-29-backups-fn1703"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn2053" {
  function_name = "arior-1njchw-audit-29-backups-fn2053"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn2254" {
  function_name = "arior-1njchw-audit-29-backups-fn2254"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn2345" {
  function_name = "arior-1njchw-audit-29-backups-fn2345"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn614" {
  function_name = "arior-1njchw-audit-29-backups-fn614"
  role          = aws_iam_role.citizen_portal_26_audit_svc5292.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_backups_fn935" {
  function_name = "arior-1njchw-audit-29-backups-fn935"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_gis_layers_fn480" {
  function_name = "arior-1njchw-audit-29-gis-layers-fn480"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_gis_layers_fn582" {
  function_name = "arior-1njchw-audit-29-gis-layers-fn582"
  role          = aws_iam_role.hr_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_29_records_fn1323" {
  function_name = "arior-1njchw-audit-29-records-fn1323"
  role          = aws_iam_role.audit_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn1118" {
  function_name = "arior-1njchw-audit-3-backups-fn1118"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn1972" {
  function_name = "arior-1njchw-audit-3-backups-fn1972"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn2456" {
  function_name = "arior-1njchw-audit-3-backups-fn2456"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn581" {
  function_name = "arior-1njchw-audit-3-backups-fn581"
  role          = aws_iam_role.procurement_27_filings_svc5724.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn706" {
  function_name = "arior-1njchw-audit-3-backups-fn706"
  role          = aws_iam_role.open_data_26_backups_svc6547.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_filings_fn1201" {
  function_name = "arior-1njchw-audit-3-filings-fn1201"
  role          = aws_iam_role.procurement_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_filings_fn1780" {
  function_name = "arior-1njchw-audit-3-filings-fn1780"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_filings_fn1922" {
  function_name = "arior-1njchw-audit-3-filings-fn1922"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_filings_fn2204" {
  function_name = "arior-1njchw-audit-3-filings-fn2204"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_30_audit_fn1359" {
  function_name = "arior-1njchw-audit-30-audit-fn1359"
  role          = aws_iam_role.audit_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_30_audit_fn701" {
  function_name = "arior-1njchw-audit-30-audit-fn701"
  role          = aws_iam_role.audit_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_30_audit_fn766" {
  function_name = "arior-1njchw-audit-30-audit-fn766"
  role          = aws_iam_role.audit_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_30_records_fn1240" {
  function_name = "arior-1njchw-audit-30-records-fn1240"
  role          = aws_iam_role.audit_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_30_records_fn1818" {
  function_name = "arior-1njchw-audit-30-records-fn1818"
  role          = aws_iam_role.tax_25_records_svc4869.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_gis_layers_fn1026" {
  function_name = "arior-1njchw-audit-31-gis-layers-fn1026"
  role          = aws_iam_role.audit_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_public_data_fn1003" {
  function_name = "arior-1njchw-audit-31-public-data-fn1003"
  role          = aws_iam_role.it_ops_14_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_public_data_fn1386" {
  function_name = "arior-1njchw-audit-31-public-data-fn1386"
  role          = aws_iam_role.audit_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_public_data_fn1530" {
  function_name = "arior-1njchw-audit-31-public-data-fn1530"
  role          = aws_iam_role.procurement_29_audit_svc7828.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_public_data_fn1576" {
  function_name = "arior-1njchw-audit-31-public-data-fn1576"
  role          = aws_iam_role.audit_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_31_public_data_fn484" {
  function_name = "arior-1njchw-audit-31-public-data-fn484"
  role          = aws_iam_role.audit_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_audit_fn183" {
  function_name = "arior-1njchw-audit-32-audit-fn183"
  role          = aws_iam_role.licensing_28_records_svc1158.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_audit_fn313" {
  function_name = "arior-1njchw-audit-32-audit-fn313"
  role          = aws_iam_role.citizen_portal_2_public_data_svc7084.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_audit_fn331" {
  function_name = "arior-1njchw-audit-32-audit-fn331"
  role          = aws_iam_role.audit_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_backups_fn521" {
  function_name = "arior-1njchw-audit-32-backups-fn521"
  role          = aws_iam_role.audit_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_backups_fn8" {
  function_name = "arior-1njchw-audit-32-backups-fn8"
  role          = aws_iam_role.licensing_4_audit_svc1702.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_gis_layers_fn1834" {
  function_name = "arior-1njchw-audit-32-gis-layers-fn1834"
  role          = aws_iam_role.audit_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_gis_layers_fn247" {
  function_name = "arior-1njchw-audit-32-gis-layers-fn247"
  role          = aws_iam_role.audit_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_gis_layers_fn352" {
  function_name = "arior-1njchw-audit-32-gis-layers-fn352"
  role          = aws_iam_role.audit_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_32_gis_layers_fn707" {
  function_name = "arior-1njchw-audit-32-gis-layers-fn707"
  role          = aws_iam_role.licensing_7_audit_svc3818.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_audit_fn1191" {
  function_name = "arior-1njchw-audit-33-audit-fn1191"
  role          = aws_iam_role.audit_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_audit_fn2049" {
  function_name = "arior-1njchw-audit-33-audit-fn2049"
  role          = aws_iam_role.audit_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_audit_fn348" {
  function_name = "arior-1njchw-audit-33-audit-fn348"
  role          = aws_iam_role.audit_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_backups_fn1562" {
  function_name = "arior-1njchw-audit-33-backups-fn1562"
  role          = aws_iam_role.audit_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_backups_fn1877" {
  function_name = "arior-1njchw-audit-33-backups-fn1877"
  role          = aws_iam_role.audit_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_backups_fn1931" {
  function_name = "arior-1njchw-audit-33-backups-fn1931"
  role          = aws_iam_role.hr_18_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_filings_fn1137" {
  function_name = "arior-1njchw-audit-33-filings-fn1137"
  role          = aws_iam_role.procurement_10_gis_layers_svc1360.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_33_filings_fn260" {
  function_name = "arior-1njchw-audit-33-filings-fn260"
  role          = aws_iam_role.procurement_19_records_svc6044.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_34_audit_fn1944" {
  function_name = "arior-1njchw-audit-34-audit-fn1944"
  role          = aws_iam_role.public_safety_28_backups_svc3242.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_34_filings_fn1241" {
  function_name = "arior-1njchw-audit-34-filings-fn1241"
  role          = aws_iam_role.audit_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_34_records_fn1097" {
  function_name = "arior-1njchw-audit-34-records-fn1097"
  role          = aws_iam_role.citizen_portal_6_public_data_svc2140.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_34_records_fn54" {
  function_name = "arior-1njchw-audit-34-records-fn54"
  role          = aws_iam_role.audit_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_34_records_fn560" {
  function_name = "arior-1njchw-audit-34-records-fn560"
  role          = aws_iam_role.audit_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn1293" {
  function_name = "arior-1njchw-audit-4-backups-fn1293"
  role          = aws_iam_role.hr_6_backups_svc4644.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn1354" {
  function_name = "arior-1njchw-audit-4-backups-fn1354"
  role          = aws_iam_role.public_safety_7_gis_layers_svc3822.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn1594" {
  function_name = "arior-1njchw-audit-4-backups-fn1594"
  role          = aws_iam_role.gis_3_records_svc3355.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn1624" {
  function_name = "arior-1njchw-audit-4-backups-fn1624"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn2219" {
  function_name = "arior-1njchw-audit-4-backups-fn2219"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn266" {
  function_name = "arior-1njchw-audit-4-backups-fn266"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn528" {
  function_name = "arior-1njchw-audit-4-backups-fn528"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn680" {
  function_name = "arior-1njchw-audit-4-backups-fn680"
  role          = aws_iam_role.it_ops_28_filings_svc1165.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn893" {
  function_name = "arior-1njchw-audit-4-backups-fn893"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_4_backups_fn905" {
  function_name = "arior-1njchw-audit-4-backups-fn905"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn1083" {
  function_name = "arior-1njchw-audit-5-backups-fn1083"
  role          = aws_iam_role.audit_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn1166" {
  function_name = "arior-1njchw-audit-5-backups-fn1166"
  role          = aws_iam_role.audit_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn1840" {
  function_name = "arior-1njchw-audit-5-backups-fn1840"
  role          = aws_iam_role.benefits_29_public_data_svc6587.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn2136" {
  function_name = "arior-1njchw-audit-5-backups-fn2136"
  role          = aws_iam_role.audit_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn2146" {
  function_name = "arior-1njchw-audit-5-backups-fn2146"
  role          = aws_iam_role.open_data_35_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn252" {
  function_name = "arior-1njchw-audit-5-backups-fn252"
  role          = aws_iam_role.audit_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_backups_fn755" {
  function_name = "arior-1njchw-audit-5-backups-fn755"
  role          = aws_iam_role.gis_10_backups_svc4271.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_gis_layers_fn1839" {
  function_name = "arior-1njchw-audit-6-gis-layers-fn1839"
  role          = aws_iam_role.hr_2_gis_layers_svc3348.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_gis_layers_fn219" {
  function_name = "arior-1njchw-audit-6-gis-layers-fn219"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_gis_layers_fn2372" {
  function_name = "arior-1njchw-audit-6-gis-layers-fn2372"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_gis_layers_fn491" {
  function_name = "arior-1njchw-audit-6-gis-layers-fn491"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_gis_layers_fn983" {
  function_name = "arior-1njchw-audit-6-gis-layers-fn983"
  role          = aws_iam_role.public_safety_31_backups_svc4942.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_public_data_fn1235" {
  function_name = "arior-1njchw-audit-6-public-data-fn1235"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_public_data_fn2131" {
  function_name = "arior-1njchw-audit-6-public-data-fn2131"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_public_data_fn30" {
  function_name = "arior-1njchw-audit-6-public-data-fn30"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_public_data_fn377" {
  function_name = "arior-1njchw-audit-6-public-data-fn377"
  role          = aws_iam_role.gis_20_audit_svc2727.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_public_data_fn78" {
  function_name = "arior-1njchw-audit-6-public-data-fn78"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_audit_fn2363" {
  function_name = "arior-1njchw-audit-7-audit-fn2363"
  role          = aws_iam_role.audit_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_audit_fn303" {
  function_name = "arior-1njchw-audit-7-audit-fn303"
  role          = aws_iam_role.public_safety_26_gis_layers_svc1970.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_audit_fn871" {
  function_name = "arior-1njchw-audit-7-audit-fn871"
  role          = aws_iam_role.audit_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_backups_fn599" {
  function_name = "arior-1njchw-audit-7-backups-fn599"
  role          = aws_iam_role.audit_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_backups_fn799" {
  function_name = "arior-1njchw-audit-7-backups-fn799"
  role          = aws_iam_role.benefits_14_filings_svc4327.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_filings_fn1702" {
  function_name = "arior-1njchw-audit-7-filings-fn1702"
  role          = aws_iam_role.records_9_filings_svc1761.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_filings_fn2071" {
  function_name = "arior-1njchw-audit-7-filings-fn2071"
  role          = aws_iam_role.benefits_15_filings_svc1011.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_filings_fn339" {
  function_name = "arior-1njchw-audit-7-filings-fn339"
  role          = aws_iam_role.citizen_portal_15_public_data_svc1000.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_filings_fn394" {
  function_name = "arior-1njchw-audit-7-filings-fn394"
  role          = aws_iam_role.audit_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_7_filings_fn575" {
  function_name = "arior-1njchw-audit-7-filings-fn575"
  role          = aws_iam_role.audit_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_8_filings_fn275" {
  function_name = "arior-1njchw-audit-8-filings-fn275"
  role          = aws_iam_role.audit_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_8_filings_fn591" {
  function_name = "arior-1njchw-audit-8-filings-fn591"
  role          = aws_iam_role.gis_34_backups_svc5807.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_8_gis_layers_fn1769" {
  function_name = "arior-1njchw-audit-8-gis-layers-fn1769"
  role          = aws_iam_role.audit_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_public_data_fn2085" {
  function_name = "arior-1njchw-audit-9-public-data-fn2085"
  role          = aws_iam_role.audit_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_public_data_fn2163" {
  function_name = "arior-1njchw-audit-9-public-data-fn2163"
  role          = aws_iam_role.audit_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_public_data_fn2177" {
  function_name = "arior-1njchw-audit-9-public-data-fn2177"
  role          = aws_iam_role.public_safety_27_filings_svc1566.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_public_data_fn421" {
  function_name = "arior-1njchw-audit-9-public-data-fn421"
  role          = aws_iam_role.it_ops_28_filings_svc7821.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_records_fn1590" {
  function_name = "arior-1njchw-audit-9-records-fn1590"
  role          = aws_iam_role.audit_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_9_records_fn554" {
  function_name = "arior-1njchw-audit-9-records-fn554"
  role          = aws_iam_role.it_ops_2_backups_svc6677.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_public_data_fn1031" {
  function_name = "arior-1njchw-audit-public-data-fn1031"
  role          = aws_iam_role.licensing_15_gis_layers_svc5162.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_public_data_fn1435" {
  function_name = "arior-1njchw-audit-public-data-fn1435"
  role          = aws_iam_role.records_records_svc7905.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_public_data_fn2490" {
  function_name = "arior-1njchw-audit-public-data-fn2490"
  role          = aws_iam_role.tax_filings_svc4165.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_public_data_fn370" {
  function_name = "arior-1njchw-audit-public-data-fn370"
  role          = aws_iam_role.audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_public_data_fn853" {
  function_name = "arior-1njchw-audit-public-data-fn853"
  role          = aws_iam_role.audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_records_fn1991" {
  function_name = "arior-1njchw-audit-records-fn1991"
  role          = aws_iam_role.tax_22_records_svc1921.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_records_fn2486" {
  function_name = "arior-1njchw-audit-records-fn2486"
  role          = aws_iam_role.tax_7_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_10_gis_layers_fn1623" {
  function_name = "arior-1njchw-benefits-10-gis-layers-fn1623"
  role          = aws_iam_role.public_safety_30_records_svc3266.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_10_gis_layers_fn2223" {
  function_name = "arior-1njchw-benefits-10-gis-layers-fn2223"
  role          = aws_iam_role.open_data_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_10_gis_layers_fn278" {
  function_name = "arior-1njchw-benefits-10-gis-layers-fn278"
  role          = aws_iam_role.gis_4_filings_svc5447.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_10_gis_layers_fn756" {
  function_name = "arior-1njchw-benefits-10-gis-layers-fn756"
  role          = aws_iam_role.benefits_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_10_public_data_fn1701" {
  function_name = "arior-1njchw-benefits-10-public-data-fn1701"
  role          = aws_iam_role.benefits_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_11_backups_fn1076" {
  function_name = "arior-1njchw-benefits-11-backups-fn1076"
  role          = aws_iam_role.records_2_public_data_svc6253.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_11_gis_layers_fn1587" {
  function_name = "arior-1njchw-benefits-11-gis-layers-fn1587"
  role          = aws_iam_role.hr_5_audit_svc4216.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_12_gis_layers_fn1285" {
  function_name = "arior-1njchw-benefits-12-gis-layers-fn1285"
  role          = aws_iam_role.licensing_13_audit_svc2642.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_12_gis_layers_fn2466" {
  function_name = "arior-1njchw-benefits-12-gis-layers-fn2466"
  role          = aws_iam_role.benefits_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_12_public_data_fn1500" {
  function_name = "arior-1njchw-benefits-12-public-data-fn1500"
  role          = aws_iam_role.benefits_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_12_public_data_fn2292" {
  function_name = "arior-1njchw-benefits-12-public-data-fn2292"
  role          = aws_iam_role.it_ops_14_backups_svc5573.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_12_public_data_fn594" {
  function_name = "arior-1njchw-benefits-12-public-data-fn594"
  role          = aws_iam_role.audit_20_audit_svc6894.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_13_records_fn1350" {
  function_name = "arior-1njchw-benefits-13-records-fn1350"
  role          = aws_iam_role.benefits_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_13_records_fn2481" {
  function_name = "arior-1njchw-benefits-13-records-fn2481"
  role          = aws_iam_role.benefits_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_13_records_fn373" {
  function_name = "arior-1njchw-benefits-13-records-fn373"
  role          = aws_iam_role.benefits_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_13_records_fn38" {
  function_name = "arior-1njchw-benefits-13-records-fn38"
  role          = aws_iam_role.open_data_11_gis_layers_svc959.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_backups_fn1013" {
  function_name = "arior-1njchw-benefits-14-backups-fn1013"
  role          = aws_iam_role.procurement_6_records_svc5472.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_backups_fn1239" {
  function_name = "arior-1njchw-benefits-14-backups-fn1239"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_backups_fn1801" {
  function_name = "arior-1njchw-benefits-14-backups-fn1801"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_backups_fn2370" {
  function_name = "arior-1njchw-benefits-14-backups-fn2370"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_backups_fn928" {
  function_name = "arior-1njchw-benefits-14-backups-fn928"
  role          = aws_iam_role.public_safety_34_backups_svc7890.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_filings_fn1344" {
  function_name = "arior-1njchw-benefits-14-filings-fn1344"
  role          = aws_iam_role.it_ops_7_gis_layers_svc1745.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_filings_fn1399" {
  function_name = "arior-1njchw-benefits-14-filings-fn1399"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_filings_fn1408" {
  function_name = "arior-1njchw-benefits-14-filings-fn1408"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_filings_fn2290" {
  function_name = "arior-1njchw-benefits-14-filings-fn2290"
  role          = aws_iam_role.benefits_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_14_filings_fn903" {
  function_name = "arior-1njchw-benefits-14-filings-fn903"
  role          = aws_iam_role.audit_23_gis_layers_svc5266.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_audit_fn1277" {
  function_name = "arior-1njchw-benefits-15-audit-fn1277"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_audit_fn1690" {
  function_name = "arior-1njchw-benefits-15-audit-fn1690"
  role          = aws_iam_role.it_ops_16_public_data_svc6429.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_audit_fn1787" {
  function_name = "arior-1njchw-benefits-15-audit-fn1787"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_audit_fn2070" {
  function_name = "arior-1njchw-benefits-15-audit-fn2070"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_audit_fn2339" {
  function_name = "arior-1njchw-benefits-15-audit-fn2339"
  role          = aws_iam_role.hr_13_audit_svc5144.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_filings_fn1618" {
  function_name = "arior-1njchw-benefits-15-filings-fn1618"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_filings_fn1758" {
  function_name = "arior-1njchw-benefits-15-filings-fn1758"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_15_filings_fn222" {
  function_name = "arior-1njchw-benefits-15-filings-fn222"
  role          = aws_iam_role.benefits_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_16_backups_fn1857" {
  function_name = "arior-1njchw-benefits-16-backups-fn1857"
  role          = aws_iam_role.benefits_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_16_backups_fn2331" {
  function_name = "arior-1njchw-benefits-16-backups-fn2331"
  role          = aws_iam_role.benefits_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_16_backups_fn720" {
  function_name = "arior-1njchw-benefits-16-backups-fn720"
  role          = aws_iam_role.benefits_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_16_gis_layers_fn2278" {
  function_name = "arior-1njchw-benefits-16-gis-layers-fn2278"
  role          = aws_iam_role.benefits_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_16_records_fn573" {
  function_name = "arior-1njchw-benefits-16-records-fn573"
  role          = aws_iam_role.audit_3_filings_svc5026.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn1678" {
  function_name = "arior-1njchw-benefits-17-audit-fn1678"
  role          = aws_iam_role.gis_7_records_svc907.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn1761" {
  function_name = "arior-1njchw-benefits-17-audit-fn1761"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn26" {
  function_name = "arior-1njchw-benefits-17-audit-fn26"
  role          = aws_iam_role.gis_31_audit_svc7019.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn327" {
  function_name = "arior-1njchw-benefits-17-audit-fn327"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn362" {
  function_name = "arior-1njchw-benefits-17-audit-fn362"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn632" {
  function_name = "arior-1njchw-benefits-17-audit-fn632"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_audit_fn989" {
  function_name = "arior-1njchw-benefits-17-audit-fn989"
  role          = aws_iam_role.citizen_portal_19_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_gis_layers_fn1719" {
  function_name = "arior-1njchw-benefits-17-gis-layers-fn1719"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_gis_layers_fn1875" {
  function_name = "arior-1njchw-benefits-17-gis-layers-fn1875"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_gis_layers_fn2336" {
  function_name = "arior-1njchw-benefits-17-gis-layers-fn2336"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_17_gis_layers_fn789" {
  function_name = "arior-1njchw-benefits-17-gis-layers-fn789"
  role          = aws_iam_role.benefits_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_18_records_fn1016" {
  function_name = "arior-1njchw-benefits-18-records-fn1016"
  role          = aws_iam_role.benefits_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_18_records_fn1750" {
  function_name = "arior-1njchw-benefits-18-records-fn1750"
  role          = aws_iam_role.benefits_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_18_records_fn760" {
  function_name = "arior-1njchw-benefits-18-records-fn760"
  role          = aws_iam_role.benefits_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_18_records_fn82" {
  function_name = "arior-1njchw-benefits-18-records-fn82"
  role          = aws_iam_role.it_ops_26_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_19_audit_fn2447" {
  function_name = "arior-1njchw-benefits-19-audit-fn2447"
  role          = aws_iam_role.benefits_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_19_filings_fn1398" {
  function_name = "arior-1njchw-benefits-19-filings-fn1398"
  role          = aws_iam_role.benefits_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_19_records_fn1017" {
  function_name = "arior-1njchw-benefits-19-records-fn1017"
  role          = aws_iam_role.benefits_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_19_records_fn48" {
  function_name = "arior-1njchw-benefits-19-records-fn48"
  role          = aws_iam_role.benefits_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn1258" {
  function_name = "arior-1njchw-benefits-20-public-data-fn1258"
  role          = aws_iam_role.benefits_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn200" {
  function_name = "arior-1njchw-benefits-20-public-data-fn200"
  role          = aws_iam_role.audit_5_backups_svc6714.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn2003" {
  function_name = "arior-1njchw-benefits-20-public-data-fn2003"
  role          = aws_iam_role.benefits_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn2074" {
  function_name = "arior-1njchw-benefits-20-public-data-fn2074"
  role          = aws_iam_role.benefits_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn2498" {
  function_name = "arior-1njchw-benefits-20-public-data-fn2498"
  role          = aws_iam_role.procurement_34_backups_svc4976.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn512" {
  function_name = "arior-1njchw-benefits-20-public-data-fn512"
  role          = aws_iam_role.procurement_public_data_svc1252.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_20_public_data_fn547" {
  function_name = "arior-1njchw-benefits-20-public-data-fn547"
  role          = aws_iam_role.benefits_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_21_audit_fn155" {
  function_name = "arior-1njchw-benefits-21-audit-fn155"
  role          = aws_iam_role.tax_29_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_21_audit_fn244" {
  function_name = "arior-1njchw-benefits-21-audit-fn244"
  role          = aws_iam_role.benefits_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_21_backups_fn1633" {
  function_name = "arior-1njchw-benefits-21-backups-fn1633"
  role          = aws_iam_role.benefits_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn1014" {
  function_name = "arior-1njchw-benefits-22-public-data-fn1014"
  role          = aws_iam_role.records_11_gis_layers_svc6777.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn1174" {
  function_name = "arior-1njchw-benefits-22-public-data-fn1174"
  role          = aws_iam_role.benefits_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn1342" {
  function_name = "arior-1njchw-benefits-22-public-data-fn1342"
  role          = aws_iam_role.benefits_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn2044" {
  function_name = "arior-1njchw-benefits-22-public-data-fn2044"
  role          = aws_iam_role.benefits_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn2376" {
  function_name = "arior-1njchw-benefits-22-public-data-fn2376"
  role          = aws_iam_role.citizen_portal_9_public_data_svc4256.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn50" {
  function_name = "arior-1njchw-benefits-22-public-data-fn50"
  role          = aws_iam_role.benefits_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_22_public_data_fn698" {
  function_name = "arior-1njchw-benefits-22-public-data-fn698"
  role          = aws_iam_role.benefits_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_23_gis_layers_fn1002" {
  function_name = "arior-1njchw-benefits-23-gis-layers-fn1002"
  role          = aws_iam_role.tax_25_records_svc1541.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_23_gis_layers_fn1273" {
  function_name = "arior-1njchw-benefits-23-gis-layers-fn1273"
  role          = aws_iam_role.gis_16_gis_layers_svc1847.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_23_gis_layers_fn1494" {
  function_name = "arior-1njchw-benefits-23-gis-layers-fn1494"
  role          = aws_iam_role.benefits_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_23_gis_layers_fn823" {
  function_name = "arior-1njchw-benefits-23-gis-layers-fn823"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_23_public_data_fn1376" {
  function_name = "arior-1njchw-benefits-23-public-data-fn1376"
  role          = aws_iam_role.benefits_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn1163" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn1163"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn136" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn136"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn164" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn164"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn1672" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn1672"
  role          = aws_iam_role.licensing_10_filings_svc4270.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn1828" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn1828"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn2008" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn2008"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn322" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn322"
  role          = aws_iam_role.procurement_28_gis_layers_svc5736.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn425" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn425"
  role          = aws_iam_role.public_safety_13_backups_svc5142.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_24_gis_layers_fn715" {
  function_name = "arior-1njchw-benefits-24-gis-layers-fn715"
  role          = aws_iam_role.benefits_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_25_backups_fn271" {
  function_name = "arior-1njchw-benefits-25-backups-fn271"
  role          = aws_iam_role.gis_34_records_svc2895.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_25_backups_fn885" {
  function_name = "arior-1njchw-benefits-25-backups-fn885"
  role          = aws_iam_role.benefits_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_25_public_data_fn2028" {
  function_name = "arior-1njchw-benefits-25-public-data-fn2028"
  role          = aws_iam_role.benefits_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_25_public_data_fn2141" {
  function_name = "arior-1njchw-benefits-25-public-data-fn2141"
  role          = aws_iam_role.benefits_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_25_records_fn350" {
  function_name = "arior-1njchw-benefits-25-records-fn350"
  role          = aws_iam_role.benefits_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_26_filings_fn1131" {
  function_name = "arior-1njchw-benefits-26-filings-fn1131"
  role          = aws_iam_role.benefits_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_26_filings_fn1899" {
  function_name = "arior-1njchw-benefits-26-filings-fn1899"
  role          = aws_iam_role.hr_34_public_data_svc7892.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_26_filings_fn2172" {
  function_name = "arior-1njchw-benefits-26-filings-fn2172"
  role          = aws_iam_role.benefits_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_27_gis_layers_fn1001" {
  function_name = "arior-1njchw-benefits-27-gis-layers-fn1001"
  role          = aws_iam_role.public_safety_31_backups_svc2446.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_27_gis_layers_fn1272" {
  function_name = "arior-1njchw-benefits-27-gis-layers-fn1272"
  role          = aws_iam_role.benefits_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_27_gis_layers_fn1370" {
  function_name = "arior-1njchw-benefits-27-gis-layers-fn1370"
  role          = aws_iam_role.it_ops_23_audit_svc2353.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_27_gis_layers_fn1575" {
  function_name = "arior-1njchw-benefits-27-gis-layers-fn1575"
  role          = aws_iam_role.benefits_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_27_gis_layers_fn2180" {
  function_name = "arior-1njchw-benefits-27-gis-layers-fn2180"
  role          = aws_iam_role.benefits_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn1125" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn1125"
  role          = aws_iam_role.open_data_10_backups_svc5939.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn1582" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn1582"
  role          = aws_iam_role.benefits_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn1717" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn1717"
  role          = aws_iam_role.benefits_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn1884" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn1884"
  role          = aws_iam_role.public_safety_9_gis_layers_svc4678.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn2449" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn2449"
  role          = aws_iam_role.benefits_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn439" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn439"
  role          = aws_iam_role.benefits_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn768" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn768"
  role          = aws_iam_role.benefits_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_28_gis_layers_fn901" {
  function_name = "arior-1njchw-benefits-28-gis-layers-fn901"
  role          = aws_iam_role.audit_32_gis_layers_svc3294.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_29_public_data_fn1479" {
  function_name = "arior-1njchw-benefits-29-public-data-fn1479"
  role          = aws_iam_role.tax_30_public_data_svc6177.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_29_public_data_fn1571" {
  function_name = "arior-1njchw-benefits-29-public-data-fn1571"
  role          = aws_iam_role.benefits_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_29_public_data_fn1841" {
  function_name = "arior-1njchw-benefits-29-public-data-fn1841"
  role          = aws_iam_role.tax_35_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_29_public_data_fn2050" {
  function_name = "arior-1njchw-benefits-29-public-data-fn2050"
  role          = aws_iam_role.benefits_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_29_public_data_fn960" {
  function_name = "arior-1njchw-benefits-29-public-data-fn960"
  role          = aws_iam_role.benefits_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_audit_fn1597" {
  function_name = "arior-1njchw-benefits-3-audit-fn1597"
  role          = aws_iam_role.benefits_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_audit_fn2248" {
  function_name = "arior-1njchw-benefits-3-audit-fn2248"
  role          = aws_iam_role.benefits_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_audit_fn226" {
  function_name = "arior-1njchw-benefits-3-audit-fn226"
  role          = aws_iam_role.audit_2_filings_svc6678.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_audit_fn681" {
  function_name = "arior-1njchw-benefits-3-audit-fn681"
  role          = aws_iam_role.citizen_portal_26_records_svc6956.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_audit_fn920" {
  function_name = "arior-1njchw-benefits-3-audit-fn920"
  role          = aws_iam_role.benefits_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_audit_fn1030" {
  function_name = "arior-1njchw-benefits-30-audit-fn1030"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_audit_fn1084" {
  function_name = "arior-1njchw-benefits-30-audit-fn1084"
  role          = aws_iam_role.tax_gis_layers_svc2501.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_audit_fn1560" {
  function_name = "arior-1njchw-benefits-30-audit-fn1560"
  role          = aws_iam_role.citizen_portal_27_backups_svc2808.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_audit_fn277" {
  function_name = "arior-1njchw-benefits-30-audit-fn277"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_audit_fn500" {
  function_name = "arior-1njchw-benefits-30-audit-fn500"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_filings_fn1390" {
  function_name = "arior-1njchw-benefits-30-filings-fn1390"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_filings_fn18" {
  function_name = "arior-1njchw-benefits-30-filings-fn18"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_30_filings_fn2276" {
  function_name = "arior-1njchw-benefits-30-filings-fn2276"
  role          = aws_iam_role.benefits_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_audit_fn2324" {
  function_name = "arior-1njchw-benefits-31-audit-fn2324"
  role          = aws_iam_role.tax_9_audit_svc3429.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn108" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn108"
  role          = aws_iam_role.procurement_10_gis_layers_svc4272.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn1673" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn1673"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn1779" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn1779"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn1914" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn1914"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn297" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn297"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn334" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn334"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_gis_layers_fn996" {
  function_name = "arior-1njchw-benefits-31-gis-layers-fn996"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_records_fn1859" {
  function_name = "arior-1njchw-benefits-31-records-fn1859"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_records_fn2031" {
  function_name = "arior-1njchw-benefits-31-records-fn2031"
  role          = aws_iam_role.tax_13_gis_layers_svc5141.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_records_fn324" {
  function_name = "arior-1njchw-benefits-31-records-fn324"
  role          = aws_iam_role.gis_17_backups_svc7683.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_31_records_fn874" {
  function_name = "arior-1njchw-benefits-31-records-fn874"
  role          = aws_iam_role.benefits_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn1700" {
  function_name = "arior-1njchw-benefits-32-audit-fn1700"
  role          = aws_iam_role.benefits_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn1997" {
  function_name = "arior-1njchw-benefits-32-audit-fn1997"
  role          = aws_iam_role.public_safety_6_backups_svc3394.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn2169" {
  function_name = "arior-1njchw-benefits-32-audit-fn2169"
  role          = aws_iam_role.benefits_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn45" {
  function_name = "arior-1njchw-benefits-32-audit-fn45"
  role          = aws_iam_role.benefits_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn466" {
  function_name = "arior-1njchw-benefits-32-audit-fn466"
  role          = aws_iam_role.benefits_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_32_audit_fn718" {
  function_name = "arior-1njchw-benefits-32-audit-fn718"
  role          = aws_iam_role.procurement_15_records_svc5580.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn1046" {
  function_name = "arior-1njchw-benefits-33-public-data-fn1046"
  role          = aws_iam_role.it_ops_31_records_svc1617.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn1152" {
  function_name = "arior-1njchw-benefits-33-public-data-fn1152"
  role          = aws_iam_role.benefits_14_backups_svc2247.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn2366" {
  function_name = "arior-1njchw-benefits-33-public-data-fn2366"
  role          = aws_iam_role.citizen_portal_18_public_data_svc2700.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn456" {
  function_name = "arior-1njchw-benefits-33-public-data-fn456"
  role          = aws_iam_role.gis_27_filings_svc1563.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn822" {
  function_name = "arior-1njchw-benefits-33-public-data-fn822"
  role          = aws_iam_role.it_ops_17_records_svc4361.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_33_public_data_fn950" {
  function_name = "arior-1njchw-benefits-33-public-data-fn950"
  role          = aws_iam_role.benefits_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn1175" {
  function_name = "arior-1njchw-benefits-34-backups-fn1175"
  role          = aws_iam_role.benefits_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn1526" {
  function_name = "arior-1njchw-benefits-34-backups-fn1526"
  role          = aws_iam_role.benefits_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn2406" {
  function_name = "arior-1njchw-benefits-34-backups-fn2406"
  role          = aws_iam_role.benefits_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn2408" {
  function_name = "arior-1njchw-benefits-34-backups-fn2408"
  role          = aws_iam_role.procurement_12_backups_svc552.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn2418" {
  function_name = "arior-1njchw-benefits-34-backups-fn2418"
  role          = aws_iam_role.public_safety_20_filings_svc7306.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn783" {
  function_name = "arior-1njchw-benefits-34-backups-fn783"
  role          = aws_iam_role.benefits_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_34_backups_fn879" {
  function_name = "arior-1njchw-benefits-34-backups-fn879"
  role          = aws_iam_role.benefits_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_filings_fn1158" {
  function_name = "arior-1njchw-benefits-4-filings-fn1158"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_filings_fn1547" {
  function_name = "arior-1njchw-benefits-4-filings-fn1547"
  role          = aws_iam_role.it_ops_33_backups_svc6633.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_filings_fn2313" {
  function_name = "arior-1njchw-benefits-4-filings-fn2313"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_filings_fn286" {
  function_name = "arior-1njchw-benefits-4-filings-fn286"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_public_data_fn1008" {
  function_name = "arior-1njchw-benefits-4-public-data-fn1008"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_public_data_fn1568" {
  function_name = "arior-1njchw-benefits-4-public-data-fn1568"
  role          = aws_iam_role.open_data_10_backups_svc7603.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_public_data_fn1999" {
  function_name = "arior-1njchw-benefits-4-public-data-fn1999"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_public_data_fn2082" {
  function_name = "arior-1njchw-benefits-4-public-data-fn2082"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_5_filings_fn1929" {
  function_name = "arior-1njchw-benefits-5-filings-fn1929"
  role          = aws_iam_role.benefits_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_5_filings_fn678" {
  function_name = "arior-1njchw-benefits-5-filings-fn678"
  role          = aws_iam_role.procurement_28_gis_layers_svc2408.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_5_public_data_fn1527" {
  function_name = "arior-1njchw-benefits-5-public-data-fn1527"
  role          = aws_iam_role.licensing_7_audit_svc7146.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_5_public_data_fn1634" {
  function_name = "arior-1njchw-benefits-5-public-data-fn1634"
  role          = aws_iam_role.benefits_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn1173" {
  function_name = "arior-1njchw-benefits-6-filings-fn1173"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn1345" {
  function_name = "arior-1njchw-benefits-6-filings-fn1345"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn1825" {
  function_name = "arior-1njchw-benefits-6-filings-fn1825"
  role          = aws_iam_role.audit_16_audit_svc5598.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn2054" {
  function_name = "arior-1njchw-benefits-6-filings-fn2054"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn2329" {
  function_name = "arior-1njchw-benefits-6-filings-fn2329"
  role          = aws_iam_role.public_safety_3_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_filings_fn233" {
  function_name = "arior-1njchw-benefits-6-filings-fn233"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_audit_fn2325" {
  function_name = "arior-1njchw-benefits-7-audit-fn2325"
  role          = aws_iam_role.benefits_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_public_data_fn1170" {
  function_name = "arior-1njchw-benefits-7-public-data-fn1170"
  role          = aws_iam_role.benefits_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_public_data_fn1627" {
  function_name = "arior-1njchw-benefits-7-public-data-fn1627"
  role          = aws_iam_role.benefits_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_public_data_fn1800" {
  function_name = "arior-1njchw-benefits-7-public-data-fn1800"
  role          = aws_iam_role.benefits_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_records_fn1868" {
  function_name = "arior-1njchw-benefits-7-records-fn1868"
  role          = aws_iam_role.benefits_29_public_data_svc5755.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_7_records_fn220" {
  function_name = "arior-1njchw-benefits-7-records-fn220"
  role          = aws_iam_role.benefits_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_8_filings_fn1431" {
  function_name = "arior-1njchw-benefits-8-filings-fn1431"
  role          = aws_iam_role.benefits_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_8_filings_fn1734" {
  function_name = "arior-1njchw-benefits-8-filings-fn1734"
  role          = aws_iam_role.benefits_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_8_filings_fn2365" {
  function_name = "arior-1njchw-benefits-8-filings-fn2365"
  role          = aws_iam_role.benefits_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_filings_fn1267" {
  function_name = "arior-1njchw-benefits-9-filings-fn1267"
  role          = aws_iam_role.records_17_backups_svc6433.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_filings_fn1313" {
  function_name = "arior-1njchw-benefits-9-filings-fn1313"
  role          = aws_iam_role.citizen_portal_22_records_svc6492.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_filings_fn2270" {
  function_name = "arior-1njchw-benefits-9-filings-fn2270"
  role          = aws_iam_role.benefits_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_filings_fn2350" {
  function_name = "arior-1njchw-benefits-9-filings-fn2350"
  role          = aws_iam_role.licensing_11_backups_svc3450.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_filings_fn745" {
  function_name = "arior-1njchw-benefits-9-filings-fn745"
  role          = aws_iam_role.benefits_filings_svc2091.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn1418" {
  function_name = "arior-1njchw-benefits-9-public-data-fn1418"
  role          = aws_iam_role.audit_8_filings_svc2174.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn1497" {
  function_name = "arior-1njchw-benefits-9-public-data-fn1497"
  role          = aws_iam_role.benefits_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn1852" {
  function_name = "arior-1njchw-benefits-9-public-data-fn1852"
  role          = aws_iam_role.benefits_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn1856" {
  function_name = "arior-1njchw-benefits-9-public-data-fn1856"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn1998" {
  function_name = "arior-1njchw-benefits-9-public-data-fn1998"
  role          = aws_iam_role.benefits_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_9_public_data_fn21" {
  function_name = "arior-1njchw-benefits-9-public-data-fn21"
  role          = aws_iam_role.benefits_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_audit_fn1279" {
  function_name = "arior-1njchw-benefits-audit-fn1279"
  role          = aws_iam_role.benefits_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_audit_fn2400" {
  function_name = "arior-1njchw-benefits-audit-fn2400"
  role          = aws_iam_role.it_ops_11_public_data_svc3041.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_audit_fn242" {
  function_name = "arior-1njchw-benefits-audit-fn242"
  role          = aws_iam_role.procurement_26_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_filings_fn1616" {
  function_name = "arior-1njchw-benefits-filings-fn1616"
  role          = aws_iam_role.audit_28_gis_layers_svc2830.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_filings_fn640" {
  function_name = "arior-1njchw-benefits-filings-fn640"
  role          = aws_iam_role.open_data_7_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_filings_fn74" {
  function_name = "arior-1njchw-benefits-filings-fn74"
  role          = aws_iam_role.benefits_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_backups_fn1216" {
  function_name = "arior-1njchw-citizen-portal-10-backups-fn1216"
  role          = aws_iam_role.benefits_23_public_data_svc6099.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_backups_fn2295" {
  function_name = "arior-1njchw-citizen-portal-10-backups-fn2295"
  role          = aws_iam_role.tax_21_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_backups_fn994" {
  function_name = "arior-1njchw-citizen-portal-10-backups-fn994"
  role          = aws_iam_role.hr_32_gis_layers_svc796.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_public_data_fn2386" {
  function_name = "arior-1njchw-citizen-portal-10-public-data-fn2386"
  role          = aws_iam_role.citizen_portal_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_public_data_fn2475" {
  function_name = "arior-1njchw-citizen-portal-10-public-data-fn2475"
  role          = aws_iam_role.records_12_filings_svc1797.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_public_data_fn896" {
  function_name = "arior-1njchw-citizen-portal-10-public-data-fn896"
  role          = aws_iam_role.citizen_portal_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_records_fn1724" {
  function_name = "arior-1njchw-citizen-portal-10-records-fn1724"
  role          = aws_iam_role.citizen_portal_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_10_records_fn923" {
  function_name = "arior-1njchw-citizen-portal-10-records-fn923"
  role          = aws_iam_role.citizen_portal_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_11_gis_layers_fn1659" {
  function_name = "arior-1njchw-citizen-portal-11-gis-layers-fn1659"
  role          = aws_iam_role.citizen_portal_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_11_records_fn1543" {
  function_name = "arior-1njchw-citizen-portal-11-records-fn1543"
  role          = aws_iam_role.citizen_portal_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_11_records_fn2087" {
  function_name = "arior-1njchw-citizen-portal-11-records-fn2087"
  role          = aws_iam_role.citizen_portal_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_11_records_fn965" {
  function_name = "arior-1njchw-citizen-portal-11-records-fn965"
  role          = aws_iam_role.public_safety_30_audit_svc7010.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_gis_layers_fn1580" {
  function_name = "arior-1njchw-citizen-portal-12-gis-layers-fn1580"
  role          = aws_iam_role.gis_23_records_svc3595.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_gis_layers_fn1699" {
  function_name = "arior-1njchw-citizen-portal-12-gis-layers-fn1699"
  role          = aws_iam_role.citizen_portal_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_gis_layers_fn180" {
  function_name = "arior-1njchw-citizen-portal-12-gis-layers-fn180"
  role          = aws_iam_role.citizen_portal_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_gis_layers_fn816" {
  function_name = "arior-1njchw-citizen-portal-12-gis-layers-fn816"
  role          = aws_iam_role.citizen_portal_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_gis_layers_fn825" {
  function_name = "arior-1njchw-citizen-portal-12-gis-layers-fn825"
  role          = aws_iam_role.citizen_portal_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_12_public_data_fn2279" {
  function_name = "arior-1njchw-citizen-portal-12-public-data-fn2279"
  role          = aws_iam_role.citizen_portal_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_13_filings_fn1139" {
  function_name = "arior-1njchw-citizen-portal-13-filings-fn1139"
  role          = aws_iam_role.citizen_portal_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_13_filings_fn463" {
  function_name = "arior-1njchw-citizen-portal-13-filings-fn463"
  role          = aws_iam_role.citizen_portal_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_13_gis_layers_fn1898" {
  function_name = "arior-1njchw-citizen-portal-13-gis-layers-fn1898"
  role          = aws_iam_role.citizen_portal_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_13_records_fn912" {
  function_name = "arior-1njchw-citizen-portal-13-records-fn912"
  role          = aws_iam_role.it_ops_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_13_records_fn970" {
  function_name = "arior-1njchw-citizen-portal-13-records-fn970"
  role          = aws_iam_role.audit_16_audit_svc7678.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_14_filings_fn1689" {
  function_name = "arior-1njchw-citizen-portal-14-filings-fn1689"
  role          = aws_iam_role.citizen_portal_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_14_filings_fn2105" {
  function_name = "arior-1njchw-citizen-portal-14-filings-fn2105"
  role          = aws_iam_role.citizen_portal_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_14_filings_fn298" {
  function_name = "arior-1njchw-citizen-portal-14-filings-fn298"
  role          = aws_iam_role.citizen_portal_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_14_filings_fn974" {
  function_name = "arior-1njchw-citizen-portal-14-filings-fn974"
  role          = aws_iam_role.records_13_filings_svc4721.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_14_gis_layers_fn1393" {
  function_name = "arior-1njchw-citizen-portal-14-gis-layers-fn1393"
  role          = aws_iam_role.citizen_portal_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn1111" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn1111"
  role          = aws_iam_role.gis_15_filings_svc4331.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn1366" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn1366"
  role          = aws_iam_role.citizen_portal_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn1492" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn1492"
  role          = aws_iam_role.gis_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn1866" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn1866"
  role          = aws_iam_role.citizen_portal_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn571" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn571"
  role          = aws_iam_role.citizen_portal_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn729" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn729"
  role          = aws_iam_role.procurement_24_filings_svc6104.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_15_public_data_fn779" {
  function_name = "arior-1njchw-citizen-portal-15-public-data-fn779"
  role          = aws_iam_role.citizen_portal_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_16_filings_fn2069" {
  function_name = "arior-1njchw-citizen-portal-16-filings-fn2069"
  role          = aws_iam_role.citizen_portal_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_16_public_data_fn4" {
  function_name = "arior-1njchw-citizen-portal-16-public-data-fn4"
  role          = aws_iam_role.tax_15_public_data_svc4749.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn1269" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn1269"
  role          = aws_iam_role.public_safety_2_backups_svc850.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn1397" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn1397"
  role          = aws_iam_role.hr_26_gis_layers_svc3636.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn1644" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn1644"
  role          = aws_iam_role.citizen_portal_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn185" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn185"
  role          = aws_iam_role.licensing_7_records_svc6730.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn239" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn239"
  role          = aws_iam_role.citizen_portal_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_17_records_fn593" {
  function_name = "arior-1njchw-citizen-portal-17-records-fn593"
  role          = aws_iam_role.citizen_portal_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_18_audit_fn1087" {
  function_name = "arior-1njchw-citizen-portal-18-audit-fn1087"
  role          = aws_iam_role.citizen_portal_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_18_audit_fn1499" {
  function_name = "arior-1njchw-citizen-portal-18-audit-fn1499"
  role          = aws_iam_role.citizen_portal_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_18_audit_fn735" {
  function_name = "arior-1njchw-citizen-portal-18-audit-fn735"
  role          = aws_iam_role.citizen_portal_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_18_public_data_fn734" {
  function_name = "arior-1njchw-citizen-portal-18-public-data-fn734"
  role          = aws_iam_role.licensing_28_records_svc5734.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_18_public_data_fn786" {
  function_name = "arior-1njchw-citizen-portal-18-public-data-fn786"
  role          = aws_iam_role.citizen_portal_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_audit_fn1271" {
  function_name = "arior-1njchw-citizen-portal-19-audit-fn1271"
  role          = aws_iam_role.benefits_20_public_data_svc4815.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_audit_fn1693" {
  function_name = "arior-1njchw-citizen-portal-19-audit-fn1693"
  role          = aws_iam_role.citizen_portal_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_audit_fn204" {
  function_name = "arior-1njchw-citizen-portal-19-audit-fn204"
  role          = aws_iam_role.gis_10_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_audit_fn2253" {
  function_name = "arior-1njchw-citizen-portal-19-audit-fn2253"
  role          = aws_iam_role.licensing_13_audit_svc7634.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_filings_fn391" {
  function_name = "arior-1njchw-citizen-portal-19-filings-fn391"
  role          = aws_iam_role.citizen_portal_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_public_data_fn1592" {
  function_name = "arior-1njchw-citizen-portal-19-public-data-fn1592"
  role          = aws_iam_role.hr_11_public_data_svc1792.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_public_data_fn395" {
  function_name = "arior-1njchw-citizen-portal-19-public-data-fn395"
  role          = aws_iam_role.hr_5_audit_svc4632.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_19_public_data_fn739" {
  function_name = "arior-1njchw-citizen-portal-19-public-data-fn739"
  role          = aws_iam_role.citizen_portal_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_2_public_data_fn2384" {
  function_name = "arior-1njchw-citizen-portal-2-public-data-fn2384"
  role          = aws_iam_role.citizen_portal_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_2_public_data_fn2403" {
  function_name = "arior-1njchw-citizen-portal-2-public-data-fn2403"
  role          = aws_iam_role.licensing_30_backups_svc6590.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn1300" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn1300"
  role          = aws_iam_role.citizen_portal_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn1491" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn1491"
  role          = aws_iam_role.it_ops_23_audit_svc7345.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn1625" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn1625"
  role          = aws_iam_role.benefits_29_public_data_svc6587.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn1666" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn1666"
  role          = aws_iam_role.audit_24_filings_svc4862.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn178" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn178"
  role          = aws_iam_role.tax_31_filings_svc6189.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn2251" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn2251"
  role          = aws_iam_role.benefits_28_gis_layers_svc4495.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn393" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn393"
  role          = aws_iam_role.gis_6_filings_svc1311.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_20_records_fn410" {
  function_name = "arior-1njchw-citizen-portal-20-records-fn410"
  role          = aws_iam_role.procurement_9_backups_svc1764.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_21_audit_fn1218" {
  function_name = "arior-1njchw-citizen-portal-21-audit-fn1218"
  role          = aws_iam_role.citizen_portal_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_21_gis_layers_fn1048" {
  function_name = "arior-1njchw-citizen-portal-21-gis-layers-fn1048"
  role          = aws_iam_role.citizen_portal_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_21_gis_layers_fn1741" {
  function_name = "arior-1njchw-citizen-portal-21-gis-layers-fn1741"
  role          = aws_iam_role.citizen_portal_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_public_data_fn1647" {
  function_name = "arior-1njchw-citizen-portal-22-public-data-fn1647"
  role          = aws_iam_role.citizen_portal_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_public_data_fn2185" {
  function_name = "arior-1njchw-citizen-portal-22-public-data-fn2185"
  role          = aws_iam_role.citizen_portal_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_records_fn101" {
  function_name = "arior-1njchw-citizen-portal-22-records-fn101"
  role          = aws_iam_role.procurement_35_filings_svc1660.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_records_fn1812" {
  function_name = "arior-1njchw-citizen-portal-22-records-fn1812"
  role          = aws_iam_role.it_ops_4_gis_layers_svc5453.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_records_fn371" {
  function_name = "arior-1njchw-citizen-portal-22-records-fn371"
  role          = aws_iam_role.citizen_portal_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_22_records_fn979" {
  function_name = "arior-1njchw-citizen-portal-22-records-fn979"
  role          = aws_iam_role.citizen_portal_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn1244" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn1244"
  role          = aws_iam_role.open_data_2_gis_layers_svc2515.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn1363" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn1363"
  role          = aws_iam_role.citizen_portal_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn1503" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn1503"
  role          = aws_iam_role.citizen_portal_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn1511" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn1511"
  role          = aws_iam_role.citizen_portal_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn1911" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn1911"
  role          = aws_iam_role.citizen_portal_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_23_audit_fn2149" {
  function_name = "arior-1njchw-citizen-portal-23-audit-fn2149"
  role          = aws_iam_role.procurement_25_public_data_svc5700.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_24_filings_fn1068" {
  function_name = "arior-1njchw-citizen-portal-24-filings-fn1068"
  role          = aws_iam_role.citizen_portal_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_24_filings_fn1475" {
  function_name = "arior-1njchw-citizen-portal-24-filings-fn1475"
  role          = aws_iam_role.citizen_portal_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_24_filings_fn392" {
  function_name = "arior-1njchw-citizen-portal-24-filings-fn392"
  role          = aws_iam_role.citizen_portal_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_24_public_data_fn1215" {
  function_name = "arior-1njchw-citizen-portal-24-public-data-fn1215"
  role          = aws_iam_role.citizen_portal_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_24_public_data_fn1698" {
  function_name = "arior-1njchw-citizen-portal-24-public-data-fn1698"
  role          = aws_iam_role.citizen_portal_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_25_audit_fn1065" {
  function_name = "arior-1njchw-citizen-portal-25-audit-fn1065"
  role          = aws_iam_role.public_safety_23_backups_svc2350.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_25_audit_fn202" {
  function_name = "arior-1njchw-citizen-portal-25-audit-fn202"
  role          = aws_iam_role.citizen_portal_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_25_audit_fn70" {
  function_name = "arior-1njchw-citizen-portal-25-audit-fn70"
  role          = aws_iam_role.citizen_portal_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_25_gis_layers_fn817" {
  function_name = "arior-1njchw-citizen-portal-25-gis-layers-fn817"
  role          = aws_iam_role.procurement_2_backups_svc7088.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_25_records_fn1134" {
  function_name = "arior-1njchw-citizen-portal-25-records-fn1134"
  role          = aws_iam_role.public_safety_16_backups_svc6010.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_audit_fn1650" {
  function_name = "arior-1njchw-citizen-portal-26-audit-fn1650"
  role          = aws_iam_role.citizen_portal_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_audit_fn2413" {
  function_name = "arior-1njchw-citizen-portal-26-audit-fn2413"
  role          = aws_iam_role.citizen_portal_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_audit_fn778" {
  function_name = "arior-1njchw-citizen-portal-26-audit-fn778"
  role          = aws_iam_role.audit_9_public_data_svc5098.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_filings_fn1768" {
  function_name = "arior-1njchw-citizen-portal-26-filings-fn1768"
  role          = aws_iam_role.citizen_portal_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_filings_fn2062" {
  function_name = "arior-1njchw-citizen-portal-26-filings-fn2062"
  role          = aws_iam_role.procurement_28_gis_layers_svc2824.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_records_fn115" {
  function_name = "arior-1njchw-citizen-portal-26-records-fn115"
  role          = aws_iam_role.citizen_portal_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_records_fn1658" {
  function_name = "arior-1njchw-citizen-portal-26-records-fn1658"
  role          = aws_iam_role.open_data_7_gis_layers_svc5487.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_records_fn2092" {
  function_name = "arior-1njchw-citizen-portal-26-records-fn2092"
  role          = aws_iam_role.public_safety_29_public_data_svc6166.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_records_fn2369" {
  function_name = "arior-1njchw-citizen-portal-26-records-fn2369"
  role          = aws_iam_role.gis_11_filings_svc3867.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_26_records_fn2410" {
  function_name = "arior-1njchw-citizen-portal-26-records-fn2410"
  role          = aws_iam_role.hr_15_records_svc3920.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_27_backups_fn1371" {
  function_name = "arior-1njchw-citizen-portal-27-backups-fn1371"
  role          = aws_iam_role.citizen_portal_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_27_backups_fn1802" {
  function_name = "arior-1njchw-citizen-portal-27-backups-fn1802"
  role          = aws_iam_role.hr_filings_svc3752.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_27_backups_fn2420" {
  function_name = "arior-1njchw-citizen-portal-27-backups-fn2420"
  role          = aws_iam_role.gis_2_gis_layers_svc7087.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_27_backups_fn689" {
  function_name = "arior-1njchw-citizen-portal-27-backups-fn689"
  role          = aws_iam_role.citizen_portal_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_27_backups_fn857" {
  function_name = "arior-1njchw-citizen-portal-27-backups-fn857"
  role          = aws_iam_role.citizen_portal_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_backups_fn910" {
  function_name = "arior-1njchw-citizen-portal-28-backups-fn910"
  role          = aws_iam_role.citizen_portal_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_gis_layers_fn819" {
  function_name = "arior-1njchw-citizen-portal-28-gis-layers-fn819"
  role          = aws_iam_role.audit_3_filings_svc5858.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_public_data_fn1670" {
  function_name = "arior-1njchw-citizen-portal-28-public-data-fn1670"
  role          = aws_iam_role.citizen_portal_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_public_data_fn2218" {
  function_name = "arior-1njchw-citizen-portal-28-public-data-fn2218"
  role          = aws_iam_role.citizen_portal_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_public_data_fn485" {
  function_name = "arior-1njchw-citizen-portal-28-public-data-fn485"
  role          = aws_iam_role.citizen_portal_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_28_public_data_fn672" {
  function_name = "arior-1njchw-citizen-portal-28-public-data-fn672"
  role          = aws_iam_role.citizen_portal_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_29_backups_fn1893" {
  function_name = "arior-1njchw-citizen-portal-29-backups-fn1893"
  role          = aws_iam_role.open_data_35_filings_svc5823.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_29_backups_fn2306" {
  function_name = "arior-1njchw-citizen-portal-29-backups-fn2306"
  role          = aws_iam_role.licensing_22_filings_svc6078.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_29_records_fn130" {
  function_name = "arior-1njchw-citizen-portal-29-records-fn130"
  role          = aws_iam_role.open_data_32_filings_svc1211.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_29_records_fn1498" {
  function_name = "arior-1njchw-citizen-portal-29-records-fn1498"
  role          = aws_iam_role.citizen_portal_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_audit_fn1106" {
  function_name = "arior-1njchw-citizen-portal-3-audit-fn1106"
  role          = aws_iam_role.citizen_portal_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_audit_fn120" {
  function_name = "arior-1njchw-citizen-portal-3-audit-fn120"
  role          = aws_iam_role.citizen_portal_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_audit_fn317" {
  function_name = "arior-1njchw-citizen-portal-3-audit-fn317"
  role          = aws_iam_role.citizen_portal_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_audit_fn325" {
  function_name = "arior-1njchw-citizen-portal-3-audit-fn325"
  role          = aws_iam_role.citizen_portal_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_audit_fn957" {
  function_name = "arior-1njchw-citizen-portal-3-audit-fn957"
  role          = aws_iam_role.citizen_portal_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1049" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1049"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1333" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1333"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1447" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1447"
  role          = aws_iam_role.records_18_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1660" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1660"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1694" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1694"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn1900" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn1900"
  role          = aws_iam_role.tax_29_audit_svc1589.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn2057" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn2057"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn462" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn462"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_30_audit_fn550" {
  function_name = "arior-1njchw-citizen-portal-30-audit-fn550"
  role          = aws_iam_role.citizen_portal_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1124" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1124"
  role          = aws_iam_role.citizen_portal_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1130" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1130"
  role          = aws_iam_role.citizen_portal_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1387" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1387"
  role          = aws_iam_role.benefits_34_backups_svc3319.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1445" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1445"
  role          = aws_iam_role.records_32_public_data_svc6197.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1478" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1478"
  role          = aws_iam_role.audit_3_backups_svc2946.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn1628" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn1628"
  role          = aws_iam_role.open_data_21_backups_svc6903.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn2327" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn2327"
  role          = aws_iam_role.citizen_portal_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn862" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn862"
  role          = aws_iam_role.citizen_portal_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_31_public_data_fn956" {
  function_name = "arior-1njchw-citizen-portal-31-public-data-fn956"
  role          = aws_iam_role.citizen_portal_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_filings_fn1289" {
  function_name = "arior-1njchw-citizen-portal-32-filings-fn1289"
  role          = aws_iam_role.tax_11_public_data_svc5949.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_filings_fn2241" {
  function_name = "arior-1njchw-citizen-portal-32-filings-fn2241"
  role          = aws_iam_role.records_26_audit_svc717.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_records_fn311" {
  function_name = "arior-1njchw-citizen-portal-32-records-fn311"
  role          = aws_iam_role.citizen_portal_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_records_fn67" {
  function_name = "arior-1njchw-citizen-portal-32-records-fn67"
  role          = aws_iam_role.citizen_portal_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_records_fn723" {
  function_name = "arior-1njchw-citizen-portal-32-records-fn723"
  role          = aws_iam_role.gis_filings_svc7907.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_32_records_fn792" {
  function_name = "arior-1njchw-citizen-portal-32-records-fn792"
  role          = aws_iam_role.audit_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_33_audit_fn1340" {
  function_name = "arior-1njchw-citizen-portal-33-audit-fn1340"
  role          = aws_iam_role.tax_9_audit_svc933.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_33_audit_fn442" {
  function_name = "arior-1njchw-citizen-portal-33-audit-fn442"
  role          = aws_iam_role.gis_13_gis_layers_svc6387.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_33_audit_fn845" {
  function_name = "arior-1njchw-citizen-portal-33-audit-fn845"
  role          = aws_iam_role.citizen_portal_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_33_records_fn2015" {
  function_name = "arior-1njchw-citizen-portal-33-records-fn2015"
  role          = aws_iam_role.records_23_records_svc4009.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_33_records_fn966" {
  function_name = "arior-1njchw-citizen-portal-33-records-fn966"
  role          = aws_iam_role.citizen_portal_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn1311" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn1311"
  role          = aws_iam_role.benefits_16_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn1425" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn1425"
  role          = aws_iam_role.citizen_portal_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn1585" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn1585"
  role          = aws_iam_role.citizen_portal_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn1820" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn1820"
  role          = aws_iam_role.hr_13_gis_layers_svc5560.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn268" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn268"
  role          = aws_iam_role.open_data_23_backups_svc5679.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_34_public_data_fn84" {
  function_name = "arior-1njchw-citizen-portal-34-public-data-fn84"
  role          = aws_iam_role.citizen_portal_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn11" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn11"
  role          = aws_iam_role.citizen_portal_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn1257" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn1257"
  role          = aws_iam_role.hr_22_gis_layers_svc7332.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn1506" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn1506"
  role          = aws_iam_role.citizen_portal_21_gis_layers_svc6896.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn1923" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn1923"
  role          = aws_iam_role.citizen_portal_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn1990" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn1990"
  role          = aws_iam_role.benefits_20_public_data_svc1903.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn2047" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn2047"
  role          = aws_iam_role.citizen_portal_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_35_public_data_fn407" {
  function_name = "arior-1njchw-citizen-portal-35-public-data-fn407"
  role          = aws_iam_role.citizen_portal_21_gis_layers_svc2736.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_audit_fn1119" {
  function_name = "arior-1njchw-citizen-portal-4-audit-fn1119"
  role          = aws_iam_role.procurement_33_records_svc2052.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_filings_fn1559" {
  function_name = "arior-1njchw-citizen-portal-4-filings-fn1559"
  role          = aws_iam_role.citizen_portal_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_filings_fn2144" {
  function_name = "arior-1njchw-citizen-portal-4-filings-fn2144"
  role          = aws_iam_role.citizen_portal_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_filings_fn2165" {
  function_name = "arior-1njchw-citizen-portal-4-filings-fn2165"
  role          = aws_iam_role.gis_4_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_filings_fn2427" {
  function_name = "arior-1njchw-citizen-portal-4-filings-fn2427"
  role          = aws_iam_role.citizen_portal_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_audit_fn1004" {
  function_name = "arior-1njchw-citizen-portal-5-audit-fn1004"
  role          = aws_iam_role.benefits_2_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_audit_fn1036" {
  function_name = "arior-1njchw-citizen-portal-5-audit-fn1036"
  role          = aws_iam_role.citizen_portal_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_audit_fn1713" {
  function_name = "arior-1njchw-citizen-portal-5-audit-fn1713"
  role          = aws_iam_role.citizen_portal_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_audit_fn780" {
  function_name = "arior-1njchw-citizen-portal-5-audit-fn780"
  role          = aws_iam_role.citizen_portal_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_backups_fn1128" {
  function_name = "arior-1njchw-citizen-portal-5-backups-fn1128"
  role          = aws_iam_role.records_26_audit_svc6125.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_backups_fn567" {
  function_name = "arior-1njchw-citizen-portal-5-backups-fn567"
  role          = aws_iam_role.procurement_5_filings_svc7540.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn1094" {
  function_name = "arior-1njchw-citizen-portal-6-public-data-fn1094"
  role          = aws_iam_role.procurement_30_records_svc7424.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn1849" {
  function_name = "arior-1njchw-citizen-portal-6-public-data-fn1849"
  role          = aws_iam_role.benefits_34_backups_svc7895.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn2065" {
  function_name = "arior-1njchw-citizen-portal-6-public-data-fn2065"
  role          = aws_iam_role.citizen_portal_25_records_svc1536.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn562" {
  function_name = "arior-1njchw-citizen-portal-6-public-data-fn562"
  role          = aws_iam_role.citizen_portal_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn800" {
  function_name = "arior-1njchw-citizen-portal-6-public-data-fn800"
  role          = aws_iam_role.citizen_portal_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn1095" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn1095"
  role          = aws_iam_role.benefits_18_records_svc4375.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn123" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn123"
  role          = aws_iam_role.public_safety_10_filings_svc6770.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn378" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn378"
  role          = aws_iam_role.citizen_portal_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn449" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn449"
  role          = aws_iam_role.open_data_31_filings_svc3695.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn782" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn782"
  role          = aws_iam_role.citizen_portal_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn827" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn827"
  role          = aws_iam_role.citizen_portal_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_7_backups_fn899" {
  function_name = "arior-1njchw-citizen-portal-7-backups-fn899"
  role          = aws_iam_role.licensing_9_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_public_data_fn1078" {
  function_name = "arior-1njchw-citizen-portal-8-public-data-fn1078"
  role          = aws_iam_role.citizen_portal_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_public_data_fn1461" {
  function_name = "arior-1njchw-citizen-portal-8-public-data-fn1461"
  role          = aws_iam_role.citizen_portal_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_public_data_fn3" {
  function_name = "arior-1njchw-citizen-portal-8-public-data-fn3"
  role          = aws_iam_role.citizen_portal_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_public_data_fn535" {
  function_name = "arior-1njchw-citizen-portal-8-public-data-fn535"
  role          = aws_iam_role.citizen_portal_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_records_fn1037" {
  function_name = "arior-1njchw-citizen-portal-8-records-fn1037"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_8_records_fn227" {
  function_name = "arior-1njchw-citizen-portal-8-records-fn227"
  role          = aws_iam_role.audit_15_audit_svc3922.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_audit_fn1251" {
  function_name = "arior-1njchw-citizen-portal-9-audit-fn1251"
  role          = aws_iam_role.citizen_portal_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_gis_layers_fn2221" {
  function_name = "arior-1njchw-citizen-portal-9-gis-layers-fn2221"
  role          = aws_iam_role.citizen_portal_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_gis_layers_fn945" {
  function_name = "arior-1njchw-citizen-portal-9-gis-layers-fn945"
  role          = aws_iam_role.citizen_portal_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_public_data_fn1073" {
  function_name = "arior-1njchw-citizen-portal-9-public-data-fn1073"
  role          = aws_iam_role.gis_31_audit_svc6187.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_public_data_fn1917" {
  function_name = "arior-1njchw-citizen-portal-9-public-data-fn1917"
  role          = aws_iam_role.citizen_portal_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_public_data_fn2089" {
  function_name = "arior-1njchw-citizen-portal-9-public-data-fn2089"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_9_public_data_fn621" {
  function_name = "arior-1njchw-citizen-portal-9-public-data-fn621"
  role          = aws_iam_role.citizen_portal_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_audit_fn1369" {
  function_name = "arior-1njchw-citizen-portal-audit-fn1369"
  role          = aws_iam_role.citizen_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn1256" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn1256"
  role          = aws_iam_role.citizen_portal_14_backups_svc3068.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn1534" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn1534"
  role          = aws_iam_role.citizen_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn1540" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn1540"
  role          = aws_iam_role.procurement_24_public_data_svc6520.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn1712" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn1712"
  role          = aws_iam_role.citizen_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn2318" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn2318"
  role          = aws_iam_role.audit_7_backups_svc3826.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_gis_layers_fn2442" {
  function_name = "arior-1njchw-citizen-portal-gis-layers-fn2442"
  role          = aws_iam_role.citizen_portal_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_records_fn20" {
  function_name = "arior-1njchw-citizen-portal-records-fn20"
  role          = aws_iam_role.open_data_29_audit_svc4503.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_records_fn419" {
  function_name = "arior-1njchw-citizen-portal-records-fn419"
  role          = aws_iam_role.hr_33_audit_svc7048.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_audit_fn1385" {
  function_name = "arior-1njchw-gis-10-audit-fn1385"
  role          = aws_iam_role.open_data_7_records_svc5071.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_audit_fn273" {
  function_name = "arior-1njchw-gis-10-audit-fn273"
  role          = aws_iam_role.tax_26_filings_svc1969.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_audit_fn948" {
  function_name = "arior-1njchw-gis-10-audit-fn948"
  role          = aws_iam_role.gis_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_backups_fn2143" {
  function_name = "arior-1njchw-gis-10-backups-fn2143"
  role          = aws_iam_role.tax_29_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_backups_fn887" {
  function_name = "arior-1njchw-gis-10-backups-fn887"
  role          = aws_iam_role.gis_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_10_records_fn2346" {
  function_name = "arior-1njchw-gis-10-records-fn2346"
  role          = aws_iam_role.gis_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_audit_fn1153" {
  function_name = "arior-1njchw-gis-11-audit-fn1153"
  role          = aws_iam_role.public_safety_9_gis_layers_svc5926.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_audit_fn2224" {
  function_name = "arior-1njchw-gis-11-audit-fn2224"
  role          = aws_iam_role.gis_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_audit_fn2497" {
  function_name = "arior-1njchw-gis-11-audit-fn2497"
  role          = aws_iam_role.gis_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_filings_fn1612" {
  function_name = "arior-1njchw-gis-11-filings-fn1612"
  role          = aws_iam_role.gis_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_filings_fn464" {
  function_name = "arior-1njchw-gis-11-filings-fn464"
  role          = aws_iam_role.gis_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_11_filings_fn798" {
  function_name = "arior-1njchw-gis-11-filings-fn798"
  role          = aws_iam_role.benefits_10_public_data_svc1783.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_12_gis_layers_fn1302" {
  function_name = "arior-1njchw-gis-12-gis-layers-fn1302"
  role          = aws_iam_role.public_safety_19_filings_svc1470.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_12_gis_layers_fn2488" {
  function_name = "arior-1njchw-gis-12-gis-layers-fn2488"
  role          = aws_iam_role.gis_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_12_gis_layers_fn366" {
  function_name = "arior-1njchw-gis-12-gis-layers-fn366"
  role          = aws_iam_role.gis_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn1099" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn1099"
  role          = aws_iam_role.tax_18_backups_svc6033.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn1456" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn1456"
  role          = aws_iam_role.gis_35_filings_svc5403.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn1531" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn1531"
  role          = aws_iam_role.gis_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn1727" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn1727"
  role          = aws_iam_role.gis_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn1747" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn1747"
  role          = aws_iam_role.gis_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn2066" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn2066"
  role          = aws_iam_role.gis_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn344" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn344"
  role          = aws_iam_role.tax_24_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn58" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn58"
  role          = aws_iam_role.licensing_2_gis_layers_svc4174.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_13_gis_layers_fn692" {
  function_name = "arior-1njchw-gis-13-gis-layers-fn692"
  role          = aws_iam_role.gis_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_filings_fn1247" {
  function_name = "arior-1njchw-gis-14-filings-fn1247"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_public_data_fn1723" {
  function_name = "arior-1njchw-gis-14-public-data-fn1723"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_public_data_fn199" {
  function_name = "arior-1njchw-gis-14-public-data-fn199"
  role          = aws_iam_role.it_ops_22_audit_svc6501.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_public_data_fn2312" {
  function_name = "arior-1njchw-gis-14-public-data-fn2312"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_public_data_fn2474" {
  function_name = "arior-1njchw-gis-14-public-data-fn2474"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_public_data_fn644" {
  function_name = "arior-1njchw-gis-14-public-data-fn644"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_records_fn110" {
  function_name = "arior-1njchw-gis-14-records-fn110"
  role          = aws_iam_role.records_16_audit_svc6837.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_records_fn1352" {
  function_name = "arior-1njchw-gis-14-records-fn1352"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_14_records_fn1579" {
  function_name = "arior-1njchw-gis-14-records-fn1579"
  role          = aws_iam_role.gis_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_15_filings_fn1217" {
  function_name = "arior-1njchw-gis-15-filings-fn1217"
  role          = aws_iam_role.gis_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_15_filings_fn1762" {
  function_name = "arior-1njchw-gis-15-filings-fn1762"
  role          = aws_iam_role.gis_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_15_filings_fn2166" {
  function_name = "arior-1njchw-gis-15-filings-fn2166"
  role          = aws_iam_role.audit_14_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_15_filings_fn315" {
  function_name = "arior-1njchw-gis-15-filings-fn315"
  role          = aws_iam_role.benefits_7_public_data_svc4243.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_16_gis_layers_fn292" {
  function_name = "arior-1njchw-gis-16-gis-layers-fn292"
  role          = aws_iam_role.gis_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_16_gis_layers_fn364" {
  function_name = "arior-1njchw-gis-16-gis-layers-fn364"
  role          = aws_iam_role.public_safety_17_backups_svc6438.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_backups_fn1253" {
  function_name = "arior-1njchw-gis-17-backups-fn1253"
  role          = aws_iam_role.gis_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_backups_fn1544" {
  function_name = "arior-1njchw-gis-17-backups-fn1544"
  role          = aws_iam_role.gis_6_filings_svc5055.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_filings_fn2435" {
  function_name = "arior-1njchw-gis-17-filings-fn2435"
  role          = aws_iam_role.tax_15_public_data_svc5581.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_filings_fn6" {
  function_name = "arior-1njchw-gis-17-filings-fn6"
  role          = aws_iam_role.gis_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_public_data_fn134" {
  function_name = "arior-1njchw-gis-17-public-data-fn134"
  role          = aws_iam_role.public_safety_6_backups_svc2562.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_public_data_fn1974" {
  function_name = "arior-1njchw-gis-17-public-data-fn1974"
  role          = aws_iam_role.gis_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_public_data_fn2012" {
  function_name = "arior-1njchw-gis-17-public-data-fn2012"
  role          = aws_iam_role.open_data_19_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_17_public_data_fn240" {
  function_name = "arior-1njchw-gis-17-public-data-fn240"
  role          = aws_iam_role.gis_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_18_backups_fn1804" {
  function_name = "arior-1njchw-gis-18-backups-fn1804"
  role          = aws_iam_role.gis_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_18_backups_fn840" {
  function_name = "arior-1njchw-gis-18-backups-fn840"
  role          = aws_iam_role.gis_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_18_gis_layers_fn1510" {
  function_name = "arior-1njchw-gis-18-gis-layers-fn1510"
  role          = aws_iam_role.tax_21_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_audit_fn1264" {
  function_name = "arior-1njchw-gis-19-audit-fn1264"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_gis_layers_fn1178" {
  function_name = "arior-1njchw-gis-19-gis-layers-fn1178"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_gis_layers_fn1395" {
  function_name = "arior-1njchw-gis-19-gis-layers-fn1395"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_gis_layers_fn1745" {
  function_name = "arior-1njchw-gis-19-gis-layers-fn1745"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_public_data_fn1022" {
  function_name = "arior-1njchw-gis-19-public-data-fn1022"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_public_data_fn1129" {
  function_name = "arior-1njchw-gis-19-public-data-fn1129"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_public_data_fn1330" {
  function_name = "arior-1njchw-gis-19-public-data-fn1330"
  role          = aws_iam_role.gis_2_gis_layers_svc3759.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_19_public_data_fn2341" {
  function_name = "arior-1njchw-gis-19-public-data-fn2341"
  role          = aws_iam_role.gis_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn1617" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn1617"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn1807" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn1807"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn2362" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn2362"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn2445" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn2445"
  role          = aws_iam_role.hr_25_gis_layers_svc1128.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn670" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn670"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn684" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn684"
  role          = aws_iam_role.benefits_8_filings_svc5919.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_gis_layers_fn859" {
  function_name = "arior-1njchw-gis-2-gis-layers-fn859"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_records_fn2391" {
  function_name = "arior-1njchw-gis-2-records-fn2391"
  role          = aws_iam_role.gis_30_gis_layers_svc5759.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_records_fn751" {
  function_name = "arior-1njchw-gis-2-records-fn751"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_records_fn821" {
  function_name = "arior-1njchw-gis-2-records-fn821"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_20_audit_fn1692" {
  function_name = "arior-1njchw-gis-20-audit-fn1692"
  role          = aws_iam_role.gis_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_20_records_fn1324" {
  function_name = "arior-1njchw-gis-20-records-fn1324"
  role          = aws_iam_role.gis_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_20_records_fn2202" {
  function_name = "arior-1njchw-gis-20-records-fn2202"
  role          = aws_iam_role.gis_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_20_records_fn2213" {
  function_name = "arior-1njchw-gis-20-records-fn2213"
  role          = aws_iam_role.audit_32_backups_svc4958.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_20_records_fn351" {
  function_name = "arior-1njchw-gis-20-records-fn351"
  role          = aws_iam_role.gis_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_21_audit_fn251" {
  function_name = "arior-1njchw-gis-21-audit-fn251"
  role          = aws_iam_role.gis_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_21_gis_layers_fn1409" {
  function_name = "arior-1njchw-gis-21-gis-layers-fn1409"
  role          = aws_iam_role.gis_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_21_gis_layers_fn959" {
  function_name = "arior-1njchw-gis-21-gis-layers-fn959"
  role          = aws_iam_role.gis_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_21_gis_layers_fn961" {
  function_name = "arior-1njchw-gis-21-gis-layers-fn961"
  role          = aws_iam_role.gis_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn126" {
  function_name = "arior-1njchw-gis-22-backups-fn126"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn1809" {
  function_name = "arior-1njchw-gis-22-backups-fn1809"
  role          = aws_iam_role.open_data_21_records_svc1495.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn2019" {
  function_name = "arior-1njchw-gis-22-backups-fn2019"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn2188" {
  function_name = "arior-1njchw-gis-22-backups-fn2188"
  role          = aws_iam_role.open_data_16_records_svc5595.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn2310" {
  function_name = "arior-1njchw-gis-22-backups-fn2310"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn2489" {
  function_name = "arior-1njchw-gis-22-backups-fn2489"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn386" {
  function_name = "arior-1njchw-gis-22-backups-fn386"
  role          = aws_iam_role.it_ops_2_filings_svc6261.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn473" {
  function_name = "arior-1njchw-gis-22-backups-fn473"
  role          = aws_iam_role.gis_29_gis_layers_svc3251.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_22_backups_fn71" {
  function_name = "arior-1njchw-gis-22-backups-fn71"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_backups_fn1020" {
  function_name = "arior-1njchw-gis-23-backups-fn1020"
  role          = aws_iam_role.gis_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_backups_fn2361" {
  function_name = "arior-1njchw-gis-23-backups-fn2361"
  role          = aws_iam_role.gis_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_backups_fn608" {
  function_name = "arior-1njchw-gis-23-backups-fn608"
  role          = aws_iam_role.gis_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_gis_layers_fn2130" {
  function_name = "arior-1njchw-gis-23-gis-layers-fn2130"
  role          = aws_iam_role.records_11_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_gis_layers_fn430" {
  function_name = "arior-1njchw-gis-23-gis-layers-fn430"
  role          = aws_iam_role.audit_16_audit_svc7678.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_records_fn1305" {
  function_name = "arior-1njchw-gis-23-records-fn1305"
  role          = aws_iam_role.gis_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_23_records_fn2396" {
  function_name = "arior-1njchw-gis-23-records-fn2396"
  role          = aws_iam_role.audit_23_gis_layers_svc3602.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_24_backups_fn1926" {
  function_name = "arior-1njchw-gis-24-backups-fn1926"
  role          = aws_iam_role.gis_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_24_gis_layers_fn794" {
  function_name = "arior-1njchw-gis-24-gis-layers-fn794"
  role          = aws_iam_role.audit_33_filings_svc2474.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_24_public_data_fn597" {
  function_name = "arior-1njchw-gis-24-public-data-fn597"
  role          = aws_iam_role.gis_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_25_audit_fn140" {
  function_name = "arior-1njchw-gis-25-audit-fn140"
  role          = aws_iam_role.gis_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_25_audit_fn1674" {
  function_name = "arior-1njchw-gis-25-audit-fn1674"
  role          = aws_iam_role.audit_15_audit_svc7666.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_25_records_fn1288" {
  function_name = "arior-1njchw-gis-25-records-fn1288"
  role          = aws_iam_role.benefits_24_gis_layers_svc7775.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_25_records_fn2184" {
  function_name = "arior-1njchw-gis-25-records-fn2184"
  role          = aws_iam_role.gis_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn1107" {
  function_name = "arior-1njchw-gis-26-audit-fn1107"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn2000" {
  function_name = "arior-1njchw-gis-26-audit-fn2000"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn2121" {
  function_name = "arior-1njchw-gis-26-audit-fn2121"
  role          = aws_iam_role.hr_3_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn2257" {
  function_name = "arior-1njchw-gis-26-audit-fn2257"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn2443" {
  function_name = "arior-1njchw-gis-26-audit-fn2443"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn2480" {
  function_name = "arior-1njchw-gis-26-audit-fn2480"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_audit_fn585" {
  function_name = "arior-1njchw-gis-26-audit-fn585"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_public_data_fn2272" {
  function_name = "arior-1njchw-gis-26-public-data-fn2272"
  role          = aws_iam_role.audit_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_public_data_fn504" {
  function_name = "arior-1njchw-gis-26-public-data-fn504"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_public_data_fn91" {
  function_name = "arior-1njchw-gis-26-public-data-fn91"
  role          = aws_iam_role.audit_20_audit_svc5230.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_records_fn100" {
  function_name = "arior-1njchw-gis-26-records-fn100"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_26_records_fn741" {
  function_name = "arior-1njchw-gis-26-records-fn741"
  role          = aws_iam_role.gis_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_filings_fn2110" {
  function_name = "arior-1njchw-gis-27-filings-fn2110"
  role          = aws_iam_role.licensing_2_gis_layers_svc3342.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_filings_fn28" {
  function_name = "arior-1njchw-gis-27-filings-fn28"
  role          = aws_iam_role.hr_26_public_data_svc5716.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_filings_fn518" {
  function_name = "arior-1njchw-gis-27-filings-fn518"
  role          = aws_iam_role.public_safety_30_audit_svc3682.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_filings_fn533" {
  function_name = "arior-1njchw-gis-27-filings-fn533"
  role          = aws_iam_role.gis_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_public_data_fn1718" {
  function_name = "arior-1njchw-gis-27-public-data-fn1718"
  role          = aws_iam_role.gis_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_public_data_fn250" {
  function_name = "arior-1njchw-gis-27-public-data-fn250"
  role          = aws_iam_role.gis_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_27_public_data_fn878" {
  function_name = "arior-1njchw-gis-27-public-data-fn878"
  role          = aws_iam_role.gis_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_public_data_fn1265" {
  function_name = "arior-1njchw-gis-28-public-data-fn1265"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_public_data_fn1523" {
  function_name = "arior-1njchw-gis-28-public-data-fn1523"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_public_data_fn498" {
  function_name = "arior-1njchw-gis-28-public-data-fn498"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_records_fn2298" {
  function_name = "arior-1njchw-gis-28-records-fn2298"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_records_fn2381" {
  function_name = "arior-1njchw-gis-28-records-fn2381"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_28_records_fn489" {
  function_name = "arior-1njchw-gis-28-records-fn489"
  role          = aws_iam_role.gis_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn1104" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn1104"
  role          = aws_iam_role.gis_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn1735" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn1735"
  role          = aws_iam_role.records_28_public_data_svc4485.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn1858" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn1858"
  role          = aws_iam_role.gis_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn291" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn291"
  role          = aws_iam_role.it_ops_15_audit_svc3089.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn306" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn306"
  role          = aws_iam_role.open_data_17_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn388" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn388"
  role          = aws_iam_role.gis_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_29_gis_layers_fn656" {
  function_name = "arior-1njchw-gis-29-gis-layers-fn656"
  role          = aws_iam_role.citizen_portal_20_records_svc1892.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_audit_fn671" {
  function_name = "arior-1njchw-gis-3-audit-fn671"
  role          = aws_iam_role.gis_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_audit_fn986" {
  function_name = "arior-1njchw-gis-3-audit-fn986"
  role          = aws_iam_role.gis_13_gis_layers_svc7219.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_public_data_fn234" {
  function_name = "arior-1njchw-gis-3-public-data-fn234"
  role          = aws_iam_role.gis_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_public_data_fn2416" {
  function_name = "arior-1njchw-gis-3-public-data-fn2416"
  role          = aws_iam_role.public_safety_16_backups_svc6010.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_records_fn1683" {
  function_name = "arior-1njchw-gis-3-records-fn1683"
  role          = aws_iam_role.tax_33_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_records_fn2058" {
  function_name = "arior-1njchw-gis-3-records-fn2058"
  role          = aws_iam_role.gis_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_30_audit_fn1954" {
  function_name = "arior-1njchw-gis-30-audit-fn1954"
  role          = aws_iam_role.gis_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_30_audit_fn29" {
  function_name = "arior-1njchw-gis-30-audit-fn29"
  role          = aws_iam_role.tax_27_gis_layers_svc6973.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_30_gis_layers_fn1320" {
  function_name = "arior-1njchw-gis-30-gis-layers-fn1320"
  role          = aws_iam_role.gis_12_gis_layers_svc7207.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_30_gis_layers_fn2063" {
  function_name = "arior-1njchw-gis-30-gis-layers-fn2063"
  role          = aws_iam_role.tax_audit_svc5829.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_audit_fn1642" {
  function_name = "arior-1njchw-gis-31-audit-fn1642"
  role          = aws_iam_role.procurement_28_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_audit_fn653" {
  function_name = "arior-1njchw-gis-31-audit-fn653"
  role          = aws_iam_role.gis_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_audit_fn695" {
  function_name = "arior-1njchw-gis-31-audit-fn695"
  role          = aws_iam_role.gis_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_backups_fn1558" {
  function_name = "arior-1njchw-gis-31-backups-fn1558"
  role          = aws_iam_role.gis_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_backups_fn2388" {
  function_name = "arior-1njchw-gis-31-backups-fn2388"
  role          = aws_iam_role.gis_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_31_backups_fn545" {
  function_name = "arior-1njchw-gis-31-backups-fn545"
  role          = aws_iam_role.open_data_5_records_svc3383.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_32_backups_fn1312" {
  function_name = "arior-1njchw-gis-32-backups-fn1312"
  role          = aws_iam_role.audit_30_records_svc1190.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_32_backups_fn59" {
  function_name = "arior-1njchw-gis-32-backups-fn59"
  role          = aws_iam_role.benefits_5_filings_svc5051.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_33_audit_fn1469" {
  function_name = "arior-1njchw-gis-33-audit-fn1469"
  role          = aws_iam_role.gis_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_33_audit_fn2451" {
  function_name = "arior-1njchw-gis-33-audit-fn2451"
  role          = aws_iam_role.gis_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_33_public_data_fn458" {
  function_name = "arior-1njchw-gis-33-public-data-fn458"
  role          = aws_iam_role.gis_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_34_records_fn1709" {
  function_name = "arior-1njchw-gis-34-records-fn1709"
  role          = aws_iam_role.gis_20_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_34_records_fn2203" {
  function_name = "arior-1njchw-gis-34-records-fn2203"
  role          = aws_iam_role.gis_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_35_backups_fn1739" {
  function_name = "arior-1njchw-gis-35-backups-fn1739"
  role          = aws_iam_role.gis_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_35_backups_fn216" {
  function_name = "arior-1njchw-gis-35-backups-fn216"
  role          = aws_iam_role.gis_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_35_filings_fn1349" {
  function_name = "arior-1njchw-gis-35-filings-fn1349"
  role          = aws_iam_role.tax_5_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_35_filings_fn1358" {
  function_name = "arior-1njchw-gis-35-filings-fn1358"
  role          = aws_iam_role.citizen_portal_12_public_data_svc1380.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_35_filings_fn2200" {
  function_name = "arior-1njchw-gis-35-filings-fn2200"
  role          = aws_iam_role.procurement_11_records_svc4700.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_audit_fn536" {
  function_name = "arior-1njchw-gis-4-audit-fn536"
  role          = aws_iam_role.gis_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_filings_fn2016" {
  function_name = "arior-1njchw-gis-4-filings-fn2016"
  role          = aws_iam_role.gis_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_filings_fn2138" {
  function_name = "arior-1njchw-gis-4-filings-fn2138"
  role          = aws_iam_role.public_safety_3_records_svc1278.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_filings_fn906" {
  function_name = "arior-1njchw-gis-4-filings-fn906"
  role          = aws_iam_role.gis_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn1101" {
  function_name = "arior-1njchw-gis-5-filings-fn1101"
  role          = aws_iam_role.gis_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn1121" {
  function_name = "arior-1njchw-gis-5-filings-fn1121"
  role          = aws_iam_role.tax_7_records_svc5485.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn1388" {
  function_name = "arior-1njchw-gis-5-filings-fn1388"
  role          = aws_iam_role.gis_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn1610" {
  function_name = "arior-1njchw-gis-5-filings-fn1610"
  role          = aws_iam_role.gis_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn1876" {
  function_name = "arior-1njchw-gis-5-filings-fn1876"
  role          = aws_iam_role.open_data_13_audit_svc5975.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn2097" {
  function_name = "arior-1njchw-gis-5-filings-fn2097"
  role          = aws_iam_role.gis_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn2176" {
  function_name = "arior-1njchw-gis-5-filings-fn2176"
  role          = aws_iam_role.procurement_13_filings_svc5972.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_5_filings_fn365" {
  function_name = "arior-1njchw-gis-5-filings-fn365"
  role          = aws_iam_role.licensing_33_audit_svc2050.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_filings_fn1243" {
  function_name = "arior-1njchw-gis-6-filings-fn1243"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_filings_fn1451" {
  function_name = "arior-1njchw-gis-6-filings-fn1451"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_filings_fn1516" {
  function_name = "arior-1njchw-gis-6-filings-fn1516"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_public_data_fn282" {
  function_name = "arior-1njchw-gis-6-public-data-fn282"
  role          = aws_iam_role.records_34_audit_svc6637.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_records_fn1959" {
  function_name = "arior-1njchw-gis-6-records-fn1959"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn1195" {
  function_name = "arior-1njchw-gis-7-records-fn1195"
  role          = aws_iam_role.gis_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn1262" {
  function_name = "arior-1njchw-gis-7-records-fn1262"
  role          = aws_iam_role.gis_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn149" {
  function_name = "arior-1njchw-gis-7-records-fn149"
  role          = aws_iam_role.gis_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn1600" {
  function_name = "arior-1njchw-gis-7-records-fn1600"
  role          = aws_iam_role.gis_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn620" {
  function_name = "arior-1njchw-gis-7-records-fn620"
  role          = aws_iam_role.audit_4_backups_svc7118.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn719" {
  function_name = "arior-1njchw-gis-7-records-fn719"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_audit_fn1159" {
  function_name = "arior-1njchw-gis-8-audit-fn1159"
  role          = aws_iam_role.gis_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_audit_fn1384" {
  function_name = "arior-1njchw-gis-8-audit-fn1384"
  role          = aws_iam_role.audit_20_audit_svc654.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_audit_fn1791" {
  function_name = "arior-1njchw-gis-8-audit-fn1791"
  role          = aws_iam_role.gis_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_audit_fn40" {
  function_name = "arior-1njchw-gis-8-audit-fn40"
  role          = aws_iam_role.gis_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_public_data_fn1299" {
  function_name = "arior-1njchw-gis-8-public-data-fn1299"
  role          = aws_iam_role.gis_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_public_data_fn1815" {
  function_name = "arior-1njchw-gis-8-public-data-fn1815"
  role          = aws_iam_role.gis_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_8_public_data_fn376" {
  function_name = "arior-1njchw-gis-8-public-data-fn376"
  role          = aws_iam_role.public_safety_31_audit_svc4526.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn1883" {
  function_name = "arior-1njchw-gis-9-audit-fn1883"
  role          = aws_iam_role.gis_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn1928" {
  function_name = "arior-1njchw-gis-9-audit-fn1928"
  role          = aws_iam_role.gis_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn1943" {
  function_name = "arior-1njchw-gis-9-audit-fn1943"
  role          = aws_iam_role.procurement_public_data_svc4164.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn2002" {
  function_name = "arior-1njchw-gis-9-audit-fn2002"
  role          = aws_iam_role.gis_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn605" {
  function_name = "arior-1njchw-gis-9-audit-fn605"
  role          = aws_iam_role.citizen_portal_21_gis_layers_svc6064.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn850" {
  function_name = "arior-1njchw-gis-9-audit-fn850"
  role          = aws_iam_role.hr_7_public_data_svc4656.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_9_audit_fn907" {
  function_name = "arior-1njchw-gis-9-audit-fn907"
  role          = aws_iam_role.gis_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_audit_fn0" {
  function_name = "arior-1njchw-gis-audit-fn0"
  role          = aws_iam_role.benefits_10_public_data_svc2615.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_audit_fn218" {
  function_name = "arior-1njchw-gis-audit-fn218"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_audit_fn375" {
  function_name = "arior-1njchw-gis-audit-fn375"
  role          = aws_iam_role.gis_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_filings_fn2283" {
  function_name = "arior-1njchw-gis-filings-fn2283"
  role          = aws_iam_role.procurement_15_records_svc5580.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_filings_fn687" {
  function_name = "arior-1njchw-gis-filings-fn687"
  role          = aws_iam_role.tax_14_filings_svc6817.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_filings_fn1024" {
  function_name = "arior-1njchw-hr-10-filings-fn1024"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_filings_fn434" {
  function_name = "arior-1njchw-hr-10-filings-fn434"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_filings_fn486" {
  function_name = "arior-1njchw-hr-10-filings-fn486"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_filings_fn625" {
  function_name = "arior-1njchw-hr-10-filings-fn625"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_filings_fn886" {
  function_name = "arior-1njchw-hr-10-filings-fn886"
  role          = aws_iam_role.public_safety_26_filings_svc1554.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_records_fn1116" {
  function_name = "arior-1njchw-hr-10-records-fn1116"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_records_fn1871" {
  function_name = "arior-1njchw-hr-10-records-fn1871"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_records_fn195" {
  function_name = "arior-1njchw-hr-10-records-fn195"
  role          = aws_iam_role.it_ops_4_backups_svc7533.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_records_fn2073" {
  function_name = "arior-1njchw-hr-10-records-fn2073"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_10_records_fn2160" {
  function_name = "arior-1njchw-hr-10-records-fn2160"
  role          = aws_iam_role.hr_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_11_gis_layers_fn1422" {
  function_name = "arior-1njchw-hr-11-gis-layers-fn1422"
  role          = aws_iam_role.audit_34_filings_svc4982.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_11_gis_layers_fn1682" {
  function_name = "arior-1njchw-hr-11-gis-layers-fn1682"
  role          = aws_iam_role.hr_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_11_gis_layers_fn633" {
  function_name = "arior-1njchw-hr-11-gis-layers-fn633"
  role          = aws_iam_role.hr_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_11_public_data_fn1154" {
  function_name = "arior-1njchw-hr-11-public-data-fn1154"
  role          = aws_iam_role.hr_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_11_public_data_fn1656" {
  function_name = "arior-1njchw-hr-11-public-data-fn1656"
  role          = aws_iam_role.hr_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_12_filings_fn119" {
  function_name = "arior-1njchw-hr-12-filings-fn119"
  role          = aws_iam_role.hr_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_12_filings_fn203" {
  function_name = "arior-1njchw-hr-12-filings-fn203"
  role          = aws_iam_role.open_data_30_public_data_svc2851.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_12_filings_fn254" {
  function_name = "arior-1njchw-hr-12-filings-fn254"
  role          = aws_iam_role.public_safety_23_backups_svc4430.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_12_gis_layers_fn1057" {
  function_name = "arior-1njchw-hr-12-gis-layers-fn1057"
  role          = aws_iam_role.tax_15_public_data_svc1005.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_12_gis_layers_fn1450" {
  function_name = "arior-1njchw-hr-12-gis-layers-fn1450"
  role          = aws_iam_role.hr_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_13_audit_fn1156" {
  function_name = "arior-1njchw-hr-13-audit-fn1156"
  role          = aws_iam_role.hr_filings_svc7080.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_13_audit_fn1706" {
  function_name = "arior-1njchw-hr-13-audit-fn1706"
  role          = aws_iam_role.gis_25_records_svc3203.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_13_audit_fn310" {
  function_name = "arior-1njchw-hr-13-audit-fn310"
  role          = aws_iam_role.hr_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_13_filings_fn1636" {
  function_name = "arior-1njchw-hr-13-filings-fn1636"
  role          = aws_iam_role.procurement_31_gis_layers_svc2444.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_13_filings_fn191" {
  function_name = "arior-1njchw-hr-13-filings-fn191"
  role          = aws_iam_role.hr_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1132" {
  function_name = "arior-1njchw-hr-14-records-fn1132"
  role          = aws_iam_role.records_28_public_data_svc1157.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1188" {
  function_name = "arior-1njchw-hr-14-records-fn1188"
  role          = aws_iam_role.hr_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1341" {
  function_name = "arior-1njchw-hr-14-records-fn1341"
  role          = aws_iam_role.gis_7_records_svc3819.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1351" {
  function_name = "arior-1njchw-hr-14-records-fn1351"
  role          = aws_iam_role.licensing_20_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1604" {
  function_name = "arior-1njchw-hr-14-records-fn1604"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn1935" {
  function_name = "arior-1njchw-hr-14-records-fn1935"
  role          = aws_iam_role.it_ops_32_public_data_svc2461.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn744" {
  function_name = "arior-1njchw-hr-14-records-fn744"
  role          = aws_iam_role.hr_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_14_records_fn763" {
  function_name = "arior-1njchw-hr-14-records-fn763"
  role          = aws_iam_role.hr_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_public_data_fn654" {
  function_name = "arior-1njchw-hr-15-public-data-fn654"
  role          = aws_iam_role.hr_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_public_data_fn858" {
  function_name = "arior-1njchw-hr-15-public-data-fn858"
  role          = aws_iam_role.it_ops_9_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn1569" {
  function_name = "arior-1njchw-hr-15-records-fn1569"
  role          = aws_iam_role.tax_4_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn1771" {
  function_name = "arior-1njchw-hr-15-records-fn1771"
  role          = aws_iam_role.tax_4_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn2145" {
  function_name = "arior-1njchw-hr-15-records-fn2145"
  role          = aws_iam_role.hr_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn287" {
  function_name = "arior-1njchw-hr-15-records-fn287"
  role          = aws_iam_role.hr_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn323" {
  function_name = "arior-1njchw-hr-15-records-fn323"
  role          = aws_iam_role.hr_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn787" {
  function_name = "arior-1njchw-hr-15-records-fn787"
  role          = aws_iam_role.hr_15_records_svc5584.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_15_records_fn921" {
  function_name = "arior-1njchw-hr-15-records-fn921"
  role          = aws_iam_role.hr_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_16_audit_fn68" {
  function_name = "arior-1njchw-hr-16-audit-fn68"
  role          = aws_iam_role.audit_7_audit_svc2994.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_16_backups_fn396" {
  function_name = "arior-1njchw-hr-16-backups-fn396"
  role          = aws_iam_role.citizen_portal_20_records_svc6468.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_16_records_fn1403" {
  function_name = "arior-1njchw-hr-16-records-fn1403"
  role          = aws_iam_role.hr_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_16_records_fn1603" {
  function_name = "arior-1njchw-hr-16-records-fn1603"
  role          = aws_iam_role.hr_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_16_records_fn587" {
  function_name = "arior-1njchw-hr-16-records-fn587"
  role          = aws_iam_role.hr_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1172" {
  function_name = "arior-1njchw-hr-17-backups-fn1172"
  role          = aws_iam_role.hr_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1280" {
  function_name = "arior-1njchw-hr-17-backups-fn1280"
  role          = aws_iam_role.procurement_23_records_svc1932.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1372" {
  function_name = "arior-1njchw-hr-17-backups-fn1372"
  role          = aws_iam_role.open_data_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1667" {
  function_name = "arior-1njchw-hr-17-backups-fn1667"
  role          = aws_iam_role.citizen_portal_4_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1788" {
  function_name = "arior-1njchw-hr-17-backups-fn1788"
  role          = aws_iam_role.licensing_5_backups_svc5458.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn1933" {
  function_name = "arior-1njchw-hr-17-backups-fn1933"
  role          = aws_iam_role.hr_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_17_backups_fn754" {
  function_name = "arior-1njchw-hr-17-backups-fn754"
  role          = aws_iam_role.hr_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_18_filings_fn1236" {
  function_name = "arior-1njchw-hr-18-filings-fn1236"
  role          = aws_iam_role.hr_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_18_filings_fn1581" {
  function_name = "arior-1njchw-hr-18-filings-fn1581"
  role          = aws_iam_role.hr_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_18_gis_layers_fn1127" {
  function_name = "arior-1njchw-hr-18-gis-layers-fn1127"
  role          = aws_iam_role.tax_15_public_data_svc4749.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_18_gis_layers_fn246" {
  function_name = "arior-1njchw-hr-18-gis-layers-fn246"
  role          = aws_iam_role.hr_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_18_gis_layers_fn736" {
  function_name = "arior-1njchw-hr-18-gis-layers-fn736"
  role          = aws_iam_role.procurement_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn1416" {
  function_name = "arior-1njchw-hr-19-public-data-fn1416"
  role          = aws_iam_role.hr_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn19" {
  function_name = "arior-1njchw-hr-19-public-data-fn19"
  role          = aws_iam_role.hr_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn2274" {
  function_name = "arior-1njchw-hr-19-public-data-fn2274"
  role          = aws_iam_role.hr_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn408" {
  function_name = "arior-1njchw-hr-19-public-data-fn408"
  role          = aws_iam_role.licensing_17_filings_svc1442.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn607" {
  function_name = "arior-1njchw-hr-19-public-data-fn607"
  role          = aws_iam_role.hr_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn609" {
  function_name = "arior-1njchw-hr-19-public-data-fn609"
  role          = aws_iam_role.open_data_27_records_svc7807.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_19_public_data_fn927" {
  function_name = "arior-1njchw-hr-19-public-data-fn927"
  role          = aws_iam_role.audit_8_gis_layers_svc5086.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_audit_fn10" {
  function_name = "arior-1njchw-hr-2-audit-fn10"
  role          = aws_iam_role.hr_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_audit_fn1327" {
  function_name = "arior-1njchw-hr-2-audit-fn1327"
  role          = aws_iam_role.hr_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_gis_layers_fn1179" {
  function_name = "arior-1njchw-hr-2-gis-layers-fn1179"
  role          = aws_iam_role.gis_23_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_gis_layers_fn2205" {
  function_name = "arior-1njchw-hr-2-gis-layers-fn2205"
  role          = aws_iam_role.open_data_8_filings_svc5499.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_gis_layers_fn933" {
  function_name = "arior-1njchw-hr-2-gis-layers-fn933"
  role          = aws_iam_role.hr_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_records_fn1566" {
  function_name = "arior-1njchw-hr-2-records-fn1566"
  role          = aws_iam_role.tax_23_public_data_svc2349.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_2_records_fn1947" {
  function_name = "arior-1njchw-hr-2-records-fn1947"
  role          = aws_iam_role.tax_23_public_data_svc4429.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn127" {
  function_name = "arior-1njchw-hr-20-backups-fn127"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn1417" {
  function_name = "arior-1njchw-hr-20-backups-fn1417"
  role          = aws_iam_role.gis_10_backups_svc4271.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn1551" {
  function_name = "arior-1njchw-hr-20-backups-fn1551"
  role          = aws_iam_role.tax_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn1993" {
  function_name = "arior-1njchw-hr-20-backups-fn1993"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn496" {
  function_name = "arior-1njchw-hr-20-backups-fn496"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn612" {
  function_name = "arior-1njchw-hr-20-backups-fn612"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn628" {
  function_name = "arior-1njchw-hr-20-backups-fn628"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn833" {
  function_name = "arior-1njchw-hr-20-backups-fn833"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_20_backups_fn880" {
  function_name = "arior-1njchw-hr-20-backups-fn880"
  role          = aws_iam_role.hr_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_21_gis_layers_fn1421" {
  function_name = "arior-1njchw-hr-21-gis-layers-fn1421"
  role          = aws_iam_role.hr_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_21_gis_layers_fn1468" {
  function_name = "arior-1njchw-hr-21-gis-layers-fn1468"
  role          = aws_iam_role.hr_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_21_gis_layers_fn1759" {
  function_name = "arior-1njchw-hr-21-gis-layers-fn1759"
  role          = aws_iam_role.public_safety_23_backups_svc6094.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_21_gis_layers_fn714" {
  function_name = "arior-1njchw-hr-21-gis-layers-fn714"
  role          = aws_iam_role.hr_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_21_gis_layers_fn810" {
  function_name = "arior-1njchw-hr-21-gis-layers-fn810"
  role          = aws_iam_role.gis_3_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn106" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn106"
  role          = aws_iam_role.it_ops_24_gis_layers_svc6525.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn1348" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn1348"
  role          = aws_iam_role.open_data_11_gis_layers_svc959.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn1455" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn1455"
  role          = aws_iam_role.records_23_audit_svc2345.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn146" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn146"
  role          = aws_iam_role.audit_11_public_data_svc2210.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn1982" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn1982"
  role          = aws_iam_role.tax_10_audit_svc1361.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn2125" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn2125"
  role          = aws_iam_role.audit_29_backups_svc7418.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn360" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn360"
  role          = aws_iam_role.hr_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn477" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn477"
  role          = aws_iam_role.it_ops_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn529" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn529"
  role          = aws_iam_role.hr_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn770" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn770"
  role          = aws_iam_role.hr_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_22_gis_layers_fn772" {
  function_name = "arior-1njchw-hr-22-gis-layers-fn772"
  role          = aws_iam_role.audit_31_public_data_svc2034.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_23_audit_fn894" {
  function_name = "arior-1njchw-hr-23-audit-fn894"
  role          = aws_iam_role.hr_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_23_records_fn1071" {
  function_name = "arior-1njchw-hr-23-records-fn1071"
  role          = aws_iam_role.hr_33_audit_svc4552.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_23_records_fn1266" {
  function_name = "arior-1njchw-hr-23-records-fn1266"
  role          = aws_iam_role.citizen_portal_31_public_data_svc3688.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_23_records_fn1405" {
  function_name = "arior-1njchw-hr-23-records-fn1405"
  role          = aws_iam_role.hr_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn2140" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn2140"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn2155" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn2155"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn2190" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn2190"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn361" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn361"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn537" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn537"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn590" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn590"
  role          = aws_iam_role.hr_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_24_gis_layers_fn664" {
  function_name = "arior-1njchw-hr-24-gis-layers-fn664"
  role          = aws_iam_role.open_data_6_records_svc3811.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_25_gis_layers_fn152" {
  function_name = "arior-1njchw-hr-25-gis-layers-fn152"
  role          = aws_iam_role.open_data_16_records_svc1435.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_25_gis_layers_fn2271" {
  function_name = "arior-1njchw-hr-25-gis-layers-fn2271"
  role          = aws_iam_role.hr_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_25_gis_layers_fn379" {
  function_name = "arior-1njchw-hr-25-gis-layers-fn379"
  role          = aws_iam_role.citizen_portal_26_audit_svc7788.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_25_gis_layers_fn666" {
  function_name = "arior-1njchw-hr-25-gis-layers-fn666"
  role          = aws_iam_role.hr_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_gis_layers_fn1211" {
  function_name = "arior-1njchw-hr-26-gis-layers-fn1211"
  role          = aws_iam_role.hr_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_gis_layers_fn16" {
  function_name = "arior-1njchw-hr-26-gis-layers-fn16"
  role          = aws_iam_role.hr_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_gis_layers_fn2438" {
  function_name = "arior-1njchw-hr-26-gis-layers-fn2438"
  role          = aws_iam_role.hr_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_gis_layers_fn88" {
  function_name = "arior-1njchw-hr-26-gis-layers-fn88"
  role          = aws_iam_role.hr_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_public_data_fn1296" {
  function_name = "arior-1njchw-hr-26-public-data-fn1296"
  role          = aws_iam_role.records_5_filings_svc5041.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_26_public_data_fn1362" {
  function_name = "arior-1njchw-hr-26-public-data-fn1362"
  role          = aws_iam_role.it_ops_21_filings_svc5241.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_filings_fn1766" {
  function_name = "arior-1njchw-hr-27-filings-fn1766"
  role          = aws_iam_role.hr_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_gis_layers_fn1307" {
  function_name = "arior-1njchw-hr-27-gis-layers-fn1307"
  role          = aws_iam_role.hr_5_audit_svc472.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_gis_layers_fn1697" {
  function_name = "arior-1njchw-hr-27-gis-layers-fn1697"
  role          = aws_iam_role.hr_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_gis_layers_fn1786" {
  function_name = "arior-1njchw-hr-27-gis-layers-fn1786"
  role          = aws_iam_role.hr_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_gis_layers_fn2344" {
  function_name = "arior-1njchw-hr-27-gis-layers-fn2344"
  role          = aws_iam_role.hr_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_27_gis_layers_fn683" {
  function_name = "arior-1njchw-hr-27-gis-layers-fn683"
  role          = aws_iam_role.hr_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_backups_fn1092" {
  function_name = "arior-1njchw-hr-28-backups-fn1092"
  role          = aws_iam_role.tax_20_backups_svc6889.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_backups_fn1489" {
  function_name = "arior-1njchw-hr-28-backups-fn1489"
  role          = aws_iam_role.public_safety_3_public_data_svc5022.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_backups_fn437" {
  function_name = "arior-1njchw-hr-28-backups-fn437"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_backups_fn523" {
  function_name = "arior-1njchw-hr-28-backups-fn523"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_backups_fn532" {
  function_name = "arior-1njchw-hr-28-backups-fn532"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_gis_layers_fn1432" {
  function_name = "arior-1njchw-hr-28-gis-layers-fn1432"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_gis_layers_fn2478" {
  function_name = "arior-1njchw-hr-28-gis-layers-fn2478"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_records_fn1202" {
  function_name = "arior-1njchw-hr-28-records-fn1202"
  role          = aws_iam_role.hr_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_28_records_fn2035" {
  function_name = "arior-1njchw-hr-28-records-fn2035"
  role          = aws_iam_role.hr_28_gis_layers_svc6572.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_gis_layers_fn1564" {
  function_name = "arior-1njchw-hr-29-gis-layers-fn1564"
  role          = aws_iam_role.hr_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_gis_layers_fn201" {
  function_name = "arior-1njchw-hr-29-gis-layers-fn201"
  role          = aws_iam_role.hr_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_gis_layers_fn420" {
  function_name = "arior-1njchw-hr-29-gis-layers-fn420"
  role          = aws_iam_role.procurement_30_public_data_svc4512.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_gis_layers_fn711" {
  function_name = "arior-1njchw-hr-29-gis-layers-fn711"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_public_data_fn1514" {
  function_name = "arior-1njchw-hr-29-public-data-fn1514"
  role          = aws_iam_role.benefits_33_public_data_svc6635.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_public_data_fn259" {
  function_name = "arior-1njchw-hr-29-public-data-fn259"
  role          = aws_iam_role.hr_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_records_fn1438" {
  function_name = "arior-1njchw-hr-29-records-fn1438"
  role          = aws_iam_role.public_safety_3_public_data_svc4190.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_29_records_fn248" {
  function_name = "arior-1njchw-hr-29-records-fn248"
  role          = aws_iam_role.it_ops_21_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn1063" {
  function_name = "arior-1njchw-hr-3-backups-fn1063"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn1309" {
  function_name = "arior-1njchw-hr-3-backups-fn1309"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn17" {
  function_name = "arior-1njchw-hr-3-backups-fn17"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn1930" {
  function_name = "arior-1njchw-hr-3-backups-fn1930"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn2096" {
  function_name = "arior-1njchw-hr-3-backups-fn2096"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_backups_fn712" {
  function_name = "arior-1njchw-hr-3-backups-fn712"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_records_fn190" {
  function_name = "arior-1njchw-hr-3-records-fn190"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_records_fn417" {
  function_name = "arior-1njchw-hr-3-records-fn417"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_records_fn731" {
  function_name = "arior-1njchw-hr-3-records-fn731"
  role          = aws_iam_role.gis_28_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_records_fn87" {
  function_name = "arior-1njchw-hr-3-records-fn87"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_3_records_fn892" {
  function_name = "arior-1njchw-hr-3-records-fn892"
  role          = aws_iam_role.hr_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn1303" {
  function_name = "arior-1njchw-hr-30-filings-fn1303"
  role          = aws_iam_role.hr_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn1675" {
  function_name = "arior-1njchw-hr-30-filings-fn1675"
  role          = aws_iam_role.hr_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn2332" {
  function_name = "arior-1njchw-hr-30-filings-fn2332"
  role          = aws_iam_role.hr_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn2357" {
  function_name = "arior-1njchw-hr-30-filings-fn2357"
  role          = aws_iam_role.open_data_22_records_svc5667.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn487" {
  function_name = "arior-1njchw-hr-30-filings-fn487"
  role          = aws_iam_role.hr_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn527" {
  function_name = "arior-1njchw-hr-30-filings-fn527"
  role          = aws_iam_role.hr_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn77" {
  function_name = "arior-1njchw-hr-30-filings-fn77"
  role          = aws_iam_role.citizen_portal_10_public_data_svc3436.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_30_filings_fn913" {
  function_name = "arior-1njchw-hr-30-filings-fn913"
  role          = aws_iam_role.records_11_gis_layers_svc7609.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn121" {
  function_name = "arior-1njchw-hr-31-public-data-fn121"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1276" {
  function_name = "arior-1njchw-hr-31-public-data-fn1276"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1457" {
  function_name = "arior-1njchw-hr-31-public-data-fn1457"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1620" {
  function_name = "arior-1njchw-hr-31-public-data-fn1620"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1662" {
  function_name = "arior-1njchw-hr-31-public-data-fn1662"
  role          = aws_iam_role.citizen_portal_4_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1799" {
  function_name = "arior-1njchw-hr-31-public-data-fn1799"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn1853" {
  function_name = "arior-1njchw-hr-31-public-data-fn1853"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn402" {
  function_name = "arior-1njchw-hr-31-public-data-fn402"
  role          = aws_iam_role.citizen_portal_4_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn688" {
  function_name = "arior-1njchw-hr-31-public-data-fn688"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_31_public_data_fn769" {
  function_name = "arior-1njchw-hr-31-public-data-fn769"
  role          = aws_iam_role.hr_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn2030" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn2030"
  role          = aws_iam_role.hr_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn2477" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn2477"
  role          = aws_iam_role.hr_18_filings_svc1460.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn389" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn389"
  role          = aws_iam_role.open_data_31_records_svc4111.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn650" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn650"
  role          = aws_iam_role.hr_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn889" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn889"
  role          = aws_iam_role.hr_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_32_gis_layers_fn902" {
  function_name = "arior-1njchw-hr-32-gis-layers-fn902"
  role          = aws_iam_role.hr_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_33_audit_fn1010" {
  function_name = "arior-1njchw-hr-33-audit-fn1010"
  role          = aws_iam_role.citizen_portal_3_audit_svc3352.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_33_audit_fn2005" {
  function_name = "arior-1njchw-hr-33-audit-fn2005"
  role          = aws_iam_role.hr_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_33_audit_fn2043" {
  function_name = "arior-1njchw-hr-33-audit-fn2043"
  role          = aws_iam_role.hr_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_33_audit_fn2358" {
  function_name = "arior-1njchw-hr-33-audit-fn2358"
  role          = aws_iam_role.hr_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_33_audit_fn418" {
  function_name = "arior-1njchw-hr-33-audit-fn418"
  role          = aws_iam_role.hr_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_backups_fn1631" {
  function_name = "arior-1njchw-hr-34-backups-fn1631"
  role          = aws_iam_role.hr_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_backups_fn2383" {
  function_name = "arior-1njchw-hr-34-backups-fn2383"
  role          = aws_iam_role.hr_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_filings_fn1233" {
  function_name = "arior-1njchw-hr-34-filings-fn1233"
  role          = aws_iam_role.citizen_portal_33_records_svc2464.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_filings_fn1462" {
  function_name = "arior-1njchw-hr-34-filings-fn1462"
  role          = aws_iam_role.hr_9_backups_svc3432.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_filings_fn1554" {
  function_name = "arior-1njchw-hr-34-filings-fn1554"
  role          = aws_iam_role.records_8_audit_svc2581.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_filings_fn475" {
  function_name = "arior-1njchw-hr-34-filings-fn475"
  role          = aws_iam_role.citizen_portal_18_public_data_svc3532.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_public_data_fn2083" {
  function_name = "arior-1njchw-hr-34-public-data-fn2083"
  role          = aws_iam_role.tax_12_audit_svc6793.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_public_data_fn2181" {
  function_name = "arior-1njchw-hr-34-public-data-fn2181"
  role          = aws_iam_role.hr_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_34_public_data_fn691" {
  function_name = "arior-1njchw-hr-34-public-data-fn691"
  role          = aws_iam_role.hr_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_4_audit_fn197" {
  function_name = "arior-1njchw-hr-4-audit-fn197"
  role          = aws_iam_role.hr_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_4_audit_fn416" {
  function_name = "arior-1njchw-hr-4-audit-fn416"
  role          = aws_iam_role.hr_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_4_audit_fn588" {
  function_name = "arior-1njchw-hr-4-audit-fn588"
  role          = aws_iam_role.licensing_9_audit_svc5506.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn111" {
  function_name = "arior-1njchw-hr-5-audit-fn111"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn1444" {
  function_name = "arior-1njchw-hr-5-audit-fn1444"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn1550" {
  function_name = "arior-1njchw-hr-5-audit-fn1550"
  role          = aws_iam_role.benefits_23_public_data_svc7763.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn170" {
  function_name = "arior-1njchw-hr-5-audit-fn170"
  role          = aws_iam_role.tax_32_filings_svc4121.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn1826" {
  function_name = "arior-1njchw-hr-5-audit-fn1826"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn2209" {
  function_name = "arior-1njchw-hr-5-audit-fn2209"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn34" {
  function_name = "arior-1njchw-hr-5-audit-fn34"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn424" {
  function_name = "arior-1njchw-hr-5-audit-fn424"
  role          = aws_iam_role.benefits_10_public_data_svc6775.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn733" {
  function_name = "arior-1njchw-hr-5-audit-fn733"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn842" {
  function_name = "arior-1njchw-hr-5-audit-fn842"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_audit_fn876" {
  function_name = "arior-1njchw-hr-5-audit-fn876"
  role          = aws_iam_role.it_ops_34_filings_svc2485.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_backups_fn1177" {
  function_name = "arior-1njchw-hr-6-backups-fn1177"
  role          = aws_iam_role.records_29_backups_svc7825.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_backups_fn2174" {
  function_name = "arior-1njchw-hr-6-backups-fn2174"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_backups_fn613" {
  function_name = "arior-1njchw-hr-6-backups-fn613"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_filings_fn1464" {
  function_name = "arior-1njchw-hr-6-filings-fn1464"
  role          = aws_iam_role.audit_27_filings_svc3650.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_filings_fn147" {
  function_name = "arior-1njchw-hr-6-filings-fn147"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_filings_fn1532" {
  function_name = "arior-1njchw-hr-6-filings-fn1532"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_filings_fn175" {
  function_name = "arior-1njchw-hr-6-filings-fn175"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_backups_fn1797" {
  function_name = "arior-1njchw-hr-7-backups-fn1797"
  role          = aws_iam_role.hr_23_audit_svc7760.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_backups_fn411" {
  function_name = "arior-1njchw-hr-7-backups-fn411"
  role          = aws_iam_role.hr_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_gis_layers_fn2045" {
  function_name = "arior-1njchw-hr-7-gis-layers-fn2045"
  role          = aws_iam_role.hr_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_gis_layers_fn2156" {
  function_name = "arior-1njchw-hr-7-gis-layers-fn2156"
  role          = aws_iam_role.hr_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_gis_layers_fn2315" {
  function_name = "arior-1njchw-hr-7-gis-layers-fn2315"
  role          = aws_iam_role.procurement_3_gis_layers_svc1276.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_public_data_fn158" {
  function_name = "arior-1njchw-hr-7-public-data-fn158"
  role          = aws_iam_role.hr_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_public_data_fn2246" {
  function_name = "arior-1njchw-hr-7-public-data-fn2246"
  role          = aws_iam_role.tax_5_filings_svc3381.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_7_public_data_fn2302" {
  function_name = "arior-1njchw-hr-7-public-data-fn2302"
  role          = aws_iam_role.hr_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_audit_fn1157" {
  function_name = "arior-1njchw-hr-8-audit-fn1157"
  role          = aws_iam_role.hr_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_audit_fn263" {
  function_name = "arior-1njchw-hr-8-audit-fn263"
  role          = aws_iam_role.hr_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_public_data_fn1055" {
  function_name = "arior-1njchw-hr-8-public-data-fn1055"
  role          = aws_iam_role.hr_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_public_data_fn1199" {
  function_name = "arior-1njchw-hr-8-public-data-fn1199"
  role          = aws_iam_role.hr_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_public_data_fn461" {
  function_name = "arior-1njchw-hr-8-public-data-fn461"
  role          = aws_iam_role.gis_11_audit_svc955.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_public_data_fn481" {
  function_name = "arior-1njchw-hr-8-public-data-fn481"
  role          = aws_iam_role.open_data_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_8_public_data_fn93" {
  function_name = "arior-1njchw-hr-8-public-data-fn93"
  role          = aws_iam_role.citizen_portal_21_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_9_backups_fn210" {
  function_name = "arior-1njchw-hr-9-backups-fn210"
  role          = aws_iam_role.licensing_19_backups_svc1882.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_9_backups_fn245" {
  function_name = "arior-1njchw-hr-9-backups-fn245"
  role          = aws_iam_role.records_7_public_data_svc1321.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_filings_fn1069" {
  function_name = "arior-1njchw-hr-filings-fn1069"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_filings_fn1133" {
  function_name = "arior-1njchw-hr-filings-fn1133"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_filings_fn1245" {
  function_name = "arior-1njchw-hr-filings-fn1245"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_filings_fn2189" {
  function_name = "arior-1njchw-hr-filings-fn2189"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "inj_fn_f56" {
  function_name = "arior-1njchw-inj-fn-f56"
  role          = aws_iam_role.inj_fn_exec_r55.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_10_audit_fn1378" {
  function_name = "arior-1njchw-it-ops-10-audit-fn1378"
  role          = aws_iam_role.it_ops_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_10_audit_fn1803" {
  function_name = "arior-1njchw-it-ops-10-audit-fn1803"
  role          = aws_iam_role.it_ops_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_10_audit_fn2266" {
  function_name = "arior-1njchw-it-ops-10-audit-fn2266"
  role          = aws_iam_role.procurement_3_gis_layers_svc2108.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_filings_fn2222" {
  function_name = "arior-1njchw-it-ops-11-filings-fn2222"
  role          = aws_iam_role.it_ops_12_gis_layers_svc557.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_filings_fn700" {
  function_name = "arior-1njchw-it-ops-11-filings-fn700"
  role          = aws_iam_role.it_ops_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_public_data_fn1655" {
  function_name = "arior-1njchw-it-ops-11-public-data-fn1655"
  role          = aws_iam_role.benefits_2_filings_svc2103.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_public_data_fn2371" {
  function_name = "arior-1njchw-it-ops-11-public-data-fn2371"
  role          = aws_iam_role.benefits_34_backups_svc6231.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_public_data_fn2453" {
  function_name = "arior-1njchw-it-ops-11-public-data-fn2453"
  role          = aws_iam_role.it_ops_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_11_public_data_fn2494" {
  function_name = "arior-1njchw-it-ops-11-public-data-fn2494"
  role          = aws_iam_role.procurement_25_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn1460" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn1460"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn1687" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn1687"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn1814" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn1814"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn1846" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn1846"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn2152" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn2152"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn2316" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn2316"
  role          = aws_iam_role.audit_12_audit_svc5134.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn492" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn492"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_12_gis_layers_fn494" {
  function_name = "arior-1njchw-it-ops-12-gis-layers-fn494"
  role          = aws_iam_role.it_ops_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_13_records_fn1496" {
  function_name = "arior-1njchw-it-ops-13-records-fn1496"
  role          = aws_iam_role.it_ops_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_13_records_fn1808" {
  function_name = "arior-1njchw-it-ops-13-records-fn1808"
  role          = aws_iam_role.it_ops_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_13_records_fn309" {
  function_name = "arior-1njchw-it-ops-13-records-fn309"
  role          = aws_iam_role.open_data_24_backups_svc7355.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_13_records_fn387" {
  function_name = "arior-1njchw-it-ops-13-records-fn387"
  role          = aws_iam_role.gis_20_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_14_backups_fn1038" {
  function_name = "arior-1njchw-it-ops-14-backups-fn1038"
  role          = aws_iam_role.it_ops_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_14_backups_fn1126" {
  function_name = "arior-1njchw-it-ops-14-backups-fn1126"
  role          = aws_iam_role.audit_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_14_backups_fn2429" {
  function_name = "arior-1njchw-it-ops-14-backups-fn2429"
  role          = aws_iam_role.licensing_11_gis_layers_svc1370.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_14_backups_fn369" {
  function_name = "arior-1njchw-it-ops-14-backups-fn369"
  role          = aws_iam_role.it_ops_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_15_audit_fn846" {
  function_name = "arior-1njchw-it-ops-15-audit-fn846"
  role          = aws_iam_role.benefits_24_gis_layers_svc2783.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_15_gis_layers_fn1120" {
  function_name = "arior-1njchw-it-ops-15-gis-layers-fn1120"
  role          = aws_iam_role.it_ops_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_15_public_data_fn2321" {
  function_name = "arior-1njchw-it-ops-15-public-data-fn2321"
  role          = aws_iam_role.audit_21_audit_svc5658.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn1224" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn1224"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn1671" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn1671"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn2212" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn2212"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn230" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn230"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn2430" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn2430"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn508" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn508"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn539" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn539"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn639" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn639"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_16_public_data_fn828" {
  function_name = "arior-1njchw-it-ops-16-public-data-fn828"
  role          = aws_iam_role.it_ops_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_17_public_data_fn1322" {
  function_name = "arior-1njchw-it-ops-17-public-data-fn1322"
  role          = aws_iam_role.it_ops_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_17_public_data_fn2051" {
  function_name = "arior-1njchw-it-ops-17-public-data-fn2051"
  role          = aws_iam_role.it_ops_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_17_public_data_fn993" {
  function_name = "arior-1njchw-it-ops-17-public-data-fn993"
  role          = aws_iam_role.procurement_2_backups_svc7088.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_17_records_fn2252" {
  function_name = "arior-1njchw-it-ops-17-records-fn2252"
  role          = aws_iam_role.it_ops_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_audit_fn1082" {
  function_name = "arior-1njchw-it-ops-18-audit-fn1082"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_audit_fn2440" {
  function_name = "arior-1njchw-it-ops-18-audit-fn2440"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_audit_fn2473" {
  function_name = "arior-1njchw-it-ops-18-audit-fn2473"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_audit_fn499" {
  function_name = "arior-1njchw-it-ops-18-audit-fn499"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn1442" {
  function_name = "arior-1njchw-it-ops-18-records-fn1442"
  role          = aws_iam_role.records_14_audit_svc3069.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn1519" {
  function_name = "arior-1njchw-it-ops-18-records-fn1519"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn1860" {
  function_name = "arior-1njchw-it-ops-18-records-fn1860"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn2491" {
  function_name = "arior-1njchw-it-ops-18-records-fn2491"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn256" {
  function_name = "arior-1njchw-it-ops-18-records-fn256"
  role          = aws_iam_role.public_safety_22_records_svc5250.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn400" {
  function_name = "arior-1njchw-it-ops-18-records-fn400"
  role          = aws_iam_role.it_ops_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_18_records_fn847" {
  function_name = "arior-1njchw-it-ops-18-records-fn847"
  role          = aws_iam_role.licensing_27_gis_layers_svc2394.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_gis_layers_fn2072" {
  function_name = "arior-1njchw-it-ops-19-gis-layers-fn2072"
  role          = aws_iam_role.records_31_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_gis_layers_fn2487" {
  function_name = "arior-1njchw-it-ops-19-gis-layers-fn2487"
  role          = aws_iam_role.it_ops_23_audit_svc3601.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn1748" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn1748"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn1763" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn1763"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn2263" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn2263"
  role          = aws_iam_role.records_14_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn232" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn232"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn2433" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn2433"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_public_data_fn2448" {
  function_name = "arior-1njchw-it-ops-19-public-data-fn2448"
  role          = aws_iam_role.it_ops_29_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_records_fn1855" {
  function_name = "arior-1njchw-it-ops-19-records-fn1855"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_records_fn23" {
  function_name = "arior-1njchw-it-ops-19-records-fn23"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_19_records_fn931" {
  function_name = "arior-1njchw-it-ops-19-records-fn931"
  role          = aws_iam_role.it_ops_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_filings_fn1184" {
  function_name = "arior-1njchw-it-ops-2-filings-fn1184"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_filings_fn208" {
  function_name = "arior-1njchw-it-ops-2-filings-fn208"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_records_fn1115" {
  function_name = "arior-1njchw-it-ops-2-records-fn1115"
  role          = aws_iam_role.it_ops_20_records_svc2733.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_records_fn1733" {
  function_name = "arior-1njchw-it-ops-2-records-fn1733"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_filings_fn1000" {
  function_name = "arior-1njchw-it-ops-20-filings-fn1000"
  role          = aws_iam_role.it_ops_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_filings_fn2305" {
  function_name = "arior-1njchw-it-ops-20-filings-fn2305"
  role          = aws_iam_role.procurement_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_filings_fn583" {
  function_name = "arior-1njchw-it-ops-20-filings-fn583"
  role          = aws_iam_role.it_ops_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_filings_fn662" {
  function_name = "arior-1njchw-it-ops-20-filings-fn662"
  role          = aws_iam_role.public_safety_8_public_data_svc4250.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_filings_fn806" {
  function_name = "arior-1njchw-it-ops-20-filings-fn806"
  role          = aws_iam_role.it_ops_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_records_fn1135" {
  function_name = "arior-1njchw-it-ops-20-records-fn1135"
  role          = aws_iam_role.records_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_20_records_fn151" {
  function_name = "arior-1njchw-it-ops-20-records-fn151"
  role          = aws_iam_role.it_ops_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_21_filings_fn2107" {
  function_name = "arior-1njchw-it-ops-21-filings-fn2107"
  role          = aws_iam_role.it_ops_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_21_gis_layers_fn1162" {
  function_name = "arior-1njchw-it-ops-21-gis-layers-fn1162"
  role          = aws_iam_role.it_ops_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_21_gis_layers_fn142" {
  function_name = "arior-1njchw-it-ops-21-gis-layers-fn142"
  role          = aws_iam_role.it_ops_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_21_gis_layers_fn422" {
  function_name = "arior-1njchw-it-ops-21-gis-layers-fn422"
  role          = aws_iam_role.it_ops_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_21_gis_layers_fn988" {
  function_name = "arior-1njchw-it-ops-21-gis-layers-fn988"
  role          = aws_iam_role.benefits_18_records_svc1463.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_22_audit_fn2018" {
  function_name = "arior-1njchw-it-ops-22-audit-fn2018"
  role          = aws_iam_role.records_28_public_data_svc1157.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_22_audit_fn2127" {
  function_name = "arior-1njchw-it-ops-22-audit-fn2127"
  role          = aws_iam_role.it_ops_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_22_audit_fn333" {
  function_name = "arior-1njchw-it-ops-22-audit-fn333"
  role          = aws_iam_role.it_ops_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_22_audit_fn785" {
  function_name = "arior-1njchw-it-ops-22-audit-fn785"
  role          = aws_iam_role.it_ops_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_22_audit_fn788" {
  function_name = "arior-1njchw-it-ops-22-audit-fn788"
  role          = aws_iam_role.audit_32_audit_svc2878.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_audit_fn1789" {
  function_name = "arior-1njchw-it-ops-23-audit-fn1789"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_audit_fn235" {
  function_name = "arior-1njchw-it-ops-23-audit-fn235"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_audit_fn2387" {
  function_name = "arior-1njchw-it-ops-23-audit-fn2387"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_backups_fn1122" {
  function_name = "arior-1njchw-it-ops-23-backups-fn1122"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_backups_fn1715" {
  function_name = "arior-1njchw-it-ops-23-backups-fn1715"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn1123" {
  function_name = "arior-1njchw-it-ops-23-filings-fn1123"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn206" {
  function_name = "arior-1njchw-it-ops-23-filings-fn206"
  role          = aws_iam_role.public_safety_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn2317" {
  function_name = "arior-1njchw-it-ops-23-filings-fn2317"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn2319" {
  function_name = "arior-1njchw-it-ops-23-filings-fn2319"
  role          = aws_iam_role.licensing_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn436" {
  function_name = "arior-1njchw-it-ops-23-filings-fn436"
  role          = aws_iam_role.audit_33_backups_svc6634.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_23_filings_fn503" {
  function_name = "arior-1njchw-it-ops-23-filings-fn503"
  role          = aws_iam_role.it_ops_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_audit_fn1449" {
  function_name = "arior-1njchw-it-ops-24-audit-fn1449"
  role          = aws_iam_role.it_ops_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_audit_fn2076" {
  function_name = "arior-1njchw-it-ops-24-audit-fn2076"
  role          = aws_iam_role.citizen_portal_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_audit_fn519" {
  function_name = "arior-1njchw-it-ops-24-audit-fn519"
  role          = aws_iam_role.benefits_5_filings_svc2555.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_audit_fn737" {
  function_name = "arior-1njchw-it-ops-24-audit-fn737"
  role          = aws_iam_role.it_ops_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_public_data_fn1283" {
  function_name = "arior-1njchw-it-ops-24-public-data-fn1283"
  role          = aws_iam_role.records_31_backups_svc5769.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_public_data_fn1394" {
  function_name = "arior-1njchw-it-ops-24-public-data-fn1394"
  role          = aws_iam_role.it_ops_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_24_public_data_fn66" {
  function_name = "arior-1njchw-it-ops-24-public-data-fn66"
  role          = aws_iam_role.it_ops_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_25_public_data_fn1924" {
  function_name = "arior-1njchw-it-ops-25-public-data-fn1924"
  role          = aws_iam_role.it_ops_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_25_records_fn1677" {
  function_name = "arior-1njchw-it-ops-25-records-fn1677"
  role          = aws_iam_role.it_ops_19_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_25_records_fn2450" {
  function_name = "arior-1njchw-it-ops-25-records-fn2450"
  role          = aws_iam_role.audit_3_filings_svc6690.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn1867" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn1867"
  role          = aws_iam_role.benefits_14_filings_svc2663.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn2245" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn2245"
  role          = aws_iam_role.procurement_21_backups_svc6068.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn2281" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn2281"
  role          = aws_iam_role.audit_30_records_svc4518.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn2328" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn2328"
  role          = aws_iam_role.it_ops_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn615" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn615"
  role          = aws_iam_role.it_ops_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_26_public_data_fn937" {
  function_name = "arior-1njchw-it-ops-26-public-data-fn937"
  role          = aws_iam_role.benefits_32_audit_svc7871.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_27_gis_layers_fn1105" {
  function_name = "arior-1njchw-it-ops-27-gis-layers-fn1105"
  role          = aws_iam_role.it_ops_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_27_gis_layers_fn1138" {
  function_name = "arior-1njchw-it-ops-27-gis-layers-fn1138"
  role          = aws_iam_role.it_ops_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_27_gis_layers_fn2304" {
  function_name = "arior-1njchw-it-ops-27-gis-layers-fn2304"
  role          = aws_iam_role.open_data_9_backups_svc5511.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_28_filings_fn129" {
  function_name = "arior-1njchw-it-ops-28-filings-fn129"
  role          = aws_iam_role.it_ops_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_28_filings_fn1842" {
  function_name = "arior-1njchw-it-ops-28-filings-fn1842"
  role          = aws_iam_role.it_ops_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_28_filings_fn2134" {
  function_name = "arior-1njchw-it-ops-28-filings-fn2134"
  role          = aws_iam_role.it_ops_28_filings_svc1165.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_28_filings_fn2349" {
  function_name = "arior-1njchw-it-ops-28-filings-fn2349"
  role          = aws_iam_role.records_9_filings_svc513.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_28_filings_fn767" {
  function_name = "arior-1njchw-it-ops-28-filings-fn767"
  role          = aws_iam_role.audit_11_public_data_svc2626.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_29_filings_fn1226" {
  function_name = "arior-1njchw-it-ops-29-filings-fn1226"
  role          = aws_iam_role.records_29_backups_svc753.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_29_filings_fn1665" {
  function_name = "arior-1njchw-it-ops-29-filings-fn1665"
  role          = aws_iam_role.it_ops_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_29_filings_fn2299" {
  function_name = "arior-1njchw-it-ops-29-filings-fn2299"
  role          = aws_iam_role.public_safety_18_public_data_svc6866.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_29_filings_fn2419" {
  function_name = "arior-1njchw-it-ops-29-filings-fn2419"
  role          = aws_iam_role.hr_4_audit_svc4620.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_29_filings_fn62" {
  function_name = "arior-1njchw-it-ops-29-filings-fn62"
  role          = aws_iam_role.gis_2_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_3_filings_fn1578" {
  function_name = "arior-1njchw-it-ops-3-filings-fn1578"
  role          = aws_iam_role.procurement_6_records_svc2976.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_3_filings_fn1873" {
  function_name = "arior-1njchw-it-ops-3-filings-fn1873"
  role          = aws_iam_role.gis_7_records_svc5067.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_3_filings_fn617" {
  function_name = "arior-1njchw-it-ops-3-filings-fn617"
  role          = aws_iam_role.it_ops_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_3_filings_fn947" {
  function_name = "arior-1njchw-it-ops-3-filings-fn947"
  role          = aws_iam_role.it_ops_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn1114" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn1114"
  role          = aws_iam_role.it_ops_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn1427" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn1427"
  role          = aws_iam_role.records_33_backups_svc801.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn1630" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn1630"
  role          = aws_iam_role.it_ops_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn1783" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn1783"
  role          = aws_iam_role.benefits_33_public_data_svc2891.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn2026" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn2026"
  role          = aws_iam_role.records_32_public_data_svc4949.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn2046" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn2046"
  role          = aws_iam_role.it_ops_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn2230" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn2230"
  role          = aws_iam_role.it_ops_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_30_public_data_fn89" {
  function_name = "arior-1njchw-it-ops-30-public-data-fn89"
  role          = aws_iam_role.it_ops_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_31_records_fn2021" {
  function_name = "arior-1njchw-it-ops-31-records-fn2021"
  role          = aws_iam_role.gis_7_records_svc1323.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_31_records_fn2436" {
  function_name = "arior-1njchw-it-ops-31-records-fn2436"
  role          = aws_iam_role.it_ops_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_31_records_fn342" {
  function_name = "arior-1njchw-it-ops-31-records-fn342"
  role          = aws_iam_role.it_ops_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_31_records_fn941" {
  function_name = "arior-1njchw-it-ops-31-records-fn941"
  role          = aws_iam_role.licensing_34_records_svc6638.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_backups_fn1047" {
  function_name = "arior-1njchw-it-ops-32-backups-fn1047"
  role          = aws_iam_role.tax_22_public_data_svc7745.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_backups_fn1306" {
  function_name = "arior-1njchw-it-ops-32-backups-fn1306"
  role          = aws_iam_role.records_12_audit_svc1381.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_backups_fn1360" {
  function_name = "arior-1njchw-it-ops-32-backups-fn1360"
  role          = aws_iam_role.it_ops_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_backups_fn2080" {
  function_name = "arior-1njchw-it-ops-32-backups-fn2080"
  role          = aws_iam_role.it_ops_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_backups_fn657" {
  function_name = "arior-1njchw-it-ops-32-backups-fn657"
  role          = aws_iam_role.it_ops_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_32_public_data_fn2033" {
  function_name = "arior-1njchw-it-ops-32-public-data-fn2033"
  role          = aws_iam_role.it_ops_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_33_backups_fn65" {
  function_name = "arior-1njchw-it-ops-33-backups-fn65"
  role          = aws_iam_role.it_ops_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_33_records_fn1458" {
  function_name = "arior-1njchw-it-ops-33-records-fn1458"
  role          = aws_iam_role.procurement_24_filings_svc1112.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_33_records_fn1508" {
  function_name = "arior-1njchw-it-ops-33-records-fn1508"
  role          = aws_iam_role.it_ops_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_33_records_fn255" {
  function_name = "arior-1njchw-it-ops-33-records-fn255"
  role          = aws_iam_role.it_ops_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_33_records_fn579" {
  function_name = "arior-1njchw-it-ops-33-records-fn579"
  role          = aws_iam_role.it_ops_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_34_backups_fn1609" {
  function_name = "arior-1njchw-it-ops-34-backups-fn1609"
  role          = aws_iam_role.benefits_5_filings_svc5883.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_34_backups_fn2356" {
  function_name = "arior-1njchw-it-ops-34-backups-fn2356"
  role          = aws_iam_role.it_ops_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_34_backups_fn320" {
  function_name = "arior-1njchw-it-ops-34-backups-fn320"
  role          = aws_iam_role.it_ops_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_34_records_fn1664" {
  function_name = "arior-1njchw-it-ops-34-records-fn1664"
  role          = aws_iam_role.it_ops_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_34_records_fn474" {
  function_name = "arior-1njchw-it-ops-34-records-fn474"
  role          = aws_iam_role.it_ops_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_backups_fn2195" {
  function_name = "arior-1njchw-it-ops-4-backups-fn2195"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_gis_layers_fn1572" {
  function_name = "arior-1njchw-it-ops-4-gis-layers-fn1572"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_gis_layers_fn1639" {
  function_name = "arior-1njchw-it-ops-4-gis-layers-fn1639"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_records_fn2153" {
  function_name = "arior-1njchw-it-ops-4-records-fn2153"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_records_fn307" {
  function_name = "arior-1njchw-it-ops-4-records-fn307"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_records_fn433" {
  function_name = "arior-1njchw-it-ops-4-records-fn433"
  role          = aws_iam_role.it_ops_3_filings_svc5025.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_records_fn453" {
  function_name = "arior-1njchw-it-ops-4-records-fn453"
  role          = aws_iam_role.benefits_11_gis_layers_svc5123.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_backups_fn1040" {
  function_name = "arior-1njchw-it-ops-5-backups-fn1040"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_backups_fn1109" {
  function_name = "arior-1njchw-it-ops-5-backups-fn1109"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_backups_fn1901" {
  function_name = "arior-1njchw-it-ops-5-backups-fn1901"
  role          = aws_iam_role.gis_6_filings_svc3807.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_backups_fn2375" {
  function_name = "arior-1njchw-it-ops-5-backups-fn2375"
  role          = aws_iam_role.it_ops_17_public_data_svc1449.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn1181" {
  function_name = "arior-1njchw-it-ops-5-filings-fn1181"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn1389" {
  function_name = "arior-1njchw-it-ops-5-filings-fn1389"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn2118" {
  function_name = "arior-1njchw-it-ops-5-filings-fn2118"
  role          = aws_iam_role.public_safety_33_records_svc5798.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn2330" {
  function_name = "arior-1njchw-it-ops-5-filings-fn2330"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn610" {
  function_name = "arior-1njchw-it-ops-5-filings-fn610"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn616" {
  function_name = "arior-1njchw-it-ops-5-filings-fn616"
  role          = aws_iam_role.hr_25_gis_layers_svc2376.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_records_fn329" {
  function_name = "arior-1njchw-it-ops-5-records-fn329"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn1250" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn1250"
  role          = aws_iam_role.benefits_17_gis_layers_svc1451.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn150" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn150"
  role          = aws_iam_role.it_ops_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn1552" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn1552"
  role          = aws_iam_role.it_ops_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn1796" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn1796"
  role          = aws_iam_role.audit_public_data_svc7082.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn1833" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn1833"
  role          = aws_iam_role.it_ops_34_backups_svc2901.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn1940" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn1940"
  role          = aws_iam_role.it_ops_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn2423" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn2423"
  role          = aws_iam_role.it_ops_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn2485" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn2485"
  role          = aws_iam_role.tax_34_records_svc7473.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn438" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn438"
  role          = aws_iam_role.it_ops_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_public_data_fn460" {
  function_name = "arior-1njchw-it-ops-6-public-data-fn460"
  role          = aws_iam_role.records_9_filings_svc7169.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_7_gis_layers_fn1079" {
  function_name = "arior-1njchw-it-ops-7-gis-layers-fn1079"
  role          = aws_iam_role.it_ops_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_7_gis_layers_fn1466" {
  function_name = "arior-1njchw-it-ops-7-gis-layers-fn1466"
  role          = aws_iam_role.it_ops_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_7_gis_layers_fn1742" {
  function_name = "arior-1njchw-it-ops-7-gis-layers-fn1742"
  role          = aws_iam_role.audit_17_audit_svc5194.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_7_gis_layers_fn1905" {
  function_name = "arior-1njchw-it-ops-7-gis-layers-fn1905"
  role          = aws_iam_role.it_ops_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_7_gis_layers_fn213" {
  function_name = "arior-1njchw-it-ops-7-gis-layers-fn213"
  role          = aws_iam_role.licensing_15_gis_layers_svc5162.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_public_data_fn1168" {
  function_name = "arior-1njchw-it-ops-8-public-data-fn1168"
  role          = aws_iam_role.it_ops_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_public_data_fn699" {
  function_name = "arior-1njchw-it-ops-8-public-data-fn699"
  role          = aws_iam_role.gis_25_audit_svc6115.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_records_fn1077" {
  function_name = "arior-1njchw-it-ops-8-records-fn1077"
  role          = aws_iam_role.it_ops_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_records_fn167" {
  function_name = "arior-1njchw-it-ops-8-records-fn167"
  role          = aws_iam_role.it_ops_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_records_fn385" {
  function_name = "arior-1njchw-it-ops-8-records-fn385"
  role          = aws_iam_role.procurement_21_backups_svc7316.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_8_records_fn637" {
  function_name = "arior-1njchw-it-ops-8-records-fn637"
  role          = aws_iam_role.it_ops_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_9_filings_fn1553" {
  function_name = "arior-1njchw-it-ops-9-filings-fn1553"
  role          = aws_iam_role.it_ops_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_9_gis_layers_fn212" {
  function_name = "arior-1njchw-it-ops-9-gis-layers-fn212"
  role          = aws_iam_role.it_ops_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_9_gis_layers_fn2239" {
  function_name = "arior-1njchw-it-ops-9-gis-layers-fn2239"
  role          = aws_iam_role.it_ops_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_9_public_data_fn2342" {
  function_name = "arior-1njchw-it-ops-9-public-data-fn2342"
  role          = aws_iam_role.tax_28_records_svc7401.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_audit_fn2034" {
  function_name = "arior-1njchw-it-ops-audit-fn2034"
  role          = aws_iam_role.it_ops_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_audit_fn488" {
  function_name = "arior-1njchw-it-ops-audit-fn488"
  role          = aws_iam_role.it_ops_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_audit_fn882" {
  function_name = "arior-1njchw-it-ops-audit-fn882"
  role          = aws_iam_role.it_ops_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_filings_fn153" {
  function_name = "arior-1njchw-it-ops-filings-fn153"
  role          = aws_iam_role.it_ops_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_filings_fn2001" {
  function_name = "arior-1njchw-it-ops-filings-fn2001"
  role          = aws_iam_role.public_safety_7_gis_layers_svc910.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_filings_fn1254" {
  function_name = "arior-1njchw-licensing-10-filings-fn1254"
  role          = aws_iam_role.licensing_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_filings_fn1822" {
  function_name = "arior-1njchw-licensing-10-filings-fn1822"
  role          = aws_iam_role.records_29_backups_svc6577.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_filings_fn1918" {
  function_name = "arior-1njchw-licensing-10-filings-fn1918"
  role          = aws_iam_role.citizen_portal_33_records_svc3296.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_filings_fn651" {
  function_name = "arior-1njchw-licensing-10-filings-fn651"
  role          = aws_iam_role.citizen_portal_35_public_data_svc7480.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_public_data_fn1056" {
  function_name = "arior-1njchw-licensing-10-public-data-fn1056"
  role          = aws_iam_role.benefits_21_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_public_data_fn2322" {
  function_name = "arior-1njchw-licensing-10-public-data-fn2322"
  role          = aws_iam_role.records_20_records_svc3973.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_public_data_fn470" {
  function_name = "arior-1njchw-licensing-10-public-data-fn470"
  role          = aws_iam_role.procurement_25_backups_svc2788.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_10_public_data_fn685" {
  function_name = "arior-1njchw-licensing-10-public-data-fn685"
  role          = aws_iam_role.licensing_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_11_backups_fn1182" {
  function_name = "arior-1njchw-licensing-11-backups-fn1182"
  role          = aws_iam_role.licensing_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_11_gis_layers_fn1336" {
  function_name = "arior-1njchw-licensing-11-gis-layers-fn1336"
  role          = aws_iam_role.licensing_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_11_gis_layers_fn57" {
  function_name = "arior-1njchw-licensing-11-gis-layers-fn57"
  role          = aws_iam_role.licensing_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_12_filings_fn725" {
  function_name = "arior-1njchw-licensing-12-filings-fn725"
  role          = aws_iam_role.licensing_12_filings_svc966.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_13_audit_fn2148" {
  function_name = "arior-1njchw-licensing-13-audit-fn2148"
  role          = aws_iam_role.licensing_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_13_audit_fn964" {
  function_name = "arior-1njchw-licensing-13-audit-fn964"
  role          = aws_iam_role.hr_13_filings_svc3480.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_13_public_data_fn1420" {
  function_name = "arior-1njchw-licensing-13-public-data-fn1420"
  role          = aws_iam_role.licensing_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_13_public_data_fn1913" {
  function_name = "arior-1njchw-licensing-13-public-data-fn1913"
  role          = aws_iam_role.licensing_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_13_public_data_fn262" {
  function_name = "arior-1njchw-licensing-13-public-data-fn262"
  role          = aws_iam_role.licensing_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_14_records_fn1725" {
  function_name = "arior-1njchw-licensing-14-records-fn1725"
  role          = aws_iam_role.licensing_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn1185" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn1185"
  role          = aws_iam_role.licensing_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn1983" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn1983"
  role          = aws_iam_role.benefits_21_audit_svc1499.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn2171" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn2171"
  role          = aws_iam_role.gis_10_records_svc7599.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn2196" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn2196"
  role          = aws_iam_role.licensing_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn305" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn305"
  role          = aws_iam_role.licensing_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn459" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn459"
  role          = aws_iam_role.licensing_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_15_gis_layers_fn888" {
  function_name = "arior-1njchw-licensing-15-gis-layers-fn888"
  role          = aws_iam_role.gis_16_gis_layers_svc5175.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_backups_fn1011" {
  function_name = "arior-1njchw-licensing-16-backups-fn1011"
  role          = aws_iam_role.gis_13_gis_layers_svc1811.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_backups_fn2273" {
  function_name = "arior-1njchw-licensing-16-backups-fn2273"
  role          = aws_iam_role.licensing_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_backups_fn980" {
  function_name = "arior-1njchw-licensing-16-backups-fn980"
  role          = aws_iam_role.open_data_9_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_gis_layers_fn2286" {
  function_name = "arior-1njchw-licensing-16-gis-layers-fn2286"
  role          = aws_iam_role.tax_4_backups_svc4617.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_gis_layers_fn802" {
  function_name = "arior-1njchw-licensing-16-gis-layers-fn802"
  role          = aws_iam_role.licensing_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_16_gis_layers_fn953" {
  function_name = "arior-1njchw-licensing-16-gis-layers-fn953"
  role          = aws_iam_role.licensing_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_17_backups_fn261" {
  function_name = "arior-1njchw-licensing-17-backups-fn261"
  role          = aws_iam_role.benefits_23_public_data_svc6099.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_17_backups_fn493" {
  function_name = "arior-1njchw-licensing-17-backups-fn493"
  role          = aws_iam_role.audit_17_records_svc1450.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_17_backups_fn771" {
  function_name = "arior-1njchw-licensing-17-backups-fn771"
  role          = aws_iam_role.licensing_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_17_filings_fn1035" {
  function_name = "arior-1njchw-licensing-17-filings-fn1035"
  role          = aws_iam_role.open_data_19_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_17_filings_fn717" {
  function_name = "arior-1njchw-licensing-17-filings-fn717"
  role          = aws_iam_role.public_safety_26_filings_svc2802.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_filings_fn1117" {
  function_name = "arior-1njchw-licensing-18-filings-fn1117"
  role          = aws_iam_role.licensing_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_filings_fn1203" {
  function_name = "arior-1njchw-licensing-18-filings-fn1203"
  role          = aws_iam_role.licensing_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_filings_fn1501" {
  function_name = "arior-1njchw-licensing-18-filings-fn1501"
  role          = aws_iam_role.licensing_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_filings_fn812" {
  function_name = "arior-1njchw-licensing-18-filings-fn812"
  role          = aws_iam_role.hr_34_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_filings_fn909" {
  function_name = "arior-1njchw-licensing-18-filings-fn909"
  role          = aws_iam_role.licensing_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_18_gis_layers_fn2411" {
  function_name = "arior-1njchw-licensing-18-gis-layers-fn2411"
  role          = aws_iam_role.licensing_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_19_backups_fn1755" {
  function_name = "arior-1njchw-licensing-19-backups-fn1755"
  role          = aws_iam_role.it_ops_29_filings_svc3673.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_19_backups_fn976" {
  function_name = "arior-1njchw-licensing-19-backups-fn976"
  role          = aws_iam_role.licensing_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_19_records_fn1785" {
  function_name = "arior-1njchw-licensing-19-records-fn1785"
  role          = aws_iam_role.gis_18_backups_svc1871.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_19_records_fn2462" {
  function_name = "arior-1njchw-licensing-19-records-fn2462"
  role          = aws_iam_role.records_24_audit_svc7765.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_2_records_fn13" {
  function_name = "arior-1njchw-licensing-2-records-fn13"
  role          = aws_iam_role.licensing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_2_records_fn2261" {
  function_name = "arior-1njchw-licensing-2-records-fn2261"
  role          = aws_iam_role.public_safety_5_public_data_svc5462.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_20_gis_layers_fn1605" {
  function_name = "arior-1njchw-licensing-20-gis-layers-fn1605"
  role          = aws_iam_role.licensing_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_20_gis_layers_fn1708" {
  function_name = "arior-1njchw-licensing-20-gis-layers-fn1708"
  role          = aws_iam_role.benefits_audit_svc1675.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_20_gis_layers_fn290" {
  function_name = "arior-1njchw-licensing-20-gis-layers-fn290"
  role          = aws_iam_role.licensing_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_20_gis_layers_fn604" {
  function_name = "arior-1njchw-licensing-20-gis-layers-fn604"
  role          = aws_iam_role.audit_14_records_svc3494.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_20_gis_layers_fn636" {
  function_name = "arior-1njchw-licensing-20-gis-layers-fn636"
  role          = aws_iam_role.licensing_6_backups_svc5054.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn1085" {
  function_name = "arior-1njchw-licensing-21-filings-fn1085"
  role          = aws_iam_role.gis_33_backups_svc4547.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn1663" {
  function_name = "arior-1njchw-licensing-21-filings-fn1663"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn176" {
  function_name = "arior-1njchw-licensing-21-filings-fn176"
  role          = aws_iam_role.it_ops_32_public_data_svc4125.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn1892" {
  function_name = "arior-1njchw-licensing-21-filings-fn1892"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn2307" {
  function_name = "arior-1njchw-licensing-21-filings-fn2307"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_filings_fn272" {
  function_name = "arior-1njchw-licensing-21-filings-fn272"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_gis_layers_fn2354" {
  function_name = "arior-1njchw-licensing-21-gis-layers-fn2354"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_gis_layers_fn2425" {
  function_name = "arior-1njchw-licensing-21-gis-layers-fn2425"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_21_gis_layers_fn655" {
  function_name = "arior-1njchw-licensing-21-gis-layers-fn655"
  role          = aws_iam_role.licensing_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_22_filings_fn1383" {
  function_name = "arior-1njchw-licensing-22-filings-fn1383"
  role          = aws_iam_role.licensing_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_22_filings_fn2183" {
  function_name = "arior-1njchw-licensing-22-filings-fn2183"
  role          = aws_iam_role.licensing_11_gis_layers_svc4698.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_22_filings_fn284" {
  function_name = "arior-1njchw-licensing-22-filings-fn284"
  role          = aws_iam_role.licensing_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_22_filings_fn454" {
  function_name = "arior-1njchw-licensing-22-filings-fn454"
  role          = aws_iam_role.licensing_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_22_filings_fn468" {
  function_name = "arior-1njchw-licensing-22-filings-fn468"
  role          = aws_iam_role.licensing_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_23_records_fn1463" {
  function_name = "arior-1njchw-licensing-23-records-fn1463"
  role          = aws_iam_role.licensing_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_23_records_fn179" {
  function_name = "arior-1njchw-licensing-23-records-fn179"
  role          = aws_iam_role.licensing_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_23_records_fn1962" {
  function_name = "arior-1njchw-licensing-23-records-fn1962"
  role          = aws_iam_role.records_12_audit_svc3877.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_23_records_fn2010" {
  function_name = "arior-1njchw-licensing-23-records-fn2010"
  role          = aws_iam_role.licensing_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_23_records_fn860" {
  function_name = "arior-1njchw-licensing-23-records-fn860"
  role          = aws_iam_role.licensing_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_24_backups_fn1281" {
  function_name = "arior-1njchw-licensing-24-backups-fn1281"
  role          = aws_iam_role.licensing_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_24_backups_fn1653" {
  function_name = "arior-1njchw-licensing-24-backups-fn1653"
  role          = aws_iam_role.gis_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_24_filings_fn1537" {
  function_name = "arior-1njchw-licensing-24-filings-fn1537"
  role          = aws_iam_role.licensing_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_24_filings_fn1574" {
  function_name = "arior-1njchw-licensing-24-filings-fn1574"
  role          = aws_iam_role.gis_10_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_backups_fn1033" {
  function_name = "arior-1njchw-licensing-25-backups-fn1033"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_backups_fn1863" {
  function_name = "arior-1njchw-licensing-25-backups-fn1863"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_backups_fn1960" {
  function_name = "arior-1njchw-licensing-25-backups-fn1960"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_backups_fn697" {
  function_name = "arior-1njchw-licensing-25-backups-fn697"
  role          = aws_iam_role.open_data_11_audit_svc2207.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_filings_fn676" {
  function_name = "arior-1njchw-licensing-25-filings-fn676"
  role          = aws_iam_role.tax_28_public_data_svc7817.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_public_data_fn1513" {
  function_name = "arior-1njchw-licensing-25-public-data-fn1513"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_public_data_fn2129" {
  function_name = "arior-1njchw-licensing-25-public-data-fn2129"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_25_public_data_fn924" {
  function_name = "arior-1njchw-licensing-25-public-data-fn924"
  role          = aws_iam_role.licensing_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1161" {
  function_name = "arior-1njchw-licensing-26-filings-fn1161"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1357" {
  function_name = "arior-1njchw-licensing-26-filings-fn1357"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1472" {
  function_name = "arior-1njchw-licensing-26-filings-fn1472"
  role          = aws_iam_role.audit_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1894" {
  function_name = "arior-1njchw-licensing-26-filings-fn1894"
  role          = aws_iam_role.procurement_25_public_data_svc6948.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1946" {
  function_name = "arior-1njchw-licensing-26-filings-fn1946"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1955" {
  function_name = "arior-1njchw-licensing-26-filings-fn1955"
  role          = aws_iam_role.hr_34_public_data_svc7892.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn1978" {
  function_name = "arior-1njchw-licensing-26-filings-fn1978"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn2006" {
  function_name = "arior-1njchw-licensing-26-filings-fn2006"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn267" {
  function_name = "arior-1njchw-licensing-26-filings-fn267"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_26_filings_fn603" {
  function_name = "arior-1njchw-licensing-26-filings-fn603"
  role          = aws_iam_role.licensing_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_backups_fn1167" {
  function_name = "arior-1njchw-licensing-27-backups-fn1167"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_backups_fn1891" {
  function_name = "arior-1njchw-licensing-27-backups-fn1891"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_backups_fn1941" {
  function_name = "arior-1njchw-licensing-27-backups-fn1941"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_backups_fn2482" {
  function_name = "arior-1njchw-licensing-27-backups-fn2482"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_gis_layers_fn1426" {
  function_name = "arior-1njchw-licensing-27-gis-layers-fn1426"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_gis_layers_fn2458" {
  function_name = "arior-1njchw-licensing-27-gis-layers-fn2458"
  role          = aws_iam_role.licensing_26_filings_svc2382.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_gis_layers_fn987" {
  function_name = "arior-1njchw-licensing-27-gis-layers-fn987"
  role          = aws_iam_role.licensing_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_records_fn1811" {
  function_name = "arior-1njchw-licensing-27-records-fn1811"
  role          = aws_iam_role.gis_35_backups_svc7483.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_27_records_fn511" {
  function_name = "arior-1njchw-licensing-27-records-fn511"
  role          = aws_iam_role.audit_34_audit_svc7062.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn1075" {
  function_name = "arior-1njchw-licensing-28-records-fn1075"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn1295" {
  function_name = "arior-1njchw-licensing-28-records-fn1295"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn1343" {
  function_name = "arior-1njchw-licensing-28-records-fn1343"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn1632" {
  function_name = "arior-1njchw-licensing-28-records-fn1632"
  role          = aws_iam_role.procurement_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn1710" {
  function_name = "arior-1njchw-licensing-28-records-fn1710"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn173" {
  function_name = "arior-1njchw-licensing-28-records-fn173"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_28_records_fn522" {
  function_name = "arior-1njchw-licensing-28-records-fn522"
  role          = aws_iam_role.licensing_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_audit_fn316" {
  function_name = "arior-1njchw-licensing-29-audit-fn316"
  role          = aws_iam_role.licensing_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_audit_fn930" {
  function_name = "arior-1njchw-licensing-29-audit-fn930"
  role          = aws_iam_role.licensing_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_filings_fn514" {
  function_name = "arior-1njchw-licensing-29-filings-fn514"
  role          = aws_iam_role.benefits_14_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_filings_fn674" {
  function_name = "arior-1njchw-licensing-29-filings-fn674"
  role          = aws_iam_role.licensing_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_public_data_fn1448" {
  function_name = "arior-1njchw-licensing-29-public-data-fn1448"
  role          = aws_iam_role.licensing_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_29_public_data_fn1904" {
  function_name = "arior-1njchw-licensing-29-public-data-fn1904"
  role          = aws_iam_role.licensing_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_3_filings_fn1806" {
  function_name = "arior-1njchw-licensing-3-filings-fn1806"
  role          = aws_iam_role.licensing_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_3_filings_fn580" {
  function_name = "arior-1njchw-licensing-3-filings-fn580"
  role          = aws_iam_role.hr_25_gis_layers_svc1128.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_3_gis_layers_fn166" {
  function_name = "arior-1njchw-licensing-3-gis-layers-fn166"
  role          = aws_iam_role.licensing_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn1599" {
  function_name = "arior-1njchw-licensing-30-backups-fn1599"
  role          = aws_iam_role.licensing_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn1770" {
  function_name = "arior-1njchw-licensing-30-backups-fn1770"
  role          = aws_iam_role.licensing_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn1776" {
  function_name = "arior-1njchw-licensing-30-backups-fn1776"
  role          = aws_iam_role.licensing_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn2199" {
  function_name = "arior-1njchw-licensing-30-backups-fn2199"
  role          = aws_iam_role.licensing_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn399" {
  function_name = "arior-1njchw-licensing-30-backups-fn399"
  role          = aws_iam_role.benefits_21_audit_svc1499.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_30_backups_fn705" {
  function_name = "arior-1njchw-licensing-30-backups-fn705"
  role          = aws_iam_role.licensing_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_backups_fn645" {
  function_name = "arior-1njchw-licensing-31-backups-fn645"
  role          = aws_iam_role.licensing_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_backups_fn775" {
  function_name = "arior-1njchw-licensing-31-backups-fn775"
  role          = aws_iam_role.tax_29_audit_svc3253.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_filings_fn1112" {
  function_name = "arior-1njchw-licensing-31-filings-fn1112"
  role          = aws_iam_role.licensing_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_filings_fn1864" {
  function_name = "arior-1njchw-licensing-31-filings-fn1864"
  role          = aws_iam_role.audit_24_filings_svc3614.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_filings_fn1938" {
  function_name = "arior-1njchw-licensing-31-filings-fn1938"
  role          = aws_iam_role.licensing_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_31_filings_fn2380" {
  function_name = "arior-1njchw-licensing-31-filings-fn2380"
  role          = aws_iam_role.licensing_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn1541" {
  function_name = "arior-1njchw-licensing-32-public-data-fn1541"
  role          = aws_iam_role.licensing_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn2164" {
  function_name = "arior-1njchw-licensing-32-public-data-fn2164"
  role          = aws_iam_role.benefits_33_public_data_svc3307.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn2277" {
  function_name = "arior-1njchw-licensing-32-public-data-fn2277"
  role          = aws_iam_role.licensing_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn367" {
  function_name = "arior-1njchw-licensing-32-public-data-fn367"
  role          = aws_iam_role.licensing_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn476" {
  function_name = "arior-1njchw-licensing-32-public-data-fn476"
  role          = aws_iam_role.licensing_23_records_svc7338.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_32_public_data_fn696" {
  function_name = "arior-1njchw-licensing-32-public-data-fn696"
  role          = aws_iam_role.licensing_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn1023" {
  function_name = "arior-1njchw-licensing-33-audit-fn1023"
  role          = aws_iam_role.licensing_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn1473" {
  function_name = "arior-1njchw-licensing-33-audit-fn1473"
  role          = aws_iam_role.licensing_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn2335" {
  function_name = "arior-1njchw-licensing-33-audit-fn2335"
  role          = aws_iam_role.benefits_29_public_data_svc7003.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn294" {
  function_name = "arior-1njchw-licensing-33-audit-fn294"
  role          = aws_iam_role.open_data_22_records_svc5251.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn457" {
  function_name = "arior-1njchw-licensing-33-audit-fn457"
  role          = aws_iam_role.public_safety_20_filings_svc2314.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_33_audit_fn509" {
  function_name = "arior-1njchw-licensing-33-audit-fn509"
  role          = aws_iam_role.tax_23_public_data_svc4429.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_audit_fn1861" {
  function_name = "arior-1njchw-licensing-34-audit-fn1861"
  role          = aws_iam_role.tax_28_records_svc6569.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_audit_fn2197" {
  function_name = "arior-1njchw-licensing-34-audit-fn2197"
  role          = aws_iam_role.licensing_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_audit_fn2382" {
  function_name = "arior-1njchw-licensing-34-audit-fn2382"
  role          = aws_iam_role.audit_10_records_svc4278.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_audit_fn42" {
  function_name = "arior-1njchw-licensing-34-audit-fn42"
  role          = aws_iam_role.records_32_public_data_svc2453.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_audit_fn875" {
  function_name = "arior-1njchw-licensing-34-audit-fn875"
  role          = aws_iam_role.licensing_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_public_data_fn1292" {
  function_name = "arior-1njchw-licensing-34-public-data-fn1292"
  role          = aws_iam_role.licensing_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_public_data_fn1611" {
  function_name = "arior-1njchw-licensing-34-public-data-fn1611"
  role          = aws_iam_role.licensing_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_34_public_data_fn968" {
  function_name = "arior-1njchw-licensing-34-public-data-fn968"
  role          = aws_iam_role.licensing_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_backups_fn2439" {
  function_name = "arior-1njchw-licensing-35-backups-fn2439"
  role          = aws_iam_role.public_safety_20_filings_svc3146.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_backups_fn274" {
  function_name = "arior-1njchw-licensing-35-backups-fn274"
  role          = aws_iam_role.licensing_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_filings_fn1006" {
  function_name = "arior-1njchw-licensing-35-filings-fn1006"
  role          = aws_iam_role.it_ops_20_filings_svc5645.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_filings_fn1515" {
  function_name = "arior-1njchw-licensing-35-filings-fn1515"
  role          = aws_iam_role.open_data_22_records_svc675.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_public_data_fn144" {
  function_name = "arior-1njchw-licensing-35-public-data-fn144"
  role          = aws_iam_role.records_21_gis_layers_svc1489.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_35_public_data_fn925" {
  function_name = "arior-1njchw-licensing-35-public-data-fn925"
  role          = aws_iam_role.licensing_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn1844" {
  function_name = "arior-1njchw-licensing-4-audit-fn1844"
  role          = aws_iam_role.hr_30_filings_svc6180.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn2268" {
  function_name = "arior-1njchw-licensing-4-audit-fn2268"
  role          = aws_iam_role.citizen_portal_33_records_svc3296.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn238" {
  function_name = "arior-1njchw-licensing-4-audit-fn238"
  role          = aws_iam_role.licensing_16_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn641" {
  function_name = "arior-1njchw-licensing-4-audit-fn641"
  role          = aws_iam_role.licensing_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn658" {
  function_name = "arior-1njchw-licensing-4-audit-fn658"
  role          = aws_iam_role.licensing_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn781" {
  function_name = "arior-1njchw-licensing-4-audit-fn781"
  role          = aws_iam_role.licensing_14_audit_svc990.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_backups_fn1209" {
  function_name = "arior-1njchw-licensing-5-backups-fn1209"
  role          = aws_iam_role.licensing_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_backups_fn1242" {
  function_name = "arior-1njchw-licensing-5-backups-fn1242"
  role          = aws_iam_role.licensing_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_backups_fn160" {
  function_name = "arior-1njchw-licensing-5-backups-fn160"
  role          = aws_iam_role.tax_22_gis_layers_svc7329.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_backups_fn1637" {
  function_name = "arior-1njchw-licensing-5-backups-fn1637"
  role          = aws_iam_role.licensing_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_backups_fn349" {
  function_name = "arior-1njchw-licensing-5-backups-fn349"
  role          = aws_iam_role.licensing_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_6_audit_fn1691" {
  function_name = "arior-1njchw-licensing-6-audit-fn1691"
  role          = aws_iam_role.it_ops_28_filings_svc7405.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_6_audit_fn338" {
  function_name = "arior-1njchw-licensing-6-audit-fn338"
  role          = aws_iam_role.licensing_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_6_backups_fn1874" {
  function_name = "arior-1njchw-licensing-6-backups-fn1874"
  role          = aws_iam_role.licensing_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_6_backups_fn2249" {
  function_name = "arior-1njchw-licensing-6-backups-fn2249"
  role          = aws_iam_role.tax_22_records_svc6913.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_audit_fn1225" {
  function_name = "arior-1njchw-licensing-7-audit-fn1225"
  role          = aws_iam_role.licensing_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_audit_fn1952" {
  function_name = "arior-1njchw-licensing-7-audit-fn1952"
  role          = aws_iam_role.it_ops_14_backups_svc5157.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_records_fn2025" {
  function_name = "arior-1njchw-licensing-7-records-fn2025"
  role          = aws_iam_role.licensing_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn1058" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn1058"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn162" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn162"
  role          = aws_iam_role.gis_14_records_svc2655.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn2056" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn2056"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn347" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn347"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn586" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn586"
  role          = aws_iam_role.procurement_public_data_svc2500.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_gis_layers_fn728" {
  function_name = "arior-1njchw-licensing-8-gis-layers-fn728"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn1364" {
  function_name = "arior-1njchw-licensing-8-public-data-fn1364"
  role          = aws_iam_role.gis_2_gis_layers_svc6255.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn1483" {
  function_name = "arior-1njchw-licensing-8-public-data-fn1483"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn1556" {
  function_name = "arior-1njchw-licensing-8-public-data-fn1556"
  role          = aws_iam_role.licensing_13_public_data_svc3890.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn1731" {
  function_name = "arior-1njchw-licensing-8-public-data-fn1731"
  role          = aws_iam_role.licensing_20_backups_svc3558.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn1906" {
  function_name = "arior-1njchw-licensing-8-public-data-fn1906"
  role          = aws_iam_role.audit_public_data_svc4586.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn2077" {
  function_name = "arior-1njchw-licensing-8-public-data-fn2077"
  role          = aws_iam_role.licensing_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_8_public_data_fn747" {
  function_name = "arior-1njchw-licensing-8-public-data-fn747"
  role          = aws_iam_role.open_data_21_backups_svc6903.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_audit_fn1880" {
  function_name = "arior-1njchw-licensing-9-audit-fn1880"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_audit_fn25" {
  function_name = "arior-1njchw-licensing-9-audit-fn25"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_backups_fn1907" {
  function_name = "arior-1njchw-licensing-9-backups-fn1907"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_backups_fn540" {
  function_name = "arior-1njchw-licensing-9-backups-fn540"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_backups_fn647" {
  function_name = "arior-1njchw-licensing-9-backups-fn647"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_gis_layers_fn172" {
  function_name = "arior-1njchw-licensing-9-gis-layers-fn172"
  role          = aws_iam_role.licensing_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_9_gis_layers_fn2289" {
  function_name = "arior-1njchw-licensing-9-gis-layers-fn2289"
  role          = aws_iam_role.it_ops_20_records_svc5229.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_audit_fn1970" {
  function_name = "arior-1njchw-licensing-audit-fn1970"
  role          = aws_iam_role.tax_31_filings_svc4941.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_audit_fn568" {
  function_name = "arior-1njchw-licensing-audit-fn568"
  role          = aws_iam_role.hr_33_audit_svc2888.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_audit_fn834" {
  function_name = "arior-1njchw-licensing-audit-fn834"
  role          = aws_iam_role.licensing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_audit_fn863" {
  function_name = "arior-1njchw-licensing-audit-fn863"
  role          = aws_iam_role.audit_33_audit_svc2058.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_gis_layers_fn358" {
  function_name = "arior-1njchw-licensing-gis-layers-fn358"
  role          = aws_iam_role.audit_31_gis_layers_svc2450.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_gis_layers_fn916" {
  function_name = "arior-1njchw-licensing-gis-layers-fn916"
  role          = aws_iam_role.licensing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn1080" {
  function_name = "arior-1njchw-open-data-10-backups-fn1080"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn1711" {
  function_name = "arior-1njchw-open-data-10-backups-fn1711"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn2133" {
  function_name = "arior-1njchw-open-data-10-backups-fn2133"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn2231" {
  function_name = "arior-1njchw-open-data-10-backups-fn2231"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn2303" {
  function_name = "arior-1njchw-open-data-10-backups-fn2303"
  role          = aws_iam_role.procurement_31_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn624" {
  function_name = "arior-1njchw-open-data-10-backups-fn624"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn703" {
  function_name = "arior-1njchw-open-data-10-backups-fn703"
  role          = aws_iam_role.hr_28_records_svc6156.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_10_backups_fn848" {
  function_name = "arior-1njchw-open-data-10-backups-fn848"
  role          = aws_iam_role.open_data_19_backups_svc6463.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_11_audit_fn2232" {
  function_name = "arior-1njchw-open-data-11-audit-fn2232"
  role          = aws_iam_role.open_data_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_11_audit_fn299" {
  function_name = "arior-1njchw-open-data-11-audit-fn299"
  role          = aws_iam_role.licensing_17_filings_svc3938.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_11_audit_fn843" {
  function_name = "arior-1njchw-open-data-11-audit-fn843"
  role          = aws_iam_role.open_data_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_11_gis_layers_fn2484" {
  function_name = "arior-1njchw-open-data-11-gis-layers-fn2484"
  role          = aws_iam_role.public_safety_5_backups_svc886.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_public_data_fn1331" {
  function_name = "arior-1njchw-open-data-12-public-data-fn1331"
  role          = aws_iam_role.open_data_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_public_data_fn1714" {
  function_name = "arior-1njchw-open-data-12-public-data-fn1714"
  role          = aws_iam_role.open_data_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_public_data_fn1838" {
  function_name = "arior-1njchw-open-data-12-public-data-fn1838"
  role          = aws_iam_role.audit_31_public_data_svc6194.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_public_data_fn2060" {
  function_name = "arior-1njchw-open-data-12-public-data-fn2060"
  role          = aws_iam_role.open_data_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_public_data_fn2434" {
  function_name = "arior-1njchw-open-data-12-public-data-fn2434"
  role          = aws_iam_role.public_safety_9_public_data_svc5094.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_records_fn2150" {
  function_name = "arior-1njchw-open-data-12-records-fn2150"
  role          = aws_iam_role.open_data_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_12_records_fn872" {
  function_name = "arior-1njchw-open-data-12-records-fn872"
  role          = aws_iam_role.open_data_29_records_svc3671.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_13_audit_fn1915" {
  function_name = "arior-1njchw-open-data-13-audit-fn1915"
  role          = aws_iam_role.open_data_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_13_records_fn2320" {
  function_name = "arior-1njchw-open-data-13-records-fn2320"
  role          = aws_iam_role.gis_11_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_14_audit_fn1039" {
  function_name = "arior-1njchw-open-data-14-audit-fn1039"
  role          = aws_iam_role.citizen_portal_10_public_data_svc7180.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_14_audit_fn1536" {
  function_name = "arior-1njchw-open-data-14-audit-fn1536"
  role          = aws_iam_role.open_data_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_14_audit_fn1567" {
  function_name = "arior-1njchw-open-data-14-audit-fn1567"
  role          = aws_iam_role.open_data_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_14_audit_fn2124" {
  function_name = "arior-1njchw-open-data-14-audit-fn2124"
  role          = aws_iam_role.licensing_8_gis_layers_svc4246.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_14_audit_fn940" {
  function_name = "arior-1njchw-open-data-14-audit-fn940"
  role          = aws_iam_role.open_data_20_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_audit_fn1061" {
  function_name = "arior-1njchw-open-data-15-audit-fn1061"
  role          = aws_iam_role.open_data_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_audit_fn1621" {
  function_name = "arior-1njchw-open-data-15-audit-fn1621"
  role          = aws_iam_role.records_34_audit_svc6637.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_gis_layers_fn1260" {
  function_name = "arior-1njchw-open-data-15-gis-layers-fn1260"
  role          = aws_iam_role.open_data_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_gis_layers_fn1830" {
  function_name = "arior-1njchw-open-data-15-gis-layers-fn1830"
  role          = aws_iam_role.audit_33_audit_svc7050.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_records_fn1401" {
  function_name = "arior-1njchw-open-data-15-records-fn1401"
  role          = aws_iam_role.hr_12_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_15_records_fn530" {
  function_name = "arior-1njchw-open-data-15-records-fn530"
  role          = aws_iam_role.records_10_audit_svc4685.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn1021" {
  function_name = "arior-1njchw-open-data-16-records-fn1021"
  role          = aws_iam_role.open_data_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn1192" {
  function_name = "arior-1njchw-open-data-16-records-fn1192"
  role          = aws_iam_role.open_data_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn1407" {
  function_name = "arior-1njchw-open-data-16-records-fn1407"
  role          = aws_iam_role.open_data_27_records_svc3647.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn1601" {
  function_name = "arior-1njchw-open-data-16-records-fn1601"
  role          = aws_iam_role.records_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn1948" {
  function_name = "arior-1njchw-open-data-16-records-fn1948"
  role          = aws_iam_role.open_data_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn606" {
  function_name = "arior-1njchw-open-data-16-records-fn606"
  role          = aws_iam_role.open_data_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_16_records_fn938" {
  function_name = "arior-1njchw-open-data-16-records-fn938"
  role          = aws_iam_role.open_data_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_gis_layers_fn1229" {
  function_name = "arior-1njchw-open-data-17-gis-layers-fn1229"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_gis_layers_fn513" {
  function_name = "arior-1njchw-open-data-17-gis-layers-fn513"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_gis_layers_fn557" {
  function_name = "arior-1njchw-open-data-17-gis-layers-fn557"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_public_data_fn1908" {
  function_name = "arior-1njchw-open-data-17-public-data-fn1908"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_public_data_fn2338" {
  function_name = "arior-1njchw-open-data-17-public-data-fn2338"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_17_records_fn669" {
  function_name = "arior-1njchw-open-data-17-records-fn669"
  role          = aws_iam_role.open_data_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_backups_fn276" {
  function_name = "arior-1njchw-open-data-18-backups-fn276"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_backups_fn690" {
  function_name = "arior-1njchw-open-data-18-backups-fn690"
  role          = aws_iam_role.open_data_5_filings_svc2967.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_gis_layers_fn1520" {
  function_name = "arior-1njchw-open-data-18-gis-layers-fn1520"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_gis_layers_fn2424" {
  function_name = "arior-1njchw-open-data-18-gis-layers-fn2424"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_gis_layers_fn265" {
  function_name = "arior-1njchw-open-data-18-gis-layers-fn265"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_gis_layers_fn577" {
  function_name = "arior-1njchw-open-data-18-gis-layers-fn577"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_records_fn1945" {
  function_name = "arior-1njchw-open-data-18-records-fn1945"
  role          = aws_iam_role.open_data_31_records_svc5359.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_18_records_fn743" {
  function_name = "arior-1njchw-open-data-18-records-fn743"
  role          = aws_iam_role.open_data_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_19_backups_fn1490" {
  function_name = "arior-1njchw-open-data-19-backups-fn1490"
  role          = aws_iam_role.open_data_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_19_backups_fn801" {
  function_name = "arior-1njchw-open-data-19-backups-fn801"
  role          = aws_iam_role.audit_33_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_19_filings_fn1356" {
  function_name = "arior-1njchw-open-data-19-filings-fn1356"
  role          = aws_iam_role.open_data_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_19_filings_fn356" {
  function_name = "arior-1njchw-open-data-19-filings-fn356"
  role          = aws_iam_role.records_21_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_19_public_data_fn2113" {
  function_name = "arior-1njchw-open-data-19-public-data-fn2113"
  role          = aws_iam_role.open_data_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_gis_layers_fn1704" {
  function_name = "arior-1njchw-open-data-2-gis-layers-fn1704"
  role          = aws_iam_role.open_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_gis_layers_fn432" {
  function_name = "arior-1njchw-open-data-2-gis-layers-fn432"
  role          = aws_iam_role.open_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_gis_layers_fn563" {
  function_name = "arior-1njchw-open-data-2-gis-layers-fn563"
  role          = aws_iam_role.open_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_20_backups_fn47" {
  function_name = "arior-1njchw-open-data-20-backups-fn47"
  role          = aws_iam_role.open_data_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_20_records_fn1481" {
  function_name = "arior-1njchw-open-data-20-records-fn1481"
  role          = aws_iam_role.open_data_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_20_records_fn2048" {
  function_name = "arior-1njchw-open-data-20-records-fn2048"
  role          = aws_iam_role.citizen_portal_5_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_20_records_fn346" {
  function_name = "arior-1njchw-open-data-20-records-fn346"
  role          = aws_iam_role.hr_19_public_data_svc2304.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_backups_fn1190" {
  function_name = "arior-1njchw-open-data-21-backups-fn1190"
  role          = aws_iam_role.open_data_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_backups_fn1487" {
  function_name = "arior-1njchw-open-data-21-backups-fn1487"
  role          = aws_iam_role.hr_31_public_data_svc1616.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_backups_fn2068" {
  function_name = "arior-1njchw-open-data-21-backups-fn2068"
  role          = aws_iam_role.it_ops_3_filings_svc6273.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_backups_fn797" {
  function_name = "arior-1njchw-open-data-21-backups-fn797"
  role          = aws_iam_role.procurement_24_filings_svc1112.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_backups_fn815" {
  function_name = "arior-1njchw-open-data-21-backups-fn815"
  role          = aws_iam_role.open_data_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_public_data_fn1546" {
  function_name = "arior-1njchw-open-data-21-public-data-fn1546"
  role          = aws_iam_role.tax_7_gis_layers_svc7149.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_public_data_fn2234" {
  function_name = "arior-1njchw-open-data-21-public-data-fn2234"
  role          = aws_iam_role.open_data_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_public_data_fn2351" {
  function_name = "arior-1njchw-open-data-21-public-data-fn2351"
  role          = aws_iam_role.open_data_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_records_fn1613" {
  function_name = "arior-1njchw-open-data-21-records-fn1613"
  role          = aws_iam_role.open_data_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_21_records_fn2288" {
  function_name = "arior-1njchw-open-data-21-records-fn2288"
  role          = aws_iam_role.open_data_14_audit_svc6403.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1045" {
  function_name = "arior-1njchw-open-data-22-records-fn1045"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1050" {
  function_name = "arior-1njchw-open-data-22-records-fn1050"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1072" {
  function_name = "arior-1njchw-open-data-22-records-fn1072"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1297" {
  function_name = "arior-1njchw-open-data-22-records-fn1297"
  role          = aws_iam_role.open_data_12_public_data_svc2219.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1651" {
  function_name = "arior-1njchw-open-data-22-records-fn1651"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1654" {
  function_name = "arior-1njchw-open-data-22-records-fn1654"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1679" {
  function_name = "arior-1njchw-open-data-22-records-fn1679"
  role          = aws_iam_role.gis_21_gis_layers_svc7315.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1816" {
  function_name = "arior-1njchw-open-data-22-records-fn1816"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn1910" {
  function_name = "arior-1njchw-open-data-22-records-fn1910"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn564" {
  function_name = "arior-1njchw-open-data-22-records-fn564"
  role          = aws_iam_role.benefits_30_audit_svc2439.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn748" {
  function_name = "arior-1njchw-open-data-22-records-fn748"
  role          = aws_iam_role.hr_filings_svc424.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_22_records_fn861" {
  function_name = "arior-1njchw-open-data-22-records-fn861"
  role          = aws_iam_role.open_data_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_audit_fn1870" {
  function_name = "arior-1njchw-open-data-23-audit-fn1870"
  role          = aws_iam_role.records_9_filings_svc3009.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_audit_fn805" {
  function_name = "arior-1njchw-open-data-23-audit-fn805"
  role          = aws_iam_role.open_data_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_audit_fn849" {
  function_name = "arior-1njchw-open-data-23-audit-fn849"
  role          = aws_iam_role.public_safety_23_backups_svc2766.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_audit_fn851" {
  function_name = "arior-1njchw-open-data-23-audit-fn851"
  role          = aws_iam_role.open_data_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_records_fn1238" {
  function_name = "arior-1njchw-open-data-23-records-fn1238"
  role          = aws_iam_role.records_34_public_data_svc5805.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_23_records_fn446" {
  function_name = "arior-1njchw-open-data-23-records-fn446"
  role          = aws_iam_role.open_data_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_backups_fn1454" {
  function_name = "arior-1njchw-open-data-24-backups-fn1454"
  role          = aws_iam_role.open_data_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_filings_fn1316" {
  function_name = "arior-1njchw-open-data-24-filings-fn1316"
  role          = aws_iam_role.benefits_12_gis_layers_svc7215.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_public_data_fn27" {
  function_name = "arior-1njchw-open-data-24-public-data-fn27"
  role          = aws_iam_role.open_data_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_public_data_fn314" {
  function_name = "arior-1njchw-open-data-24-public-data-fn314"
  role          = aws_iam_role.open_data_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_public_data_fn35" {
  function_name = "arior-1njchw-open-data-24-public-data-fn35"
  role          = aws_iam_role.open_data_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_24_public_data_fn553" {
  function_name = "arior-1njchw-open-data-24-public-data-fn553"
  role          = aws_iam_role.it_ops_24_gis_layers_svc2781.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_25_filings_fn165" {
  function_name = "arior-1njchw-open-data-25-filings-fn165"
  role          = aws_iam_role.it_ops_9_public_data_svc5929.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_25_records_fn1765" {
  function_name = "arior-1njchw-open-data-25-records-fn1765"
  role          = aws_iam_role.open_data_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_25_records_fn2079" {
  function_name = "arior-1njchw-open-data-25-records-fn2079"
  role          = aws_iam_role.open_data_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_25_records_fn2095" {
  function_name = "arior-1njchw-open-data-25-records-fn2095"
  role          = aws_iam_role.hr_3_public_data_svc4192.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_26_backups_fn1695" {
  function_name = "arior-1njchw-open-data-26-backups-fn1695"
  role          = aws_iam_role.open_data_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_26_public_data_fn1919" {
  function_name = "arior-1njchw-open-data-26-public-data-fn1919"
  role          = aws_iam_role.gis_30_gis_layers_svc4095.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_27_records_fn1347" {
  function_name = "arior-1njchw-open-data-27-records-fn1347"
  role          = aws_iam_role.open_data_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_27_records_fn137" {
  function_name = "arior-1njchw-open-data-27-records-fn137"
  role          = aws_iam_role.citizen_portal_7_backups_svc5480.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_27_records_fn1872" {
  function_name = "arior-1njchw-open-data-27-records-fn1872"
  role          = aws_iam_role.open_data_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_27_records_fn2135" {
  function_name = "arior-1njchw-open-data-27-records-fn2135"
  role          = aws_iam_role.open_data_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_backups_fn1676" {
  function_name = "arior-1njchw-open-data-28-backups-fn1676"
  role          = aws_iam_role.open_data_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_backups_fn1753" {
  function_name = "arior-1njchw-open-data-28-backups-fn1753"
  role          = aws_iam_role.citizen_portal_3_audit_svc6264.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_backups_fn598" {
  function_name = "arior-1njchw-open-data-28-backups-fn598"
  role          = aws_iam_role.audit_34_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_backups_fn750" {
  function_name = "arior-1njchw-open-data-28-backups-fn750"
  role          = aws_iam_role.open_data_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_filings_fn1147" {
  function_name = "arior-1njchw-open-data-28-filings-fn1147"
  role          = aws_iam_role.records_19_public_data_svc3961.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_28_filings_fn413" {
  function_name = "arior-1njchw-open-data-28-filings-fn413"
  role          = aws_iam_role.open_data_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_audit_fn9" {
  function_name = "arior-1njchw-open-data-29-audit-fn9"
  role          = aws_iam_role.open_data_7_records_svc1743.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_audit_fn977" {
  function_name = "arior-1njchw-open-data-29-audit-fn977"
  role          = aws_iam_role.open_data_28_backups_svc4491.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_filings_fn673" {
  function_name = "arior-1njchw-open-data-29-filings-fn673"
  role          = aws_iam_role.open_data_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_filings_fn873" {
  function_name = "arior-1njchw-open-data-29-filings-fn873"
  role          = aws_iam_role.open_data_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_records_fn1136" {
  function_name = "arior-1njchw-open-data-29-records-fn1136"
  role          = aws_iam_role.hr_29_public_data_svc2840.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_29_records_fn1835" {
  function_name = "arior-1njchw-open-data-29-records-fn1835"
  role          = aws_iam_role.procurement_29_audit_svc6164.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_filings_fn1034" {
  function_name = "arior-1njchw-open-data-3-filings-fn1034"
  role          = aws_iam_role.open_data_29_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_filings_fn1193" {
  function_name = "arior-1njchw-open-data-3-filings-fn1193"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_filings_fn1975" {
  function_name = "arior-1njchw-open-data-3-filings-fn1975"
  role          = aws_iam_role.procurement_11_public_data_svc956.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_filings_fn784" {
  function_name = "arior-1njchw-open-data-3-filings-fn784"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_filings_fn922" {
  function_name = "arior-1njchw-open-data-3-filings-fn922"
  role          = aws_iam_role.procurement_22_audit_svc672.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn1054" {
  function_name = "arior-1njchw-open-data-3-records-fn1054"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn1146" {
  function_name = "arior-1njchw-open-data-3-records-fn1146"
  role          = aws_iam_role.gis_27_public_data_svc6971.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn2256" {
  function_name = "arior-1njchw-open-data-3-records-fn2256"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn2457" {
  function_name = "arior-1njchw-open-data-3-records-fn2457"
  role          = aws_iam_role.tax_7_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn64" {
  function_name = "arior-1njchw-open-data-3-records-fn64"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_3_records_fn97" {
  function_name = "arior-1njchw-open-data-3-records-fn97"
  role          = aws_iam_role.open_data_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn1878" {
  function_name = "arior-1njchw-open-data-30-public-data-fn1878"
  role          = aws_iam_role.open_data_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn2323" {
  function_name = "arior-1njchw-open-data-30-public-data-fn2323"
  role          = aws_iam_role.public_safety_2_backups_svc6674.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn2404" {
  function_name = "arior-1njchw-open-data-30-public-data-fn2404"
  role          = aws_iam_role.open_data_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn549" {
  function_name = "arior-1njchw-open-data-30-public-data-fn549"
  role          = aws_iam_role.gis_5_filings_svc5875.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn72" {
  function_name = "arior-1njchw-open-data-30-public-data-fn72"
  role          = aws_iam_role.open_data_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_30_public_data_fn92" {
  function_name = "arior-1njchw-open-data-30-public-data-fn92"
  role          = aws_iam_role.open_data_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_31_filings_fn478" {
  function_name = "arior-1njchw-open-data-31-filings-fn478"
  role          = aws_iam_role.hr_28_gis_layers_svc7820.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_31_filings_fn524" {
  function_name = "arior-1njchw-open-data-31-filings-fn524"
  role          = aws_iam_role.open_data_19_public_data_svc3135.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_31_gis_layers_fn469" {
  function_name = "arior-1njchw-open-data-31-gis-layers-fn469"
  role          = aws_iam_role.open_data_25_records_svc5287.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_31_gis_layers_fn856" {
  function_name = "arior-1njchw-open-data-31-gis-layers-fn856"
  role          = aws_iam_role.records_23_records_svc6505.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_31_records_fn1471" {
  function_name = "arior-1njchw-open-data-31-records-fn1471"
  role          = aws_iam_role.open_data_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn1268" {
  function_name = "arior-1njchw-open-data-32-filings-fn1268"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn1524" {
  function_name = "arior-1njchw-open-data-32-filings-fn1524"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn1736" {
  function_name = "arior-1njchw-open-data-32-filings-fn1736"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn1775" {
  function_name = "arior-1njchw-open-data-32-filings-fn1775"
  role          = aws_iam_role.audit_11_public_data_svc1794.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn2157" {
  function_name = "arior-1njchw-open-data-32-filings-fn2157"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn300" {
  function_name = "arior-1njchw-open-data-32-filings-fn300"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn561" {
  function_name = "arior-1njchw-open-data-32-filings-fn561"
  role          = aws_iam_role.citizen_portal_24_filings_svc2772.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn808" {
  function_name = "arior-1njchw-open-data-32-filings-fn808"
  role          = aws_iam_role.open_data_16_records_svc3099.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn95" {
  function_name = "arior-1njchw-open-data-32-filings-fn95"
  role          = aws_iam_role.open_data_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_32_filings_fn991" {
  function_name = "arior-1njchw-open-data-32-filings-fn991"
  role          = aws_iam_role.records_33_backups_svc7041.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_33_backups_fn1142" {
  function_name = "arior-1njchw-open-data-33-backups-fn1142"
  role          = aws_iam_role.open_data_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_33_backups_fn2463" {
  function_name = "arior-1njchw-open-data-33-backups-fn2463"
  role          = aws_iam_role.open_data_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_33_records_fn1274" {
  function_name = "arior-1njchw-open-data-33-records-fn1274"
  role          = aws_iam_role.open_data_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_33_records_fn2469" {
  function_name = "arior-1njchw-open-data-33-records-fn2469"
  role          = aws_iam_role.hr_30_filings_svc3268.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_33_records_fn565" {
  function_name = "arior-1njchw-open-data-33-records-fn565"
  role          = aws_iam_role.open_data_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn1086" {
  function_name = "arior-1njchw-open-data-34-records-fn1086"
  role          = aws_iam_role.open_data_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn124" {
  function_name = "arior-1njchw-open-data-34-records-fn124"
  role          = aws_iam_role.open_data_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn168" {
  function_name = "arior-1njchw-open-data-34-records-fn168"
  role          = aws_iam_role.open_data_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn1847" {
  function_name = "arior-1njchw-open-data-34-records-fn1847"
  role          = aws_iam_role.audit_28_audit_svc4078.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn431" {
  function_name = "arior-1njchw-open-data-34-records-fn431"
  role          = aws_iam_role.open_data_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_34_records_fn915" {
  function_name = "arior-1njchw-open-data-34-records-fn915"
  role          = aws_iam_role.open_data_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_audit_fn1074" {
  function_name = "arior-1njchw-open-data-35-audit-fn1074"
  role          = aws_iam_role.tax_19_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_audit_fn1151" {
  function_name = "arior-1njchw-open-data-35-audit-fn1151"
  role          = aws_iam_role.hr_9_backups_svc7592.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_audit_fn36" {
  function_name = "arior-1njchw-open-data-35-audit-fn36"
  role          = aws_iam_role.gis_26_records_svc1967.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_audit_fn41" {
  function_name = "arior-1njchw-open-data-35-audit-fn41"
  role          = aws_iam_role.open_data_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_audit_fn497" {
  function_name = "arior-1njchw-open-data-35-audit-fn497"
  role          = aws_iam_role.procurement_21_backups_svc5652.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_filings_fn1453" {
  function_name = "arior-1njchw-open-data-35-filings-fn1453"
  role          = aws_iam_role.open_data_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_35_filings_fn2300" {
  function_name = "arior-1njchw-open-data-35-filings-fn2300"
  role          = aws_iam_role.open_data_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_audit_fn2027" {
  function_name = "arior-1njchw-open-data-4-audit-fn2027"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_audit_fn2476" {
  function_name = "arior-1njchw-open-data-4-audit-fn2476"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_audit_fn726" {
  function_name = "arior-1njchw-open-data-4-audit-fn726"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_filings_fn138" {
  function_name = "arior-1njchw-open-data-4-filings-fn138"
  role          = aws_iam_role.citizen_portal_29_backups_svc7408.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_filings_fn1396" {
  function_name = "arior-1njchw-open-data-4-filings-fn1396"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_filings_fn1528" {
  function_name = "arior-1njchw-open-data-4-filings-fn1528"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_filings_fn2192" {
  function_name = "arior-1njchw-open-data-4-filings-fn2192"
  role          = aws_iam_role.citizen_portal_25_gis_layers_svc6112.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_filings_fn44" {
  function_name = "arior-1njchw-open-data-4-filings-fn44"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_gis_layers_fn1518" {
  function_name = "arior-1njchw-open-data-4-gis-layers-fn1518"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_gis_layers_fn343" {
  function_name = "arior-1njchw-open-data-4-gis-layers-fn343"
  role          = aws_iam_role.public_safety_7_gis_layers_svc7566.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_gis_layers_fn635" {
  function_name = "arior-1njchw-open-data-4-gis-layers-fn635"
  role          = aws_iam_role.open_data_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_filings_fn1160" {
  function_name = "arior-1njchw-open-data-5-filings-fn1160"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_filings_fn1232" {
  function_name = "arior-1njchw-open-data-5-filings-fn1232"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_filings_fn517" {
  function_name = "arior-1njchw-open-data-5-filings-fn517"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_records_fn1476" {
  function_name = "arior-1njchw-open-data-5-records-fn1476"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn1059" {
  function_name = "arior-1njchw-open-data-6-records-fn1059"
  role          = aws_iam_role.open_data_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn1304" {
  function_name = "arior-1njchw-open-data-6-records-fn1304"
  role          = aws_iam_role.benefits_14_backups_svc1415.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn1557" {
  function_name = "arior-1njchw-open-data-6-records-fn1557"
  role          = aws_iam_role.it_ops_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn1751" {
  function_name = "arior-1njchw-open-data-6-records-fn1751"
  role          = aws_iam_role.open_data_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn1886" {
  function_name = "arior-1njchw-open-data-6-records-fn1886"
  role          = aws_iam_role.audit_14_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn2247" {
  function_name = "arior-1njchw-open-data-6-records-fn2247"
  role          = aws_iam_role.open_data_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_6_records_fn409" {
  function_name = "arior-1njchw-open-data-6-records-fn409"
  role          = aws_iam_role.open_data_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_gis_layers_fn1027" {
  function_name = "arior-1njchw-open-data-7-gis-layers-fn1027"
  role          = aws_iam_role.open_data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_gis_layers_fn1379" {
  function_name = "arior-1njchw-open-data-7-gis-layers-fn1379"
  role          = aws_iam_role.procurement_14_public_data_svc1824.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_gis_layers_fn1774" {
  function_name = "arior-1njchw-open-data-7-gis-layers-fn1774"
  role          = aws_iam_role.open_data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_gis_layers_fn1984" {
  function_name = "arior-1njchw-open-data-7-gis-layers-fn1984"
  role          = aws_iam_role.open_data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_gis_layers_fn345" {
  function_name = "arior-1njchw-open-data-7-gis-layers-fn345"
  role          = aws_iam_role.open_data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_backups_fn1740" {
  function_name = "arior-1njchw-open-data-8-backups-fn1740"
  role          = aws_iam_role.public_safety_30_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_backups_fn2198" {
  function_name = "arior-1njchw-open-data-8-backups-fn2198"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_backups_fn749" {
  function_name = "arior-1njchw-open-data-8-backups-fn749"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_filings_fn1772" {
  function_name = "arior-1njchw-open-data-8-filings-fn1772"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_filings_fn1837" {
  function_name = "arior-1njchw-open-data-8-filings-fn1837"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_filings_fn2415" {
  function_name = "arior-1njchw-open-data-8-filings-fn2415"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_filings_fn401" {
  function_name = "arior-1njchw-open-data-8-filings-fn401"
  role          = aws_iam_role.open_data_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_8_filings_fn866" {
  function_name = "arior-1njchw-open-data-8-filings-fn866"
  role          = aws_iam_role.records_27_gis_layers_svc7385.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_backups_fn1488" {
  function_name = "arior-1njchw-open-data-9-backups-fn1488"
  role          = aws_iam_role.gis_33_audit_svc5379.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_backups_fn2464" {
  function_name = "arior-1njchw-open-data-9-backups-fn2464"
  role          = aws_iam_role.hr_29_gis_layers_svc7000.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_backups_fn471" {
  function_name = "arior-1njchw-open-data-9-backups-fn471"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_backups_fn702" {
  function_name = "arior-1njchw-open-data-9-backups-fn702"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_backups_fn967" {
  function_name = "arior-1njchw-open-data-9-backups-fn967"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_filings_fn1249" {
  function_name = "arior-1njchw-open-data-9-filings-fn1249"
  role          = aws_iam_role.procurement_15_records_svc6828.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_filings_fn1969" {
  function_name = "arior-1njchw-open-data-9-filings-fn1969"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_filings_fn2282" {
  function_name = "arior-1njchw-open-data-9-filings-fn2282"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_9_filings_fn447" {
  function_name = "arior-1njchw-open-data-9-filings-fn447"
  role          = aws_iam_role.open_data_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn1346" {
  function_name = "arior-1njchw-open-data-filings-fn1346"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn1602" {
  function_name = "arior-1njchw-open-data-filings-fn1602"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn1942" {
  function_name = "arior-1njchw-open-data-filings-fn1942"
  role          = aws_iam_role.gis_21_audit_svc6483.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn2100" {
  function_name = "arior-1njchw-open-data-filings-fn2100"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn2147" {
  function_name = "arior-1njchw-open-data-filings-fn2147"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn592" {
  function_name = "arior-1njchw-open-data-filings-fn592"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn694" {
  function_name = "arior-1njchw-open-data-filings-fn694"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_filings_fn722" {
  function_name = "arior-1njchw-open-data-filings-fn722"
  role          = aws_iam_role.open_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_10_gis_layers_fn1482" {
  function_name = "arior-1njchw-procurement-10-gis-layers-fn1482"
  role          = aws_iam_role.open_data_26_backups_svc4051.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_10_gis_layers_fn1738" {
  function_name = "arior-1njchw-procurement-10-gis-layers-fn1738"
  role          = aws_iam_role.procurement_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_10_gis_layers_fn2208" {
  function_name = "arior-1njchw-procurement-10-gis-layers-fn2208"
  role          = aws_iam_role.procurement_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_10_gis_layers_fn526" {
  function_name = "arior-1njchw-procurement-10-gis-layers-fn526"
  role          = aws_iam_role.it_ops_32_public_data_svc2461.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_public_data_fn207" {
  function_name = "arior-1njchw-procurement-11-public-data-fn207"
  role          = aws_iam_role.tax_12_audit_svc3465.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_public_data_fn80" {
  function_name = "arior-1njchw-procurement-11-public-data-fn80"
  role          = aws_iam_role.procurement_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_records_fn1207" {
  function_name = "arior-1njchw-procurement-11-records-fn1207"
  role          = aws_iam_role.it_ops_5_backups_svc1721.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_records_fn1412" {
  function_name = "arior-1njchw-procurement-11-records-fn1412"
  role          = aws_iam_role.public_safety_2_gis_layers_svc5426.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_records_fn1584" {
  function_name = "arior-1njchw-procurement-11-records-fn1584"
  role          = aws_iam_role.procurement_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_11_records_fn52" {
  function_name = "arior-1njchw-procurement-11-records-fn52"
  role          = aws_iam_role.citizen_portal_4_audit_svc7108.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_12_backups_fn1051" {
  function_name = "arior-1njchw-procurement-12-backups-fn1051"
  role          = aws_iam_role.procurement_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_12_backups_fn1275" {
  function_name = "arior-1njchw-procurement-12-backups-fn1275"
  role          = aws_iam_role.procurement_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_12_backups_fn1749" {
  function_name = "arior-1njchw-procurement-12-backups-fn1749"
  role          = aws_iam_role.procurement_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_12_backups_fn357" {
  function_name = "arior-1njchw-procurement-12-backups-fn357"
  role          = aws_iam_role.procurement_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_12_backups_fn542" {
  function_name = "arior-1njchw-procurement-12-backups-fn542"
  role          = aws_iam_role.procurement_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_filings_fn1640" {
  function_name = "arior-1njchw-procurement-13-filings-fn1640"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_filings_fn1895" {
  function_name = "arior-1njchw-procurement-13-filings-fn1895"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_filings_fn2042" {
  function_name = "arior-1njchw-procurement-13-filings-fn2042"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_gis_layers_fn1194" {
  function_name = "arior-1njchw-procurement-13-gis-layers-fn1194"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_gis_layers_fn1252" {
  function_name = "arior-1njchw-procurement-13-gis-layers-fn1252"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_gis_layers_fn1392" {
  function_name = "arior-1njchw-procurement-13-gis-layers-fn1392"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_gis_layers_fn2455" {
  function_name = "arior-1njchw-procurement-13-gis-layers-fn2455"
  role          = aws_iam_role.procurement_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_13_gis_layers_fn713" {
  function_name = "arior-1njchw-procurement-13-gis-layers-fn713"
  role          = aws_iam_role.it_ops_34_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_audit_fn1222" {
  function_name = "arior-1njchw-procurement-14-audit-fn1222"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_audit_fn2159" {
  function_name = "arior-1njchw-procurement-14-audit-fn2159"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn181" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn181"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn2170" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn2170"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn2178" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn2178"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn2216" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn2216"
  role          = aws_iam_role.benefits_8_filings_svc1759.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn2392" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn2392"
  role          = aws_iam_role.procurement_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_14_gis_layers_fn405" {
  function_name = "arior-1njchw-procurement-14-gis-layers-fn405"
  role          = aws_iam_role.citizen_portal_20_records_svc3140.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_15_backups_fn1294" {
  function_name = "arior-1njchw-procurement-15-backups-fn1294"
  role          = aws_iam_role.audit_14_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_15_public_data_fn2220" {
  function_name = "arior-1njchw-procurement-15-public-data-fn2220"
  role          = aws_iam_role.procurement_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_15_records_fn1681" {
  function_name = "arior-1njchw-procurement-15-records-fn1681"
  role          = aws_iam_role.procurement_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_15_records_fn732" {
  function_name = "arior-1njchw-procurement-15-records-fn732"
  role          = aws_iam_role.procurement_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_audit_fn143" {
  function_name = "arior-1njchw-procurement-16-audit-fn143"
  role          = aws_iam_role.procurement_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_audit_fn2191" {
  function_name = "arior-1njchw-procurement-16-audit-fn2191"
  role          = aws_iam_role.public_safety_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_audit_fn663" {
  function_name = "arior-1njchw-procurement-16-audit-fn663"
  role          = aws_iam_role.it_ops_2_records_svc2101.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_gis_layers_fn626" {
  function_name = "arior-1njchw-procurement-16-gis-layers-fn626"
  role          = aws_iam_role.gis_29_gis_layers_svc2003.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_records_fn1355" {
  function_name = "arior-1njchw-procurement-16-records-fn1355"
  role          = aws_iam_role.public_safety_12_records_svc7626.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_records_fn1419" {
  function_name = "arior-1njchw-procurement-16-records-fn1419"
  role          = aws_iam_role.records_24_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_records_fn1981" {
  function_name = "arior-1njchw-procurement-16-records-fn1981"
  role          = aws_iam_role.benefits_33_public_data_svc2475.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_16_records_fn826" {
  function_name = "arior-1njchw-procurement-16-records-fn826"
  role          = aws_iam_role.procurement_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_17_backups_fn1246" {
  function_name = "arior-1njchw-procurement-17-backups-fn1246"
  role          = aws_iam_role.procurement_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_17_records_fn589" {
  function_name = "arior-1njchw-procurement-17-records-fn589"
  role          = aws_iam_role.procurement_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_17_records_fn648" {
  function_name = "arior-1njchw-procurement-17-records-fn648"
  role          = aws_iam_role.licensing_31_backups_svc5354.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_filings_fn2182" {
  function_name = "arior-1njchw-procurement-18-filings-fn2182"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_public_data_fn2360" {
  function_name = "arior-1njchw-procurement-18-public-data-fn2360"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_records_fn1029" {
  function_name = "arior-1njchw-procurement-18-records-fn1029"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_records_fn2115" {
  function_name = "arior-1njchw-procurement-18-records-fn2115"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_records_fn2262" {
  function_name = "arior-1njchw-procurement-18-records-fn2262"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_records_fn229" {
  function_name = "arior-1njchw-procurement-18-records-fn229"
  role          = aws_iam_role.procurement_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_18_records_fn505" {
  function_name = "arior-1njchw-procurement-18-records-fn505"
  role          = aws_iam_role.gis_23_gis_layers_svc1931.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_19_backups_fn182" {
  function_name = "arior-1njchw-procurement-19-backups-fn182"
  role          = aws_iam_role.procurement_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_19_backups_fn2432" {
  function_name = "arior-1njchw-procurement-19-backups-fn2432"
  role          = aws_iam_role.public_safety_17_backups_svc1030.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_19_public_data_fn1502" {
  function_name = "arior-1njchw-procurement-19-public-data-fn1502"
  role          = aws_iam_role.procurement_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_19_public_data_fn1645" {
  function_name = "arior-1njchw-procurement-19-public-data-fn1645"
  role          = aws_iam_role.procurement_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_19_records_fn2483" {
  function_name = "arior-1njchw-procurement-19-records-fn2483"
  role          = aws_iam_role.tax_34_records_svc6641.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_backups_fn157" {
  function_name = "arior-1njchw-procurement-2-backups-fn157"
  role          = aws_iam_role.procurement_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_backups_fn2394" {
  function_name = "arior-1njchw-procurement-2-backups-fn2394"
  role          = aws_iam_role.procurement_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_backups_fn451" {
  function_name = "arior-1njchw-procurement-2-backups-fn451"
  role          = aws_iam_role.procurement_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_backups_fn679" {
  function_name = "arior-1njchw-procurement-2-backups-fn679"
  role          = aws_iam_role.procurement_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_20_backups_fn1607" {
  function_name = "arior-1njchw-procurement-20-backups-fn1607"
  role          = aws_iam_role.procurement_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_20_backups_fn448" {
  function_name = "arior-1njchw-procurement-20-backups-fn448"
  role          = aws_iam_role.audit_30_audit_svc3270.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_20_filings_fn1406" {
  function_name = "arior-1njchw-procurement-20-filings-fn1406"
  role          = aws_iam_role.hr_27_filings_svc6560.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_20_filings_fn2175" {
  function_name = "arior-1njchw-procurement-20-filings-fn2175"
  role          = aws_iam_role.procurement_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn1373" {
  function_name = "arior-1njchw-procurement-21-backups-fn1373"
  role          = aws_iam_role.procurement_19_public_data_svc6876.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn1643" {
  function_name = "arior-1njchw-procurement-21-backups-fn1643"
  role          = aws_iam_role.records_30_backups_svc7005.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn1646" {
  function_name = "arior-1njchw-procurement-21-backups-fn1646"
  role          = aws_iam_role.procurement_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn1744" {
  function_name = "arior-1njchw-procurement-21-backups-fn1744"
  role          = aws_iam_role.procurement_15_backups_svc1420.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn1793" {
  function_name = "arior-1njchw-procurement-21-backups-fn1793"
  role          = aws_iam_role.audit_34_filings_svc3734.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn302" {
  function_name = "arior-1njchw-procurement-21-backups-fn302"
  role          = aws_iam_role.hr_27_gis_layers_svc4480.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn403" {
  function_name = "arior-1njchw-procurement-21-backups-fn403"
  role          = aws_iam_role.procurement_7_records_svc5900.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn483" {
  function_name = "arior-1njchw-procurement-21-backups-fn483"
  role          = aws_iam_role.procurement_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn724" {
  function_name = "arior-1njchw-procurement-21-backups-fn724"
  role          = aws_iam_role.it_ops_24_public_data_svc1949.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_21_backups_fn814" {
  function_name = "arior-1njchw-procurement-21-backups-fn814"
  role          = aws_iam_role.open_data_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn1413" {
  function_name = "arior-1njchw-procurement-22-audit-fn1413"
  role          = aws_iam_role.procurement_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn1732" {
  function_name = "arior-1njchw-procurement-22-audit-fn1732"
  role          = aws_iam_role.benefits_28_gis_layers_svc7407.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn415" {
  function_name = "arior-1njchw-procurement-22-audit-fn415"
  role          = aws_iam_role.procurement_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn507" {
  function_name = "arior-1njchw-procurement-22-audit-fn507"
  role          = aws_iam_role.records_8_audit_svc1749.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn600" {
  function_name = "arior-1njchw-procurement-22-audit-fn600"
  role          = aws_iam_role.procurement_9_backups_svc3428.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_22_audit_fn765" {
  function_name = "arior-1njchw-procurement-22-audit-fn765"
  role          = aws_iam_role.tax_16_backups_svc3513.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_filings_fn1042" {
  function_name = "arior-1njchw-procurement-23-filings-fn1042"
  role          = aws_iam_role.procurement_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_filings_fn2431" {
  function_name = "arior-1njchw-procurement-23-filings-fn2431"
  role          = aws_iam_role.tax_24_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_filings_fn738" {
  function_name = "arior-1njchw-procurement-23-filings-fn738"
  role          = aws_iam_role.procurement_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_filings_fn831" {
  function_name = "arior-1njchw-procurement-23-filings-fn831"
  role          = aws_iam_role.procurement_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_filings_fn870" {
  function_name = "arior-1njchw-procurement-23-filings-fn870"
  role          = aws_iam_role.procurement_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_records_fn1402" {
  function_name = "arior-1njchw-procurement-23-records-fn1402"
  role          = aws_iam_role.procurement_31_public_data_svc7852.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_records_fn1525" {
  function_name = "arior-1njchw-procurement-23-records-fn1525"
  role          = aws_iam_role.licensing_16_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_23_records_fn883" {
  function_name = "arior-1njchw-procurement-23-records-fn883"
  role          = aws_iam_role.procurement_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_24_filings_fn125" {
  function_name = "arior-1njchw-procurement-24-filings-fn125"
  role          = aws_iam_role.procurement_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_24_filings_fn1563" {
  function_name = "arior-1njchw-procurement-24-filings-fn1563"
  role          = aws_iam_role.procurement_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_25_backups_fn406" {
  function_name = "arior-1njchw-procurement-25-backups-fn406"
  role          = aws_iam_role.procurement_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_25_public_data_fn132" {
  function_name = "arior-1njchw-procurement-25-public-data-fn132"
  role          = aws_iam_role.open_data_2_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_26_audit_fn1529" {
  function_name = "arior-1njchw-procurement-26-audit-fn1529"
  role          = aws_iam_role.procurement_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_26_filings_fn2119" {
  function_name = "arior-1njchw-procurement-26-filings-fn2119"
  role          = aws_iam_role.procurement_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_26_filings_fn2352" {
  function_name = "arior-1njchw-procurement-26-filings-fn2352"
  role          = aws_iam_role.procurement_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_26_records_fn1888" {
  function_name = "arior-1njchw-procurement-26-records-fn1888"
  role          = aws_iam_role.procurement_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_26_records_fn2314" {
  function_name = "arior-1njchw-procurement-26-records-fn2314"
  role          = aws_iam_role.procurement_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_27_filings_fn1205" {
  function_name = "arior-1njchw-procurement-27-filings-fn1205"
  role          = aws_iam_role.procurement_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_27_records_fn1314" {
  function_name = "arior-1njchw-procurement-27-records-fn1314"
  role          = aws_iam_role.it_ops_12_gis_layers_svc3469.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_27_records_fn2250" {
  function_name = "arior-1njchw-procurement-27-records-fn2250"
  role          = aws_iam_role.procurement_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1043" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1043"
  role          = aws_iam_role.licensing_30_backups_svc2014.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1102" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1102"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1635" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1635"
  role          = aws_iam_role.open_data_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1746" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1746"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1813" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1813"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1909" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1909"
  role          = aws_iam_role.procurement_34_filings_svc3312.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn1964" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn1964"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn2238" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn2238"
  role          = aws_iam_role.licensing_8_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn270" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn270"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_28_gis_layers_fn94" {
  function_name = "arior-1njchw-procurement-28-gis-layers-fn94"
  role          = aws_iam_role.procurement_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_audit_fn2409" {
  function_name = "arior-1njchw-procurement-29-audit-fn2409"
  role          = aws_iam_role.procurement_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_audit_fn98" {
  function_name = "arior-1njchw-procurement-29-audit-fn98"
  role          = aws_iam_role.procurement_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_public_data_fn1237" {
  function_name = "arior-1njchw-procurement-29-public-data-fn1237"
  role          = aws_iam_role.it_ops_18_audit_svc7285.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_public_data_fn2444" {
  function_name = "arior-1njchw-procurement-29-public-data-fn2444"
  role          = aws_iam_role.public_safety_14_filings_svc994.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_public_data_fn412" {
  function_name = "arior-1njchw-procurement-29-public-data-fn412"
  role          = aws_iam_role.audit_33_backups_svc5386.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_public_data_fn963" {
  function_name = "arior-1njchw-procurement-29-public-data-fn963"
  role          = aws_iam_role.procurement_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_29_public_data_fn982" {
  function_name = "arior-1njchw-procurement-29-public-data-fn982"
  role          = aws_iam_role.citizen_portal_12_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn1025" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn1025"
  role          = aws_iam_role.open_data_27_records_svc735.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn1505" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn1505"
  role          = aws_iam_role.it_ops_filings_svc6665.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn1589" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn1589"
  role          = aws_iam_role.gis_3_records_svc2107.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn1897" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn1897"
  role          = aws_iam_role.records_4_filings_svc2949.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn2179" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn2179"
  role          = aws_iam_role.public_safety_6_gis_layers_svc7138.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn677" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn677"
  role          = aws_iam_role.audit_26_gis_layers_svc6134.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn776" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn776"
  role          = aws_iam_role.audit_9_public_data_svc2602.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_gis_layers_fn868" {
  function_name = "arior-1njchw-procurement-3-gis-layers-fn868"
  role          = aws_iam_role.procurement_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_30_backups_fn117" {
  function_name = "arior-1njchw-procurement-30-backups-fn117"
  role          = aws_iam_role.procurement_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_30_backups_fn2061" {
  function_name = "arior-1njchw-procurement-30-backups-fn2061"
  role          = aws_iam_role.procurement_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_30_public_data_fn1934" {
  function_name = "arior-1njchw-procurement-30-public-data-fn1934"
  role          = aws_iam_role.procurement_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_31_filings_fn1428" {
  function_name = "arior-1njchw-procurement-31-filings-fn1428"
  role          = aws_iam_role.procurement_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_31_filings_fn818" {
  function_name = "arior-1njchw-procurement-31-filings-fn818"
  role          = aws_iam_role.open_data_34_records_svc7891.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_31_gis_layers_fn2067" {
  function_name = "arior-1njchw-procurement-31-gis-layers-fn2067"
  role          = aws_iam_role.audit_15_public_data_svc3090.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_31_gis_layers_fn2090" {
  function_name = "arior-1njchw-procurement-31-gis-layers-fn2090"
  role          = aws_iam_role.procurement_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_31_public_data_fn803" {
  function_name = "arior-1njchw-procurement-31-public-data-fn803"
  role          = aws_iam_role.procurement_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_32_public_data_fn2093" {
  function_name = "arior-1njchw-procurement-32-public-data-fn2093"
  role          = aws_iam_role.citizen_portal_gis_layers_svc2912.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_32_public_data_fn2094" {
  function_name = "arior-1njchw-procurement-32-public-data-fn2094"
  role          = aws_iam_role.procurement_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_32_public_data_fn949" {
  function_name = "arior-1njchw-procurement-32-public-data-fn949"
  role          = aws_iam_role.benefits_30_audit_svc4935.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_33_records_fn1301" {
  function_name = "arior-1njchw-procurement-33-records-fn1301"
  role          = aws_iam_role.records_9_filings_svc929.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_33_records_fn1648" {
  function_name = "arior-1njchw-procurement-33-records-fn1648"
  role          = aws_iam_role.procurement_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_33_records_fn2311" {
  function_name = "arior-1njchw-procurement-33-records-fn2311"
  role          = aws_iam_role.procurement_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_33_records_fn326" {
  function_name = "arior-1njchw-procurement-33-records-fn326"
  role          = aws_iam_role.procurement_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_33_records_fn355" {
  function_name = "arior-1njchw-procurement-33-records-fn355"
  role          = aws_iam_role.procurement_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_34_audit_fn1210" {
  function_name = "arior-1njchw-procurement-34-audit-fn1210"
  role          = aws_iam_role.citizen_portal_13_filings_svc5552.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_34_audit_fn2240" {
  function_name = "arior-1njchw-procurement-34-audit-fn2240"
  role          = aws_iam_role.procurement_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_34_backups_fn104" {
  function_name = "arior-1njchw-procurement-34-backups-fn104"
  role          = aws_iam_role.procurement_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_34_filings_fn2385" {
  function_name = "arior-1njchw-procurement-34-filings-fn2385"
  role          = aws_iam_role.procurement_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_35_audit_fn397" {
  function_name = "arior-1njchw-procurement-35-audit-fn397"
  role          = aws_iam_role.records_filings_svc3329.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_35_audit_fn423" {
  function_name = "arior-1njchw-procurement-35-audit-fn423"
  role          = aws_iam_role.procurement_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_35_filings_fn1070" {
  function_name = "arior-1njchw-procurement-35-filings-fn1070"
  role          = aws_iam_role.public_safety_filings_svc1670.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_35_filings_fn2217" {
  function_name = "arior-1njchw-procurement-35-filings-fn2217"
  role          = aws_iam_role.procurement_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_35_records_fn2091" {
  function_name = "arior-1njchw-procurement-35-records-fn2091"
  role          = aws_iam_role.procurement_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_filings_fn1686" {
  function_name = "arior-1njchw-procurement-4-filings-fn1686"
  role          = aws_iam_role.it_ops_4_records_svc5869.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_filings_fn223" {
  function_name = "arior-1njchw-procurement-4-filings-fn223"
  role          = aws_iam_role.gis_29_gis_layers_svc1171.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_public_data_fn1729" {
  function_name = "arior-1njchw-procurement-4-public-data-fn1729"
  role          = aws_iam_role.procurement_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_records_fn2334" {
  function_name = "arior-1njchw-procurement-4-records-fn2334"
  role          = aws_iam_role.procurement_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_records_fn321" {
  function_name = "arior-1njchw-procurement-4-records-fn321"
  role          = aws_iam_role.gis_23_backups_svc2763.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn122" {
  function_name = "arior-1njchw-procurement-5-filings-fn122"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn188" {
  function_name = "arior-1njchw-procurement-5-filings-fn188"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn2258" {
  function_name = "arior-1njchw-procurement-5-filings-fn2258"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn2355" {
  function_name = "arior-1njchw-procurement-5-filings-fn2355"
  role          = aws_iam_role.public_safety_17_backups_svc7270.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn2389" {
  function_name = "arior-1njchw-procurement-5-filings-fn2389"
  role          = aws_iam_role.gis_23_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn2468" {
  function_name = "arior-1njchw-procurement-5-filings-fn2468"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn39" {
  function_name = "arior-1njchw-procurement-5-filings-fn39"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn548" {
  function_name = "arior-1njchw-procurement-5-filings-fn548"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn596" {
  function_name = "arior-1njchw-procurement-5-filings-fn596"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_filings_fn943" {
  function_name = "arior-1njchw-procurement-5-filings-fn943"
  role          = aws_iam_role.procurement_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_audit_fn1415" {
  function_name = "arior-1njchw-procurement-6-audit-fn1415"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_audit_fn2161" {
  function_name = "arior-1njchw-procurement-6-audit-fn2161"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_audit_fn2496" {
  function_name = "arior-1njchw-procurement-6-audit-fn2496"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_audit_fn288" {
  function_name = "arior-1njchw-procurement-6-audit-fn288"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_audit_fn682" {
  function_name = "arior-1njchw-procurement-6-audit-fn682"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_records_fn2235" {
  function_name = "arior-1njchw-procurement-6-records-fn2235"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_records_fn2243" {
  function_name = "arior-1njchw-procurement-6-records-fn2243"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_7_records_fn1707" {
  function_name = "arior-1njchw-procurement-7-records-fn1707"
  role          = aws_iam_role.procurement_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_7_records_fn174" {
  function_name = "arior-1njchw-procurement-7-records-fn174"
  role          = aws_iam_role.audit_records_svc6666.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_7_records_fn2106" {
  function_name = "arior-1njchw-procurement-7-records-fn2106"
  role          = aws_iam_role.procurement_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_8_audit_fn2377" {
  function_name = "arior-1njchw-procurement-8-audit-fn2377"
  role          = aws_iam_role.procurement_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_8_audit_fn502" {
  function_name = "arior-1njchw-procurement-8-audit-fn502"
  role          = aws_iam_role.tax_audit_svc2085.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_8_audit_fn665" {
  function_name = "arior-1njchw-procurement-8-audit-fn665"
  role          = aws_iam_role.procurement_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_8_audit_fn958" {
  function_name = "arior-1njchw-procurement-8-audit-fn958"
  role          = aws_iam_role.citizen_portal_14_filings_svc7228.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_backups_fn1219" {
  function_name = "arior-1njchw-procurement-9-backups-fn1219"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_backups_fn2326" {
  function_name = "arior-1njchw-procurement-9-backups-fn2326"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_backups_fn237" {
  function_name = "arior-1njchw-procurement-9-backups-fn237"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_backups_fn2390" {
  function_name = "arior-1njchw-procurement-9-backups-fn2390"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_backups_fn881" {
  function_name = "arior-1njchw-procurement-9-backups-fn881"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_gis_layers_fn109" {
  function_name = "arior-1njchw-procurement-9-gis-layers-fn109"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_gis_layers_fn1196" {
  function_name = "arior-1njchw-procurement-9-gis-layers-fn1196"
  role          = aws_iam_role.gis_2_records_svc847.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_9_gis_layers_fn1903" {
  function_name = "arior-1njchw-procurement-9-gis-layers-fn1903"
  role          = aws_iam_role.procurement_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn1896" {
  function_name = "arior-1njchw-procurement-public-data-fn1896"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn196" {
  function_name = "arior-1njchw-procurement-public-data-fn196"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn2401" {
  function_name = "arior-1njchw-procurement-public-data-fn2401"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn2472" {
  function_name = "arior-1njchw-procurement-public-data-fn2472"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn296" {
  function_name = "arior-1njchw-procurement-public-data-fn296"
  role          = aws_iam_role.benefits_10_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn32" {
  function_name = "arior-1njchw-procurement-public-data-fn32"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn742" {
  function_name = "arior-1njchw-procurement-public-data-fn742"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_public_data_fn911" {
  function_name = "arior-1njchw-procurement-public-data-fn911"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn1259" {
  function_name = "arior-1njchw-public-safety-10-filings-fn1259"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn1545" {
  function_name = "arior-1njchw-public-safety-10-filings-fn1545"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn2108" {
  function_name = "arior-1njchw-public-safety-10-filings-fn2108"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn2267" {
  function_name = "arior-1njchw-public-safety-10-filings-fn2267"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn2333" {
  function_name = "arior-1njchw-public-safety-10-filings-fn2333"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn335" {
  function_name = "arior-1njchw-public-safety-10-filings-fn335"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_10_filings_fn538" {
  function_name = "arior-1njchw-public-safety-10-filings-fn538"
  role          = aws_iam_role.public_safety_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_audit_fn1404" {
  function_name = "arior-1njchw-public-safety-11-audit-fn1404"
  role          = aws_iam_role.public_safety_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_audit_fn2114" {
  function_name = "arior-1njchw-public-safety-11-audit-fn2114"
  role          = aws_iam_role.public_safety_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_audit_fn555" {
  function_name = "arior-1njchw-public-safety-11-audit-fn555"
  role          = aws_iam_role.public_safety_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn1652" {
  function_name = "arior-1njchw-public-safety-11-records-fn1652"
  role          = aws_iam_role.gis_15_filings_svc1419.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn231" {
  function_name = "arior-1njchw-public-safety-11-records-fn231"
  role          = aws_iam_role.gis_34_backups_svc5807.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn354" {
  function_name = "arior-1njchw-public-safety-11-records-fn354"
  role          = aws_iam_role.public_safety_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn359" {
  function_name = "arior-1njchw-public-safety-11-records-fn359"
  role          = aws_iam_role.tax_3_filings_svc1277.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn380" {
  function_name = "arior-1njchw-public-safety-11-records-fn380"
  role          = aws_iam_role.public_safety_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn668" {
  function_name = "arior-1njchw-public-safety-11-records-fn668"
  role          = aws_iam_role.public_safety_12_records_svc5546.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_11_records_fn884" {
  function_name = "arior-1njchw-public-safety-11-records-fn884"
  role          = aws_iam_role.open_data_filings_svc2503.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_12_records_fn1925" {
  function_name = "arior-1njchw-public-safety-12-records-fn1925"
  role          = aws_iam_role.tax_9_audit_svc1765.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_12_records_fn2428" {
  function_name = "arior-1njchw-public-safety-12-records-fn2428"
  role          = aws_iam_role.public_safety_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_12_records_fn952" {
  function_name = "arior-1njchw-public-safety-12-records-fn952"
  role          = aws_iam_role.hr_19_public_data_svc2304.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_13_backups_fn1823" {
  function_name = "arior-1njchw-public-safety-13-backups-fn1823"
  role          = aws_iam_role.public_safety_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_13_backups_fn2109" {
  function_name = "arior-1njchw-public-safety-13-backups-fn2109"
  role          = aws_iam_role.benefits_4_filings_svc5871.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_13_backups_fn837" {
  function_name = "arior-1njchw-public-safety-13-backups-fn837"
  role          = aws_iam_role.public_safety_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_backups_fn1817" {
  function_name = "arior-1njchw-public-safety-14-backups-fn1817"
  role          = aws_iam_role.citizen_portal_16_filings_svc2260.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_backups_fn428" {
  function_name = "arior-1njchw-public-safety-14-backups-fn428"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn14" {
  function_name = "arior-1njchw-public-safety-14-filings-fn14"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn1976" {
  function_name = "arior-1njchw-public-safety-14-filings-fn1976"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn1977" {
  function_name = "arior-1njchw-public-safety-14-filings-fn1977"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn2187" {
  function_name = "arior-1njchw-public-safety-14-filings-fn2187"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn820" {
  function_name = "arior-1njchw-public-safety-14-filings-fn820"
  role          = aws_iam_role.audit_19_filings_svc4386.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_14_filings_fn998" {
  function_name = "arior-1njchw-public-safety-14-filings-fn998"
  role          = aws_iam_role.records_33_backups_svc3713.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_15_audit_fn1310" {
  function_name = "arior-1njchw-public-safety-15-audit-fn1310"
  role          = aws_iam_role.benefits_26_filings_svc727.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_15_audit_fn177" {
  function_name = "arior-1njchw-public-safety-15-audit-fn177"
  role          = aws_iam_role.licensing_33_audit_svc1634.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_15_audit_fn2210" {
  function_name = "arior-1njchw-public-safety-15-audit-fn2210"
  role          = aws_iam_role.public_safety_filings_svc2086.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_15_filings_fn159" {
  function_name = "arior-1njchw-public-safety-15-filings-fn159"
  role          = aws_iam_role.public_safety_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_15_filings_fn353" {
  function_name = "arior-1njchw-public-safety-15-filings-fn353"
  role          = aws_iam_role.public_safety_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn1743" {
  function_name = "arior-1njchw-public-safety-16-backups-fn1743"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn2139" {
  function_name = "arior-1njchw-public-safety-16-backups-fn2139"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn2228" {
  function_name = "arior-1njchw-public-safety-16-backups-fn2228"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn281" {
  function_name = "arior-1njchw-public-safety-16-backups-fn281"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn730" {
  function_name = "arior-1njchw-public-safety-16-backups-fn730"
  role          = aws_iam_role.procurement_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_backups_fn934" {
  function_name = "arior-1njchw-public-safety-16-backups-fn934"
  role          = aws_iam_role.procurement_14_audit_svc1408.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_gis_layers_fn1493" {
  function_name = "arior-1njchw-public-safety-16-gis-layers-fn1493"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_16_gis_layers_fn217" {
  function_name = "arior-1njchw-public-safety-16-gis-layers-fn217"
  role          = aws_iam_role.public_safety_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_17_backups_fn1064" {
  function_name = "arior-1njchw-public-safety-17-backups-fn1064"
  role          = aws_iam_role.public_safety_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_17_backups_fn1286" {
  function_name = "arior-1njchw-public-safety-17-backups-fn1286"
  role          = aws_iam_role.benefits_30_audit_svc3271.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_17_backups_fn2099" {
  function_name = "arior-1njchw-public-safety-17-backups-fn2099"
  role          = aws_iam_role.public_safety_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_17_backups_fn693" {
  function_name = "arior-1njchw-public-safety-17-backups-fn693"
  role          = aws_iam_role.public_safety_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_17_backups_fn746" {
  function_name = "arior-1njchw-public-safety-17-backups-fn746"
  role          = aws_iam_role.gis_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_18_filings_fn1548" {
  function_name = "arior-1njchw-public-safety-18-filings-fn1548"
  role          = aws_iam_role.public_safety_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_18_filings_fn2378" {
  function_name = "arior-1njchw-public-safety-18-filings-fn2378"
  role          = aws_iam_role.public_safety_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_18_public_data_fn1819" {
  function_name = "arior-1njchw-public-safety-18-public-data-fn1819"
  role          = aws_iam_role.public_safety_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_18_public_data_fn24" {
  function_name = "arior-1njchw-public-safety-18-public-data-fn24"
  role          = aws_iam_role.citizen_portal_32_records_svc1204.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_18_public_data_fn951" {
  function_name = "arior-1njchw-public-safety-18-public-data-fn951"
  role          = aws_iam_role.public_safety_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_filings_fn1041" {
  function_name = "arior-1njchw-public-safety-19-filings-fn1041"
  role          = aws_iam_role.benefits_17_gis_layers_svc4779.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_filings_fn1098" {
  function_name = "arior-1njchw-public-safety-19-filings-fn1098"
  role          = aws_iam_role.public_safety_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_gis_layers_fn133" {
  function_name = "arior-1njchw-public-safety-19-gis-layers-fn133"
  role          = aws_iam_role.public_safety_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_gis_layers_fn1680" {
  function_name = "arior-1njchw-public-safety-19-gis-layers-fn1680"
  role          = aws_iam_role.public_safety_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_gis_layers_fn2348" {
  function_name = "arior-1njchw-public-safety-19-gis-layers-fn2348"
  role          = aws_iam_role.citizen_portal_14_filings_svc3484.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_19_gis_layers_fn646" {
  function_name = "arior-1njchw-public-safety-19-gis-layers-fn646"
  role          = aws_iam_role.public_safety_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn2359" {
  function_name = "arior-1njchw-public-safety-2-backups-fn2359"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn2471" {
  function_name = "arior-1njchw-public-safety-2-backups-fn2471"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn304" {
  function_name = "arior-1njchw-public-safety-2-backups-fn304"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn761" {
  function_name = "arior-1njchw-public-safety-2-backups-fn761"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn869" {
  function_name = "arior-1njchw-public-safety-2-backups-fn869"
  role          = aws_iam_role.open_data_19_backups_svc1471.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_backups_fn954" {
  function_name = "arior-1njchw-public-safety-2-backups-fn954"
  role          = aws_iam_role.public_safety_17_backups_svc6022.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_gis_layers_fn1484" {
  function_name = "arior-1njchw-public-safety-2-gis-layers-fn1484"
  role          = aws_iam_role.it_ops_30_public_data_svc5765.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_gis_layers_fn1995" {
  function_name = "arior-1njchw-public-safety-2-gis-layers-fn1995"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_gis_layers_fn283" {
  function_name = "arior-1njchw-public-safety-2-gis-layers-fn283"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_20_filings_fn1187" {
  function_name = "arior-1njchw-public-safety-20-filings-fn1187"
  role          = aws_iam_role.public_safety_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_20_filings_fn1549" {
  function_name = "arior-1njchw-public-safety-20-filings-fn1549"
  role          = aws_iam_role.public_safety_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_20_filings_fn844" {
  function_name = "arior-1njchw-public-safety-20-filings-fn844"
  role          = aws_iam_role.public_safety_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_20_gis_layers_fn1477" {
  function_name = "arior-1njchw-public-safety-20-gis-layers-fn1477"
  role          = aws_iam_role.public_safety_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_filings_fn1391" {
  function_name = "arior-1njchw-public-safety-21-filings-fn1391"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_filings_fn2467" {
  function_name = "arior-1njchw-public-safety-21-filings-fn2467"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_records_fn1089" {
  function_name = "arior-1njchw-public-safety-21-records-fn1089"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_records_fn1096" {
  function_name = "arior-1njchw-public-safety-21-records-fn1096"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_records_fn525" {
  function_name = "arior-1njchw-public-safety-21-records-fn525"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_21_records_fn727" {
  function_name = "arior-1njchw-public-safety-21-records-fn727"
  role          = aws_iam_role.public_safety_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_22_records_fn1966" {
  function_name = "arior-1njchw-public-safety-22-records-fn1966"
  role          = aws_iam_role.public_safety_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_23_backups_fn1066" {
  function_name = "arior-1njchw-public-safety-23-backups-fn1066"
  role          = aws_iam_role.hr_32_gis_layers_svc796.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_23_backups_fn2452" {
  function_name = "arior-1njchw-public-safety-23-backups-fn2452"
  role          = aws_iam_role.public_safety_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_23_backups_fn721" {
  function_name = "arior-1njchw-public-safety-23-backups-fn721"
  role          = aws_iam_role.public_safety_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_24_backups_fn1270" {
  function_name = "arior-1njchw-public-safety-24-backups-fn1270"
  role          = aws_iam_role.public_safety_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_24_backups_fn1726" {
  function_name = "arior-1njchw-public-safety-24-backups-fn1726"
  role          = aws_iam_role.public_safety_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_24_backups_fn2116" {
  function_name = "arior-1njchw-public-safety-24-backups-fn2116"
  role          = aws_iam_role.public_safety_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_24_backups_fn2347" {
  function_name = "arior-1njchw-public-safety-24-backups-fn2347"
  role          = aws_iam_role.benefits_25_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_public_data_fn1565" {
  function_name = "arior-1njchw-public-safety-25-public-data-fn1565"
  role          = aws_iam_role.procurement_4_public_data_svc3784.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_public_data_fn1792" {
  function_name = "arior-1njchw-public-safety-25-public-data-fn1792"
  role          = aws_iam_role.licensing_9_audit_svc3010.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_public_data_fn2287" {
  function_name = "arior-1njchw-public-safety-25-public-data-fn2287"
  role          = aws_iam_role.public_safety_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_records_fn2284" {
  function_name = "arior-1njchw-public-safety-25-records-fn2284"
  role          = aws_iam_role.public_safety_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_records_fn2379" {
  function_name = "arior-1njchw-public-safety-25-records-fn2379"
  role          = aws_iam_role.public_safety_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_25_records_fn611" {
  function_name = "arior-1njchw-public-safety-25-records-fn611"
  role          = aws_iam_role.hr_4_audit_svc3788.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_26_backups_fn811" {
  function_name = "arior-1njchw-public-safety-26-backups-fn811"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_26_gis_layers_fn1980" {
  function_name = "arior-1njchw-public-safety-26-gis-layers-fn1980"
  role          = aws_iam_role.hr_6_backups_svc5476.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_26_gis_layers_fn2104" {
  function_name = "arior-1njchw-public-safety-26-gis-layers-fn2104"
  role          = aws_iam_role.licensing_21_gis_layers_svc3986.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_26_gis_layers_fn2337" {
  function_name = "arior-1njchw-public-safety-26-gis-layers-fn2337"
  role          = aws_iam_role.public_safety_35_gis_layers_svc4574.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_26_gis_layers_fn569" {
  function_name = "arior-1njchw-public-safety-26-gis-layers-fn569"
  role          = aws_iam_role.tax_22_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_27_audit_fn2137" {
  function_name = "arior-1njchw-public-safety-27-audit-fn2137"
  role          = aws_iam_role.public_safety_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_27_audit_fn2294" {
  function_name = "arior-1njchw-public-safety-27-audit-fn2294"
  role          = aws_iam_role.public_safety_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_27_audit_fn578" {
  function_name = "arior-1njchw-public-safety-27-audit-fn578"
  role          = aws_iam_role.it_ops_7_gis_layers_svc4241.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn1338" {
  function_name = "arior-1njchw-public-safety-28-backups-fn1338"
  role          = aws_iam_role.gis_12_gis_layers_svc1383.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn1459" {
  function_name = "arior-1njchw-public-safety-28-backups-fn1459"
  role          = aws_iam_role.benefits_13_records_svc3483.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn169" {
  function_name = "arior-1njchw-public-safety-28-backups-fn169"
  role          = aws_iam_role.public_safety_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn1773" {
  function_name = "arior-1njchw-public-safety-28-backups-fn1773"
  role          = aws_iam_role.licensing_24_filings_svc7350.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn1912" {
  function_name = "arior-1njchw-public-safety-28-backups-fn1912"
  role          = aws_iam_role.open_data_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn2103" {
  function_name = "arior-1njchw-public-safety-28-backups-fn2103"
  role          = aws_iam_role.procurement_32_public_data_svc7864.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_28_backups_fn2117" {
  function_name = "arior-1njchw-public-safety-28-backups-fn2117"
  role          = aws_iam_role.public_safety_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_29_public_data_fn551" {
  function_name = "arior-1njchw-public-safety-29-public-data-fn551"
  role          = aws_iam_role.citizen_portal_15_public_data_svc6824.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_29_public_data_fn559" {
  function_name = "arior-1njchw-public-safety-29-public-data-fn559"
  role          = aws_iam_role.public_safety_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_29_public_data_fn855" {
  function_name = "arior-1njchw-public-safety-29-public-data-fn855"
  role          = aws_iam_role.hr_15_public_data_svc6000.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_3_public_data_fn2020" {
  function_name = "arior-1njchw-public-safety-3-public-data-fn2020"
  role          = aws_iam_role.public_safety_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_3_records_fn2123" {
  function_name = "arior-1njchw-public-safety-3-records-fn2123"
  role          = aws_iam_role.public_safety_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_3_records_fn753" {
  function_name = "arior-1njchw-public-safety-3-records-fn753"
  role          = aws_iam_role.public_safety_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_30_audit_fn1206" {
  function_name = "arior-1njchw-public-safety-30-audit-fn1206"
  role          = aws_iam_role.public_safety_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_30_audit_fn1234" {
  function_name = "arior-1njchw-public-safety-30-audit-fn1234"
  role          = aws_iam_role.public_safety_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_30_audit_fn1319" {
  function_name = "arior-1njchw-public-safety-30-audit-fn1319"
  role          = aws_iam_role.public_safety_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_30_audit_fn919" {
  function_name = "arior-1njchw-public-safety-30-audit-fn919"
  role          = aws_iam_role.public_safety_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_30_records_fn813" {
  function_name = "arior-1njchw-public-safety-30-records-fn813"
  role          = aws_iam_role.it_ops_3_filings_svc865.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_audit_fn1382" {
  function_name = "arior-1njchw-public-safety-31-audit-fn1382"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_audit_fn83" {
  function_name = "arior-1njchw-public-safety-31-audit-fn83"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_backups_fn1169" {
  function_name = "arior-1njchw-public-safety-31-backups-fn1169"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_backups_fn1614" {
  function_name = "arior-1njchw-public-safety-31-backups-fn1614"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_backups_fn2052" {
  function_name = "arior-1njchw-public-safety-31-backups-fn2052"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_public_data_fn1103" {
  function_name = "arior-1njchw-public-safety-31-public-data-fn1103"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_public_data_fn113" {
  function_name = "arior-1njchw-public-safety-31-public-data-fn113"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_public_data_fn1790" {
  function_name = "arior-1njchw-public-safety-31-public-data-fn1790"
  role          = aws_iam_role.public_safety_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_31_public_data_fn211" {
  function_name = "arior-1njchw-public-safety-31-public-data-fn211"
  role          = aws_iam_role.tax_32_gis_layers_svc3705.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_audit_fn752" {
  function_name = "arior-1njchw-public-safety-32-audit-fn752"
  role          = aws_iam_role.public_safety_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_public_data_fn1067" {
  function_name = "arior-1njchw-public-safety-32-public-data-fn1067"
  role          = aws_iam_role.public_safety_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn103" {
  function_name = "arior-1njchw-public-safety-32-records-fn103"
  role          = aws_iam_role.gis_12_gis_layers_svc5127.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn1754" {
  function_name = "arior-1njchw-public-safety-32-records-fn1754"
  role          = aws_iam_role.benefits_22_public_data_svc5671.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn2102" {
  function_name = "arior-1njchw-public-safety-32-records-fn2102"
  role          = aws_iam_role.benefits_23_public_data_svc1107.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn228" {
  function_name = "arior-1njchw-public-safety-32-records-fn228"
  role          = aws_iam_role.it_ops_33_records_svc7881.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn2461" {
  function_name = "arior-1njchw-public-safety-32-records-fn2461"
  role          = aws_iam_role.public_safety_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_32_records_fn900" {
  function_name = "arior-1njchw-public-safety-32-records-fn900"
  role          = aws_iam_role.procurement_28_gis_layers_svc3656.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn1284" {
  function_name = "arior-1njchw-public-safety-33-records-fn1284"
  role          = aws_iam_role.public_safety_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn1337" {
  function_name = "arior-1njchw-public-safety-33-records-fn1337"
  role          = aws_iam_role.tax_6_records_svc1729.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn1512" {
  function_name = "arior-1njchw-public-safety-33-records-fn1512"
  role          = aws_iam_role.tax_19_records_svc637.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn1992" {
  function_name = "arior-1njchw-public-safety-33-records-fn1992"
  role          = aws_iam_role.public_safety_34_records_svc6642.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn2308" {
  function_name = "arior-1njchw-public-safety-33-records-fn2308"
  role          = aws_iam_role.public_safety_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn340" {
  function_name = "arior-1njchw-public-safety-33-records-fn340"
  role          = aws_iam_role.public_safety_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_33_records_fn390" {
  function_name = "arior-1njchw-public-safety-33-records-fn390"
  role          = aws_iam_role.public_safety_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_34_backups_fn790" {
  function_name = "arior-1njchw-public-safety-34-backups-fn790"
  role          = aws_iam_role.benefits_27_gis_layers_svc5731.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_34_records_fn1015" {
  function_name = "arior-1njchw-public-safety-34-records-fn1015"
  role          = aws_iam_role.public_safety_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn1143" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn1143"
  role          = aws_iam_role.public_safety_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn161" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn161"
  role          = aws_iam_role.records_19_public_data_svc7289.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn2194" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn2194"
  role          = aws_iam_role.open_data_31_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn2422" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn2422"
  role          = aws_iam_role.hr_filings_svc3336.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn917" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn917"
  role          = aws_iam_role.audit_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_35_gis_layers_fn972" {
  function_name = "arior-1njchw-public-safety-35-gis-layers-fn972"
  role          = aws_iam_role.public_safety_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn1231" {
  function_name = "arior-1njchw-public-safety-4-backups-fn1231"
  role          = aws_iam_role.benefits_6_filings_svc5479.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn224" {
  function_name = "arior-1njchw-public-safety-4-backups-fn224"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn2367" {
  function_name = "arior-1njchw-public-safety-4-backups-fn2367"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn506" {
  function_name = "arior-1njchw-public-safety-4-backups-fn506"
  role          = aws_iam_role.it_ops_13_records_svc569.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn55" {
  function_name = "arior-1njchw-public-safety-4-backups-fn55"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_backups_fn839" {
  function_name = "arior-1njchw-public-safety-4-backups-fn839"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_gis_layers_fn139" {
  function_name = "arior-1njchw-public-safety-4-gis-layers-fn139"
  role          = aws_iam_role.open_data_4_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_gis_layers_fn141" {
  function_name = "arior-1njchw-public-safety-4-gis-layers-fn141"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_gis_layers_fn1507" {
  function_name = "arior-1njchw-public-safety-4-gis-layers-fn1507"
  role          = aws_iam_role.public_safety_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_4_gis_layers_fn2168" {
  function_name = "arior-1njchw-public-safety-4-gis-layers-fn2168"
  role          = aws_iam_role.citizen_portal_13_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_5_backups_fn1005" {
  function_name = "arior-1njchw-public-safety-5-backups-fn1005"
  role          = aws_iam_role.public_safety_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_5_backups_fn2459" {
  function_name = "arior-1njchw-public-safety-5-backups-fn2459"
  role          = aws_iam_role.audit_33_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_5_public_data_fn2417" {
  function_name = "arior-1njchw-public-safety-5-public-data-fn2417"
  role          = aws_iam_role.public_safety_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_backups_fn1176" {
  function_name = "arior-1njchw-public-safety-6-backups-fn1176"
  role          = aws_iam_role.procurement_34_audit_svc4144.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_backups_fn63" {
  function_name = "arior-1njchw-public-safety-6-backups-fn63"
  role          = aws_iam_role.benefits_11_backups_svc4707.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_gis_layers_fn1495" {
  function_name = "arior-1njchw-public-safety-6-gis-layers-fn1495"
  role          = aws_iam_role.public_safety_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_gis_layers_fn1629" {
  function_name = "arior-1njchw-public-safety-6-gis-layers-fn1629"
  role          = aws_iam_role.open_data_8_filings_svc3835.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_gis_layers_fn280" {
  function_name = "arior-1njchw-public-safety-6-gis-layers-fn280"
  role          = aws_iam_role.licensing_14_audit_svc1822.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_gis_layers_fn472" {
  function_name = "arior-1njchw-public-safety-6-gis-layers-fn472"
  role          = aws_iam_role.public_safety_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_gis_layers_fn128" {
  function_name = "arior-1njchw-public-safety-7-gis-layers-fn128"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_gis_layers_fn1669" {
  function_name = "arior-1njchw-public-safety-7-gis-layers-fn1669"
  role          = aws_iam_role.licensing_33_audit_svc5794.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_gis_layers_fn1953" {
  function_name = "arior-1njchw-public-safety-7-gis-layers-fn1953"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_gis_layers_fn660" {
  function_name = "arior-1njchw-public-safety-7-gis-layers-fn660"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_8_filings_fn1757" {
  function_name = "arior-1njchw-public-safety-8-filings-fn1757"
  role          = aws_iam_role.public_safety_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_8_filings_fn443" {
  function_name = "arior-1njchw-public-safety-8-filings-fn443"
  role          = aws_iam_role.hr_28_gis_layers_svc5324.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_9_filings_fn1282" {
  function_name = "arior-1njchw-public-safety-9-filings-fn1282"
  role          = aws_iam_role.public_safety_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_9_filings_fn1965" {
  function_name = "arior-1njchw-public-safety-9-filings-fn1965"
  role          = aws_iam_role.public_safety_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_9_gis_layers_fn1439" {
  function_name = "arior-1njchw-public-safety-9-gis-layers-fn1439"
  role          = aws_iam_role.gis_8_public_data_svc3415.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_9_public_data_fn2395" {
  function_name = "arior-1njchw-public-safety-9-public-data-fn2395"
  role          = aws_iam_role.public_safety_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn1110" {
  function_name = "arior-1njchw-public-safety-filings-fn1110"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn1778" {
  function_name = "arior-1njchw-public-safety-filings-fn1778"
  role          = aws_iam_role.it_ops_34_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn1798" {
  function_name = "arior-1njchw-public-safety-filings-fn1798"
  role          = aws_iam_role.citizen_portal_8_public_data_svc3412.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn1920" {
  function_name = "arior-1njchw-public-safety-filings-fn1920"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn1937" {
  function_name = "arior-1njchw-public-safety-filings-fn1937"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn2233" {
  function_name = "arior-1njchw-public-safety-filings-fn2233"
  role          = aws_iam_role.it_ops_8_public_data_svc1757.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn2343" {
  function_name = "arior-1njchw-public-safety-filings-fn2343"
  role          = aws_iam_role.licensing_13_public_data_svc5554.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn2364" {
  function_name = "arior-1njchw-public-safety-filings-fn2364"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn2407" {
  function_name = "arior-1njchw-public-safety-filings-fn2407"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn2421" {
  function_name = "arior-1njchw-public-safety-filings-fn2421"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn452" {
  function_name = "arior-1njchw-public-safety-filings-fn452"
  role          = aws_iam_role.public_safety_25_public_data_svc3622.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn56" {
  function_name = "arior-1njchw-public-safety-filings-fn56"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_filings_fn96" {
  function_name = "arior-1njchw-public-safety-filings-fn96"
  role          = aws_iam_role.public_safety_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_audit_fn1012" {
  function_name = "arior-1njchw-records-10-audit-fn1012"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_audit_fn215" {
  function_name = "arior-1njchw-records-10-audit-fn215"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_audit_fn2280" {
  function_name = "arior-1njchw-records-10-audit-fn2280"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_audit_fn450" {
  function_name = "arior-1njchw-records-10-audit-fn450"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_audit_fn638" {
  function_name = "arior-1njchw-records-10-audit-fn638"
  role          = aws_iam_role.tax_35_records_svc5821.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_public_data_fn1368" {
  function_name = "arior-1njchw-records-10-public-data-fn1368"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_10_public_data_fn841" {
  function_name = "arior-1njchw-records-10-public-data-fn841"
  role          = aws_iam_role.records_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn1668" {
  function_name = "arior-1njchw-records-11-filings-fn1668"
  role          = aws_iam_role.it_ops_4_backups_svc6285.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn2059" {
  function_name = "arior-1njchw-records-11-filings-fn2059"
  role          = aws_iam_role.records_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn2120" {
  function_name = "arior-1njchw-records-11-filings-fn2120"
  role          = aws_iam_role.records_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn214" {
  function_name = "arior-1njchw-records-11-filings-fn214"
  role          = aws_iam_role.it_ops_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn2265" {
  function_name = "arior-1njchw-records-11-filings-fn2265"
  role          = aws_iam_role.licensing_15_gis_layers_svc586.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn629" {
  function_name = "arior-1njchw-records-11-filings-fn629"
  role          = aws_iam_role.citizen_portal_23_audit_svc7336.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_filings_fn971" {
  function_name = "arior-1njchw-records-11-filings-fn971"
  role          = aws_iam_role.records_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_11_gis_layers_fn2446" {
  function_name = "arior-1njchw-records-11-gis-layers-fn2446"
  role          = aws_iam_role.records_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_audit_fn1879" {
  function_name = "arior-1njchw-records-12-audit-fn1879"
  role          = aws_iam_role.records_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_audit_fn2098" {
  function_name = "arior-1njchw-records-12-audit-fn2098"
  role          = aws_iam_role.records_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_audit_fn75" {
  function_name = "arior-1njchw-records-12-audit-fn75"
  role          = aws_iam_role.records_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_backups_fn627" {
  function_name = "arior-1njchw-records-12-backups-fn627"
  role          = aws_iam_role.records_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_filings_fn1555" {
  function_name = "arior-1njchw-records-12-filings-fn1555"
  role          = aws_iam_role.public_safety_35_gis_layers_svc6238.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_filings_fn1784" {
  function_name = "arior-1njchw-records-12-filings-fn1784"
  role          = aws_iam_role.procurement_23_records_svc5260.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_12_filings_fn382" {
  function_name = "arior-1njchw-records-12-filings-fn382"
  role          = aws_iam_role.records_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_13_filings_fn1989" {
  function_name = "arior-1njchw-records-13-filings-fn1989"
  role          = aws_iam_role.records_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_13_filings_fn2041" {
  function_name = "arior-1njchw-records-13-filings-fn2041"
  role          = aws_iam_role.gis_11_filings_svc3035.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_13_filings_fn99" {
  function_name = "arior-1njchw-records-13-filings-fn99"
  role          = aws_iam_role.records_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn116" {
  function_name = "arior-1njchw-records-14-audit-fn116"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn1465" {
  function_name = "arior-1njchw-records-14-audit-fn1465"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn2173" {
  function_name = "arior-1njchw-records-14-audit-fn2173"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn2285" {
  function_name = "arior-1njchw-records-14-audit-fn2285"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn2454" {
  function_name = "arior-1njchw-records-14-audit-fn2454"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn301" {
  function_name = "arior-1njchw-records-14-audit-fn301"
  role          = aws_iam_role.audit_31_public_data_svc5362.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_14_audit_fn546" {
  function_name = "arior-1njchw-records-14-audit-fn546"
  role          = aws_iam_role.records_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_backups_fn1009" {
  function_name = "arior-1njchw-records-15-backups-fn1009"
  role          = aws_iam_role.licensing_19_backups_svc1882.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_backups_fn1591" {
  function_name = "arior-1njchw-records-15-backups-fn1591"
  role          = aws_iam_role.records_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_backups_fn898" {
  function_name = "arior-1njchw-records-15-backups-fn898"
  role          = aws_iam_role.records_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_gis_layers_fn1212" {
  function_name = "arior-1njchw-records-15-gis-layers-fn1212"
  role          = aws_iam_role.public_safety_29_public_data_svc2838.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_gis_layers_fn2024" {
  function_name = "arior-1njchw-records-15-gis-layers-fn2024"
  role          = aws_iam_role.records_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_gis_layers_fn249" {
  function_name = "arior-1njchw-records-15-gis-layers-fn249"
  role          = aws_iam_role.records_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_15_gis_layers_fn795" {
  function_name = "arior-1njchw-records-15-gis-layers-fn795"
  role          = aws_iam_role.records_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_16_audit_fn1365" {
  function_name = "arior-1njchw-records-16-audit-fn1365"
  role          = aws_iam_role.audit_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_16_audit_fn1429" {
  function_name = "arior-1njchw-records-16-audit-fn1429"
  role          = aws_iam_role.records_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_16_audit_fn2237" {
  function_name = "arior-1njchw-records-16-audit-fn2237"
  role          = aws_iam_role.records_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_16_audit_fn516" {
  function_name = "arior-1njchw-records-16-audit-fn516"
  role          = aws_iam_role.records_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_16_audit_fn642" {
  function_name = "arior-1njchw-records-16-audit-fn642"
  role          = aws_iam_role.records_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_17_backups_fn131" {
  function_name = "arior-1njchw-records-17-backups-fn131"
  role          = aws_iam_role.licensing_22_filings_svc3166.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_17_backups_fn1831" {
  function_name = "arior-1njchw-records-17-backups-fn1831"
  role          = aws_iam_role.records_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_17_backups_fn1979" {
  function_name = "arior-1njchw-records-17-backups-fn1979"
  role          = aws_iam_role.records_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_17_backups_fn2244" {
  function_name = "arior-1njchw-records-17-backups-fn2244"
  role          = aws_iam_role.public_safety_35_gis_layers_svc3326.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_17_backups_fn852" {
  function_name = "arior-1njchw-records-17-backups-fn852"
  role          = aws_iam_role.records_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_18_public_data_fn1088" {
  function_name = "arior-1njchw-records-18-public-data-fn1088"
  role          = aws_iam_role.records_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_18_public_data_fn1949" {
  function_name = "arior-1njchw-records-18-public-data-fn1949"
  role          = aws_iam_role.procurement_21_backups_svc6068.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_18_public_data_fn2004" {
  function_name = "arior-1njchw-records-18-public-data-fn2004"
  role          = aws_iam_role.records_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_18_public_data_fn929" {
  function_name = "arior-1njchw-records-18-public-data-fn929"
  role          = aws_iam_role.records_6_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_19_public_data_fn1261" {
  function_name = "arior-1njchw-records-19-public-data-fn1261"
  role          = aws_iam_role.records_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_19_public_data_fn1410" {
  function_name = "arior-1njchw-records-19-public-data-fn1410"
  role          = aws_iam_role.records_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_19_public_data_fn1927" {
  function_name = "arior-1njchw-records-19-public-data-fn1927"
  role          = aws_iam_role.records_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_19_public_data_fn2242" {
  function_name = "arior-1njchw-records-19-public-data-fn2242"
  role          = aws_iam_role.records_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_19_public_data_fn602" {
  function_name = "arior-1njchw-records-19-public-data-fn602"
  role          = aws_iam_role.records_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_audit_fn1213" {
  function_name = "arior-1njchw-records-2-audit-fn1213"
  role          = aws_iam_role.open_data_31_gis_layers_svc5775.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_audit_fn1777" {
  function_name = "arior-1njchw-records-2-audit-fn1777"
  role          = aws_iam_role.open_data_27_records_svc3231.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_audit_fn479" {
  function_name = "arior-1njchw-records-2-audit-fn479"
  role          = aws_iam_role.licensing_24_backups_svc1942.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_audit_fn854" {
  function_name = "arior-1njchw-records-2-audit-fn854"
  role          = aws_iam_role.gis_8_audit_svc3831.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_public_data_fn1517" {
  function_name = "arior-1njchw-records-2-public-data-fn1517"
  role          = aws_iam_role.records_35_gis_layers_svc6649.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_public_data_fn556" {
  function_name = "arior-1njchw-records-2-public-data-fn556"
  role          = aws_iam_role.records_31_backups_svc3273.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn1434" {
  function_name = "arior-1njchw-records-20-public-data-fn1434"
  role          = aws_iam_role.records_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn1657" {
  function_name = "arior-1njchw-records-20-public-data-fn1657"
  role          = aws_iam_role.citizen_portal_34_public_data_svc5804.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn1794" {
  function_name = "arior-1njchw-records-20-public-data-fn1794"
  role          = aws_iam_role.records_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn5" {
  function_name = "arior-1njchw-records-20-public-data-fn5"
  role          = aws_iam_role.citizen_portal_28_gis_layers_svc2404.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn864" {
  function_name = "arior-1njchw-records-20-public-data-fn864"
  role          = aws_iam_role.records_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_public_data_fn867" {
  function_name = "arior-1njchw-records-20-public-data-fn867"
  role          = aws_iam_role.hr_14_records_svc3908.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_records_fn1596" {
  function_name = "arior-1njchw-records-20-records-fn1596"
  role          = aws_iam_role.licensing_12_filings_svc5542.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_records_fn1994" {
  function_name = "arior-1njchw-records-20-records-fn1994"
  role          = aws_iam_role.citizen_portal_18_audit_svc5612.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_records_fn2009" {
  function_name = "arior-1njchw-records-20-records-fn2009"
  role          = aws_iam_role.records_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_records_fn2402" {
  function_name = "arior-1njchw-records-20-records-fn2402"
  role          = aws_iam_role.public_safety_28_backups_svc1578.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_20_records_fn46" {
  function_name = "arior-1njchw-records-20-records-fn46"
  role          = aws_iam_role.records_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_21_gis_layers_fn918" {
  function_name = "arior-1njchw-records-21-gis-layers-fn918"
  role          = aws_iam_role.gis_12_gis_layers_svc2631.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_21_gis_layers_fn962" {
  function_name = "arior-1njchw-records-21-gis-layers-fn962"
  role          = aws_iam_role.records_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_22_filings_fn2142" {
  function_name = "arior-1njchw-records-22-filings-fn2142"
  role          = aws_iam_role.records_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_22_filings_fn328" {
  function_name = "arior-1njchw-records-22-filings-fn328"
  role          = aws_iam_role.benefits_16_backups_svc4351.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_22_public_data_fn1081" {
  function_name = "arior-1njchw-records-22-public-data-fn1081"
  role          = aws_iam_role.records_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_22_public_data_fn1722" {
  function_name = "arior-1njchw-records-22-public-data-fn1722"
  role          = aws_iam_role.records_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_22_public_data_fn2499" {
  function_name = "arior-1njchw-records-22-public-data-fn2499"
  role          = aws_iam_role.records_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_23_audit_fn1810" {
  function_name = "arior-1njchw-records-23-audit-fn1810"
  role          = aws_iam_role.records_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_23_audit_fn7" {
  function_name = "arior-1njchw-records-23-audit-fn7"
  role          = aws_iam_role.records_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_23_records_fn1573" {
  function_name = "arior-1njchw-records-23-records-fn1573"
  role          = aws_iam_role.records_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_23_records_fn2" {
  function_name = "arior-1njchw-records-23-records-fn2"
  role          = aws_iam_role.records_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_24_audit_fn2368" {
  function_name = "arior-1njchw-records-24-audit-fn2368"
  role          = aws_iam_role.records_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_24_backups_fn1149" {
  function_name = "arior-1njchw-records-24-backups-fn1149"
  role          = aws_iam_role.gis_10_audit_svc3439.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_backups_fn1318" {
  function_name = "arior-1njchw-records-25-backups-fn1318"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_backups_fn1862" {
  function_name = "arior-1njchw-records-25-backups-fn1862"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_backups_fn205" {
  function_name = "arior-1njchw-records-25-backups-fn205"
  role          = aws_iam_role.citizen_portal_29_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_backups_fn601" {
  function_name = "arior-1njchw-records-25-backups-fn601"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_backups_fn709" {
  function_name = "arior-1njchw-records-25-backups-fn709"
  role          = aws_iam_role.it_ops_23_backups_svc5681.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_gis_layers_fn186" {
  function_name = "arior-1njchw-records-25-gis-layers-fn186"
  role          = aws_iam_role.it_ops_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_gis_layers_fn932" {
  function_name = "arior-1njchw-records-25-gis-layers-fn932"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_public_data_fn1958" {
  function_name = "arior-1njchw-records-25-public-data-fn1958"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_25_public_data_fn2226" {
  function_name = "arior-1njchw-records-25-public-data-fn2226"
  role          = aws_iam_role.records_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_26_audit_fn1622" {
  function_name = "arior-1njchw-records-26-audit-fn1622"
  role          = aws_iam_role.public_safety_7_gis_layers_svc494.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_26_audit_fn414" {
  function_name = "arior-1njchw-records-26-audit-fn414"
  role          = aws_iam_role.records_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_27_gis_layers_fn1685" {
  function_name = "arior-1njchw-records-27-gis-layers-fn1685"
  role          = aws_iam_role.records_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_27_gis_layers_fn1865" {
  function_name = "arior-1njchw-records-27-gis-layers-fn1865"
  role          = aws_iam_role.records_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_27_gis_layers_fn2206" {
  function_name = "arior-1njchw-records-27-gis-layers-fn2206"
  role          = aws_iam_role.records_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_27_gis_layers_fn53" {
  function_name = "arior-1njchw-records-27-gis-layers-fn53"
  role          = aws_iam_role.records_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_27_gis_layers_fn777" {
  function_name = "arior-1njchw-records-27-gis-layers-fn777"
  role          = aws_iam_role.benefits_9_public_data_svc6763.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_gis_layers_fn1100" {
  function_name = "arior-1njchw-records-28-gis-layers-fn1100"
  role          = aws_iam_role.records_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_gis_layers_fn1851" {
  function_name = "arior-1njchw-records-28-gis-layers-fn1851"
  role          = aws_iam_role.records_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_gis_layers_fn1890" {
  function_name = "arior-1njchw-records-28-gis-layers-fn1890"
  role          = aws_iam_role.gis_17_backups_svc2691.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_gis_layers_fn558" {
  function_name = "arior-1njchw-records-28-gis-layers-fn558"
  role          = aws_iam_role.records_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_public_data_fn501" {
  function_name = "arior-1njchw-records-28-public-data-fn501"
  role          = aws_iam_role.records_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_28_public_data_fn79" {
  function_name = "arior-1njchw-records-28-public-data-fn79"
  role          = aws_iam_role.records_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_29_backups_fn135" {
  function_name = "arior-1njchw-records-29-backups-fn135"
  role          = aws_iam_role.records_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_29_backups_fn1474" {
  function_name = "arior-1njchw-records-29-backups-fn1474"
  role          = aws_iam_role.records_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_29_backups_fn1827" {
  function_name = "arior-1njchw-records-29-backups-fn1827"
  role          = aws_iam_role.records_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_29_backups_fn2259" {
  function_name = "arior-1njchw-records-29-backups-fn2259"
  role          = aws_iam_role.hr_30_filings_svc4100.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_29_backups_fn37" {
  function_name = "arior-1njchw-records-29-backups-fn37"
  role          = aws_iam_role.records_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_gis_layers_fn1007" {
  function_name = "arior-1njchw-records-3-gis-layers-fn1007"
  role          = aws_iam_role.open_data_3_filings_svc2111.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_gis_layers_fn1973" {
  function_name = "arior-1njchw-records-3-gis-layers-fn1973"
  role          = aws_iam_role.open_data_filings_svc7911.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_gis_layers_fn2264" {
  function_name = "arior-1njchw-records-3-gis-layers-fn2264"
  role          = aws_iam_role.records_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_gis_layers_fn51" {
  function_name = "arior-1njchw-records-3-gis-layers-fn51"
  role          = aws_iam_role.citizen_portal_14_gis_layers_svc7644.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_public_data_fn1200" {
  function_name = "arior-1njchw-records-3-public-data-fn1200"
  role          = aws_iam_role.records_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_public_data_fn2022" {
  function_name = "arior-1njchw-records-3-public-data-fn2022"
  role          = aws_iam_role.audit_15_audit_svc3922.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_public_data_fn2040" {
  function_name = "arior-1njchw-records-3-public-data-fn2040"
  role          = aws_iam_role.records_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_backups_fn1767" {
  function_name = "arior-1njchw-records-30-backups-fn1767"
  role          = aws_iam_role.records_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_public_data_fn308" {
  function_name = "arior-1njchw-records-30-public-data-fn308"
  role          = aws_iam_role.citizen_portal_29_gis_layers_svc6576.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_records_fn1315" {
  function_name = "arior-1njchw-records-30-records-fn1315"
  role          = aws_iam_role.records_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_records_fn2088" {
  function_name = "arior-1njchw-records-30-records-fn2088"
  role          = aws_iam_role.records_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_records_fn2207" {
  function_name = "arior-1njchw-records-30-records-fn2207"
  role          = aws_iam_role.audit_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_30_records_fn576" {
  function_name = "arior-1njchw-records-30-records-fn576"
  role          = aws_iam_role.records_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_31_audit_fn1044" {
  function_name = "arior-1njchw-records-31-audit-fn1044"
  role          = aws_iam_role.benefits_26_filings_svc6967.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_31_audit_fn1615" {
  function_name = "arior-1njchw-records-31-audit-fn1615"
  role          = aws_iam_role.records_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_31_backups_fn1570" {
  function_name = "arior-1njchw-records-31-backups-fn1570"
  role          = aws_iam_role.records_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_31_backups_fn1781" {
  function_name = "arior-1njchw-records-31-backups-fn1781"
  role          = aws_iam_role.records_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_31_public_data_fn2309" {
  function_name = "arior-1njchw-records-31-public-data-fn2309"
  role          = aws_iam_role.tax_24_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_audit_fn1317" {
  function_name = "arior-1njchw-records-32-audit-fn1317"
  role          = aws_iam_role.records_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_audit_fn2038" {
  function_name = "arior-1njchw-records-32-audit-fn2038"
  role          = aws_iam_role.records_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_audit_fn2353" {
  function_name = "arior-1njchw-records-32-audit-fn2353"
  role          = aws_iam_role.open_data_32_filings_svc3291.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_backups_fn865" {
  function_name = "arior-1njchw-records-32-backups-fn865"
  role          = aws_iam_role.records_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_public_data_fn1198" {
  function_name = "arior-1njchw-records-32-public-data-fn1198"
  role          = aws_iam_role.it_ops_audit_svc7913.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_public_data_fn1400" {
  function_name = "arior-1njchw-records-32-public-data-fn1400"
  role          = aws_iam_role.tax_21_backups_svc3989.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_public_data_fn1782" {
  function_name = "arior-1njchw-records-32-public-data-fn1782"
  role          = aws_iam_role.records_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_public_data_fn1936" {
  function_name = "arior-1njchw-records-32-public-data-fn1936"
  role          = aws_iam_role.records_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_32_public_data_fn877" {
  function_name = "arior-1njchw-records-32-public-data-fn877"
  role          = aws_iam_role.procurement_26_records_svc2800.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn1380" {
  function_name = "arior-1njchw-records-33-backups-fn1380"
  role          = aws_iam_role.tax_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn1881" {
  function_name = "arior-1njchw-records-33-backups-fn1881"
  role          = aws_iam_role.records_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn2122" {
  function_name = "arior-1njchw-records-33-backups-fn2122"
  role          = aws_iam_role.audit_26_gis_layers_svc6550.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn2275" {
  function_name = "arior-1njchw-records-33-backups-fn2275"
  role          = aws_iam_role.licensing_19_records_svc4794.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn2405" {
  function_name = "arior-1njchw-records-33-backups-fn2405"
  role          = aws_iam_role.audit_11_public_data_svc3874.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn31" {
  function_name = "arior-1njchw-records-33-backups-fn31"
  role          = aws_iam_role.records_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn444" {
  function_name = "arior-1njchw-records-33-backups-fn444"
  role          = aws_iam_role.records_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_33_backups_fn634" {
  function_name = "arior-1njchw-records-33-backups-fn634"
  role          = aws_iam_role.records_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_34_audit_fn2225" {
  function_name = "arior-1njchw-records-34-audit-fn2225"
  role          = aws_iam_role.tax_11_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_34_audit_fn824" {
  function_name = "arior-1njchw-records-34-audit-fn824"
  role          = aws_iam_role.records_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_34_backups_fn1227" {
  function_name = "arior-1njchw-records-34-backups-fn1227"
  role          = aws_iam_role.records_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_34_backups_fn985" {
  function_name = "arior-1njchw-records-34-backups-fn985"
  role          = aws_iam_role.records_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_34_public_data_fn60" {
  function_name = "arior-1njchw-records-34-public-data-fn60"
  role          = aws_iam_role.records_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_35_gis_layers_fn1824" {
  function_name = "arior-1njchw-records-35-gis-layers-fn1824"
  role          = aws_iam_role.records_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_35_records_fn2227" {
  function_name = "arior-1njchw-records-35-records-fn2227"
  role          = aws_iam_role.benefits_31_gis_layers_svc2451.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_35_records_fn2229" {
  function_name = "arior-1njchw-records-35-records-fn2229"
  role          = aws_iam_role.records_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_filings_fn2495" {
  function_name = "arior-1njchw-records-4-filings-fn2495"
  role          = aws_iam_role.records_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_filings_fn257" {
  function_name = "arior-1njchw-records-4-filings-fn257"
  role          = aws_iam_role.public_safety_35_gis_layers_svc7070.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_filings_fn904" {
  function_name = "arior-1njchw-records-4-filings-fn904"
  role          = aws_iam_role.records_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_gis_layers_fn381" {
  function_name = "arior-1njchw-records-4-gis-layers-fn381"
  role          = aws_iam_role.gis_19_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_gis_layers_fn570" {
  function_name = "arior-1njchw-records-4-gis-layers-fn570"
  role          = aws_iam_role.records_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_records_fn1326" {
  function_name = "arior-1njchw-records-4-records-fn1326"
  role          = aws_iam_role.records_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_backups_fn1060" {
  function_name = "arior-1njchw-records-5-backups-fn1060"
  role          = aws_iam_role.records_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_backups_fn1361" {
  function_name = "arior-1njchw-records-5-backups-fn1361"
  role          = aws_iam_role.citizen_portal_2_public_data_svc2924.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_backups_fn1586" {
  function_name = "arior-1njchw-records-5-backups-fn1586"
  role          = aws_iam_role.records_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_backups_fn829" {
  function_name = "arior-1njchw-records-5-backups-fn829"
  role          = aws_iam_role.records_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_filings_fn1522" {
  function_name = "arior-1njchw-records-5-filings-fn1522"
  role          = aws_iam_role.procurement_7_records_svc492.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_filings_fn156" {
  function_name = "arior-1njchw-records-5-filings-fn156"
  role          = aws_iam_role.procurement_26_audit_svc3216.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_filings_fn1836" {
  function_name = "arior-1njchw-records-5-filings-fn1836"
  role          = aws_iam_role.records_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn1436" {
  function_name = "arior-1njchw-records-6-audit-fn1436"
  role          = aws_iam_role.open_data_5_records_svc6711.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn1988" {
  function_name = "arior-1njchw-records-6-audit-fn1988"
  role          = aws_iam_role.open_data_23_audit_svc2767.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn2081" {
  function_name = "arior-1njchw-records-6-audit-fn2081"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_gis_layers_fn1028" {
  function_name = "arior-1njchw-records-6-gis-layers-fn1028"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_gis_layers_fn1638" {
  function_name = "arior-1njchw-records-6-gis-layers-fn1638"
  role          = aws_iam_role.records_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_gis_layers_fn398" {
  function_name = "arior-1njchw-records-6-gis-layers-fn398"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_public_data_fn2064" {
  function_name = "arior-1njchw-records-6-public-data-fn2064"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_public_data_fn269" {
  function_name = "arior-1njchw-records-6-public-data-fn269"
  role          = aws_iam_role.public_safety_24_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_public_data_fn659" {
  function_name = "arior-1njchw-records-6-public-data-fn659"
  role          = aws_iam_role.gis_4_records_svc6279.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_public_data_fn1951" {
  function_name = "arior-1njchw-records-7-public-data-fn1951"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_public_data_fn2132" {
  function_name = "arior-1njchw-records-7-public-data-fn2132"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_public_data_fn445" {
  function_name = "arior-1njchw-records-7-public-data-fn445"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_public_data_fn455" {
  function_name = "arior-1njchw-records-7-public-data-fn455"
  role          = aws_iam_role.benefits_15_filings_svc2675.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_public_data_fn73" {
  function_name = "arior-1njchw-records-7-public-data-fn73"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_audit_fn1062" {
  function_name = "arior-1njchw-records-8-audit-fn1062"
  role          = aws_iam_role.public_safety_5_backups_svc5046.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_audit_fn1165" {
  function_name = "arior-1njchw-records-8-audit-fn1165"
  role          = aws_iam_role.records_27_gis_layers_svc1561.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_audit_fn891" {
  function_name = "arior-1njchw-records-8-audit-fn891"
  role          = aws_iam_role.records_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_audit_fn908" {
  function_name = "arior-1njchw-records-8-audit-fn908"
  role          = aws_iam_role.records_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_records_fn363" {
  function_name = "arior-1njchw-records-8-records-fn363"
  role          = aws_iam_role.records_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_records_fn383" {
  function_name = "arior-1njchw-records-8-records-fn383"
  role          = aws_iam_role.records_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_8_records_fn69" {
  function_name = "arior-1njchw-records-8-records-fn69"
  role          = aws_iam_role.it_ops_26_public_data_svc7381.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_9_filings_fn1374" {
  function_name = "arior-1njchw-records-9-filings-fn1374"
  role          = aws_iam_role.records_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_9_filings_fn773" {
  function_name = "arior-1njchw-records-9-filings-fn773"
  role          = aws_iam_role.records_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_9_filings_fn926" {
  function_name = "arior-1njchw-records-9-filings-fn926"
  role          = aws_iam_role.records_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_filings_fn1204" {
  function_name = "arior-1njchw-records-filings-fn1204"
  role          = aws_iam_role.procurement_32_public_data_svc5784.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_filings_fn1321" {
  function_name = "arior-1njchw-records-filings-fn1321"
  role          = aws_iam_role.records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_filings_fn15" {
  function_name = "arior-1njchw-records-filings-fn15"
  role          = aws_iam_role.records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_filings_fn1606" {
  function_name = "arior-1njchw-records-filings-fn1606"
  role          = aws_iam_role.records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_records_fn1441" {
  function_name = "arior-1njchw-records-records-fn1441"
  role          = aws_iam_role.hr_33_audit_svc6216.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_records_fn374" {
  function_name = "arior-1njchw-records-records-fn374"
  role          = aws_iam_role.gis_26_audit_svc3631.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_audit_fn1308" {
  function_name = "arior-1njchw-tax-10-audit-fn1308"
  role          = aws_iam_role.tax_13_gis_layers_svc6805.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_audit_fn2437" {
  function_name = "arior-1njchw-tax-10-audit-fn2437"
  role          = aws_iam_role.public_safety_31_public_data_svc7854.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_audit_fn318" {
  function_name = "arior-1njchw-tax-10-audit-fn318"
  role          = aws_iam_role.benefits_18_records_svc3127.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_gis_layers_fn1329" {
  function_name = "arior-1njchw-tax-10-gis-layers-fn1329"
  role          = aws_iam_role.tax_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_gis_layers_fn1850" {
  function_name = "arior-1njchw-tax-10-gis-layers-fn1850"
  role          = aws_iam_role.tax_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_10_gis_layers_fn939" {
  function_name = "arior-1njchw-tax-10-gis-layers-fn939"
  role          = aws_iam_role.tax_10_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_11_audit_fn1381" {
  function_name = "arior-1njchw-tax-11-audit-fn1381"
  role          = aws_iam_role.tax_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_11_audit_fn1423" {
  function_name = "arior-1njchw-tax-11-audit-fn1423"
  role          = aws_iam_role.tax_11_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_11_public_data_fn319" {
  function_name = "arior-1njchw-tax-11-public-data-fn319"
  role          = aws_iam_role.procurement_14_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_11_public_data_fn973" {
  function_name = "arior-1njchw-tax-11-public-data-fn973"
  role          = aws_iam_role.citizen_portal_25_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn1287" {
  function_name = "arior-1njchw-tax-12-audit-fn1287"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn2162" {
  function_name = "arior-1njchw-tax-12-audit-fn2162"
  role          = aws_iam_role.hr_32_gis_layers_svc3708.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn2167" {
  function_name = "arior-1njchw-tax-12-audit-fn2167"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn2373" {
  function_name = "arior-1njchw-tax-12-audit-fn2373"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn258" {
  function_name = "arior-1njchw-tax-12-audit-fn258"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn295" {
  function_name = "arior-1njchw-tax-12-audit-fn295"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_12_audit_fn440" {
  function_name = "arior-1njchw-tax-12-audit-fn440"
  role          = aws_iam_role.tax_12_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_13_gis_layers_fn1956" {
  function_name = "arior-1njchw-tax-13-gis-layers-fn1956"
  role          = aws_iam_role.audit_18_audit_svc6454.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_13_gis_layers_fn2101" {
  function_name = "arior-1njchw-tax-13-gis-layers-fn2101"
  role          = aws_iam_role.open_data_13_filings_svc5143.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_14_filings_fn1263" {
  function_name = "arior-1njchw-tax-14-filings-fn1263"
  role          = aws_iam_role.tax_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_14_filings_fn2479" {
  function_name = "arior-1njchw-tax-14-filings-fn2479"
  role          = aws_iam_role.tax_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_15_public_data_fn1335" {
  function_name = "arior-1njchw-tax-15-public-data-fn1335"
  role          = aws_iam_role.public_safety_14_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_15_public_data_fn467" {
  function_name = "arior-1njchw-tax-15-public-data-fn467"
  role          = aws_iam_role.tax_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_15_public_data_fn543" {
  function_name = "arior-1njchw-tax-15-public-data-fn543"
  role          = aws_iam_role.tax_15_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_15_public_data_fn618" {
  function_name = "arior-1njchw-tax-15-public-data-fn618"
  role          = aws_iam_role.public_safety_31_audit_svc2030.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_16_backups_fn1377" {
  function_name = "arior-1njchw-tax-16-backups-fn1377"
  role          = aws_iam_role.tax_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_16_backups_fn1577" {
  function_name = "arior-1njchw-tax-16-backups-fn1577"
  role          = aws_iam_role.tax_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_16_backups_fn2301" {
  function_name = "arior-1njchw-tax-16-backups-fn2301"
  role          = aws_iam_role.tax_16_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_16_backups_fn495" {
  function_name = "arior-1njchw-tax-16-backups-fn495"
  role          = aws_iam_role.licensing_34_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_16_backups_fn86" {
  function_name = "arior-1njchw-tax-16-backups-fn86"
  role          = aws_iam_role.licensing_13_audit_svc3474.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_backups_fn1278" {
  function_name = "arior-1njchw-tax-17-backups-fn1278"
  role          = aws_iam_role.public_safety_33_records_svc2470.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_gis_layers_fn112" {
  function_name = "arior-1njchw-tax-17-gis-layers-fn112"
  role          = aws_iam_role.tax_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_gis_layers_fn2260" {
  function_name = "arior-1njchw-tax-17-gis-layers-fn2260"
  role          = aws_iam_role.tax_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_records_fn163" {
  function_name = "arior-1njchw-tax-17-records-fn163"
  role          = aws_iam_role.tax_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_records_fn2215" {
  function_name = "arior-1njchw-tax-17-records-fn2215"
  role          = aws_iam_role.tax_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_17_records_fn595" {
  function_name = "arior-1njchw-tax-17-records-fn595"
  role          = aws_iam_role.tax_17_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_18_gis_layers_fn1829" {
  function_name = "arior-1njchw-tax-18-gis-layers-fn1829"
  role          = aws_iam_role.tax_18_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1018" {
  function_name = "arior-1njchw-tax-19-records-fn1018"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1186" {
  function_name = "arior-1njchw-tax-19-records-fn1186"
  role          = aws_iam_role.public_safety_4_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1189" {
  function_name = "arior-1njchw-tax-19-records-fn1189"
  role          = aws_iam_role.it_ops_17_records_svc4361.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1248" {
  function_name = "arior-1njchw-tax-19-records-fn1248"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1595" {
  function_name = "arior-1njchw-tax-19-records-fn1595"
  role          = aws_iam_role.it_ops_14_backups_svc3493.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1626" {
  function_name = "arior-1njchw-tax-19-records-fn1626"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1684" {
  function_name = "arior-1njchw-tax-19-records-fn1684"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn1821" {
  function_name = "arior-1njchw-tax-19-records-fn1821"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn49" {
  function_name = "arior-1njchw-tax-19-records-fn49"
  role          = aws_iam_role.tax_19_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_19_records_fn809" {
  function_name = "arior-1njchw-tax-19-records-fn809"
  role          = aws_iam_role.licensing_11_gis_layers_svc3866.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_2_records_fn1019" {
  function_name = "arior-1njchw-tax-2-records-fn1019"
  role          = aws_iam_role.tax_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_2_records_fn544" {
  function_name = "arior-1njchw-tax-2-records-fn544"
  role          = aws_iam_role.benefits_10_public_data_svc6775.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_20_audit_fn285" {
  function_name = "arior-1njchw-tax-20-audit-fn285"
  role          = aws_iam_role.tax_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_20_backups_fn1208" {
  function_name = "arior-1njchw-tax-20-backups-fn1208"
  role          = aws_iam_role.tax_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_20_backups_fn1705" {
  function_name = "arior-1njchw-tax-20-backups-fn1705"
  role          = aws_iam_role.tax_31_filings_svc2445.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_21_backups_fn2151" {
  function_name = "arior-1njchw-tax-21-backups-fn2151"
  role          = aws_iam_role.tax_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_21_backups_fn427" {
  function_name = "arior-1njchw-tax-21-backups-fn427"
  role          = aws_iam_role.tax_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_21_filings_fn2013" {
  function_name = "arior-1njchw-tax-21-filings-fn2013"
  role          = aws_iam_role.open_data_13_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_gis_layers_fn1228" {
  function_name = "arior-1njchw-tax-22-gis-layers-fn1228"
  role          = aws_iam_role.tax_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_gis_layers_fn1470" {
  function_name = "arior-1njchw-tax-22-gis-layers-fn1470"
  role          = aws_iam_role.hr_22_gis_layers_svc3588.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_gis_layers_fn1480" {
  function_name = "arior-1njchw-tax-22-gis-layers-fn1480"
  role          = aws_iam_role.benefits_28_gis_layers_svc4079.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_gis_layers_fn890" {
  function_name = "arior-1njchw-tax-22-gis-layers-fn890"
  role          = aws_iam_role.procurement_public_data_svc6244.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_public_data_fn1197" {
  function_name = "arior-1njchw-tax-22-public-data-fn1197"
  role          = aws_iam_role.tax_22_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_22_records_fn574" {
  function_name = "arior-1njchw-tax-22-records-fn574"
  role          = aws_iam_role.records_31_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_23_public_data_fn1509" {
  function_name = "arior-1njchw-tax-23-public-data-fn1509"
  role          = aws_iam_role.it_ops_20_filings_svc5645.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_23_public_data_fn2078" {
  function_name = "arior-1njchw-tax-23-public-data-fn2078"
  role          = aws_iam_role.it_ops_9_public_data_svc4681.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_23_public_data_fn2492" {
  function_name = "arior-1njchw-tax-23-public-data-fn2492"
  role          = aws_iam_role.it_ops_21_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_23_public_data_fn652" {
  function_name = "arior-1njchw-tax-23-public-data-fn652"
  role          = aws_iam_role.tax_23_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_audit_fn1986" {
  function_name = "arior-1njchw-tax-24-audit-fn1986"
  role          = aws_iam_role.tax_20_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_audit_fn1996" {
  function_name = "arior-1njchw-tax-24-audit-fn1996"
  role          = aws_iam_role.tax_11_public_data_svc7197.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_audit_fn774" {
  function_name = "arior-1njchw-tax-24-audit-fn774"
  role          = aws_iam_role.procurement_24_filings_svc1112.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_filings_fn2236" {
  function_name = "arior-1njchw-tax-24-filings-fn2236"
  role          = aws_iam_role.records_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_filings_fn341" {
  function_name = "arior-1njchw-tax-24-filings-fn341"
  role          = aws_iam_role.tax_24_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_24_filings_fn710" {
  function_name = "arior-1njchw-tax-24-filings-fn710"
  role          = aws_iam_role.records_14_audit_svc2237.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_25_filings_fn510" {
  function_name = "arior-1njchw-tax-25-filings-fn510"
  role          = aws_iam_role.records_25_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_25_records_fn1932" {
  function_name = "arior-1njchw-tax-25-records-fn1932"
  role          = aws_iam_role.tax_25_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_25_records_fn759" {
  function_name = "arior-1njchw-tax-25-records-fn759"
  role          = aws_iam_role.audit_25_records_svc3210.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_26_filings_fn838" {
  function_name = "arior-1njchw-tax-26-filings-fn838"
  role          = aws_iam_role.it_ops_34_backups_svc1653.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_26_public_data_fn1090" {
  function_name = "arior-1njchw-tax-26-public-data-fn1090"
  role          = aws_iam_role.benefits_15_filings_svc6835.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_26_public_data_fn1091" {
  function_name = "arior-1njchw-tax-26-public-data-fn1091"
  role          = aws_iam_role.tax_26_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn1533" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn1533"
  role          = aws_iam_role.audit_27_gis_layers_svc3234.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn1539" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn1539"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn1843" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn1843"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn1968" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn1968"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn2029" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn2029"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn384" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn384"
  role          = aws_iam_role.open_data_6_records_svc7555.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn426" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn426"
  role          = aws_iam_role.audit_29_backups_svc6170.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn661" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn661"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn740" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn740"
  role          = aws_iam_role.tax_27_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_27_gis_layers_fn832" {
  function_name = "arior-1njchw-tax-27-gis-layers-fn832"
  role          = aws_iam_role.tax_26_filings_svc7793.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_28_public_data_fn2017" {
  function_name = "arior-1njchw-tax-28-public-data-fn2017"
  role          = aws_iam_role.tax_28_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_28_records_fn1649" {
  function_name = "arior-1njchw-tax-28-records-fn1649"
  role          = aws_iam_role.licensing_8_gis_layers_svc1750.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_28_records_fn619" {
  function_name = "arior-1njchw-tax-28-records-fn619"
  role          = aws_iam_role.audit_19_filings_svc3138.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_28_records_fn830" {
  function_name = "arior-1njchw-tax-28-records-fn830"
  role          = aws_iam_role.open_data_5_records_svc5047.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_28_records_fn942" {
  function_name = "arior-1njchw-tax-28-records-fn942"
  role          = aws_iam_role.licensing_30_backups_svc3262.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn1171" {
  function_name = "arior-1njchw-tax-29-audit-fn1171"
  role          = aws_iam_role.public_safety_31_backups_svc3694.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn1339" {
  function_name = "arior-1njchw-tax-29-audit-fn1339"
  role          = aws_iam_role.it_ops_31_records_svc785.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn2126" {
  function_name = "arior-1njchw-tax-29-audit-fn2126"
  role          = aws_iam_role.tax_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn541" {
  function_name = "arior-1njchw-tax-29-audit-fn541"
  role          = aws_iam_role.tax_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn630" {
  function_name = "arior-1njchw-tax-29-audit-fn630"
  role          = aws_iam_role.hr_13_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_29_audit_fn944" {
  function_name = "arior-1njchw-tax-29-audit-fn944"
  role          = aws_iam_role.tax_29_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_3_audit_fn1437" {
  function_name = "arior-1njchw-tax-3-audit-fn1437"
  role          = aws_iam_role.tax_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_3_audit_fn1598" {
  function_name = "arior-1njchw-tax-3-audit-fn1598"
  role          = aws_iam_role.tax_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_3_backups_fn148" {
  function_name = "arior-1njchw-tax-3-backups-fn148"
  role          = aws_iam_role.tax_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_3_backups_fn1688" {
  function_name = "arior-1njchw-tax-3-backups-fn1688"
  role          = aws_iam_role.records_29_backups_svc2417.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn1593" {
  function_name = "arior-1njchw-tax-30-public-data-fn1593"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn1721" {
  function_name = "arior-1njchw-tax-30-public-data-fn1721"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn1848" {
  function_name = "arior-1njchw-tax-30-public-data-fn1848"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn336" {
  function_name = "arior-1njchw-tax-30-public-data-fn336"
  role          = aws_iam_role.audit_11_public_data_svc6786.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn465" {
  function_name = "arior-1njchw-tax-30-public-data-fn465"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_public_data_fn762" {
  function_name = "arior-1njchw-tax-30-public-data-fn762"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_30_records_fn1424" {
  function_name = "arior-1njchw-tax-30-records-fn1424"
  role          = aws_iam_role.tax_30_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_public_data_fn1183" {
  function_name = "arior-1njchw-tax-31-public-data-fn1183"
  role          = aws_iam_role.tax_30_public_data_svc4513.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_public_data_fn1885" {
  function_name = "arior-1njchw-tax-31-public-data-fn1885"
  role          = aws_iam_role.tax_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_public_data_fn2412" {
  function_name = "arior-1njchw-tax-31-public-data-fn2412"
  role          = aws_iam_role.tax_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_public_data_fn643" {
  function_name = "arior-1njchw-tax-31-public-data-fn643"
  role          = aws_iam_role.tax_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_records_fn145" {
  function_name = "arior-1njchw-tax-31-records-fn145"
  role          = aws_iam_role.tax_31_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_31_records_fn2398" {
  function_name = "arior-1njchw-tax-31-records-fn2398"
  role          = aws_iam_role.audit_27_gis_layers_svc6562.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn1752" {
  function_name = "arior-1njchw-tax-32-filings-fn1752"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn1832" {
  function_name = "arior-1njchw-tax-32-filings-fn1832"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn1967" {
  function_name = "arior-1njchw-tax-32-filings-fn1967"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn1985" {
  function_name = "arior-1njchw-tax-32-filings-fn1985"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn969" {
  function_name = "arior-1njchw-tax-32-filings-fn969"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_filings_fn999" {
  function_name = "arior-1njchw-tax-32-filings-fn999"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_gis_layers_fn1921" {
  function_name = "arior-1njchw-tax-32-gis-layers-fn1921"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_32_gis_layers_fn992" {
  function_name = "arior-1njchw-tax-32-gis-layers-fn992"
  role          = aws_iam_role.tax_32_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_audit_fn2293" {
  function_name = "arior-1njchw-tax-33-audit-fn2293"
  role          = aws_iam_role.hr_14_records_svc7652.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_audit_fn76" {
  function_name = "arior-1njchw-tax-33-audit-fn76"
  role          = aws_iam_role.tax_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_backups_fn1353" {
  function_name = "arior-1njchw-tax-33-backups-fn1353"
  role          = aws_iam_role.tax_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_backups_fn1987" {
  function_name = "arior-1njchw-tax-33-backups-fn1987"
  role          = aws_iam_role.records_13_filings_svc7217.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_backups_fn2374" {
  function_name = "arior-1njchw-tax-33-backups-fn2374"
  role          = aws_iam_role.tax_33_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_33_backups_fn835" {
  function_name = "arior-1njchw-tax-33-backups-fn835"
  role          = aws_iam_role.open_data_17_gis_layers_svc7271.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_34_records_fn243" {
  function_name = "arior-1njchw-tax-34-records-fn243"
  role          = aws_iam_role.tax_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_34_records_fn675" {
  function_name = "arior-1njchw-tax-34-records-fn675"
  role          = aws_iam_role.tax_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_34_records_fn791" {
  function_name = "arior-1njchw-tax-34-records-fn791"
  role          = aws_iam_role.tax_34_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_filings_fn1446" {
  function_name = "arior-1njchw-tax-35-filings-fn1446"
  role          = aws_iam_role.tax_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_filings_fn1641" {
  function_name = "arior-1njchw-tax-35-filings-fn1641"
  role          = aws_iam_role.tax_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_filings_fn225" {
  function_name = "arior-1njchw-tax-35-filings-fn225"
  role          = aws_iam_role.hr_18_gis_layers_svc4372.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_filings_fn623" {
  function_name = "arior-1njchw-tax-35-filings-fn623"
  role          = aws_iam_role.tax_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_filings_fn997" {
  function_name = "arior-1njchw-tax-35-filings-fn997"
  role          = aws_iam_role.licensing_29_audit_svc6994.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_records_fn1889" {
  function_name = "arior-1njchw-tax-35-records-fn1889"
  role          = aws_iam_role.tax_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_35_records_fn584" {
  function_name = "arior-1njchw-tax-35-records-fn584"
  role          = aws_iam_role.tax_35_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_4_audit_fn946" {
  function_name = "arior-1njchw-tax-4-audit-fn946"
  role          = aws_iam_role.gis_18_backups_svc1871.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_4_backups_fn2255" {
  function_name = "arior-1njchw-tax-4-backups-fn2255"
  role          = aws_iam_role.records_27_gis_layers_svc1561.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_4_public_data_fn1971" {
  function_name = "arior-1njchw-tax-4-public-data-fn1971"
  role          = aws_iam_role.tax_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn1141" {
  function_name = "arior-1njchw-tax-5-backups-fn1141"
  role          = aws_iam_role.licensing_31_backups_svc3690.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn1221" {
  function_name = "arior-1njchw-tax-5-backups-fn1221"
  role          = aws_iam_role.public_safety_21_records_svc5654.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn1916" {
  function_name = "arior-1njchw-tax-5-backups-fn1916"
  role          = aws_iam_role.records_11_filings_svc4697.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn2186" {
  function_name = "arior-1njchw-tax-5-backups-fn2186"
  role          = aws_iam_role.tax_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn2465" {
  function_name = "arior-1njchw-tax-5-backups-fn2465"
  role          = aws_iam_role.hr_3_records_svc5024.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn895" {
  function_name = "arior-1njchw-tax-5-backups-fn895"
  role          = aws_iam_role.it_ops_12_gis_layers_svc3469.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_filings_fn1334" {
  function_name = "arior-1njchw-tax-5-filings-fn1334"
  role          = aws_iam_role.tax_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_filings_fn708" {
  function_name = "arior-1njchw-tax-5-filings-fn708"
  role          = aws_iam_role.procurement_10_gis_layers_svc5520.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_gis_layers_fn2414" {
  function_name = "arior-1njchw-tax-5-gis-layers-fn2414"
  role          = aws_iam_role.public_safety_27_audit_svc1982.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_6_gis_layers_fn1411" {
  function_name = "arior-1njchw-tax-6-gis-layers-fn1411"
  role          = aws_iam_role.gis_17_backups_svc3939.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_6_gis_layers_fn1728" {
  function_name = "arior-1njchw-tax-6-gis-layers-fn1728"
  role          = aws_iam_role.tax_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_6_public_data_fn1583" {
  function_name = "arior-1njchw-tax-6-public-data-fn1583"
  role          = aws_iam_role.tax_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_6_records_fn667" {
  function_name = "arior-1njchw-tax-6-records-fn667"
  role          = aws_iam_role.procurement_14_audit_svc7648.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_backups_fn1108" {
  function_name = "arior-1njchw-tax-7-backups-fn1108"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_backups_fn114" {
  function_name = "arior-1njchw-tax-7-backups-fn114"
  role          = aws_iam_role.open_data_4_filings_svc5035.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_backups_fn192" {
  function_name = "arior-1njchw-tax-7-backups-fn192"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_gis_layers_fn534" {
  function_name = "arior-1njchw-tax-7-gis-layers-fn534"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_records_fn1325" {
  function_name = "arior-1njchw-tax-7-records-fn1325"
  role          = aws_iam_role.citizen_portal_6_public_data_svc476.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_records_fn154" {
  function_name = "arior-1njchw-tax-7-records-fn154"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_records_fn2297" {
  function_name = "arior-1njchw-tax-7-records-fn2297"
  role          = aws_iam_role.citizen_portal_11_records_svc3448.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_records_fn2426" {
  function_name = "arior-1njchw-tax-7-records-fn2426"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn1113" {
  function_name = "arior-1njchw-tax-8-audit-fn1113"
  role          = aws_iam_role.procurement_32_public_data_svc792.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn1696" {
  function_name = "arior-1njchw-tax-8-audit-fn1696"
  role          = aws_iam_role.public_safety_3_records_svc5438.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn1882" {
  function_name = "arior-1njchw-tax-8-audit-fn1882"
  role          = aws_iam_role.hr_17_backups_svc2696.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn2014" {
  function_name = "arior-1njchw-tax-8-audit-fn2014"
  role          = aws_iam_role.tax_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn2112" {
  function_name = "arior-1njchw-tax-8-audit-fn2112"
  role          = aws_iam_role.tax_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_audit_fn757" {
  function_name = "arior-1njchw-tax-8-audit-fn757"
  role          = aws_iam_role.tax_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_filings_fn1180" {
  function_name = "arior-1njchw-tax-8-filings-fn1180"
  role          = aws_iam_role.tax_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_filings_fn1298" {
  function_name = "arior-1njchw-tax-8-filings-fn1298"
  role          = aws_iam_role.tax_8_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_8_filings_fn1433" {
  function_name = "arior-1njchw-tax-8-filings-fn1433"
  role          = aws_iam_role.it_ops_8_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_audit_fn1430" {
  function_name = "arior-1njchw-tax-9-audit-fn1430"
  role          = aws_iam_role.citizen_portal_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_audit_fn1950" {
  function_name = "arior-1njchw-tax-9-audit-fn1950"
  role          = aws_iam_role.tax_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_audit_fn531" {
  function_name = "arior-1njchw-tax-9-audit-fn531"
  role          = aws_iam_role.citizen_portal_33_audit_svc7872.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_gis_layers_fn552" {
  function_name = "arior-1njchw-tax-9-gis-layers-fn552"
  role          = aws_iam_role.tax_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_gis_layers_fn566" {
  function_name = "arior-1njchw-tax-9-gis-layers-fn566"
  role          = aws_iam_role.tax_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_gis_layers_fn649" {
  function_name = "arior-1njchw-tax-9-gis-layers-fn649"
  role          = aws_iam_role.gis_26_public_data_svc4047.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_9_gis_layers_fn981" {
  function_name = "arior-1njchw-tax-9-gis-layers-fn981"
  role          = aws_iam_role.tax_9_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_audit_fn2086" {
  function_name = "arior-1njchw-tax-audit-fn2086"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_audit_fn85" {
  function_name = "arior-1njchw-tax-audit-fn85"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_filings_fn1145" {
  function_name = "arior-1njchw-tax-filings-fn1145"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_filings_fn758" {
  function_name = "arior-1njchw-tax-filings-fn758"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_gis_layers_fn2291" {
  function_name = "arior-1njchw-tax-gis-layers-fn2291"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
