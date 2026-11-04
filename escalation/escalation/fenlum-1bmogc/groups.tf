resource "aws_iam_group" "contractors" {
  name = "fenlum-1bmogc-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_2_analysts" {
  name = "fenlum-1bmogc-data-eng-2-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_2_analysts__data_eng_2_read" {
  group      = aws_iam_group.data_eng_2_analysts.name
  policy_arn = aws_iam_policy.data_eng_2_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_2_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_2_devs" {
  name = "fenlum-1bmogc-data-eng-2-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_2_devs__data_eng_2_data_rw" {
  group      = aws_iam_group.data_eng_2_devs.name
  policy_arn = aws_iam_policy.data_eng_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_2_devs__data_eng_2_ops" {
  group      = aws_iam_group.data_eng_2_devs.name
  policy_arn = aws_iam_policy.data_eng_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_2_devs__base_readonly" {
  group      = aws_iam_group.data_eng_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_2_devs__self_service" {
  group      = aws_iam_group.data_eng_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_3_analysts" {
  name = "fenlum-1bmogc-data-eng-3-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_3_analysts__data_eng_3_read" {
  group      = aws_iam_group.data_eng_3_analysts.name
  policy_arn = aws_iam_policy.data_eng_3_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_3_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_3_devs" {
  name = "fenlum-1bmogc-data-eng-3-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_3_devs__data_eng_3_data_rw" {
  group      = aws_iam_group.data_eng_3_devs.name
  policy_arn = aws_iam_policy.data_eng_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_3_devs__data_eng_3_ops" {
  group      = aws_iam_group.data_eng_3_devs.name
  policy_arn = aws_iam_policy.data_eng_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_3_devs__base_readonly" {
  group      = aws_iam_group.data_eng_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_3_devs__self_service" {
  group      = aws_iam_group.data_eng_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_4_analysts" {
  name = "fenlum-1bmogc-data-eng-4-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_4_analysts__data_eng_4_read" {
  group      = aws_iam_group.data_eng_4_analysts.name
  policy_arn = aws_iam_policy.data_eng_4_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_4_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_4_devs" {
  name = "fenlum-1bmogc-data-eng-4-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_4_devs__data_eng_4_data_rw" {
  group      = aws_iam_group.data_eng_4_devs.name
  policy_arn = aws_iam_policy.data_eng_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_4_devs__data_eng_4_ops" {
  group      = aws_iam_group.data_eng_4_devs.name
  policy_arn = aws_iam_policy.data_eng_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_4_devs__base_readonly" {
  group      = aws_iam_group.data_eng_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_4_devs__self_service" {
  group      = aws_iam_group.data_eng_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_5_analysts" {
  name = "fenlum-1bmogc-data-eng-5-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_5_analysts__data_eng_5_read" {
  group      = aws_iam_group.data_eng_5_analysts.name
  policy_arn = aws_iam_policy.data_eng_5_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_5_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_5_devs" {
  name = "fenlum-1bmogc-data-eng-5-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_5_devs__data_eng_5_data_rw" {
  group      = aws_iam_group.data_eng_5_devs.name
  policy_arn = aws_iam_policy.data_eng_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_5_devs__data_eng_5_ops" {
  group      = aws_iam_group.data_eng_5_devs.name
  policy_arn = aws_iam_policy.data_eng_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_5_devs__base_readonly" {
  group      = aws_iam_group.data_eng_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_5_devs__self_service" {
  group      = aws_iam_group.data_eng_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_6_analysts" {
  name = "fenlum-1bmogc-data-eng-6-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_6_analysts__data_eng_6_read" {
  group      = aws_iam_group.data_eng_6_analysts.name
  policy_arn = aws_iam_policy.data_eng_6_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_6_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_6_devs" {
  name = "fenlum-1bmogc-data-eng-6-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_6_devs__data_eng_6_data_rw" {
  group      = aws_iam_group.data_eng_6_devs.name
  policy_arn = aws_iam_policy.data_eng_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_6_devs__data_eng_6_ops" {
  group      = aws_iam_group.data_eng_6_devs.name
  policy_arn = aws_iam_policy.data_eng_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_6_devs__base_readonly" {
  group      = aws_iam_group.data_eng_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_6_devs__self_service" {
  group      = aws_iam_group.data_eng_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_analysts" {
  name = "fenlum-1bmogc-data-eng-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_analysts__data_eng_read" {
  group      = aws_iam_group.data_eng_analysts.name
  policy_arn = aws_iam_policy.data_eng_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_devs" {
  name = "fenlum-1bmogc-data-eng-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_devs__data_eng_data_rw" {
  group      = aws_iam_group.data_eng_devs.name
  policy_arn = aws_iam_policy.data_eng_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_devs__data_eng_ops" {
  group      = aws_iam_group.data_eng_devs.name
  policy_arn = aws_iam_policy.data_eng_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_devs__base_readonly" {
  group      = aws_iam_group.data_eng_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_devs__self_service" {
  group      = aws_iam_group.data_eng_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_2_analysts" {
  name = "fenlum-1bmogc-fraud-2-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_2_analysts__fraud_2_read" {
  group      = aws_iam_group.fraud_2_analysts.name
  policy_arn = aws_iam_policy.fraud_2_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_2_analysts__base_readonly" {
  group      = aws_iam_group.fraud_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_2_devs" {
  name = "fenlum-1bmogc-fraud-2-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_2_devs__fraud_2_data_rw" {
  group      = aws_iam_group.fraud_2_devs.name
  policy_arn = aws_iam_policy.fraud_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_2_devs__fraud_2_ops" {
  group      = aws_iam_group.fraud_2_devs.name
  policy_arn = aws_iam_policy.fraud_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_2_devs__base_readonly" {
  group      = aws_iam_group.fraud_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_2_devs__self_service" {
  group      = aws_iam_group.fraud_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_3_analysts" {
  name = "fenlum-1bmogc-fraud-3-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_3_analysts__fraud_3_read" {
  group      = aws_iam_group.fraud_3_analysts.name
  policy_arn = aws_iam_policy.fraud_3_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_3_analysts__base_readonly" {
  group      = aws_iam_group.fraud_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_3_devs" {
  name = "fenlum-1bmogc-fraud-3-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_3_devs__fraud_3_data_rw" {
  group      = aws_iam_group.fraud_3_devs.name
  policy_arn = aws_iam_policy.fraud_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_3_devs__fraud_3_ops" {
  group      = aws_iam_group.fraud_3_devs.name
  policy_arn = aws_iam_policy.fraud_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_3_devs__base_readonly" {
  group      = aws_iam_group.fraud_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_3_devs__self_service" {
  group      = aws_iam_group.fraud_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_4_analysts" {
  name = "fenlum-1bmogc-fraud-4-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_4_analysts__fraud_4_read" {
  group      = aws_iam_group.fraud_4_analysts.name
  policy_arn = aws_iam_policy.fraud_4_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_4_analysts__base_readonly" {
  group      = aws_iam_group.fraud_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_4_devs" {
  name = "fenlum-1bmogc-fraud-4-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_4_devs__fraud_4_data_rw" {
  group      = aws_iam_group.fraud_4_devs.name
  policy_arn = aws_iam_policy.fraud_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_4_devs__fraud_4_ops" {
  group      = aws_iam_group.fraud_4_devs.name
  policy_arn = aws_iam_policy.fraud_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_4_devs__base_readonly" {
  group      = aws_iam_group.fraud_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_4_devs__self_service" {
  group      = aws_iam_group.fraud_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_5_analysts" {
  name = "fenlum-1bmogc-fraud-5-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_5_analysts__fraud_5_read" {
  group      = aws_iam_group.fraud_5_analysts.name
  policy_arn = aws_iam_policy.fraud_5_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_5_analysts__base_readonly" {
  group      = aws_iam_group.fraud_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_5_devs" {
  name = "fenlum-1bmogc-fraud-5-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_5_devs__fraud_5_data_rw" {
  group      = aws_iam_group.fraud_5_devs.name
  policy_arn = aws_iam_policy.fraud_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_5_devs__fraud_5_ops" {
  group      = aws_iam_group.fraud_5_devs.name
  policy_arn = aws_iam_policy.fraud_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_5_devs__base_readonly" {
  group      = aws_iam_group.fraud_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_5_devs__self_service" {
  group      = aws_iam_group.fraud_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_6_analysts" {
  name = "fenlum-1bmogc-fraud-6-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_6_analysts__fraud_6_read" {
  group      = aws_iam_group.fraud_6_analysts.name
  policy_arn = aws_iam_policy.fraud_6_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_6_analysts__base_readonly" {
  group      = aws_iam_group.fraud_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_6_devs" {
  name = "fenlum-1bmogc-fraud-6-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_6_devs__fraud_6_data_rw" {
  group      = aws_iam_group.fraud_6_devs.name
  policy_arn = aws_iam_policy.fraud_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_6_devs__fraud_6_ops" {
  group      = aws_iam_group.fraud_6_devs.name
  policy_arn = aws_iam_policy.fraud_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_6_devs__base_readonly" {
  group      = aws_iam_group.fraud_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_6_devs__self_service" {
  group      = aws_iam_group.fraud_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_7_analysts" {
  name = "fenlum-1bmogc-fraud-7-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_7_analysts__fraud_7_read" {
  group      = aws_iam_group.fraud_7_analysts.name
  policy_arn = aws_iam_policy.fraud_7_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_7_analysts__base_readonly" {
  group      = aws_iam_group.fraud_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_7_devs" {
  name = "fenlum-1bmogc-fraud-7-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_7_devs__fraud_7_data_rw" {
  group      = aws_iam_group.fraud_7_devs.name
  policy_arn = aws_iam_policy.fraud_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_7_devs__fraud_7_ops" {
  group      = aws_iam_group.fraud_7_devs.name
  policy_arn = aws_iam_policy.fraud_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_7_devs__base_readonly" {
  group      = aws_iam_group.fraud_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_7_devs__self_service" {
  group      = aws_iam_group.fraud_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_analysts" {
  name = "fenlum-1bmogc-fraud-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_analysts__fraud_read" {
  group      = aws_iam_group.fraud_analysts.name
  policy_arn = aws_iam_policy.fraud_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_analysts__base_readonly" {
  group      = aws_iam_group.fraud_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_devs" {
  name = "fenlum-1bmogc-fraud-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_devs__fraud_data_rw" {
  group      = aws_iam_group.fraud_devs.name
  policy_arn = aws_iam_policy.fraud_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_devs__fraud_ops" {
  group      = aws_iam_group.fraud_devs.name
  policy_arn = aws_iam_policy.fraud_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_devs__base_readonly" {
  group      = aws_iam_group.fraud_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_devs__self_service" {
  group      = aws_iam_group.fraud_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_2_analysts" {
  name = "fenlum-1bmogc-kyc-2-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_2_analysts__kyc_2_read" {
  group      = aws_iam_group.kyc_2_analysts.name
  policy_arn = aws_iam_policy.kyc_2_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_2_analysts__base_readonly" {
  group      = aws_iam_group.kyc_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_2_devs" {
  name = "fenlum-1bmogc-kyc-2-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_2_devs__kyc_2_data_rw" {
  group      = aws_iam_group.kyc_2_devs.name
  policy_arn = aws_iam_policy.kyc_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_2_devs__kyc_2_ops" {
  group      = aws_iam_group.kyc_2_devs.name
  policy_arn = aws_iam_policy.kyc_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_2_devs__base_readonly" {
  group      = aws_iam_group.kyc_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_2_devs__self_service" {
  group      = aws_iam_group.kyc_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_3_analysts" {
  name = "fenlum-1bmogc-kyc-3-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_3_analysts__kyc_3_read" {
  group      = aws_iam_group.kyc_3_analysts.name
  policy_arn = aws_iam_policy.kyc_3_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_3_analysts__base_readonly" {
  group      = aws_iam_group.kyc_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_3_devs" {
  name = "fenlum-1bmogc-kyc-3-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_3_devs__kyc_3_data_rw" {
  group      = aws_iam_group.kyc_3_devs.name
  policy_arn = aws_iam_policy.kyc_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_3_devs__kyc_3_ops" {
  group      = aws_iam_group.kyc_3_devs.name
  policy_arn = aws_iam_policy.kyc_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_3_devs__base_readonly" {
  group      = aws_iam_group.kyc_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_3_devs__self_service" {
  group      = aws_iam_group.kyc_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_4_analysts" {
  name = "fenlum-1bmogc-kyc-4-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_4_analysts__kyc_4_read" {
  group      = aws_iam_group.kyc_4_analysts.name
  policy_arn = aws_iam_policy.kyc_4_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_4_analysts__base_readonly" {
  group      = aws_iam_group.kyc_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_4_devs" {
  name = "fenlum-1bmogc-kyc-4-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_4_devs__kyc_4_data_rw" {
  group      = aws_iam_group.kyc_4_devs.name
  policy_arn = aws_iam_policy.kyc_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_4_devs__kyc_4_ops" {
  group      = aws_iam_group.kyc_4_devs.name
  policy_arn = aws_iam_policy.kyc_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_4_devs__base_readonly" {
  group      = aws_iam_group.kyc_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_4_devs__self_service" {
  group      = aws_iam_group.kyc_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_5_analysts" {
  name = "fenlum-1bmogc-kyc-5-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_5_analysts__kyc_5_read" {
  group      = aws_iam_group.kyc_5_analysts.name
  policy_arn = aws_iam_policy.kyc_5_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_5_analysts__base_readonly" {
  group      = aws_iam_group.kyc_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_5_devs" {
  name = "fenlum-1bmogc-kyc-5-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_5_devs__kyc_5_data_rw" {
  group      = aws_iam_group.kyc_5_devs.name
  policy_arn = aws_iam_policy.kyc_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_5_devs__kyc_5_ops" {
  group      = aws_iam_group.kyc_5_devs.name
  policy_arn = aws_iam_policy.kyc_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_5_devs__base_readonly" {
  group      = aws_iam_group.kyc_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_5_devs__self_service" {
  group      = aws_iam_group.kyc_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_6_analysts" {
  name = "fenlum-1bmogc-kyc-6-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_6_analysts__kyc_6_read" {
  group      = aws_iam_group.kyc_6_analysts.name
  policy_arn = aws_iam_policy.kyc_6_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_6_analysts__base_readonly" {
  group      = aws_iam_group.kyc_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_6_devs" {
  name = "fenlum-1bmogc-kyc-6-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_6_devs__kyc_6_data_rw" {
  group      = aws_iam_group.kyc_6_devs.name
  policy_arn = aws_iam_policy.kyc_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_6_devs__kyc_6_ops" {
  group      = aws_iam_group.kyc_6_devs.name
  policy_arn = aws_iam_policy.kyc_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_6_devs__base_readonly" {
  group      = aws_iam_group.kyc_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_6_devs__self_service" {
  group      = aws_iam_group.kyc_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_7_analysts" {
  name = "fenlum-1bmogc-kyc-7-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_7_analysts__kyc_7_read" {
  group      = aws_iam_group.kyc_7_analysts.name
  policy_arn = aws_iam_policy.kyc_7_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_7_analysts__base_readonly" {
  group      = aws_iam_group.kyc_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_7_devs" {
  name = "fenlum-1bmogc-kyc-7-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_7_devs__kyc_7_data_rw" {
  group      = aws_iam_group.kyc_7_devs.name
  policy_arn = aws_iam_policy.kyc_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_7_devs__kyc_7_ops" {
  group      = aws_iam_group.kyc_7_devs.name
  policy_arn = aws_iam_policy.kyc_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_7_devs__base_readonly" {
  group      = aws_iam_group.kyc_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_7_devs__self_service" {
  group      = aws_iam_group.kyc_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_analysts" {
  name = "fenlum-1bmogc-kyc-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_analysts__kyc_read" {
  group      = aws_iam_group.kyc_analysts.name
  policy_arn = aws_iam_policy.kyc_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_analysts__base_readonly" {
  group      = aws_iam_group.kyc_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_devs" {
  name = "fenlum-1bmogc-kyc-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_devs__kyc_data_rw" {
  group      = aws_iam_group.kyc_devs.name
  policy_arn = aws_iam_policy.kyc_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_devs__kyc_ops" {
  group      = aws_iam_group.kyc_devs.name
  policy_arn = aws_iam_policy.kyc_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_devs__base_readonly" {
  group      = aws_iam_group.kyc_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_devs__self_service" {
  group      = aws_iam_group.kyc_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_2_analysts" {
  name = "fenlum-1bmogc-ledger-2-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_2_analysts__ledger_2_read" {
  group      = aws_iam_group.ledger_2_analysts.name
  policy_arn = aws_iam_policy.ledger_2_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_2_analysts__base_readonly" {
  group      = aws_iam_group.ledger_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_2_devs" {
  name = "fenlum-1bmogc-ledger-2-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_2_devs__ledger_2_data_rw" {
  group      = aws_iam_group.ledger_2_devs.name
  policy_arn = aws_iam_policy.ledger_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_2_devs__ledger_2_ops" {
  group      = aws_iam_group.ledger_2_devs.name
  policy_arn = aws_iam_policy.ledger_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_2_devs__base_readonly" {
  group      = aws_iam_group.ledger_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_2_devs__self_service" {
  group      = aws_iam_group.ledger_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_3_analysts" {
  name = "fenlum-1bmogc-ledger-3-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_3_analysts__ledger_3_read" {
  group      = aws_iam_group.ledger_3_analysts.name
  policy_arn = aws_iam_policy.ledger_3_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_3_analysts__base_readonly" {
  group      = aws_iam_group.ledger_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_3_devs" {
  name = "fenlum-1bmogc-ledger-3-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_3_devs__ledger_3_data_rw" {
  group      = aws_iam_group.ledger_3_devs.name
  policy_arn = aws_iam_policy.ledger_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_3_devs__ledger_3_ops" {
  group      = aws_iam_group.ledger_3_devs.name
  policy_arn = aws_iam_policy.ledger_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_3_devs__base_readonly" {
  group      = aws_iam_group.ledger_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_3_devs__self_service" {
  group      = aws_iam_group.ledger_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_4_analysts" {
  name = "fenlum-1bmogc-ledger-4-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_4_analysts__ledger_4_read" {
  group      = aws_iam_group.ledger_4_analysts.name
  policy_arn = aws_iam_policy.ledger_4_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_4_analysts__base_readonly" {
  group      = aws_iam_group.ledger_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_4_devs" {
  name = "fenlum-1bmogc-ledger-4-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_4_devs__ledger_4_data_rw" {
  group      = aws_iam_group.ledger_4_devs.name
  policy_arn = aws_iam_policy.ledger_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_4_devs__ledger_4_ops" {
  group      = aws_iam_group.ledger_4_devs.name
  policy_arn = aws_iam_policy.ledger_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_4_devs__base_readonly" {
  group      = aws_iam_group.ledger_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_4_devs__self_service" {
  group      = aws_iam_group.ledger_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_5_analysts" {
  name = "fenlum-1bmogc-ledger-5-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_5_analysts__ledger_5_read" {
  group      = aws_iam_group.ledger_5_analysts.name
  policy_arn = aws_iam_policy.ledger_5_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_5_analysts__base_readonly" {
  group      = aws_iam_group.ledger_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_5_devs" {
  name = "fenlum-1bmogc-ledger-5-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_5_devs__ledger_5_data_rw" {
  group      = aws_iam_group.ledger_5_devs.name
  policy_arn = aws_iam_policy.ledger_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_5_devs__ledger_5_ops" {
  group      = aws_iam_group.ledger_5_devs.name
  policy_arn = aws_iam_policy.ledger_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_5_devs__base_readonly" {
  group      = aws_iam_group.ledger_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_5_devs__self_service" {
  group      = aws_iam_group.ledger_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_6_analysts" {
  name = "fenlum-1bmogc-ledger-6-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_6_analysts__ledger_6_read" {
  group      = aws_iam_group.ledger_6_analysts.name
  policy_arn = aws_iam_policy.ledger_6_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_6_analysts__base_readonly" {
  group      = aws_iam_group.ledger_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_6_devs" {
  name = "fenlum-1bmogc-ledger-6-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_6_devs__ledger_6_data_rw" {
  group      = aws_iam_group.ledger_6_devs.name
  policy_arn = aws_iam_policy.ledger_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_6_devs__ledger_6_ops" {
  group      = aws_iam_group.ledger_6_devs.name
  policy_arn = aws_iam_policy.ledger_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_6_devs__base_readonly" {
  group      = aws_iam_group.ledger_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_6_devs__self_service" {
  group      = aws_iam_group.ledger_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_7_analysts" {
  name = "fenlum-1bmogc-ledger-7-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_7_analysts__ledger_7_read" {
  group      = aws_iam_group.ledger_7_analysts.name
  policy_arn = aws_iam_policy.ledger_7_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_7_analysts__base_readonly" {
  group      = aws_iam_group.ledger_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_7_devs" {
  name = "fenlum-1bmogc-ledger-7-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_7_devs__ledger_7_data_rw" {
  group      = aws_iam_group.ledger_7_devs.name
  policy_arn = aws_iam_policy.ledger_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_7_devs__ledger_7_ops" {
  group      = aws_iam_group.ledger_7_devs.name
  policy_arn = aws_iam_policy.ledger_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_7_devs__base_readonly" {
  group      = aws_iam_group.ledger_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_7_devs__self_service" {
  group      = aws_iam_group.ledger_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_analysts" {
  name = "fenlum-1bmogc-ledger-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_analysts__ledger_read" {
  group      = aws_iam_group.ledger_analysts.name
  policy_arn = aws_iam_policy.ledger_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_analysts__base_readonly" {
  group      = aws_iam_group.ledger_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_devs" {
  name = "fenlum-1bmogc-ledger-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_devs__ledger_data_rw" {
  group      = aws_iam_group.ledger_devs.name
  policy_arn = aws_iam_policy.ledger_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_devs__ledger_ops" {
  group      = aws_iam_group.ledger_devs.name
  policy_arn = aws_iam_policy.ledger_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_devs__base_readonly" {
  group      = aws_iam_group.ledger_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_devs__self_service" {
  group      = aws_iam_group.ledger_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_2_analysts" {
  name = "fenlum-1bmogc-lending-2-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_2_analysts__lending_2_read" {
  group      = aws_iam_group.lending_2_analysts.name
  policy_arn = aws_iam_policy.lending_2_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_2_analysts__base_readonly" {
  group      = aws_iam_group.lending_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_2_devs" {
  name = "fenlum-1bmogc-lending-2-devs"
}

resource "aws_iam_group_policy_attachment" "lending_2_devs__lending_2_data_rw" {
  group      = aws_iam_group.lending_2_devs.name
  policy_arn = aws_iam_policy.lending_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_2_devs__lending_2_ops" {
  group      = aws_iam_group.lending_2_devs.name
  policy_arn = aws_iam_policy.lending_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_2_devs__base_readonly" {
  group      = aws_iam_group.lending_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_2_devs__self_service" {
  group      = aws_iam_group.lending_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_3_analysts" {
  name = "fenlum-1bmogc-lending-3-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_3_analysts__lending_3_read" {
  group      = aws_iam_group.lending_3_analysts.name
  policy_arn = aws_iam_policy.lending_3_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_3_analysts__base_readonly" {
  group      = aws_iam_group.lending_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_3_devs" {
  name = "fenlum-1bmogc-lending-3-devs"
}

resource "aws_iam_group_policy_attachment" "lending_3_devs__lending_3_data_rw" {
  group      = aws_iam_group.lending_3_devs.name
  policy_arn = aws_iam_policy.lending_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_3_devs__lending_3_ops" {
  group      = aws_iam_group.lending_3_devs.name
  policy_arn = aws_iam_policy.lending_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_3_devs__base_readonly" {
  group      = aws_iam_group.lending_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_3_devs__self_service" {
  group      = aws_iam_group.lending_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_4_analysts" {
  name = "fenlum-1bmogc-lending-4-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_4_analysts__lending_4_read" {
  group      = aws_iam_group.lending_4_analysts.name
  policy_arn = aws_iam_policy.lending_4_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_4_analysts__base_readonly" {
  group      = aws_iam_group.lending_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_4_devs" {
  name = "fenlum-1bmogc-lending-4-devs"
}

resource "aws_iam_group_policy_attachment" "lending_4_devs__lending_4_data_rw" {
  group      = aws_iam_group.lending_4_devs.name
  policy_arn = aws_iam_policy.lending_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_4_devs__lending_4_ops" {
  group      = aws_iam_group.lending_4_devs.name
  policy_arn = aws_iam_policy.lending_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_4_devs__base_readonly" {
  group      = aws_iam_group.lending_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_4_devs__self_service" {
  group      = aws_iam_group.lending_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_5_analysts" {
  name = "fenlum-1bmogc-lending-5-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_5_analysts__lending_5_read" {
  group      = aws_iam_group.lending_5_analysts.name
  policy_arn = aws_iam_policy.lending_5_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_5_analysts__base_readonly" {
  group      = aws_iam_group.lending_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_5_devs" {
  name = "fenlum-1bmogc-lending-5-devs"
}

resource "aws_iam_group_policy_attachment" "lending_5_devs__lending_5_data_rw" {
  group      = aws_iam_group.lending_5_devs.name
  policy_arn = aws_iam_policy.lending_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_5_devs__lending_5_ops" {
  group      = aws_iam_group.lending_5_devs.name
  policy_arn = aws_iam_policy.lending_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_5_devs__base_readonly" {
  group      = aws_iam_group.lending_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_5_devs__self_service" {
  group      = aws_iam_group.lending_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_6_analysts" {
  name = "fenlum-1bmogc-lending-6-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_6_analysts__lending_6_read" {
  group      = aws_iam_group.lending_6_analysts.name
  policy_arn = aws_iam_policy.lending_6_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_6_analysts__base_readonly" {
  group      = aws_iam_group.lending_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_6_devs" {
  name = "fenlum-1bmogc-lending-6-devs"
}

resource "aws_iam_group_policy_attachment" "lending_6_devs__lending_6_data_rw" {
  group      = aws_iam_group.lending_6_devs.name
  policy_arn = aws_iam_policy.lending_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_6_devs__lending_6_ops" {
  group      = aws_iam_group.lending_6_devs.name
  policy_arn = aws_iam_policy.lending_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_6_devs__base_readonly" {
  group      = aws_iam_group.lending_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_6_devs__self_service" {
  group      = aws_iam_group.lending_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_7_analysts" {
  name = "fenlum-1bmogc-lending-7-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_7_analysts__lending_7_read" {
  group      = aws_iam_group.lending_7_analysts.name
  policy_arn = aws_iam_policy.lending_7_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_7_analysts__base_readonly" {
  group      = aws_iam_group.lending_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_7_devs" {
  name = "fenlum-1bmogc-lending-7-devs"
}

resource "aws_iam_group_policy_attachment" "lending_7_devs__lending_7_data_rw" {
  group      = aws_iam_group.lending_7_devs.name
  policy_arn = aws_iam_policy.lending_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_7_devs__lending_7_ops" {
  group      = aws_iam_group.lending_7_devs.name
  policy_arn = aws_iam_policy.lending_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_7_devs__base_readonly" {
  group      = aws_iam_group.lending_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_7_devs__self_service" {
  group      = aws_iam_group.lending_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_analysts" {
  name = "fenlum-1bmogc-lending-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_analysts__lending_read" {
  group      = aws_iam_group.lending_analysts.name
  policy_arn = aws_iam_policy.lending_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_analysts__base_readonly" {
  group      = aws_iam_group.lending_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_devs" {
  name = "fenlum-1bmogc-lending-devs"
}

resource "aws_iam_group_policy_attachment" "lending_devs__lending_data_rw" {
  group      = aws_iam_group.lending_devs.name
  policy_arn = aws_iam_policy.lending_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_devs__lending_ops" {
  group      = aws_iam_group.lending_devs.name
  policy_arn = aws_iam_policy.lending_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_devs__base_readonly" {
  group      = aws_iam_group.lending_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_devs__self_service" {
  group      = aws_iam_group.lending_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_2_analysts" {
  name = "fenlum-1bmogc-mobile-2-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_2_analysts__mobile_2_read" {
  group      = aws_iam_group.mobile_2_analysts.name
  policy_arn = aws_iam_policy.mobile_2_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_2_analysts__base_readonly" {
  group      = aws_iam_group.mobile_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_2_devs" {
  name = "fenlum-1bmogc-mobile-2-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_2_devs__mobile_2_data_rw" {
  group      = aws_iam_group.mobile_2_devs.name
  policy_arn = aws_iam_policy.mobile_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_2_devs__mobile_2_ops" {
  group      = aws_iam_group.mobile_2_devs.name
  policy_arn = aws_iam_policy.mobile_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_2_devs__base_readonly" {
  group      = aws_iam_group.mobile_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_2_devs__self_service" {
  group      = aws_iam_group.mobile_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_3_analysts" {
  name = "fenlum-1bmogc-mobile-3-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_3_analysts__mobile_3_read" {
  group      = aws_iam_group.mobile_3_analysts.name
  policy_arn = aws_iam_policy.mobile_3_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_3_analysts__base_readonly" {
  group      = aws_iam_group.mobile_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_3_devs" {
  name = "fenlum-1bmogc-mobile-3-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_3_devs__mobile_3_data_rw" {
  group      = aws_iam_group.mobile_3_devs.name
  policy_arn = aws_iam_policy.mobile_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_3_devs__mobile_3_ops" {
  group      = aws_iam_group.mobile_3_devs.name
  policy_arn = aws_iam_policy.mobile_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_3_devs__base_readonly" {
  group      = aws_iam_group.mobile_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_3_devs__self_service" {
  group      = aws_iam_group.mobile_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_4_analysts" {
  name = "fenlum-1bmogc-mobile-4-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_4_analysts__mobile_4_read" {
  group      = aws_iam_group.mobile_4_analysts.name
  policy_arn = aws_iam_policy.mobile_4_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_4_analysts__base_readonly" {
  group      = aws_iam_group.mobile_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_4_devs" {
  name = "fenlum-1bmogc-mobile-4-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_4_devs__mobile_4_data_rw" {
  group      = aws_iam_group.mobile_4_devs.name
  policy_arn = aws_iam_policy.mobile_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_4_devs__mobile_4_ops" {
  group      = aws_iam_group.mobile_4_devs.name
  policy_arn = aws_iam_policy.mobile_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_4_devs__base_readonly" {
  group      = aws_iam_group.mobile_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_4_devs__self_service" {
  group      = aws_iam_group.mobile_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_5_analysts" {
  name = "fenlum-1bmogc-mobile-5-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_5_analysts__mobile_5_read" {
  group      = aws_iam_group.mobile_5_analysts.name
  policy_arn = aws_iam_policy.mobile_5_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_5_analysts__base_readonly" {
  group      = aws_iam_group.mobile_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_5_devs" {
  name = "fenlum-1bmogc-mobile-5-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_5_devs__mobile_5_data_rw" {
  group      = aws_iam_group.mobile_5_devs.name
  policy_arn = aws_iam_policy.mobile_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_5_devs__mobile_5_ops" {
  group      = aws_iam_group.mobile_5_devs.name
  policy_arn = aws_iam_policy.mobile_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_5_devs__base_readonly" {
  group      = aws_iam_group.mobile_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_5_devs__self_service" {
  group      = aws_iam_group.mobile_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_6_analysts" {
  name = "fenlum-1bmogc-mobile-6-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_6_analysts__mobile_6_read" {
  group      = aws_iam_group.mobile_6_analysts.name
  policy_arn = aws_iam_policy.mobile_6_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_6_analysts__base_readonly" {
  group      = aws_iam_group.mobile_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_6_devs" {
  name = "fenlum-1bmogc-mobile-6-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_6_devs__mobile_6_data_rw" {
  group      = aws_iam_group.mobile_6_devs.name
  policy_arn = aws_iam_policy.mobile_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_6_devs__mobile_6_ops" {
  group      = aws_iam_group.mobile_6_devs.name
  policy_arn = aws_iam_policy.mobile_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_6_devs__base_readonly" {
  group      = aws_iam_group.mobile_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_6_devs__self_service" {
  group      = aws_iam_group.mobile_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_analysts" {
  name = "fenlum-1bmogc-mobile-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_analysts__mobile_read" {
  group      = aws_iam_group.mobile_analysts.name
  policy_arn = aws_iam_policy.mobile_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_analysts__base_readonly" {
  group      = aws_iam_group.mobile_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_devs" {
  name = "fenlum-1bmogc-mobile-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_devs__mobile_data_rw" {
  group      = aws_iam_group.mobile_devs.name
  policy_arn = aws_iam_policy.mobile_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_devs__mobile_ops" {
  group      = aws_iam_group.mobile_devs.name
  policy_arn = aws_iam_policy.mobile_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_devs__base_readonly" {
  group      = aws_iam_group.mobile_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_devs__self_service" {
  group      = aws_iam_group.mobile_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_2_analysts" {
  name = "fenlum-1bmogc-payments-2-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_2_analysts__payments_2_read" {
  group      = aws_iam_group.payments_2_analysts.name
  policy_arn = aws_iam_policy.payments_2_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_2_analysts__base_readonly" {
  group      = aws_iam_group.payments_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_2_devs" {
  name = "fenlum-1bmogc-payments-2-devs"
}

resource "aws_iam_group_policy_attachment" "payments_2_devs__payments_2_data_rw" {
  group      = aws_iam_group.payments_2_devs.name
  policy_arn = aws_iam_policy.payments_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_2_devs__payments_2_ops" {
  group      = aws_iam_group.payments_2_devs.name
  policy_arn = aws_iam_policy.payments_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_2_devs__base_readonly" {
  group      = aws_iam_group.payments_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_2_devs__self_service" {
  group      = aws_iam_group.payments_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_3_analysts" {
  name = "fenlum-1bmogc-payments-3-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_3_analysts__payments_3_read" {
  group      = aws_iam_group.payments_3_analysts.name
  policy_arn = aws_iam_policy.payments_3_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_3_analysts__base_readonly" {
  group      = aws_iam_group.payments_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_3_devs" {
  name = "fenlum-1bmogc-payments-3-devs"
}

resource "aws_iam_group_policy_attachment" "payments_3_devs__payments_3_data_rw" {
  group      = aws_iam_group.payments_3_devs.name
  policy_arn = aws_iam_policy.payments_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_3_devs__payments_3_ops" {
  group      = aws_iam_group.payments_3_devs.name
  policy_arn = aws_iam_policy.payments_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_3_devs__base_readonly" {
  group      = aws_iam_group.payments_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_3_devs__self_service" {
  group      = aws_iam_group.payments_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_4_analysts" {
  name = "fenlum-1bmogc-payments-4-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_4_analysts__payments_4_read" {
  group      = aws_iam_group.payments_4_analysts.name
  policy_arn = aws_iam_policy.payments_4_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_4_analysts__base_readonly" {
  group      = aws_iam_group.payments_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_4_devs" {
  name = "fenlum-1bmogc-payments-4-devs"
}

resource "aws_iam_group_policy_attachment" "payments_4_devs__payments_4_data_rw" {
  group      = aws_iam_group.payments_4_devs.name
  policy_arn = aws_iam_policy.payments_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_4_devs__payments_4_ops" {
  group      = aws_iam_group.payments_4_devs.name
  policy_arn = aws_iam_policy.payments_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_4_devs__base_readonly" {
  group      = aws_iam_group.payments_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_4_devs__self_service" {
  group      = aws_iam_group.payments_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_5_analysts" {
  name = "fenlum-1bmogc-payments-5-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_5_analysts__payments_5_read" {
  group      = aws_iam_group.payments_5_analysts.name
  policy_arn = aws_iam_policy.payments_5_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_5_analysts__base_readonly" {
  group      = aws_iam_group.payments_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_5_devs" {
  name = "fenlum-1bmogc-payments-5-devs"
}

resource "aws_iam_group_policy_attachment" "payments_5_devs__payments_5_data_rw" {
  group      = aws_iam_group.payments_5_devs.name
  policy_arn = aws_iam_policy.payments_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_5_devs__payments_5_ops" {
  group      = aws_iam_group.payments_5_devs.name
  policy_arn = aws_iam_policy.payments_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_5_devs__base_readonly" {
  group      = aws_iam_group.payments_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_5_devs__self_service" {
  group      = aws_iam_group.payments_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_6_analysts" {
  name = "fenlum-1bmogc-payments-6-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_6_analysts__payments_6_read" {
  group      = aws_iam_group.payments_6_analysts.name
  policy_arn = aws_iam_policy.payments_6_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_6_analysts__base_readonly" {
  group      = aws_iam_group.payments_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_6_devs" {
  name = "fenlum-1bmogc-payments-6-devs"
}

resource "aws_iam_group_policy_attachment" "payments_6_devs__payments_6_data_rw" {
  group      = aws_iam_group.payments_6_devs.name
  policy_arn = aws_iam_policy.payments_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_6_devs__payments_6_ops" {
  group      = aws_iam_group.payments_6_devs.name
  policy_arn = aws_iam_policy.payments_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_6_devs__base_readonly" {
  group      = aws_iam_group.payments_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_6_devs__self_service" {
  group      = aws_iam_group.payments_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_7_analysts" {
  name = "fenlum-1bmogc-payments-7-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_7_analysts__payments_7_read" {
  group      = aws_iam_group.payments_7_analysts.name
  policy_arn = aws_iam_policy.payments_7_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_7_analysts__base_readonly" {
  group      = aws_iam_group.payments_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_7_devs" {
  name = "fenlum-1bmogc-payments-7-devs"
}

resource "aws_iam_group_policy_attachment" "payments_7_devs__payments_7_data_rw" {
  group      = aws_iam_group.payments_7_devs.name
  policy_arn = aws_iam_policy.payments_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_7_devs__payments_7_ops" {
  group      = aws_iam_group.payments_7_devs.name
  policy_arn = aws_iam_policy.payments_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_7_devs__base_readonly" {
  group      = aws_iam_group.payments_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_7_devs__self_service" {
  group      = aws_iam_group.payments_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_analysts" {
  name = "fenlum-1bmogc-payments-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_analysts__payments_read" {
  group      = aws_iam_group.payments_analysts.name
  policy_arn = aws_iam_policy.payments_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_analysts__base_readonly" {
  group      = aws_iam_group.payments_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_devs" {
  name = "fenlum-1bmogc-payments-devs"
}

resource "aws_iam_group_policy_attachment" "payments_devs__payments_data_rw" {
  group      = aws_iam_group.payments_devs.name
  policy_arn = aws_iam_policy.payments_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_devs__payments_ops" {
  group      = aws_iam_group.payments_devs.name
  policy_arn = aws_iam_policy.payments_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_devs__base_readonly" {
  group      = aws_iam_group.payments_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_devs__self_service" {
  group      = aws_iam_group.payments_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_2_analysts" {
  name = "fenlum-1bmogc-platform-2-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_2_analysts__platform_2_read" {
  group      = aws_iam_group.platform_2_analysts.name
  policy_arn = aws_iam_policy.platform_2_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_2_analysts__base_readonly" {
  group      = aws_iam_group.platform_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_2_devs" {
  name = "fenlum-1bmogc-platform-2-devs"
}

resource "aws_iam_group_policy_attachment" "platform_2_devs__platform_2_data_rw" {
  group      = aws_iam_group.platform_2_devs.name
  policy_arn = aws_iam_policy.platform_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_2_devs__platform_2_ops" {
  group      = aws_iam_group.platform_2_devs.name
  policy_arn = aws_iam_policy.platform_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_2_devs__base_readonly" {
  group      = aws_iam_group.platform_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_2_devs__self_service" {
  group      = aws_iam_group.platform_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_3_analysts" {
  name = "fenlum-1bmogc-platform-3-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_3_analysts__platform_3_read" {
  group      = aws_iam_group.platform_3_analysts.name
  policy_arn = aws_iam_policy.platform_3_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_3_analysts__base_readonly" {
  group      = aws_iam_group.platform_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_3_devs" {
  name = "fenlum-1bmogc-platform-3-devs"
}

resource "aws_iam_group_policy_attachment" "platform_3_devs__platform_3_data_rw" {
  group      = aws_iam_group.platform_3_devs.name
  policy_arn = aws_iam_policy.platform_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_3_devs__platform_3_ops" {
  group      = aws_iam_group.platform_3_devs.name
  policy_arn = aws_iam_policy.platform_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_3_devs__base_readonly" {
  group      = aws_iam_group.platform_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_3_devs__self_service" {
  group      = aws_iam_group.platform_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_4_analysts" {
  name = "fenlum-1bmogc-platform-4-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_4_analysts__platform_4_read" {
  group      = aws_iam_group.platform_4_analysts.name
  policy_arn = aws_iam_policy.platform_4_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_4_analysts__base_readonly" {
  group      = aws_iam_group.platform_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_4_devs" {
  name = "fenlum-1bmogc-platform-4-devs"
}

resource "aws_iam_group_policy_attachment" "platform_4_devs__platform_4_data_rw" {
  group      = aws_iam_group.platform_4_devs.name
  policy_arn = aws_iam_policy.platform_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_4_devs__platform_4_ops" {
  group      = aws_iam_group.platform_4_devs.name
  policy_arn = aws_iam_policy.platform_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_4_devs__base_readonly" {
  group      = aws_iam_group.platform_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_4_devs__self_service" {
  group      = aws_iam_group.platform_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_5_analysts" {
  name = "fenlum-1bmogc-platform-5-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_5_analysts__platform_5_read" {
  group      = aws_iam_group.platform_5_analysts.name
  policy_arn = aws_iam_policy.platform_5_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_5_analysts__base_readonly" {
  group      = aws_iam_group.platform_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_5_devs" {
  name = "fenlum-1bmogc-platform-5-devs"
}

resource "aws_iam_group_policy_attachment" "platform_5_devs__platform_5_data_rw" {
  group      = aws_iam_group.platform_5_devs.name
  policy_arn = aws_iam_policy.platform_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_5_devs__platform_5_ops" {
  group      = aws_iam_group.platform_5_devs.name
  policy_arn = aws_iam_policy.platform_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_5_devs__base_readonly" {
  group      = aws_iam_group.platform_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_5_devs__self_service" {
  group      = aws_iam_group.platform_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_6_analysts" {
  name = "fenlum-1bmogc-platform-6-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_6_analysts__platform_6_read" {
  group      = aws_iam_group.platform_6_analysts.name
  policy_arn = aws_iam_policy.platform_6_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_6_analysts__base_readonly" {
  group      = aws_iam_group.platform_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_6_devs" {
  name = "fenlum-1bmogc-platform-6-devs"
}

resource "aws_iam_group_policy_attachment" "platform_6_devs__platform_6_data_rw" {
  group      = aws_iam_group.platform_6_devs.name
  policy_arn = aws_iam_policy.platform_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_6_devs__platform_6_ops" {
  group      = aws_iam_group.platform_6_devs.name
  policy_arn = aws_iam_policy.platform_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_6_devs__base_readonly" {
  group      = aws_iam_group.platform_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_6_devs__self_service" {
  group      = aws_iam_group.platform_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "fenlum-1bmogc-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "platform_analysts" {
  name = "fenlum-1bmogc-platform-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_analysts__platform_read" {
  group      = aws_iam_group.platform_analysts.name
  policy_arn = aws_iam_policy.platform_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_analysts__base_readonly" {
  group      = aws_iam_group.platform_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_devs" {
  name = "fenlum-1bmogc-platform-devs"
}

resource "aws_iam_group_policy_attachment" "platform_devs__platform_data_rw" {
  group      = aws_iam_group.platform_devs.name
  policy_arn = aws_iam_policy.platform_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_devs__platform_ops" {
  group      = aws_iam_group.platform_devs.name
  policy_arn = aws_iam_policy.platform_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_devs__base_readonly" {
  group      = aws_iam_group.platform_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_devs__self_service" {
  group      = aws_iam_group.platform_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_2_analysts" {
  name = "fenlum-1bmogc-reporting-2-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_2_analysts__reporting_2_read" {
  group      = aws_iam_group.reporting_2_analysts.name
  policy_arn = aws_iam_policy.reporting_2_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_2_analysts__base_readonly" {
  group      = aws_iam_group.reporting_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_2_devs" {
  name = "fenlum-1bmogc-reporting-2-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_2_devs__reporting_2_data_rw" {
  group      = aws_iam_group.reporting_2_devs.name
  policy_arn = aws_iam_policy.reporting_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_2_devs__reporting_2_ops" {
  group      = aws_iam_group.reporting_2_devs.name
  policy_arn = aws_iam_policy.reporting_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_2_devs__base_readonly" {
  group      = aws_iam_group.reporting_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_2_devs__self_service" {
  group      = aws_iam_group.reporting_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_3_analysts" {
  name = "fenlum-1bmogc-reporting-3-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_3_analysts__reporting_3_read" {
  group      = aws_iam_group.reporting_3_analysts.name
  policy_arn = aws_iam_policy.reporting_3_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_3_analysts__base_readonly" {
  group      = aws_iam_group.reporting_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_3_devs" {
  name = "fenlum-1bmogc-reporting-3-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_3_devs__reporting_3_data_rw" {
  group      = aws_iam_group.reporting_3_devs.name
  policy_arn = aws_iam_policy.reporting_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_3_devs__reporting_3_ops" {
  group      = aws_iam_group.reporting_3_devs.name
  policy_arn = aws_iam_policy.reporting_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_3_devs__base_readonly" {
  group      = aws_iam_group.reporting_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_3_devs__self_service" {
  group      = aws_iam_group.reporting_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_4_analysts" {
  name = "fenlum-1bmogc-reporting-4-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_4_analysts__reporting_4_read" {
  group      = aws_iam_group.reporting_4_analysts.name
  policy_arn = aws_iam_policy.reporting_4_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_4_analysts__base_readonly" {
  group      = aws_iam_group.reporting_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_4_devs" {
  name = "fenlum-1bmogc-reporting-4-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_4_devs__reporting_4_data_rw" {
  group      = aws_iam_group.reporting_4_devs.name
  policy_arn = aws_iam_policy.reporting_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_4_devs__reporting_4_ops" {
  group      = aws_iam_group.reporting_4_devs.name
  policy_arn = aws_iam_policy.reporting_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_4_devs__base_readonly" {
  group      = aws_iam_group.reporting_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_4_devs__self_service" {
  group      = aws_iam_group.reporting_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_5_analysts" {
  name = "fenlum-1bmogc-reporting-5-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_5_analysts__reporting_5_read" {
  group      = aws_iam_group.reporting_5_analysts.name
  policy_arn = aws_iam_policy.reporting_5_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_5_analysts__base_readonly" {
  group      = aws_iam_group.reporting_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_5_devs" {
  name = "fenlum-1bmogc-reporting-5-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_5_devs__reporting_5_data_rw" {
  group      = aws_iam_group.reporting_5_devs.name
  policy_arn = aws_iam_policy.reporting_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_5_devs__reporting_5_ops" {
  group      = aws_iam_group.reporting_5_devs.name
  policy_arn = aws_iam_policy.reporting_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_5_devs__base_readonly" {
  group      = aws_iam_group.reporting_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_5_devs__self_service" {
  group      = aws_iam_group.reporting_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_6_analysts" {
  name = "fenlum-1bmogc-reporting-6-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_6_analysts__reporting_6_read" {
  group      = aws_iam_group.reporting_6_analysts.name
  policy_arn = aws_iam_policy.reporting_6_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_6_analysts__base_readonly" {
  group      = aws_iam_group.reporting_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_6_devs" {
  name = "fenlum-1bmogc-reporting-6-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_6_devs__reporting_6_data_rw" {
  group      = aws_iam_group.reporting_6_devs.name
  policy_arn = aws_iam_policy.reporting_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_6_devs__reporting_6_ops" {
  group      = aws_iam_group.reporting_6_devs.name
  policy_arn = aws_iam_policy.reporting_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_6_devs__base_readonly" {
  group      = aws_iam_group.reporting_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_6_devs__self_service" {
  group      = aws_iam_group.reporting_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_analysts" {
  name = "fenlum-1bmogc-reporting-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_analysts__reporting_read" {
  group      = aws_iam_group.reporting_analysts.name
  policy_arn = aws_iam_policy.reporting_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_analysts__base_readonly" {
  group      = aws_iam_group.reporting_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_devs" {
  name = "fenlum-1bmogc-reporting-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_devs__reporting_data_rw" {
  group      = aws_iam_group.reporting_devs.name
  policy_arn = aws_iam_policy.reporting_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_devs__reporting_ops" {
  group      = aws_iam_group.reporting_devs.name
  policy_arn = aws_iam_policy.reporting_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_devs__base_readonly" {
  group      = aws_iam_group.reporting_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_devs__self_service" {
  group      = aws_iam_group.reporting_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_2_analysts" {
  name = "fenlum-1bmogc-risk-2-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_2_analysts__risk_2_read" {
  group      = aws_iam_group.risk_2_analysts.name
  policy_arn = aws_iam_policy.risk_2_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_2_analysts__base_readonly" {
  group      = aws_iam_group.risk_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_2_devs" {
  name = "fenlum-1bmogc-risk-2-devs"
}

resource "aws_iam_group_policy_attachment" "risk_2_devs__risk_2_data_rw" {
  group      = aws_iam_group.risk_2_devs.name
  policy_arn = aws_iam_policy.risk_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_2_devs__risk_2_ops" {
  group      = aws_iam_group.risk_2_devs.name
  policy_arn = aws_iam_policy.risk_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_2_devs__base_readonly" {
  group      = aws_iam_group.risk_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_2_devs__self_service" {
  group      = aws_iam_group.risk_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_3_analysts" {
  name = "fenlum-1bmogc-risk-3-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_3_analysts__risk_3_read" {
  group      = aws_iam_group.risk_3_analysts.name
  policy_arn = aws_iam_policy.risk_3_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_3_analysts__base_readonly" {
  group      = aws_iam_group.risk_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_3_devs" {
  name = "fenlum-1bmogc-risk-3-devs"
}

resource "aws_iam_group_policy_attachment" "risk_3_devs__risk_3_data_rw" {
  group      = aws_iam_group.risk_3_devs.name
  policy_arn = aws_iam_policy.risk_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_3_devs__risk_3_ops" {
  group      = aws_iam_group.risk_3_devs.name
  policy_arn = aws_iam_policy.risk_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_3_devs__base_readonly" {
  group      = aws_iam_group.risk_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_3_devs__self_service" {
  group      = aws_iam_group.risk_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_4_analysts" {
  name = "fenlum-1bmogc-risk-4-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_4_analysts__risk_4_read" {
  group      = aws_iam_group.risk_4_analysts.name
  policy_arn = aws_iam_policy.risk_4_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_4_analysts__base_readonly" {
  group      = aws_iam_group.risk_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_4_devs" {
  name = "fenlum-1bmogc-risk-4-devs"
}

resource "aws_iam_group_policy_attachment" "risk_4_devs__risk_4_data_rw" {
  group      = aws_iam_group.risk_4_devs.name
  policy_arn = aws_iam_policy.risk_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_4_devs__risk_4_ops" {
  group      = aws_iam_group.risk_4_devs.name
  policy_arn = aws_iam_policy.risk_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_4_devs__base_readonly" {
  group      = aws_iam_group.risk_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_4_devs__self_service" {
  group      = aws_iam_group.risk_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_5_analysts" {
  name = "fenlum-1bmogc-risk-5-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_5_analysts__risk_5_read" {
  group      = aws_iam_group.risk_5_analysts.name
  policy_arn = aws_iam_policy.risk_5_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_5_analysts__base_readonly" {
  group      = aws_iam_group.risk_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_5_devs" {
  name = "fenlum-1bmogc-risk-5-devs"
}

resource "aws_iam_group_policy_attachment" "risk_5_devs__risk_5_data_rw" {
  group      = aws_iam_group.risk_5_devs.name
  policy_arn = aws_iam_policy.risk_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_5_devs__risk_5_ops" {
  group      = aws_iam_group.risk_5_devs.name
  policy_arn = aws_iam_policy.risk_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_5_devs__base_readonly" {
  group      = aws_iam_group.risk_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_5_devs__self_service" {
  group      = aws_iam_group.risk_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_6_analysts" {
  name = "fenlum-1bmogc-risk-6-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_6_analysts__risk_6_read" {
  group      = aws_iam_group.risk_6_analysts.name
  policy_arn = aws_iam_policy.risk_6_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_6_analysts__base_readonly" {
  group      = aws_iam_group.risk_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_6_devs" {
  name = "fenlum-1bmogc-risk-6-devs"
}

resource "aws_iam_group_policy_attachment" "risk_6_devs__risk_6_data_rw" {
  group      = aws_iam_group.risk_6_devs.name
  policy_arn = aws_iam_policy.risk_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_6_devs__risk_6_ops" {
  group      = aws_iam_group.risk_6_devs.name
  policy_arn = aws_iam_policy.risk_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_6_devs__base_readonly" {
  group      = aws_iam_group.risk_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_6_devs__self_service" {
  group      = aws_iam_group.risk_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_7_analysts" {
  name = "fenlum-1bmogc-risk-7-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_7_analysts__risk_7_read" {
  group      = aws_iam_group.risk_7_analysts.name
  policy_arn = aws_iam_policy.risk_7_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_7_analysts__base_readonly" {
  group      = aws_iam_group.risk_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_7_devs" {
  name = "fenlum-1bmogc-risk-7-devs"
}

resource "aws_iam_group_policy_attachment" "risk_7_devs__risk_7_data_rw" {
  group      = aws_iam_group.risk_7_devs.name
  policy_arn = aws_iam_policy.risk_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_7_devs__risk_7_ops" {
  group      = aws_iam_group.risk_7_devs.name
  policy_arn = aws_iam_policy.risk_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_7_devs__base_readonly" {
  group      = aws_iam_group.risk_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_7_devs__self_service" {
  group      = aws_iam_group.risk_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_analysts" {
  name = "fenlum-1bmogc-risk-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_analysts__risk_read" {
  group      = aws_iam_group.risk_analysts.name
  policy_arn = aws_iam_policy.risk_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_analysts__base_readonly" {
  group      = aws_iam_group.risk_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_devs" {
  name = "fenlum-1bmogc-risk-devs"
}

resource "aws_iam_group_policy_attachment" "risk_devs__risk_data_rw" {
  group      = aws_iam_group.risk_devs.name
  policy_arn = aws_iam_policy.risk_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_devs__risk_ops" {
  group      = aws_iam_group.risk_devs.name
  policy_arn = aws_iam_policy.risk_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_devs__base_readonly" {
  group      = aws_iam_group.risk_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_devs__self_service" {
  group      = aws_iam_group.risk_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_2_analysts" {
  name = "fenlum-1bmogc-trading-2-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_2_analysts__trading_2_read" {
  group      = aws_iam_group.trading_2_analysts.name
  policy_arn = aws_iam_policy.trading_2_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_2_analysts__base_readonly" {
  group      = aws_iam_group.trading_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_2_devs" {
  name = "fenlum-1bmogc-trading-2-devs"
}

resource "aws_iam_group_policy_attachment" "trading_2_devs__trading_2_data_rw" {
  group      = aws_iam_group.trading_2_devs.name
  policy_arn = aws_iam_policy.trading_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_2_devs__trading_2_ops" {
  group      = aws_iam_group.trading_2_devs.name
  policy_arn = aws_iam_policy.trading_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_2_devs__base_readonly" {
  group      = aws_iam_group.trading_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_2_devs__self_service" {
  group      = aws_iam_group.trading_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_3_analysts" {
  name = "fenlum-1bmogc-trading-3-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_3_analysts__trading_3_read" {
  group      = aws_iam_group.trading_3_analysts.name
  policy_arn = aws_iam_policy.trading_3_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_3_analysts__base_readonly" {
  group      = aws_iam_group.trading_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_3_devs" {
  name = "fenlum-1bmogc-trading-3-devs"
}

resource "aws_iam_group_policy_attachment" "trading_3_devs__trading_3_data_rw" {
  group      = aws_iam_group.trading_3_devs.name
  policy_arn = aws_iam_policy.trading_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_3_devs__trading_3_ops" {
  group      = aws_iam_group.trading_3_devs.name
  policy_arn = aws_iam_policy.trading_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_3_devs__base_readonly" {
  group      = aws_iam_group.trading_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_3_devs__self_service" {
  group      = aws_iam_group.trading_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_4_analysts" {
  name = "fenlum-1bmogc-trading-4-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_4_analysts__trading_4_read" {
  group      = aws_iam_group.trading_4_analysts.name
  policy_arn = aws_iam_policy.trading_4_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_4_analysts__base_readonly" {
  group      = aws_iam_group.trading_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_4_devs" {
  name = "fenlum-1bmogc-trading-4-devs"
}

resource "aws_iam_group_policy_attachment" "trading_4_devs__trading_4_data_rw" {
  group      = aws_iam_group.trading_4_devs.name
  policy_arn = aws_iam_policy.trading_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_4_devs__trading_4_ops" {
  group      = aws_iam_group.trading_4_devs.name
  policy_arn = aws_iam_policy.trading_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_4_devs__base_readonly" {
  group      = aws_iam_group.trading_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_4_devs__self_service" {
  group      = aws_iam_group.trading_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_5_analysts" {
  name = "fenlum-1bmogc-trading-5-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_5_analysts__trading_5_read" {
  group      = aws_iam_group.trading_5_analysts.name
  policy_arn = aws_iam_policy.trading_5_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_5_analysts__base_readonly" {
  group      = aws_iam_group.trading_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_5_devs" {
  name = "fenlum-1bmogc-trading-5-devs"
}

resource "aws_iam_group_policy_attachment" "trading_5_devs__trading_5_data_rw" {
  group      = aws_iam_group.trading_5_devs.name
  policy_arn = aws_iam_policy.trading_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_5_devs__trading_5_ops" {
  group      = aws_iam_group.trading_5_devs.name
  policy_arn = aws_iam_policy.trading_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_5_devs__base_readonly" {
  group      = aws_iam_group.trading_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_5_devs__self_service" {
  group      = aws_iam_group.trading_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_6_analysts" {
  name = "fenlum-1bmogc-trading-6-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_6_analysts__trading_6_read" {
  group      = aws_iam_group.trading_6_analysts.name
  policy_arn = aws_iam_policy.trading_6_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_6_analysts__base_readonly" {
  group      = aws_iam_group.trading_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_6_devs" {
  name = "fenlum-1bmogc-trading-6-devs"
}

resource "aws_iam_group_policy_attachment" "trading_6_devs__trading_6_data_rw" {
  group      = aws_iam_group.trading_6_devs.name
  policy_arn = aws_iam_policy.trading_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_6_devs__trading_6_ops" {
  group      = aws_iam_group.trading_6_devs.name
  policy_arn = aws_iam_policy.trading_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_6_devs__base_readonly" {
  group      = aws_iam_group.trading_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_6_devs__self_service" {
  group      = aws_iam_group.trading_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_7_analysts" {
  name = "fenlum-1bmogc-trading-7-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_7_analysts__trading_7_read" {
  group      = aws_iam_group.trading_7_analysts.name
  policy_arn = aws_iam_policy.trading_7_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_7_analysts__base_readonly" {
  group      = aws_iam_group.trading_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_7_devs" {
  name = "fenlum-1bmogc-trading-7-devs"
}

resource "aws_iam_group_policy_attachment" "trading_7_devs__trading_7_data_rw" {
  group      = aws_iam_group.trading_7_devs.name
  policy_arn = aws_iam_policy.trading_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_7_devs__trading_7_ops" {
  group      = aws_iam_group.trading_7_devs.name
  policy_arn = aws_iam_policy.trading_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_7_devs__base_readonly" {
  group      = aws_iam_group.trading_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_7_devs__self_service" {
  group      = aws_iam_group.trading_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_analysts" {
  name = "fenlum-1bmogc-trading-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_analysts__trading_read" {
  group      = aws_iam_group.trading_analysts.name
  policy_arn = aws_iam_policy.trading_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_analysts__base_readonly" {
  group      = aws_iam_group.trading_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_devs" {
  name = "fenlum-1bmogc-trading-devs"
}

resource "aws_iam_group_policy_attachment" "trading_devs__trading_data_rw" {
  group      = aws_iam_group.trading_devs.name
  policy_arn = aws_iam_policy.trading_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_devs__trading_ops" {
  group      = aws_iam_group.trading_devs.name
  policy_arn = aws_iam_policy.trading_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_devs__base_readonly" {
  group      = aws_iam_group.trading_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_devs__self_service" {
  group      = aws_iam_group.trading_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_2_analysts" {
  name = "fenlum-1bmogc-treasury-2-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_2_analysts__treasury_2_read" {
  group      = aws_iam_group.treasury_2_analysts.name
  policy_arn = aws_iam_policy.treasury_2_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_2_analysts__base_readonly" {
  group      = aws_iam_group.treasury_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_2_devs" {
  name = "fenlum-1bmogc-treasury-2-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_2_devs__treasury_2_data_rw" {
  group      = aws_iam_group.treasury_2_devs.name
  policy_arn = aws_iam_policy.treasury_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_2_devs__treasury_2_ops" {
  group      = aws_iam_group.treasury_2_devs.name
  policy_arn = aws_iam_policy.treasury_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_2_devs__base_readonly" {
  group      = aws_iam_group.treasury_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_2_devs__self_service" {
  group      = aws_iam_group.treasury_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_3_analysts" {
  name = "fenlum-1bmogc-treasury-3-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_3_analysts__treasury_3_read" {
  group      = aws_iam_group.treasury_3_analysts.name
  policy_arn = aws_iam_policy.treasury_3_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_3_analysts__base_readonly" {
  group      = aws_iam_group.treasury_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_3_devs" {
  name = "fenlum-1bmogc-treasury-3-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_3_devs__treasury_3_data_rw" {
  group      = aws_iam_group.treasury_3_devs.name
  policy_arn = aws_iam_policy.treasury_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_3_devs__treasury_3_ops" {
  group      = aws_iam_group.treasury_3_devs.name
  policy_arn = aws_iam_policy.treasury_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_3_devs__base_readonly" {
  group      = aws_iam_group.treasury_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_3_devs__self_service" {
  group      = aws_iam_group.treasury_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_4_analysts" {
  name = "fenlum-1bmogc-treasury-4-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_4_analysts__treasury_4_read" {
  group      = aws_iam_group.treasury_4_analysts.name
  policy_arn = aws_iam_policy.treasury_4_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_4_analysts__base_readonly" {
  group      = aws_iam_group.treasury_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_4_devs" {
  name = "fenlum-1bmogc-treasury-4-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_4_devs__treasury_4_data_rw" {
  group      = aws_iam_group.treasury_4_devs.name
  policy_arn = aws_iam_policy.treasury_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_4_devs__treasury_4_ops" {
  group      = aws_iam_group.treasury_4_devs.name
  policy_arn = aws_iam_policy.treasury_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_4_devs__base_readonly" {
  group      = aws_iam_group.treasury_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_4_devs__self_service" {
  group      = aws_iam_group.treasury_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_5_analysts" {
  name = "fenlum-1bmogc-treasury-5-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_5_analysts__treasury_5_read" {
  group      = aws_iam_group.treasury_5_analysts.name
  policy_arn = aws_iam_policy.treasury_5_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_5_analysts__base_readonly" {
  group      = aws_iam_group.treasury_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_5_devs" {
  name = "fenlum-1bmogc-treasury-5-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_5_devs__treasury_5_data_rw" {
  group      = aws_iam_group.treasury_5_devs.name
  policy_arn = aws_iam_policy.treasury_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_5_devs__treasury_5_ops" {
  group      = aws_iam_group.treasury_5_devs.name
  policy_arn = aws_iam_policy.treasury_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_5_devs__base_readonly" {
  group      = aws_iam_group.treasury_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_5_devs__self_service" {
  group      = aws_iam_group.treasury_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_6_analysts" {
  name = "fenlum-1bmogc-treasury-6-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_6_analysts__treasury_6_read" {
  group      = aws_iam_group.treasury_6_analysts.name
  policy_arn = aws_iam_policy.treasury_6_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_6_analysts__base_readonly" {
  group      = aws_iam_group.treasury_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_6_devs" {
  name = "fenlum-1bmogc-treasury-6-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_6_devs__treasury_6_data_rw" {
  group      = aws_iam_group.treasury_6_devs.name
  policy_arn = aws_iam_policy.treasury_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_6_devs__treasury_6_ops" {
  group      = aws_iam_group.treasury_6_devs.name
  policy_arn = aws_iam_policy.treasury_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_6_devs__base_readonly" {
  group      = aws_iam_group.treasury_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_6_devs__self_service" {
  group      = aws_iam_group.treasury_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_7_analysts" {
  name = "fenlum-1bmogc-treasury-7-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_7_analysts__treasury_7_read" {
  group      = aws_iam_group.treasury_7_analysts.name
  policy_arn = aws_iam_policy.treasury_7_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_7_analysts__base_readonly" {
  group      = aws_iam_group.treasury_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_7_devs" {
  name = "fenlum-1bmogc-treasury-7-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_7_devs__treasury_7_data_rw" {
  group      = aws_iam_group.treasury_7_devs.name
  policy_arn = aws_iam_policy.treasury_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_7_devs__treasury_7_ops" {
  group      = aws_iam_group.treasury_7_devs.name
  policy_arn = aws_iam_policy.treasury_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_7_devs__base_readonly" {
  group      = aws_iam_group.treasury_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_7_devs__self_service" {
  group      = aws_iam_group.treasury_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_analysts" {
  name = "fenlum-1bmogc-treasury-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_analysts__treasury_read" {
  group      = aws_iam_group.treasury_analysts.name
  policy_arn = aws_iam_policy.treasury_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_analysts__base_readonly" {
  group      = aws_iam_group.treasury_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_devs" {
  name = "fenlum-1bmogc-treasury-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_devs__treasury_data_rw" {
  group      = aws_iam_group.treasury_devs.name
  policy_arn = aws_iam_policy.treasury_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_devs__treasury_ops" {
  group      = aws_iam_group.treasury_devs.name
  policy_arn = aws_iam_policy.treasury_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_devs__base_readonly" {
  group      = aws_iam_group.treasury_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_devs__self_service" {
  group      = aws_iam_group.treasury_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}
