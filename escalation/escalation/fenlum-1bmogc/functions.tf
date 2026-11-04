resource "aws_s3_bucket" "lambda_src" {
  bucket = "fenlum-1bmogc-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "data_eng_2_audit_fn43" {
  function_name = "fenlum-1bmogc-data-eng-2-audit-fn43"
  role          = aws_iam_role.data_eng_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_2_ledger_fn113" {
  function_name = "fenlum-1bmogc-data-eng-2-ledger-fn113"
  role          = aws_iam_role.fraud_2_kyc_docs_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_2_risk_models_fn15" {
  function_name = "fenlum-1bmogc-data-eng-2-risk-models-fn15"
  role          = aws_iam_role.ledger_statements_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_3_statements_fn55" {
  function_name = "fenlum-1bmogc-data-eng-3-statements-fn55"
  role          = aws_iam_role.data_eng_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_4_statements_fn114" {
  function_name = "fenlum-1bmogc-data-eng-4-statements-fn114"
  role          = aws_iam_role.data_eng_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_4_statements_fn171" {
  function_name = "fenlum-1bmogc-data-eng-4-statements-fn171"
  role          = aws_iam_role.data_eng_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_4_statements_fn46" {
  function_name = "fenlum-1bmogc-data-eng-4-statements-fn46"
  role          = aws_iam_role.data_eng_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_4_statements_fn97" {
  function_name = "fenlum-1bmogc-data-eng-4-statements-fn97"
  role          = aws_iam_role.data_eng_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_6_ledger_fn137" {
  function_name = "fenlum-1bmogc-data-eng-6-ledger-fn137"
  role          = aws_iam_role.data_eng_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_ledger_fn52" {
  function_name = "fenlum-1bmogc-data-eng-ledger-fn52"
  role          = aws_iam_role.kyc_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_ledger_fn81" {
  function_name = "fenlum-1bmogc-data-eng-ledger-fn81"
  role          = aws_iam_role.payments_7_kyc_docs_svc312.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "data_eng_risk_models_fn128" {
  function_name = "fenlum-1bmogc-data-eng-risk-models-fn128"
  role          = aws_iam_role.data_eng_3_statements_svc355.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_3_kyc_docs_fn62" {
  function_name = "fenlum-1bmogc-fraud-3-kyc-docs-fn62"
  role          = aws_iam_role.fraud_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_3_statements_fn50" {
  function_name = "fenlum-1bmogc-fraud-3-statements-fn50"
  role          = aws_iam_role.fraud_6_ledger_svc386.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_3_statements_fn51" {
  function_name = "fenlum-1bmogc-fraud-3-statements-fn51"
  role          = aws_iam_role.fraud_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_3_statements_fn96" {
  function_name = "fenlum-1bmogc-fraud-3-statements-fn96"
  role          = aws_iam_role.treasury_6_tx_archive_svc465.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_3_tx_archive_fn8" {
  function_name = "fenlum-1bmogc-fraud-3-tx-archive-fn8"
  role          = aws_iam_role.fraud_3_kyc_docs_svc350.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_4_audit_fn158" {
  function_name = "fenlum-1bmogc-fraud-4-audit-fn158"
  role          = aws_iam_role.fraud_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_4_audit_fn67" {
  function_name = "fenlum-1bmogc-fraud-4-audit-fn67"
  role          = aws_iam_role.fraud_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_5_ledger_fn150" {
  function_name = "fenlum-1bmogc-fraud-5-ledger-fn150"
  role          = aws_iam_role.fraud_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_5_ledger_fn157" {
  function_name = "fenlum-1bmogc-fraud-5-ledger-fn157"
  role          = aws_iam_role.data_eng_ledger_svc171.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_6_ledger_fn180" {
  function_name = "fenlum-1bmogc-fraud-6-ledger-fn180"
  role          = aws_iam_role.reporting_2_risk_models_svc260.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_6_risk_models_fn66" {
  function_name = "fenlum-1bmogc-fraud-6-risk-models-fn66"
  role          = aws_iam_role.mobile_4_statements_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_6_tx_archive_fn7" {
  function_name = "fenlum-1bmogc-fraud-6-tx-archive-fn7"
  role          = aws_iam_role.fraud_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_7_tx_archive_fn139" {
  function_name = "fenlum-1bmogc-fraud-7-tx-archive-fn139"
  role          = aws_iam_role.treasury_ledger_svc405.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_7_tx_archive_fn143" {
  function_name = "fenlum-1bmogc-fraud-7-tx-archive-fn143"
  role          = aws_iam_role.fraud_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_7_tx_archive_fn181" {
  function_name = "fenlum-1bmogc-fraud-7-tx-archive-fn181"
  role          = aws_iam_role.fraud_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_7_tx_archive_fn59" {
  function_name = "fenlum-1bmogc-fraud-7-tx-archive-fn59"
  role          = aws_iam_role.fraud_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_7_tx_archive_fn82" {
  function_name = "fenlum-1bmogc-fraud-7-tx-archive-fn82"
  role          = aws_iam_role.ledger_4_ledger_svc277.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "fraud_statements_fn108" {
  function_name = "fenlum-1bmogc-fraud-statements-fn108"
  role          = aws_iam_role.fraud_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_2_risk_models_fn14" {
  function_name = "fenlum-1bmogc-kyc-2-risk-models-fn14"
  role          = aws_iam_role.kyc_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_2_risk_models_fn53" {
  function_name = "fenlum-1bmogc-kyc-2-risk-models-fn53"
  role          = aws_iam_role.payments_6_ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_2_tx_archive_fn135" {
  function_name = "fenlum-1bmogc-kyc-2-tx-archive-fn135"
  role          = aws_iam_role.kyc_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_3_ledger_fn177" {
  function_name = "fenlum-1bmogc-kyc-3-ledger-fn177"
  role          = aws_iam_role.kyc_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_3_tx_archive_fn179" {
  function_name = "fenlum-1bmogc-kyc-3-tx-archive-fn179"
  role          = aws_iam_role.kyc_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_3_tx_archive_fn42" {
  function_name = "fenlum-1bmogc-kyc-3-tx-archive-fn42"
  role          = aws_iam_role.kyc_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_3_tx_archive_fn87" {
  function_name = "fenlum-1bmogc-kyc-3-tx-archive-fn87"
  role          = aws_iam_role.kyc_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_4_ledger_fn95" {
  function_name = "fenlum-1bmogc-kyc-4-ledger-fn95"
  role          = aws_iam_role.payments_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_5_audit_fn187" {
  function_name = "fenlum-1bmogc-kyc-5-audit-fn187"
  role          = aws_iam_role.risk_4_risk_models_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_5_ledger_fn185" {
  function_name = "fenlum-1bmogc-kyc-5-ledger-fn185"
  role          = aws_iam_role.kyc_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_5_ledger_fn2" {
  function_name = "fenlum-1bmogc-kyc-5-ledger-fn2"
  role          = aws_iam_role.lending_7_audit_svc319.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_5_ledger_fn38" {
  function_name = "fenlum-1bmogc-kyc-5-ledger-fn38"
  role          = aws_iam_role.kyc_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_6_risk_models_fn21" {
  function_name = "fenlum-1bmogc-kyc-6-risk-models-fn21"
  role          = aws_iam_role.kyc_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_6_statements_fn144" {
  function_name = "fenlum-1bmogc-kyc-6-statements-fn144"
  role          = aws_iam_role.ledger_ledger_svc481.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_7_audit_fn159" {
  function_name = "fenlum-1bmogc-kyc-7-audit-fn159"
  role          = aws_iam_role.kyc_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_tx_archive_fn31" {
  function_name = "fenlum-1bmogc-kyc-tx-archive-fn31"
  role          = aws_iam_role.kyc_3_ledger_svc347.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "kyc_tx_archive_fn33" {
  function_name = "fenlum-1bmogc-kyc-tx-archive-fn33"
  role          = aws_iam_role.risk_4_risk_models_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_2_audit_fn115" {
  function_name = "fenlum-1bmogc-ledger-2-audit-fn115"
  role          = aws_iam_role.trading_4_kyc_docs_svc280.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_2_audit_fn58" {
  function_name = "fenlum-1bmogc-ledger-2-audit-fn58"
  role          = aws_iam_role.payments_4_risk_models_svc276.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_3_ledger_fn118" {
  function_name = "fenlum-1bmogc-ledger-3-ledger-fn118"
  role          = aws_iam_role.ledger_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_3_ledger_fn141" {
  function_name = "fenlum-1bmogc-ledger-3-ledger-fn141"
  role          = aws_iam_role.ledger_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_3_ledger_fn161" {
  function_name = "fenlum-1bmogc-ledger-3-ledger-fn161"
  role          = aws_iam_role.payments_5_risk_models_svc368.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_3_ledger_fn184" {
  function_name = "fenlum-1bmogc-ledger-3-ledger-fn184"
  role          = aws_iam_role.ledger_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_4_audit_fn142" {
  function_name = "fenlum-1bmogc-ledger-4-audit-fn142"
  role          = aws_iam_role.ledger_3_ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_5_audit_fn37" {
  function_name = "fenlum-1bmogc-ledger-5-audit-fn37"
  role          = aws_iam_role.payments_4_risk_models_svc516.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_5_statements_fn174" {
  function_name = "fenlum-1bmogc-ledger-5-statements-fn174"
  role          = aws_iam_role.ledger_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_6_audit_fn106" {
  function_name = "fenlum-1bmogc-ledger-6-audit-fn106"
  role          = aws_iam_role.platform_2_kyc_docs_svc422.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_6_tx_archive_fn92" {
  function_name = "fenlum-1bmogc-ledger-6-tx-archive-fn92"
  role          = aws_iam_role.ledger_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_7_statements_fn170" {
  function_name = "fenlum-1bmogc-ledger-7-statements-fn170"
  role          = aws_iam_role.trading_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_ledger_fn140" {
  function_name = "fenlum-1bmogc-ledger-ledger-fn140"
  role          = aws_iam_role.ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_ledger_fn154" {
  function_name = "fenlum-1bmogc-ledger-ledger-fn154"
  role          = aws_iam_role.ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_ledger_fn160" {
  function_name = "fenlum-1bmogc-ledger-ledger-fn160"
  role          = aws_iam_role.ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "ledger_ledger_fn74" {
  function_name = "fenlum-1bmogc-ledger-ledger-fn74"
  role          = aws_iam_role.reporting_audit_svc488.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_2_ledger_fn45" {
  function_name = "fenlum-1bmogc-lending-2-ledger-fn45"
  role          = aws_iam_role.lending_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_2_ledger_fn72" {
  function_name = "fenlum-1bmogc-lending-2-ledger-fn72"
  role          = aws_iam_role.lending_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_3_audit_fn75" {
  function_name = "fenlum-1bmogc-lending-3-audit-fn75"
  role          = aws_iam_role.lending_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_3_tx_archive_fn20" {
  function_name = "fenlum-1bmogc-lending-3-tx-archive-fn20"
  role          = aws_iam_role.lending_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_4_risk_models_fn138" {
  function_name = "fenlum-1bmogc-lending-4-risk-models-fn138"
  role          = aws_iam_role.lending_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_5_audit_fn6" {
  function_name = "fenlum-1bmogc-lending-5-audit-fn6"
  role          = aws_iam_role.fraud_5_kyc_docs_svc214.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_5_tx_archive_fn162" {
  function_name = "fenlum-1bmogc-lending-5-tx-archive-fn162"
  role          = aws_iam_role.lending_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_5_tx_archive_fn91" {
  function_name = "fenlum-1bmogc-lending-5-tx-archive-fn91"
  role          = aws_iam_role.lending_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_6_kyc_docs_fn71" {
  function_name = "fenlum-1bmogc-lending-6-kyc-docs-fn71"
  role          = aws_iam_role.treasury_7_ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_6_kyc_docs_fn90" {
  function_name = "fenlum-1bmogc-lending-6-kyc-docs-fn90"
  role          = aws_iam_role.lending_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_audit_fn182" {
  function_name = "fenlum-1bmogc-lending-audit-fn182"
  role          = aws_iam_role.mobile_3_tx_archive_svc513.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_audit_fn63" {
  function_name = "fenlum-1bmogc-lending-audit-fn63"
  role          = aws_iam_role.lending_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "lending_audit_fn99" {
  function_name = "fenlum-1bmogc-lending-audit-fn99"
  role          = aws_iam_role.lending_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_2_risk_models_fn165" {
  function_name = "fenlum-1bmogc-mobile-2-risk-models-fn165"
  role          = aws_iam_role.data_eng_4_statements_svc127.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_2_risk_models_fn175" {
  function_name = "fenlum-1bmogc-mobile-2-risk-models-fn175"
  role          = aws_iam_role.risk_2_audit_svc414.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_tx_archive_fn102" {
  function_name = "fenlum-1bmogc-mobile-3-tx-archive-fn102"
  role          = aws_iam_role.mobile_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_tx_archive_fn110" {
  function_name = "fenlum-1bmogc-mobile-3-tx-archive-fn110"
  role          = aws_iam_role.ledger_2_audit_svc493.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_tx_archive_fn111" {
  function_name = "fenlum-1bmogc-mobile-3-tx-archive-fn111"
  role          = aws_iam_role.reporting_4_statements_svc204.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_3_tx_archive_fn54" {
  function_name = "fenlum-1bmogc-mobile-3-tx-archive-fn54"
  role          = aws_iam_role.trading_tx_archive_svc244.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_4_audit_fn151" {
  function_name = "fenlum-1bmogc-mobile-4-audit-fn151"
  role          = aws_iam_role.mobile_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_4_statements_fn148" {
  function_name = "fenlum-1bmogc-mobile-4-statements-fn148"
  role          = aws_iam_role.fraud_3_statements_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_5_risk_models_fn173" {
  function_name = "fenlum-1bmogc-mobile-5-risk-models-fn173"
  role          = aws_iam_role.mobile_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_5_risk_models_fn61" {
  function_name = "fenlum-1bmogc-mobile-5-risk-models-fn61"
  role          = aws_iam_role.mobile_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_risk_models_fn30" {
  function_name = "fenlum-1bmogc-mobile-6-risk-models-fn30"
  role          = aws_iam_role.payments_3_risk_models_svc504.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_6_risk_models_fn83" {
  function_name = "fenlum-1bmogc-mobile-6-risk-models-fn83"
  role          = aws_iam_role.mobile_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "mobile_statements_fn4" {
  function_name = "fenlum-1bmogc-mobile-statements-fn4"
  role          = aws_iam_role.fraud_5_kyc_docs_svc214.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_2_tx_archive_fn156" {
  function_name = "fenlum-1bmogc-payments-2-tx-archive-fn156"
  role          = aws_iam_role.kyc_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_2_tx_archive_fn88" {
  function_name = "fenlum-1bmogc-payments-2-tx-archive-fn88"
  role          = aws_iam_role.payments_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_3_risk_models_fn112" {
  function_name = "fenlum-1bmogc-payments-3-risk-models-fn112"
  role          = aws_iam_role.payments_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_3_risk_models_fn152" {
  function_name = "fenlum-1bmogc-payments-3-risk-models-fn152"
  role          = aws_iam_role.payments_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_3_risk_models_fn168" {
  function_name = "fenlum-1bmogc-payments-3-risk-models-fn168"
  role          = aws_iam_role.payments_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_3_risk_models_fn190" {
  function_name = "fenlum-1bmogc-payments-3-risk-models-fn190"
  role          = aws_iam_role.payments_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_3_risk_models_fn39" {
  function_name = "fenlum-1bmogc-payments-3-risk-models-fn39"
  role          = aws_iam_role.lending_5_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_4_risk_models_fn104" {
  function_name = "fenlum-1bmogc-payments-4-risk-models-fn104"
  role          = aws_iam_role.payments_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_4_risk_models_fn41" {
  function_name = "fenlum-1bmogc-payments-4-risk-models-fn41"
  role          = aws_iam_role.payments_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_5_risk_models_fn153" {
  function_name = "fenlum-1bmogc-payments-5-risk-models-fn153"
  role          = aws_iam_role.risk_risk_models_svc242.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_5_risk_models_fn78" {
  function_name = "fenlum-1bmogc-payments-5-risk-models-fn78"
  role          = aws_iam_role.platform_6_tx_archive_svc230.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_5_risk_models_fn98" {
  function_name = "fenlum-1bmogc-payments-5-risk-models-fn98"
  role          = aws_iam_role.payments_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_6_audit_fn129" {
  function_name = "fenlum-1bmogc-payments-6-audit-fn129"
  role          = aws_iam_role.kyc_6_risk_models_svc383.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_6_audit_fn56" {
  function_name = "fenlum-1bmogc-payments-6-audit-fn56"
  role          = aws_iam_role.risk_2_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_7_ledger_fn23" {
  function_name = "fenlum-1bmogc-payments-7-ledger-fn23"
  role          = aws_iam_role.payments_4_risk_models_svc196.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_7_ledger_fn89" {
  function_name = "fenlum-1bmogc-payments-7-ledger-fn89"
  role          = aws_iam_role.payments_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_audit_fn123" {
  function_name = "fenlum-1bmogc-payments-audit-fn123"
  role          = aws_iam_role.platform_6_ledger_svc310.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_ledger_fn183" {
  function_name = "fenlum-1bmogc-payments-ledger-fn183"
  role          = aws_iam_role.platform_3_risk_models_svc354.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "payments_statements_fn163" {
  function_name = "fenlum-1bmogc-payments-statements-fn163"
  role          = aws_iam_role.payments_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_2_kyc_docs_fn11" {
  function_name = "fenlum-1bmogc-platform-2-kyc-docs-fn11"
  role          = aws_iam_role.reporting_5_tx_archive_svc216.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_2_kyc_docs_fn196" {
  function_name = "fenlum-1bmogc-platform-2-kyc-docs-fn196"
  role          = aws_iam_role.platform_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_3_risk_models_fn124" {
  function_name = "fenlum-1bmogc-platform-3-risk-models-fn124"
  role          = aws_iam_role.platform_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_3_risk_models_fn60" {
  function_name = "fenlum-1bmogc-platform-3-risk-models-fn60"
  role          = aws_iam_role.platform_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_4_statements_fn136" {
  function_name = "fenlum-1bmogc-platform-4-statements-fn136"
  role          = aws_iam_role.fraud_6_ledger_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_5_ledger_fn26" {
  function_name = "fenlum-1bmogc-platform-5-ledger-fn26"
  role          = aws_iam_role.platform_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_6_ledger_fn169" {
  function_name = "fenlum-1bmogc-platform-6-ledger-fn169"
  role          = aws_iam_role.platform_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_6_ledger_fn188" {
  function_name = "fenlum-1bmogc-platform-6-ledger-fn188"
  role          = aws_iam_role.platform_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_6_ledger_fn79" {
  function_name = "fenlum-1bmogc-platform-6-ledger-fn79"
  role          = aws_iam_role.platform_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_6_tx_archive_fn133" {
  function_name = "fenlum-1bmogc-platform-6-tx-archive-fn133"
  role          = aws_iam_role.platform_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_6_tx_archive_fn47" {
  function_name = "fenlum-1bmogc-platform-6-tx-archive-fn47"
  role          = aws_iam_role.platform_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_audit_fn117" {
  function_name = "fenlum-1bmogc-platform-audit-fn117"
  role          = aws_iam_role.platform_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_audit_fn178" {
  function_name = "fenlum-1bmogc-platform-audit-fn178"
  role          = aws_iam_role.reporting_5_audit_svc456.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "platform_audit_fn3" {
  function_name = "fenlum-1bmogc-platform-audit-fn3"
  role          = aws_iam_role.platform_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_2_risk_models_fn101" {
  function_name = "fenlum-1bmogc-reporting-2-risk-models-fn101"
  role          = aws_iam_role.kyc_4_tx_archive_svc519.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_2_risk_models_fn16" {
  function_name = "fenlum-1bmogc-reporting-2-risk-models-fn16"
  role          = aws_iam_role.reporting_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_2_risk_models_fn70" {
  function_name = "fenlum-1bmogc-reporting-2-risk-models-fn70"
  role          = aws_iam_role.reporting_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_2_risk_models_fn77" {
  function_name = "fenlum-1bmogc-reporting-2-risk-models-fn77"
  role          = aws_iam_role.reporting_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_2_risk_models_fn85" {
  function_name = "fenlum-1bmogc-reporting-2-risk-models-fn85"
  role          = aws_iam_role.reporting_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_3_ledger_fn35" {
  function_name = "fenlum-1bmogc-reporting-3-ledger-fn35"
  role          = aws_iam_role.reporting_4_statements_svc524.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn1" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn1"
  role          = aws_iam_role.reporting_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn12" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn12"
  role          = aws_iam_role.payments_4_risk_models_svc116.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn146" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn146"
  role          = aws_iam_role.treasury_risk_models_svc325.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn197" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn197"
  role          = aws_iam_role.treasury_4_kyc_docs_svc121.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn57" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn57"
  role          = aws_iam_role.mobile_4_statements_svc205.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn73" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn73"
  role          = aws_iam_role.reporting_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_4_statements_fn80" {
  function_name = "fenlum-1bmogc-reporting-4-statements-fn80"
  role          = aws_iam_role.risk_ledger_svc322.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_5_audit_fn125" {
  function_name = "fenlum-1bmogc-reporting-5-audit-fn125"
  role          = aws_iam_role.reporting_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_5_tx_archive_fn19" {
  function_name = "fenlum-1bmogc-reporting-5-tx-archive-fn19"
  role          = aws_iam_role.treasury_6_tx_archive_svc305.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_5_tx_archive_fn64" {
  function_name = "fenlum-1bmogc-reporting-5-tx-archive-fn64"
  role          = aws_iam_role.treasury_7_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_5_tx_archive_fn94" {
  function_name = "fenlum-1bmogc-reporting-5-tx-archive-fn94"
  role          = aws_iam_role.reporting_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_6_audit_fn134" {
  function_name = "fenlum-1bmogc-reporting-6-audit-fn134"
  role          = aws_iam_role.reporting_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_6_audit_fn18" {
  function_name = "fenlum-1bmogc-reporting-6-audit-fn18"
  role          = aws_iam_role.fraud_3_tx_archive_svc430.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_audit_fn0" {
  function_name = "fenlum-1bmogc-reporting-audit-fn0"
  role          = aws_iam_role.reporting_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_audit_fn105" {
  function_name = "fenlum-1bmogc-reporting-audit-fn105"
  role          = aws_iam_role.reporting_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_audit_fn107" {
  function_name = "fenlum-1bmogc-reporting-audit-fn107"
  role          = aws_iam_role.reporting_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_audit_fn131" {
  function_name = "fenlum-1bmogc-reporting-audit-fn131"
  role          = aws_iam_role.reporting_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "reporting_audit_fn167" {
  function_name = "fenlum-1bmogc-reporting-audit-fn167"
  role          = aws_iam_role.reporting_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_2_audit_fn193" {
  function_name = "fenlum-1bmogc-risk-2-audit-fn193"
  role          = aws_iam_role.mobile_5_audit_svc457.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_2_statements_fn132" {
  function_name = "fenlum-1bmogc-risk-2-statements-fn132"
  role          = aws_iam_role.payments_4_risk_models_svc276.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_3_ledger_fn84" {
  function_name = "fenlum-1bmogc-risk-3-ledger-fn84"
  role          = aws_iam_role.ledger_2_audit_svc173.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_3_risk_models_fn149" {
  function_name = "fenlum-1bmogc-risk-3-risk-models-fn149"
  role          = aws_iam_role.risk_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_4_kyc_docs_fn22" {
  function_name = "fenlum-1bmogc-risk-4-kyc-docs-fn22"
  role          = aws_iam_role.risk_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_4_risk_models_fn192" {
  function_name = "fenlum-1bmogc-risk-4-risk-models-fn192"
  role          = aws_iam_role.risk_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_4_risk_models_fn32" {
  function_name = "fenlum-1bmogc-risk-4-risk-models-fn32"
  role          = aws_iam_role.risk_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_5_risk_models_fn121" {
  function_name = "fenlum-1bmogc-risk-5-risk-models-fn121"
  role          = aws_iam_role.kyc_4_ledger_svc279.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_5_risk_models_fn166" {
  function_name = "fenlum-1bmogc-risk-5-risk-models-fn166"
  role          = aws_iam_role.fraud_7_tx_archive_svc238.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_5_risk_models_fn86" {
  function_name = "fenlum-1bmogc-risk-5-risk-models-fn86"
  role          = aws_iam_role.ledger_3_ledger_svc265.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_5_statements_fn164" {
  function_name = "fenlum-1bmogc-risk-5-statements-fn164"
  role          = aws_iam_role.risk_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_5_statements_fn65" {
  function_name = "fenlum-1bmogc-risk-5-statements-fn65"
  role          = aws_iam_role.risk_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_6_ledger_fn122" {
  function_name = "fenlum-1bmogc-risk-6-ledger-fn122"
  role          = aws_iam_role.risk_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_6_ledger_fn48" {
  function_name = "fenlum-1bmogc-risk-6-ledger-fn48"
  role          = aws_iam_role.risk_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_7_risk_models_fn116" {
  function_name = "fenlum-1bmogc-risk-7-risk-models-fn116"
  role          = aws_iam_role.risk_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_7_risk_models_fn130" {
  function_name = "fenlum-1bmogc-risk-7-risk-models-fn130"
  role          = aws_iam_role.risk_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_7_risk_models_fn28" {
  function_name = "fenlum-1bmogc-risk-7-risk-models-fn28"
  role          = aws_iam_role.risk_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "risk_ledger_fn147" {
  function_name = "fenlum-1bmogc-risk-ledger-fn147"
  role          = aws_iam_role.risk_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_2_ledger_fn127" {
  function_name = "fenlum-1bmogc-trading-2-ledger-fn127"
  role          = aws_iam_role.trading_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_2_statements_fn25" {
  function_name = "fenlum-1bmogc-trading-2-statements-fn25"
  role          = aws_iam_role.trading_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_3_risk_models_fn17" {
  function_name = "fenlum-1bmogc-trading-3-risk-models-fn17"
  role          = aws_iam_role.trading_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_3_risk_models_fn176" {
  function_name = "fenlum-1bmogc-trading-3-risk-models-fn176"
  role          = aws_iam_role.trading_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_4_kyc_docs_fn172" {
  function_name = "fenlum-1bmogc-trading-4-kyc-docs-fn172"
  role          = aws_iam_role.data_eng_4_statements_svc527.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_5_kyc_docs_fn126" {
  function_name = "fenlum-1bmogc-trading-5-kyc-docs-fn126"
  role          = aws_iam_role.trading_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_5_kyc_docs_fn68" {
  function_name = "fenlum-1bmogc-trading-5-kyc-docs-fn68"
  role          = aws_iam_role.fraud_5_ledger_svc294.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_5_statements_fn145" {
  function_name = "fenlum-1bmogc-trading-5-statements-fn145"
  role          = aws_iam_role.trading_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_5_statements_fn76" {
  function_name = "fenlum-1bmogc-trading-5-statements-fn76"
  role          = aws_iam_role.trading_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_6_risk_models_fn120" {
  function_name = "fenlum-1bmogc-trading-6-risk-models-fn120"
  role          = aws_iam_role.kyc_7_audit_svc315.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_6_risk_models_fn195" {
  function_name = "fenlum-1bmogc-trading-6-risk-models-fn195"
  role          = aws_iam_role.trading_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_7_ledger_fn194" {
  function_name = "fenlum-1bmogc-trading-7-ledger-fn194"
  role          = aws_iam_role.trading_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_7_ledger_fn29" {
  function_name = "fenlum-1bmogc-trading-7-ledger-fn29"
  role          = aws_iam_role.trading_4_kyc_docs_svc120.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_7_ledger_fn49" {
  function_name = "fenlum-1bmogc-trading-7-ledger-fn49"
  role          = aws_iam_role.mobile_4_statements_svc365.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_tx_archive_fn119" {
  function_name = "fenlum-1bmogc-trading-tx-archive-fn119"
  role          = aws_iam_role.trading_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_tx_archive_fn13" {
  function_name = "fenlum-1bmogc-trading-tx-archive-fn13"
  role          = aws_iam_role.trading_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "trading_tx_archive_fn93" {
  function_name = "fenlum-1bmogc-trading-tx-archive-fn93"
  role          = aws_iam_role.trading_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_2_audit_fn155" {
  function_name = "fenlum-1bmogc-treasury-2-audit-fn155"
  role          = aws_iam_role.treasury_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_2_tx_archive_fn69" {
  function_name = "fenlum-1bmogc-treasury-2-tx-archive-fn69"
  role          = aws_iam_role.treasury_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_3_ledger_fn189" {
  function_name = "fenlum-1bmogc-treasury-3-ledger-fn189"
  role          = aws_iam_role.treasury_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_4_kyc_docs_fn186" {
  function_name = "fenlum-1bmogc-treasury-4-kyc-docs-fn186"
  role          = aws_iam_role.lending_7_audit_svc479.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_4_kyc_docs_fn40" {
  function_name = "fenlum-1bmogc-treasury-4-kyc-docs-fn40"
  role          = aws_iam_role.treasury_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_4_kyc_docs_fn44" {
  function_name = "fenlum-1bmogc-treasury-4-kyc-docs-fn44"
  role          = aws_iam_role.reporting_4_statements_svc284.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_4_kyc_docs_fn9" {
  function_name = "fenlum-1bmogc-treasury-4-kyc-docs-fn9"
  role          = aws_iam_role.treasury_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_5_audit_fn100" {
  function_name = "fenlum-1bmogc-treasury-5-audit-fn100"
  role          = aws_iam_role.treasury_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_5_audit_fn103" {
  function_name = "fenlum-1bmogc-treasury-5-audit-fn103"
  role          = aws_iam_role.lending_4_tx_archive_svc203.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_5_audit_fn27" {
  function_name = "fenlum-1bmogc-treasury-5-audit-fn27"
  role          = aws_iam_role.kyc_7_audit_svc155.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_5_audit_fn34" {
  function_name = "fenlum-1bmogc-treasury-5-audit-fn34"
  role          = aws_iam_role.treasury_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_6_tx_archive_fn10" {
  function_name = "fenlum-1bmogc-treasury-6-tx-archive-fn10"
  role          = aws_iam_role.treasury_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_6_tx_archive_fn109" {
  function_name = "fenlum-1bmogc-treasury-6-tx-archive-fn109"
  role          = aws_iam_role.treasury_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_6_tx_archive_fn24" {
  function_name = "fenlum-1bmogc-treasury-6-tx-archive-fn24"
  role          = aws_iam_role.treasury_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_6_tx_archive_fn36" {
  function_name = "fenlum-1bmogc-treasury-6-tx-archive-fn36"
  role          = aws_iam_role.treasury_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_ledger_fn191" {
  function_name = "fenlum-1bmogc-treasury-ledger-fn191"
  role          = aws_iam_role.platform_2_kyc_docs_svc342.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "treasury_statements_fn5" {
  function_name = "fenlum-1bmogc-treasury-statements-fn5"
  role          = aws_iam_role.treasury_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
