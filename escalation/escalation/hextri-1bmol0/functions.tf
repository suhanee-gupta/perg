resource "aws_s3_bucket" "lambda_src" {
  bucket = "hextri-1bmol0-lambda-src-placeholder"
}

resource "aws_s3_object" "lambda_zip" {
  bucket  = aws_s3_bucket.lambda_src.id
  key     = "placeholder.zip"
  content = "placeholder"
}

resource "aws_lambda_function" "audit_2_public_data_fn15" {
  function_name = "hextri-1bmol0-audit-2-public-data-fn15"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_public_data_fn38" {
  function_name = "hextri-1bmol0-audit-2-public-data-fn38"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_public_data_fn72" {
  function_name = "hextri-1bmol0-audit-2-public-data-fn72"
  role          = aws_iam_role.procurement_5_records_svc212.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn42" {
  function_name = "hextri-1bmol0-audit-2-records-fn42"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_2_records_fn81" {
  function_name = "hextri-1bmol0-audit-2-records-fn81"
  role          = aws_iam_role.audit_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn43" {
  function_name = "hextri-1bmol0-audit-3-backups-fn43"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_3_backups_fn59" {
  function_name = "hextri-1bmol0-audit-3-backups-fn59"
  role          = aws_iam_role.audit_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_5_records_fn49" {
  function_name = "hextri-1bmol0-audit-5-records-fn49"
  role          = aws_iam_role.audit_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_audit_fn106" {
  function_name = "hextri-1bmol0-audit-6-audit-fn106"
  role          = aws_iam_role.tax_6_public_data_svc145.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_6_records_fn110" {
  function_name = "hextri-1bmol0-audit-6-records-fn110"
  role          = aws_iam_role.tax_3_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "audit_records_fn31" {
  function_name = "hextri-1bmol0-audit-records-fn31"
  role          = aws_iam_role.it_ops_5_public_data_svc217.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_3_records_fn32" {
  function_name = "hextri-1bmol0-benefits-3-records-fn32"
  role          = aws_iam_role.tax_3_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_backups_fn12" {
  function_name = "hextri-1bmol0-benefits-4-backups-fn12"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_4_backups_fn86" {
  function_name = "hextri-1bmol0-benefits-4-backups-fn86"
  role          = aws_iam_role.benefits_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_audit_fn111" {
  function_name = "hextri-1bmol0-benefits-6-audit-fn111"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_audit_fn26" {
  function_name = "hextri-1bmol0-benefits-6-audit-fn26"
  role          = aws_iam_role.benefits_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_6_audit_fn53" {
  function_name = "hextri-1bmol0-benefits-6-audit-fn53"
  role          = aws_iam_role.licensing_7_backups_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_filings_fn2" {
  function_name = "hextri-1bmol0-benefits-filings-fn2"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "benefits_filings_fn35" {
  function_name = "hextri-1bmol0-benefits-filings-fn35"
  role          = aws_iam_role.licensing_6_records_svc222.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_2_audit_fn23" {
  function_name = "hextri-1bmol0-citizen-portal-2-audit-fn23"
  role          = aws_iam_role.citizen_portal_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_3_backups_fn84" {
  function_name = "hextri-1bmol0-citizen-portal-3-backups-fn84"
  role          = aws_iam_role.open_data_6_audit_svc227.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_4_public_data_fn103" {
  function_name = "hextri-1bmol0-citizen-portal-4-public-data-fn103"
  role          = aws_iam_role.licensing_5_gis_layers_svc210.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_5_filings_fn73" {
  function_name = "hextri-1bmol0-citizen-portal-5-filings-fn73"
  role          = aws_iam_role.citizen_portal_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "citizen_portal_6_public_data_fn3" {
  function_name = "hextri-1bmol0-citizen-portal-6-public-data-fn3"
  role          = aws_iam_role.citizen_portal_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_records_fn63" {
  function_name = "hextri-1bmol0-gis-2-records-fn63"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_2_records_fn99" {
  function_name = "hextri-1bmol0-gis-2-records-fn99"
  role          = aws_iam_role.gis_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_backups_fn60" {
  function_name = "hextri-1bmol0-gis-3-backups-fn60"
  role          = aws_iam_role.gis_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_backups_fn61" {
  function_name = "hextri-1bmol0-gis-3-backups-fn61"
  role          = aws_iam_role.gis_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_gis_layers_fn113" {
  function_name = "hextri-1bmol0-gis-3-gis-layers-fn113"
  role          = aws_iam_role.procurement_6_filings_svc224.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_gis_layers_fn57" {
  function_name = "hextri-1bmol0-gis-3-gis-layers-fn57"
  role          = aws_iam_role.benefits_3_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_3_gis_layers_fn92" {
  function_name = "hextri-1bmol0-gis-3-gis-layers-fn92"
  role          = aws_iam_role.citizen_portal_2_audit_svc92.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_public_data_fn9" {
  function_name = "hextri-1bmol0-gis-4-public-data-fn9"
  role          = aws_iam_role.audit_6_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_4_records_fn91" {
  function_name = "hextri-1bmol0-gis-4-records-fn91"
  role          = aws_iam_role.gis_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_filings_fn104" {
  function_name = "hextri-1bmol0-gis-6-filings-fn104"
  role          = aws_iam_role.it_ops_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_6_filings_fn105" {
  function_name = "hextri-1bmol0-gis-6-filings-fn105"
  role          = aws_iam_role.gis_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_7_records_fn34" {
  function_name = "hextri-1bmol0-gis-7-records-fn34"
  role          = aws_iam_role.procurement_2_gis_layers_svc176.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_audit_fn74" {
  function_name = "hextri-1bmol0-gis-audit-fn74"
  role          = aws_iam_role.citizen_portal_6_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "gis_backups_fn36" {
  function_name = "hextri-1bmol0-gis-backups-fn36"
  role          = aws_iam_role.gis_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_4_gis_layers_fn29" {
  function_name = "hextri-1bmol0-hr-4-gis-layers-fn29"
  role          = aws_iam_role.hr_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_4_gis_layers_fn44" {
  function_name = "hextri-1bmol0-hr-4-gis-layers-fn44"
  role          = aws_iam_role.hr_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_5_records_fn82" {
  function_name = "hextri-1bmol0-hr-5-records-fn82"
  role          = aws_iam_role.hr_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_gis_layers_fn100" {
  function_name = "hextri-1bmol0-hr-6-gis-layers-fn100"
  role          = aws_iam_role.records_6_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_gis_layers_fn33" {
  function_name = "hextri-1bmol0-hr-6-gis-layers-fn33"
  role          = aws_iam_role.records_7_filings_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_6_gis_layers_fn54" {
  function_name = "hextri-1bmol0-hr-6-gis-layers-fn54"
  role          = aws_iam_role.hr_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "hr_public_data_fn76" {
  function_name = "hextri-1bmol0-hr-public-data-fn76"
  role          = aws_iam_role.procurement_4_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_gis_layers_fn1" {
  function_name = "hextri-1bmol0-it-ops-2-gis-layers-fn1"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_gis_layers_fn19" {
  function_name = "hextri-1bmol0-it-ops-2-gis-layers-fn19"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_2_records_fn47" {
  function_name = "hextri-1bmol0-it-ops-2-records-fn47"
  role          = aws_iam_role.it_ops_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_3_audit_fn109" {
  function_name = "hextri-1bmol0-it-ops-3-audit-fn109"
  role          = aws_iam_role.tax_2_gis_layers_svc97.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_gis_layers_fn10" {
  function_name = "hextri-1bmol0-it-ops-4-gis-layers-fn10"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_4_gis_layers_fn48" {
  function_name = "hextri-1bmol0-it-ops-4-gis-layers-fn48"
  role          = aws_iam_role.it_ops_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn70" {
  function_name = "hextri-1bmol0-it-ops-5-filings-fn70"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_5_filings_fn71" {
  function_name = "hextri-1bmol0-it-ops-5-filings-fn71"
  role          = aws_iam_role.it_ops_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_6_gis_layers_fn13" {
  function_name = "hextri-1bmol0-it-ops-6-gis-layers-fn13"
  role          = aws_iam_role.public_safety_2_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "it_ops_filings_fn98" {
  function_name = "hextri-1bmol0-it-ops-filings-fn98"
  role          = aws_iam_role.it_ops_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_2_public_data_fn89" {
  function_name = "hextri-1bmol0-licensing-2-public-data-fn89"
  role          = aws_iam_role.licensing_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_3_audit_fn96" {
  function_name = "hextri-1bmol0-licensing-3-audit-fn96"
  role          = aws_iam_role.licensing_7_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn90" {
  function_name = "hextri-1bmol0-licensing-4-audit-fn90"
  role          = aws_iam_role.hr_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_4_audit_fn97" {
  function_name = "hextri-1bmol0-licensing-4-audit-fn97"
  role          = aws_iam_role.licensing_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_5_gis_layers_fn22" {
  function_name = "hextri-1bmol0-licensing-5-gis-layers-fn22"
  role          = aws_iam_role.licensing_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_audit_fn0" {
  function_name = "hextri-1bmol0-licensing-7-audit-fn0"
  role          = aws_iam_role.records_7_filings_svc233.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_audit_fn80" {
  function_name = "hextri-1bmol0-licensing-7-audit-fn80"
  role          = aws_iam_role.licensing_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_7_backups_fn88" {
  function_name = "hextri-1bmol0-licensing-7-backups-fn88"
  role          = aws_iam_role.licensing_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_backups_fn39" {
  function_name = "hextri-1bmol0-licensing-backups-fn39"
  role          = aws_iam_role.licensing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "licensing_gis_layers_fn25" {
  function_name = "hextri-1bmol0-licensing-gis-layers-fn25"
  role          = aws_iam_role.licensing_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_backups_fn56" {
  function_name = "hextri-1bmol0-open-data-2-backups-fn56"
  role          = aws_iam_role.benefits_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_public_data_fn7" {
  function_name = "hextri-1bmol0-open-data-2-public-data-fn7"
  role          = aws_iam_role.open_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_2_public_data_fn83" {
  function_name = "hextri-1bmol0-open-data-2-public-data-fn83"
  role          = aws_iam_role.open_data_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_4_records_fn28" {
  function_name = "hextri-1bmol0-open-data-4-records-fn28"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_public_data_fn11" {
  function_name = "hextri-1bmol0-open-data-5-public-data-fn11"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_5_public_data_fn27" {
  function_name = "hextri-1bmol0-open-data-5-public-data-fn27"
  role          = aws_iam_role.open_data_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "open_data_7_public_data_fn85" {
  function_name = "hextri-1bmol0-open-data-7-public-data-fn85"
  role          = aws_iam_role.open_data_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_public_data_fn14" {
  function_name = "hextri-1bmol0-procurement-2-public-data-fn14"
  role          = aws_iam_role.citizen_portal_7_audit_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_2_public_data_fn21" {
  function_name = "hextri-1bmol0-procurement-2-public-data-fn21"
  role          = aws_iam_role.procurement_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_3_public_data_fn5" {
  function_name = "hextri-1bmol0-procurement-3-public-data-fn5"
  role          = aws_iam_role.public_safety_3_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_gis_layers_fn68" {
  function_name = "hextri-1bmol0-procurement-4-gis-layers-fn68"
  role          = aws_iam_role.procurement_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_4_gis_layers_fn95" {
  function_name = "hextri-1bmol0-procurement-4-gis-layers-fn95"
  role          = aws_iam_role.procurement_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_5_audit_fn18" {
  function_name = "hextri-1bmol0-procurement-5-audit-fn18"
  role          = aws_iam_role.benefits_6_audit_svc151.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_6_filings_fn65" {
  function_name = "hextri-1bmol0-procurement-6-filings-fn65"
  role          = aws_iam_role.procurement_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "procurement_gis_layers_fn50" {
  function_name = "hextri-1bmol0-procurement-gis-layers-fn50"
  role          = aws_iam_role.procurement_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_2_gis_layers_fn62" {
  function_name = "hextri-1bmol0-public-safety-2-gis-layers-fn62"
  role          = aws_iam_role.public_safety_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_3_backups_fn16" {
  function_name = "hextri-1bmol0-public-safety-3-backups-fn16"
  role          = aws_iam_role.public_safety_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_3_gis_layers_fn17" {
  function_name = "hextri-1bmol0-public-safety-3-gis-layers-fn17"
  role          = aws_iam_role.public_safety_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_5_filings_fn69" {
  function_name = "hextri-1bmol0-public-safety-5-filings-fn69"
  role          = aws_iam_role.public_safety_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_5_gis_layers_fn87" {
  function_name = "hextri-1bmol0-public-safety-5-gis-layers-fn87"
  role          = aws_iam_role.public_safety_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_filings_fn102" {
  function_name = "hextri-1bmol0-public-safety-6-filings-fn102"
  role          = aws_iam_role.public_safety_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_6_gis_layers_fn75" {
  function_name = "hextri-1bmol0-public-safety-6-gis-layers-fn75"
  role          = aws_iam_role.tax_3_gis_layers_svc189.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_gis_layers_fn52" {
  function_name = "hextri-1bmol0-public-safety-7-gis-layers-fn52"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_7_records_fn41" {
  function_name = "hextri-1bmol0-public-safety-7-records-fn41"
  role          = aws_iam_role.public_safety_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "public_safety_backups_fn6" {
  function_name = "hextri-1bmol0-public-safety-backups-fn6"
  role          = aws_iam_role.licensing_2_public_data_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_audit_fn20" {
  function_name = "hextri-1bmol0-records-2-audit-fn20"
  role          = aws_iam_role.records_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_2_backups_fn30" {
  function_name = "hextri-1bmol0-records-2-backups-fn30"
  role          = aws_iam_role.records_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_3_gis_layers_fn94" {
  function_name = "hextri-1bmol0-records-3-gis-layers-fn94"
  role          = aws_iam_role.records_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_4_backups_fn51" {
  function_name = "hextri-1bmol0-records-4-backups-fn51"
  role          = aws_iam_role.records_4_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_gis_layers_fn66" {
  function_name = "hextri-1bmol0-records-5-gis-layers-fn66"
  role          = aws_iam_role.records_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_5_public_data_fn78" {
  function_name = "hextri-1bmol0-records-5-public-data-fn78"
  role          = aws_iam_role.hr_2_public_data_svc100.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn24" {
  function_name = "hextri-1bmol0-records-6-audit-fn24"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn8" {
  function_name = "hextri-1bmol0-records-6-audit-fn8"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_6_audit_fn93" {
  function_name = "hextri-1bmol0-records-6-audit-fn93"
  role          = aws_iam_role.records_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_filings_fn107" {
  function_name = "hextri-1bmol0-records-7-filings-fn107"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_filings_fn64" {
  function_name = "hextri-1bmol0-records-7-filings-fn64"
  role          = aws_iam_role.procurement_7_gis_layers_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "records_7_filings_fn67" {
  function_name = "hextri-1bmol0-records-7-filings-fn67"
  role          = aws_iam_role.records_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_2_gis_layers_fn37" {
  function_name = "hextri-1bmol0-tax-2-gis-layers-fn37"
  role          = aws_iam_role.tax_2_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_3_gis_layers_fn55" {
  function_name = "hextri-1bmol0-tax-3-gis-layers-fn55"
  role          = aws_iam_role.tax_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_4_public_data_fn40" {
  function_name = "hextri-1bmol0-tax-4-public-data-fn40"
  role          = aws_iam_role.audit_backups_svc170.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_backups_fn79" {
  function_name = "hextri-1bmol0-tax-5-backups-fn79"
  role          = aws_iam_role.tax_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_5_public_data_fn45" {
  function_name = "hextri-1bmol0-tax-5-public-data-fn45"
  role          = aws_iam_role.tax_5_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_6_public_data_fn58" {
  function_name = "hextri-1bmol0-tax-6-public-data-fn58"
  role          = aws_iam_role.tax_6_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_public_data_fn101" {
  function_name = "hextri-1bmol0-tax-7-public-data-fn101"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_public_data_fn108" {
  function_name = "hextri-1bmol0-tax-7-public-data-fn108"
  role          = aws_iam_role.citizen_portal_records_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_public_data_fn112" {
  function_name = "hextri-1bmol0-tax-7-public-data-fn112"
  role          = aws_iam_role.tax_7_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_7_public_data_fn77" {
  function_name = "hextri-1bmol0-tax-7-public-data-fn77"
  role          = aws_iam_role.tax_3_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_audit_fn4" {
  function_name = "hextri-1bmol0-tax-audit-fn4"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}

resource "aws_lambda_function" "tax_audit_fn46" {
  function_name = "hextri-1bmol0-tax-audit-fn46"
  role          = aws_iam_role.tax_svc.arn
  handler       = "index.handler"
  runtime       = "python3.12"
  s3_bucket     = aws_s3_bucket.lambda_src.id
  s3_key        = aws_s3_object.lambda_zip.key
}
