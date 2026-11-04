resource "aws_iam_group" "audit_10_analysts" {
  name = "arior-1njchw-audit-10-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_10_analysts__audit_10_read" {
  group      = aws_iam_group.audit_10_analysts.name
  policy_arn = aws_iam_policy.audit_10_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_10_analysts__base_readonly" {
  group      = aws_iam_group.audit_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_10_devs" {
  name = "arior-1njchw-audit-10-devs"
}

resource "aws_iam_group_policy_attachment" "audit_10_devs__audit_10_data_rw" {
  group      = aws_iam_group.audit_10_devs.name
  policy_arn = aws_iam_policy.audit_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_10_devs__audit_10_ops" {
  group      = aws_iam_group.audit_10_devs.name
  policy_arn = aws_iam_policy.audit_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_10_devs__base_readonly" {
  group      = aws_iam_group.audit_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_10_devs__self_service" {
  group      = aws_iam_group.audit_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_11_analysts" {
  name = "arior-1njchw-audit-11-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_11_analysts__audit_11_read" {
  group      = aws_iam_group.audit_11_analysts.name
  policy_arn = aws_iam_policy.audit_11_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_11_analysts__base_readonly" {
  group      = aws_iam_group.audit_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_11_devs" {
  name = "arior-1njchw-audit-11-devs"
}

resource "aws_iam_group_policy_attachment" "audit_11_devs__audit_11_data_rw" {
  group      = aws_iam_group.audit_11_devs.name
  policy_arn = aws_iam_policy.audit_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_11_devs__audit_11_ops" {
  group      = aws_iam_group.audit_11_devs.name
  policy_arn = aws_iam_policy.audit_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_11_devs__base_readonly" {
  group      = aws_iam_group.audit_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_11_devs__self_service" {
  group      = aws_iam_group.audit_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_12_analysts" {
  name = "arior-1njchw-audit-12-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_12_analysts__audit_12_read" {
  group      = aws_iam_group.audit_12_analysts.name
  policy_arn = aws_iam_policy.audit_12_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_12_analysts__base_readonly" {
  group      = aws_iam_group.audit_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_12_devs" {
  name = "arior-1njchw-audit-12-devs"
}

resource "aws_iam_group_policy_attachment" "audit_12_devs__audit_12_data_rw" {
  group      = aws_iam_group.audit_12_devs.name
  policy_arn = aws_iam_policy.audit_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_12_devs__audit_12_ops" {
  group      = aws_iam_group.audit_12_devs.name
  policy_arn = aws_iam_policy.audit_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_12_devs__base_readonly" {
  group      = aws_iam_group.audit_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_12_devs__self_service" {
  group      = aws_iam_group.audit_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_13_analysts" {
  name = "arior-1njchw-audit-13-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_13_analysts__audit_13_read" {
  group      = aws_iam_group.audit_13_analysts.name
  policy_arn = aws_iam_policy.audit_13_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_13_analysts__base_readonly" {
  group      = aws_iam_group.audit_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_13_devs" {
  name = "arior-1njchw-audit-13-devs"
}

resource "aws_iam_group_policy_attachment" "audit_13_devs__audit_13_data_rw" {
  group      = aws_iam_group.audit_13_devs.name
  policy_arn = aws_iam_policy.audit_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_13_devs__audit_13_ops" {
  group      = aws_iam_group.audit_13_devs.name
  policy_arn = aws_iam_policy.audit_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_13_devs__base_readonly" {
  group      = aws_iam_group.audit_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_13_devs__self_service" {
  group      = aws_iam_group.audit_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_14_analysts" {
  name = "arior-1njchw-audit-14-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_14_analysts__audit_14_read" {
  group      = aws_iam_group.audit_14_analysts.name
  policy_arn = aws_iam_policy.audit_14_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_14_analysts__base_readonly" {
  group      = aws_iam_group.audit_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_14_devs" {
  name = "arior-1njchw-audit-14-devs"
}

resource "aws_iam_group_policy_attachment" "audit_14_devs__audit_14_data_rw" {
  group      = aws_iam_group.audit_14_devs.name
  policy_arn = aws_iam_policy.audit_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_14_devs__audit_14_ops" {
  group      = aws_iam_group.audit_14_devs.name
  policy_arn = aws_iam_policy.audit_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_14_devs__base_readonly" {
  group      = aws_iam_group.audit_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_14_devs__self_service" {
  group      = aws_iam_group.audit_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_15_analysts" {
  name = "arior-1njchw-audit-15-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_15_analysts__audit_15_read" {
  group      = aws_iam_group.audit_15_analysts.name
  policy_arn = aws_iam_policy.audit_15_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_15_analysts__base_readonly" {
  group      = aws_iam_group.audit_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_15_devs" {
  name = "arior-1njchw-audit-15-devs"
}

resource "aws_iam_group_policy_attachment" "audit_15_devs__audit_15_data_rw" {
  group      = aws_iam_group.audit_15_devs.name
  policy_arn = aws_iam_policy.audit_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_15_devs__audit_15_ops" {
  group      = aws_iam_group.audit_15_devs.name
  policy_arn = aws_iam_policy.audit_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_15_devs__base_readonly" {
  group      = aws_iam_group.audit_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_15_devs__self_service" {
  group      = aws_iam_group.audit_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_16_analysts" {
  name = "arior-1njchw-audit-16-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_16_analysts__audit_16_read" {
  group      = aws_iam_group.audit_16_analysts.name
  policy_arn = aws_iam_policy.audit_16_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_16_analysts__base_readonly" {
  group      = aws_iam_group.audit_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_16_devs" {
  name = "arior-1njchw-audit-16-devs"
}

resource "aws_iam_group_policy_attachment" "audit_16_devs__audit_16_data_rw" {
  group      = aws_iam_group.audit_16_devs.name
  policy_arn = aws_iam_policy.audit_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_16_devs__audit_16_ops" {
  group      = aws_iam_group.audit_16_devs.name
  policy_arn = aws_iam_policy.audit_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_16_devs__base_readonly" {
  group      = aws_iam_group.audit_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_16_devs__self_service" {
  group      = aws_iam_group.audit_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_17_analysts" {
  name = "arior-1njchw-audit-17-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_17_analysts__audit_17_read" {
  group      = aws_iam_group.audit_17_analysts.name
  policy_arn = aws_iam_policy.audit_17_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_17_analysts__base_readonly" {
  group      = aws_iam_group.audit_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_17_devs" {
  name = "arior-1njchw-audit-17-devs"
}

resource "aws_iam_group_policy_attachment" "audit_17_devs__audit_17_data_rw" {
  group      = aws_iam_group.audit_17_devs.name
  policy_arn = aws_iam_policy.audit_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_17_devs__audit_17_ops" {
  group      = aws_iam_group.audit_17_devs.name
  policy_arn = aws_iam_policy.audit_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_17_devs__base_readonly" {
  group      = aws_iam_group.audit_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_17_devs__self_service" {
  group      = aws_iam_group.audit_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_18_analysts" {
  name = "arior-1njchw-audit-18-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_18_analysts__audit_18_read" {
  group      = aws_iam_group.audit_18_analysts.name
  policy_arn = aws_iam_policy.audit_18_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_18_analysts__base_readonly" {
  group      = aws_iam_group.audit_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_18_devs" {
  name = "arior-1njchw-audit-18-devs"
}

resource "aws_iam_group_policy_attachment" "audit_18_devs__audit_18_data_rw" {
  group      = aws_iam_group.audit_18_devs.name
  policy_arn = aws_iam_policy.audit_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_18_devs__audit_18_ops" {
  group      = aws_iam_group.audit_18_devs.name
  policy_arn = aws_iam_policy.audit_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_18_devs__base_readonly" {
  group      = aws_iam_group.audit_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_18_devs__self_service" {
  group      = aws_iam_group.audit_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_19_analysts" {
  name = "arior-1njchw-audit-19-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_19_analysts__audit_19_read" {
  group      = aws_iam_group.audit_19_analysts.name
  policy_arn = aws_iam_policy.audit_19_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_19_analysts__base_readonly" {
  group      = aws_iam_group.audit_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_19_devs" {
  name = "arior-1njchw-audit-19-devs"
}

resource "aws_iam_group_policy_attachment" "audit_19_devs__audit_19_data_rw" {
  group      = aws_iam_group.audit_19_devs.name
  policy_arn = aws_iam_policy.audit_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_19_devs__audit_19_ops" {
  group      = aws_iam_group.audit_19_devs.name
  policy_arn = aws_iam_policy.audit_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_19_devs__base_readonly" {
  group      = aws_iam_group.audit_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_19_devs__self_service" {
  group      = aws_iam_group.audit_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_2_analysts" {
  name = "arior-1njchw-audit-2-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_2_analysts__audit_2_read" {
  group      = aws_iam_group.audit_2_analysts.name
  policy_arn = aws_iam_policy.audit_2_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_2_analysts__base_readonly" {
  group      = aws_iam_group.audit_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_2_devs" {
  name = "arior-1njchw-audit-2-devs"
}

resource "aws_iam_group_policy_attachment" "audit_2_devs__audit_2_data_rw" {
  group      = aws_iam_group.audit_2_devs.name
  policy_arn = aws_iam_policy.audit_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_2_devs__audit_2_ops" {
  group      = aws_iam_group.audit_2_devs.name
  policy_arn = aws_iam_policy.audit_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_2_devs__base_readonly" {
  group      = aws_iam_group.audit_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_2_devs__self_service" {
  group      = aws_iam_group.audit_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_20_analysts" {
  name = "arior-1njchw-audit-20-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_20_analysts__audit_20_read" {
  group      = aws_iam_group.audit_20_analysts.name
  policy_arn = aws_iam_policy.audit_20_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_20_analysts__base_readonly" {
  group      = aws_iam_group.audit_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_20_devs" {
  name = "arior-1njchw-audit-20-devs"
}

resource "aws_iam_group_policy_attachment" "audit_20_devs__audit_20_data_rw" {
  group      = aws_iam_group.audit_20_devs.name
  policy_arn = aws_iam_policy.audit_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_20_devs__audit_20_ops" {
  group      = aws_iam_group.audit_20_devs.name
  policy_arn = aws_iam_policy.audit_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_20_devs__base_readonly" {
  group      = aws_iam_group.audit_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_20_devs__self_service" {
  group      = aws_iam_group.audit_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_21_analysts" {
  name = "arior-1njchw-audit-21-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_21_analysts__audit_21_read" {
  group      = aws_iam_group.audit_21_analysts.name
  policy_arn = aws_iam_policy.audit_21_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_21_analysts__base_readonly" {
  group      = aws_iam_group.audit_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_21_devs" {
  name = "arior-1njchw-audit-21-devs"
}

resource "aws_iam_group_policy_attachment" "audit_21_devs__audit_21_data_rw" {
  group      = aws_iam_group.audit_21_devs.name
  policy_arn = aws_iam_policy.audit_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_21_devs__audit_21_ops" {
  group      = aws_iam_group.audit_21_devs.name
  policy_arn = aws_iam_policy.audit_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_21_devs__base_readonly" {
  group      = aws_iam_group.audit_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_21_devs__self_service" {
  group      = aws_iam_group.audit_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_22_analysts" {
  name = "arior-1njchw-audit-22-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_22_analysts__audit_22_read" {
  group      = aws_iam_group.audit_22_analysts.name
  policy_arn = aws_iam_policy.audit_22_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_22_analysts__base_readonly" {
  group      = aws_iam_group.audit_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_22_devs" {
  name = "arior-1njchw-audit-22-devs"
}

resource "aws_iam_group_policy_attachment" "audit_22_devs__audit_22_data_rw" {
  group      = aws_iam_group.audit_22_devs.name
  policy_arn = aws_iam_policy.audit_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_22_devs__audit_22_ops" {
  group      = aws_iam_group.audit_22_devs.name
  policy_arn = aws_iam_policy.audit_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_22_devs__base_readonly" {
  group      = aws_iam_group.audit_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_22_devs__self_service" {
  group      = aws_iam_group.audit_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_23_analysts" {
  name = "arior-1njchw-audit-23-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_23_analysts__audit_23_read" {
  group      = aws_iam_group.audit_23_analysts.name
  policy_arn = aws_iam_policy.audit_23_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_23_analysts__base_readonly" {
  group      = aws_iam_group.audit_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_23_devs" {
  name = "arior-1njchw-audit-23-devs"
}

resource "aws_iam_group_policy_attachment" "audit_23_devs__audit_23_data_rw" {
  group      = aws_iam_group.audit_23_devs.name
  policy_arn = aws_iam_policy.audit_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_23_devs__audit_23_ops" {
  group      = aws_iam_group.audit_23_devs.name
  policy_arn = aws_iam_policy.audit_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_23_devs__base_readonly" {
  group      = aws_iam_group.audit_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_23_devs__self_service" {
  group      = aws_iam_group.audit_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_24_analysts" {
  name = "arior-1njchw-audit-24-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_24_analysts__audit_24_read" {
  group      = aws_iam_group.audit_24_analysts.name
  policy_arn = aws_iam_policy.audit_24_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_24_analysts__base_readonly" {
  group      = aws_iam_group.audit_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_24_devs" {
  name = "arior-1njchw-audit-24-devs"
}

resource "aws_iam_group_policy_attachment" "audit_24_devs__audit_24_data_rw" {
  group      = aws_iam_group.audit_24_devs.name
  policy_arn = aws_iam_policy.audit_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_24_devs__audit_24_ops" {
  group      = aws_iam_group.audit_24_devs.name
  policy_arn = aws_iam_policy.audit_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_24_devs__base_readonly" {
  group      = aws_iam_group.audit_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_24_devs__self_service" {
  group      = aws_iam_group.audit_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_25_analysts" {
  name = "arior-1njchw-audit-25-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_25_analysts__audit_25_read" {
  group      = aws_iam_group.audit_25_analysts.name
  policy_arn = aws_iam_policy.audit_25_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_25_analysts__base_readonly" {
  group      = aws_iam_group.audit_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_25_devs" {
  name = "arior-1njchw-audit-25-devs"
}

resource "aws_iam_group_policy_attachment" "audit_25_devs__audit_25_data_rw" {
  group      = aws_iam_group.audit_25_devs.name
  policy_arn = aws_iam_policy.audit_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_25_devs__audit_25_ops" {
  group      = aws_iam_group.audit_25_devs.name
  policy_arn = aws_iam_policy.audit_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_25_devs__base_readonly" {
  group      = aws_iam_group.audit_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_25_devs__self_service" {
  group      = aws_iam_group.audit_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_26_analysts" {
  name = "arior-1njchw-audit-26-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_26_analysts__audit_26_read" {
  group      = aws_iam_group.audit_26_analysts.name
  policy_arn = aws_iam_policy.audit_26_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_26_analysts__base_readonly" {
  group      = aws_iam_group.audit_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_26_devs" {
  name = "arior-1njchw-audit-26-devs"
}

resource "aws_iam_group_policy_attachment" "audit_26_devs__audit_26_data_rw" {
  group      = aws_iam_group.audit_26_devs.name
  policy_arn = aws_iam_policy.audit_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_26_devs__audit_26_ops" {
  group      = aws_iam_group.audit_26_devs.name
  policy_arn = aws_iam_policy.audit_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_26_devs__base_readonly" {
  group      = aws_iam_group.audit_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_26_devs__self_service" {
  group      = aws_iam_group.audit_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_27_analysts" {
  name = "arior-1njchw-audit-27-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_27_analysts__audit_27_read" {
  group      = aws_iam_group.audit_27_analysts.name
  policy_arn = aws_iam_policy.audit_27_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_27_analysts__base_readonly" {
  group      = aws_iam_group.audit_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_27_devs" {
  name = "arior-1njchw-audit-27-devs"
}

resource "aws_iam_group_policy_attachment" "audit_27_devs__audit_27_data_rw" {
  group      = aws_iam_group.audit_27_devs.name
  policy_arn = aws_iam_policy.audit_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_27_devs__audit_27_ops" {
  group      = aws_iam_group.audit_27_devs.name
  policy_arn = aws_iam_policy.audit_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_27_devs__base_readonly" {
  group      = aws_iam_group.audit_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_27_devs__self_service" {
  group      = aws_iam_group.audit_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_28_analysts" {
  name = "arior-1njchw-audit-28-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_28_analysts__audit_28_read" {
  group      = aws_iam_group.audit_28_analysts.name
  policy_arn = aws_iam_policy.audit_28_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_28_analysts__base_readonly" {
  group      = aws_iam_group.audit_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_28_devs" {
  name = "arior-1njchw-audit-28-devs"
}

resource "aws_iam_group_policy_attachment" "audit_28_devs__audit_28_data_rw" {
  group      = aws_iam_group.audit_28_devs.name
  policy_arn = aws_iam_policy.audit_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_28_devs__audit_28_ops" {
  group      = aws_iam_group.audit_28_devs.name
  policy_arn = aws_iam_policy.audit_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_28_devs__base_readonly" {
  group      = aws_iam_group.audit_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_28_devs__self_service" {
  group      = aws_iam_group.audit_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_29_analysts" {
  name = "arior-1njchw-audit-29-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_29_analysts__audit_29_read" {
  group      = aws_iam_group.audit_29_analysts.name
  policy_arn = aws_iam_policy.audit_29_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_29_analysts__base_readonly" {
  group      = aws_iam_group.audit_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_29_devs" {
  name = "arior-1njchw-audit-29-devs"
}

resource "aws_iam_group_policy_attachment" "audit_29_devs__audit_29_data_rw" {
  group      = aws_iam_group.audit_29_devs.name
  policy_arn = aws_iam_policy.audit_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_29_devs__audit_29_ops" {
  group      = aws_iam_group.audit_29_devs.name
  policy_arn = aws_iam_policy.audit_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_29_devs__base_readonly" {
  group      = aws_iam_group.audit_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_29_devs__self_service" {
  group      = aws_iam_group.audit_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_3_analysts" {
  name = "arior-1njchw-audit-3-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_3_analysts__audit_3_read" {
  group      = aws_iam_group.audit_3_analysts.name
  policy_arn = aws_iam_policy.audit_3_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_3_analysts__base_readonly" {
  group      = aws_iam_group.audit_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_3_devs" {
  name = "arior-1njchw-audit-3-devs"
}

resource "aws_iam_group_policy_attachment" "audit_3_devs__audit_3_data_rw" {
  group      = aws_iam_group.audit_3_devs.name
  policy_arn = aws_iam_policy.audit_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_3_devs__audit_3_ops" {
  group      = aws_iam_group.audit_3_devs.name
  policy_arn = aws_iam_policy.audit_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_3_devs__base_readonly" {
  group      = aws_iam_group.audit_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_3_devs__self_service" {
  group      = aws_iam_group.audit_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_30_analysts" {
  name = "arior-1njchw-audit-30-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_30_analysts__audit_30_read" {
  group      = aws_iam_group.audit_30_analysts.name
  policy_arn = aws_iam_policy.audit_30_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_30_analysts__base_readonly" {
  group      = aws_iam_group.audit_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_30_devs" {
  name = "arior-1njchw-audit-30-devs"
}

resource "aws_iam_group_policy_attachment" "audit_30_devs__audit_30_data_rw" {
  group      = aws_iam_group.audit_30_devs.name
  policy_arn = aws_iam_policy.audit_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_30_devs__audit_30_ops" {
  group      = aws_iam_group.audit_30_devs.name
  policy_arn = aws_iam_policy.audit_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_30_devs__base_readonly" {
  group      = aws_iam_group.audit_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_30_devs__self_service" {
  group      = aws_iam_group.audit_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_31_analysts" {
  name = "arior-1njchw-audit-31-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_31_analysts__audit_31_read" {
  group      = aws_iam_group.audit_31_analysts.name
  policy_arn = aws_iam_policy.audit_31_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_31_analysts__base_readonly" {
  group      = aws_iam_group.audit_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_31_devs" {
  name = "arior-1njchw-audit-31-devs"
}

resource "aws_iam_group_policy_attachment" "audit_31_devs__audit_31_data_rw" {
  group      = aws_iam_group.audit_31_devs.name
  policy_arn = aws_iam_policy.audit_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_31_devs__audit_31_ops" {
  group      = aws_iam_group.audit_31_devs.name
  policy_arn = aws_iam_policy.audit_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_31_devs__base_readonly" {
  group      = aws_iam_group.audit_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_31_devs__self_service" {
  group      = aws_iam_group.audit_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_32_analysts" {
  name = "arior-1njchw-audit-32-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_32_analysts__audit_32_read" {
  group      = aws_iam_group.audit_32_analysts.name
  policy_arn = aws_iam_policy.audit_32_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_32_analysts__base_readonly" {
  group      = aws_iam_group.audit_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_32_devs" {
  name = "arior-1njchw-audit-32-devs"
}

resource "aws_iam_group_policy_attachment" "audit_32_devs__audit_32_data_rw" {
  group      = aws_iam_group.audit_32_devs.name
  policy_arn = aws_iam_policy.audit_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_32_devs__audit_32_ops" {
  group      = aws_iam_group.audit_32_devs.name
  policy_arn = aws_iam_policy.audit_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_32_devs__base_readonly" {
  group      = aws_iam_group.audit_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_32_devs__self_service" {
  group      = aws_iam_group.audit_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_33_analysts" {
  name = "arior-1njchw-audit-33-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_33_analysts__audit_33_read" {
  group      = aws_iam_group.audit_33_analysts.name
  policy_arn = aws_iam_policy.audit_33_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_33_analysts__base_readonly" {
  group      = aws_iam_group.audit_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_33_devs" {
  name = "arior-1njchw-audit-33-devs"
}

resource "aws_iam_group_policy_attachment" "audit_33_devs__audit_33_data_rw" {
  group      = aws_iam_group.audit_33_devs.name
  policy_arn = aws_iam_policy.audit_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_33_devs__audit_33_ops" {
  group      = aws_iam_group.audit_33_devs.name
  policy_arn = aws_iam_policy.audit_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_33_devs__base_readonly" {
  group      = aws_iam_group.audit_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_33_devs__self_service" {
  group      = aws_iam_group.audit_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_34_analysts" {
  name = "arior-1njchw-audit-34-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_34_analysts__audit_34_read" {
  group      = aws_iam_group.audit_34_analysts.name
  policy_arn = aws_iam_policy.audit_34_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_34_analysts__base_readonly" {
  group      = aws_iam_group.audit_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_34_devs" {
  name = "arior-1njchw-audit-34-devs"
}

resource "aws_iam_group_policy_attachment" "audit_34_devs__audit_34_data_rw" {
  group      = aws_iam_group.audit_34_devs.name
  policy_arn = aws_iam_policy.audit_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_34_devs__audit_34_ops" {
  group      = aws_iam_group.audit_34_devs.name
  policy_arn = aws_iam_policy.audit_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_34_devs__base_readonly" {
  group      = aws_iam_group.audit_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_34_devs__self_service" {
  group      = aws_iam_group.audit_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_4_analysts" {
  name = "arior-1njchw-audit-4-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_4_analysts__audit_4_read" {
  group      = aws_iam_group.audit_4_analysts.name
  policy_arn = aws_iam_policy.audit_4_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_4_analysts__base_readonly" {
  group      = aws_iam_group.audit_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_4_devs" {
  name = "arior-1njchw-audit-4-devs"
}

resource "aws_iam_group_policy_attachment" "audit_4_devs__audit_4_data_rw" {
  group      = aws_iam_group.audit_4_devs.name
  policy_arn = aws_iam_policy.audit_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_4_devs__audit_4_ops" {
  group      = aws_iam_group.audit_4_devs.name
  policy_arn = aws_iam_policy.audit_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_4_devs__base_readonly" {
  group      = aws_iam_group.audit_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_4_devs__self_service" {
  group      = aws_iam_group.audit_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_5_analysts" {
  name = "arior-1njchw-audit-5-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_5_analysts__audit_5_read" {
  group      = aws_iam_group.audit_5_analysts.name
  policy_arn = aws_iam_policy.audit_5_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_5_analysts__base_readonly" {
  group      = aws_iam_group.audit_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_5_devs" {
  name = "arior-1njchw-audit-5-devs"
}

resource "aws_iam_group_policy_attachment" "audit_5_devs__audit_5_data_rw" {
  group      = aws_iam_group.audit_5_devs.name
  policy_arn = aws_iam_policy.audit_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_5_devs__audit_5_ops" {
  group      = aws_iam_group.audit_5_devs.name
  policy_arn = aws_iam_policy.audit_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_5_devs__base_readonly" {
  group      = aws_iam_group.audit_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_5_devs__self_service" {
  group      = aws_iam_group.audit_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_6_analysts" {
  name = "arior-1njchw-audit-6-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_6_analysts__audit_6_read" {
  group      = aws_iam_group.audit_6_analysts.name
  policy_arn = aws_iam_policy.audit_6_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_6_analysts__base_readonly" {
  group      = aws_iam_group.audit_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_6_devs" {
  name = "arior-1njchw-audit-6-devs"
}

resource "aws_iam_group_policy_attachment" "audit_6_devs__audit_6_data_rw" {
  group      = aws_iam_group.audit_6_devs.name
  policy_arn = aws_iam_policy.audit_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_6_devs__audit_6_ops" {
  group      = aws_iam_group.audit_6_devs.name
  policy_arn = aws_iam_policy.audit_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_6_devs__base_readonly" {
  group      = aws_iam_group.audit_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_6_devs__self_service" {
  group      = aws_iam_group.audit_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_7_analysts" {
  name = "arior-1njchw-audit-7-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_7_analysts__audit_7_read" {
  group      = aws_iam_group.audit_7_analysts.name
  policy_arn = aws_iam_policy.audit_7_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_7_analysts__base_readonly" {
  group      = aws_iam_group.audit_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_7_devs" {
  name = "arior-1njchw-audit-7-devs"
}

resource "aws_iam_group_policy_attachment" "audit_7_devs__audit_7_data_rw" {
  group      = aws_iam_group.audit_7_devs.name
  policy_arn = aws_iam_policy.audit_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_7_devs__audit_7_ops" {
  group      = aws_iam_group.audit_7_devs.name
  policy_arn = aws_iam_policy.audit_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_7_devs__base_readonly" {
  group      = aws_iam_group.audit_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_7_devs__self_service" {
  group      = aws_iam_group.audit_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_8_analysts" {
  name = "arior-1njchw-audit-8-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_8_analysts__audit_8_read" {
  group      = aws_iam_group.audit_8_analysts.name
  policy_arn = aws_iam_policy.audit_8_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_8_analysts__base_readonly" {
  group      = aws_iam_group.audit_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_8_devs" {
  name = "arior-1njchw-audit-8-devs"
}

resource "aws_iam_group_policy_attachment" "audit_8_devs__audit_8_data_rw" {
  group      = aws_iam_group.audit_8_devs.name
  policy_arn = aws_iam_policy.audit_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_8_devs__audit_8_ops" {
  group      = aws_iam_group.audit_8_devs.name
  policy_arn = aws_iam_policy.audit_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_8_devs__base_readonly" {
  group      = aws_iam_group.audit_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_8_devs__self_service" {
  group      = aws_iam_group.audit_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_9_analysts" {
  name = "arior-1njchw-audit-9-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_9_analysts__audit_9_read" {
  group      = aws_iam_group.audit_9_analysts.name
  policy_arn = aws_iam_policy.audit_9_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_9_analysts__base_readonly" {
  group      = aws_iam_group.audit_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_9_devs" {
  name = "arior-1njchw-audit-9-devs"
}

resource "aws_iam_group_policy_attachment" "audit_9_devs__audit_9_data_rw" {
  group      = aws_iam_group.audit_9_devs.name
  policy_arn = aws_iam_policy.audit_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_9_devs__audit_9_ops" {
  group      = aws_iam_group.audit_9_devs.name
  policy_arn = aws_iam_policy.audit_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_9_devs__base_readonly" {
  group      = aws_iam_group.audit_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_9_devs__self_service" {
  group      = aws_iam_group.audit_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "audit_analysts" {
  name = "arior-1njchw-audit-analysts"
}

resource "aws_iam_group_policy_attachment" "audit_analysts__audit_read" {
  group      = aws_iam_group.audit_analysts.name
  policy_arn = aws_iam_policy.audit_read.arn
}

resource "aws_iam_group_policy_attachment" "audit_analysts__base_readonly" {
  group      = aws_iam_group.audit_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "audit_devs" {
  name = "arior-1njchw-audit-devs"
}

resource "aws_iam_group_policy_attachment" "audit_devs__audit_data_rw" {
  group      = aws_iam_group.audit_devs.name
  policy_arn = aws_iam_policy.audit_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "audit_devs__audit_ops" {
  group      = aws_iam_group.audit_devs.name
  policy_arn = aws_iam_policy.audit_ops.arn
}

resource "aws_iam_group_policy_attachment" "audit_devs__base_readonly" {
  group      = aws_iam_group.audit_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "audit_devs__self_service" {
  group      = aws_iam_group.audit_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_10_analysts" {
  name = "arior-1njchw-benefits-10-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_10_analysts__benefits_10_read" {
  group      = aws_iam_group.benefits_10_analysts.name
  policy_arn = aws_iam_policy.benefits_10_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_10_analysts__base_readonly" {
  group      = aws_iam_group.benefits_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_10_devs" {
  name = "arior-1njchw-benefits-10-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_10_devs__benefits_10_data_rw" {
  group      = aws_iam_group.benefits_10_devs.name
  policy_arn = aws_iam_policy.benefits_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_10_devs__benefits_10_ops" {
  group      = aws_iam_group.benefits_10_devs.name
  policy_arn = aws_iam_policy.benefits_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_10_devs__base_readonly" {
  group      = aws_iam_group.benefits_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_10_devs__self_service" {
  group      = aws_iam_group.benefits_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_11_analysts" {
  name = "arior-1njchw-benefits-11-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_11_analysts__benefits_11_read" {
  group      = aws_iam_group.benefits_11_analysts.name
  policy_arn = aws_iam_policy.benefits_11_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_11_analysts__base_readonly" {
  group      = aws_iam_group.benefits_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_11_devs" {
  name = "arior-1njchw-benefits-11-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_11_devs__benefits_11_data_rw" {
  group      = aws_iam_group.benefits_11_devs.name
  policy_arn = aws_iam_policy.benefits_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_11_devs__benefits_11_ops" {
  group      = aws_iam_group.benefits_11_devs.name
  policy_arn = aws_iam_policy.benefits_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_11_devs__base_readonly" {
  group      = aws_iam_group.benefits_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_11_devs__self_service" {
  group      = aws_iam_group.benefits_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_12_analysts" {
  name = "arior-1njchw-benefits-12-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_12_analysts__benefits_12_read" {
  group      = aws_iam_group.benefits_12_analysts.name
  policy_arn = aws_iam_policy.benefits_12_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_12_analysts__base_readonly" {
  group      = aws_iam_group.benefits_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_12_devs" {
  name = "arior-1njchw-benefits-12-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_12_devs__benefits_12_data_rw" {
  group      = aws_iam_group.benefits_12_devs.name
  policy_arn = aws_iam_policy.benefits_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_12_devs__benefits_12_ops" {
  group      = aws_iam_group.benefits_12_devs.name
  policy_arn = aws_iam_policy.benefits_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_12_devs__base_readonly" {
  group      = aws_iam_group.benefits_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_12_devs__self_service" {
  group      = aws_iam_group.benefits_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_13_analysts" {
  name = "arior-1njchw-benefits-13-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_13_analysts__benefits_13_read" {
  group      = aws_iam_group.benefits_13_analysts.name
  policy_arn = aws_iam_policy.benefits_13_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_13_analysts__base_readonly" {
  group      = aws_iam_group.benefits_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_13_devs" {
  name = "arior-1njchw-benefits-13-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_13_devs__benefits_13_data_rw" {
  group      = aws_iam_group.benefits_13_devs.name
  policy_arn = aws_iam_policy.benefits_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_13_devs__benefits_13_ops" {
  group      = aws_iam_group.benefits_13_devs.name
  policy_arn = aws_iam_policy.benefits_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_13_devs__base_readonly" {
  group      = aws_iam_group.benefits_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_13_devs__self_service" {
  group      = aws_iam_group.benefits_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_14_analysts" {
  name = "arior-1njchw-benefits-14-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_14_analysts__benefits_14_read" {
  group      = aws_iam_group.benefits_14_analysts.name
  policy_arn = aws_iam_policy.benefits_14_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_14_analysts__base_readonly" {
  group      = aws_iam_group.benefits_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_14_devs" {
  name = "arior-1njchw-benefits-14-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_14_devs__benefits_14_data_rw" {
  group      = aws_iam_group.benefits_14_devs.name
  policy_arn = aws_iam_policy.benefits_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_14_devs__benefits_14_ops" {
  group      = aws_iam_group.benefits_14_devs.name
  policy_arn = aws_iam_policy.benefits_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_14_devs__base_readonly" {
  group      = aws_iam_group.benefits_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_14_devs__self_service" {
  group      = aws_iam_group.benefits_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_15_analysts" {
  name = "arior-1njchw-benefits-15-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_15_analysts__benefits_15_read" {
  group      = aws_iam_group.benefits_15_analysts.name
  policy_arn = aws_iam_policy.benefits_15_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_15_analysts__base_readonly" {
  group      = aws_iam_group.benefits_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_15_devs" {
  name = "arior-1njchw-benefits-15-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_15_devs__benefits_15_data_rw" {
  group      = aws_iam_group.benefits_15_devs.name
  policy_arn = aws_iam_policy.benefits_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_15_devs__benefits_15_ops" {
  group      = aws_iam_group.benefits_15_devs.name
  policy_arn = aws_iam_policy.benefits_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_15_devs__base_readonly" {
  group      = aws_iam_group.benefits_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_15_devs__self_service" {
  group      = aws_iam_group.benefits_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_16_analysts" {
  name = "arior-1njchw-benefits-16-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_16_analysts__benefits_16_read" {
  group      = aws_iam_group.benefits_16_analysts.name
  policy_arn = aws_iam_policy.benefits_16_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_16_analysts__base_readonly" {
  group      = aws_iam_group.benefits_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_16_devs" {
  name = "arior-1njchw-benefits-16-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_16_devs__benefits_16_data_rw" {
  group      = aws_iam_group.benefits_16_devs.name
  policy_arn = aws_iam_policy.benefits_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_16_devs__benefits_16_ops" {
  group      = aws_iam_group.benefits_16_devs.name
  policy_arn = aws_iam_policy.benefits_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_16_devs__base_readonly" {
  group      = aws_iam_group.benefits_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_16_devs__self_service" {
  group      = aws_iam_group.benefits_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_17_analysts" {
  name = "arior-1njchw-benefits-17-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_17_analysts__benefits_17_read" {
  group      = aws_iam_group.benefits_17_analysts.name
  policy_arn = aws_iam_policy.benefits_17_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_17_analysts__base_readonly" {
  group      = aws_iam_group.benefits_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_17_devs" {
  name = "arior-1njchw-benefits-17-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_17_devs__benefits_17_data_rw" {
  group      = aws_iam_group.benefits_17_devs.name
  policy_arn = aws_iam_policy.benefits_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_17_devs__benefits_17_ops" {
  group      = aws_iam_group.benefits_17_devs.name
  policy_arn = aws_iam_policy.benefits_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_17_devs__base_readonly" {
  group      = aws_iam_group.benefits_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_17_devs__self_service" {
  group      = aws_iam_group.benefits_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_18_analysts" {
  name = "arior-1njchw-benefits-18-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_18_analysts__benefits_18_read" {
  group      = aws_iam_group.benefits_18_analysts.name
  policy_arn = aws_iam_policy.benefits_18_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_18_analysts__base_readonly" {
  group      = aws_iam_group.benefits_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_18_devs" {
  name = "arior-1njchw-benefits-18-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_18_devs__benefits_18_data_rw" {
  group      = aws_iam_group.benefits_18_devs.name
  policy_arn = aws_iam_policy.benefits_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_18_devs__benefits_18_ops" {
  group      = aws_iam_group.benefits_18_devs.name
  policy_arn = aws_iam_policy.benefits_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_18_devs__base_readonly" {
  group      = aws_iam_group.benefits_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_18_devs__self_service" {
  group      = aws_iam_group.benefits_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_19_analysts" {
  name = "arior-1njchw-benefits-19-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_19_analysts__benefits_19_read" {
  group      = aws_iam_group.benefits_19_analysts.name
  policy_arn = aws_iam_policy.benefits_19_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_19_analysts__base_readonly" {
  group      = aws_iam_group.benefits_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_19_devs" {
  name = "arior-1njchw-benefits-19-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_19_devs__benefits_19_data_rw" {
  group      = aws_iam_group.benefits_19_devs.name
  policy_arn = aws_iam_policy.benefits_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_19_devs__benefits_19_ops" {
  group      = aws_iam_group.benefits_19_devs.name
  policy_arn = aws_iam_policy.benefits_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_19_devs__base_readonly" {
  group      = aws_iam_group.benefits_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_19_devs__self_service" {
  group      = aws_iam_group.benefits_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_2_analysts" {
  name = "arior-1njchw-benefits-2-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_2_analysts__benefits_2_read" {
  group      = aws_iam_group.benefits_2_analysts.name
  policy_arn = aws_iam_policy.benefits_2_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_2_analysts__base_readonly" {
  group      = aws_iam_group.benefits_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_2_devs" {
  name = "arior-1njchw-benefits-2-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_2_devs__benefits_2_data_rw" {
  group      = aws_iam_group.benefits_2_devs.name
  policy_arn = aws_iam_policy.benefits_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_2_devs__benefits_2_ops" {
  group      = aws_iam_group.benefits_2_devs.name
  policy_arn = aws_iam_policy.benefits_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_2_devs__base_readonly" {
  group      = aws_iam_group.benefits_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_2_devs__self_service" {
  group      = aws_iam_group.benefits_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_20_analysts" {
  name = "arior-1njchw-benefits-20-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_20_analysts__benefits_20_read" {
  group      = aws_iam_group.benefits_20_analysts.name
  policy_arn = aws_iam_policy.benefits_20_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_20_analysts__base_readonly" {
  group      = aws_iam_group.benefits_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_20_devs" {
  name = "arior-1njchw-benefits-20-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_20_devs__benefits_20_data_rw" {
  group      = aws_iam_group.benefits_20_devs.name
  policy_arn = aws_iam_policy.benefits_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_20_devs__benefits_20_ops" {
  group      = aws_iam_group.benefits_20_devs.name
  policy_arn = aws_iam_policy.benefits_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_20_devs__base_readonly" {
  group      = aws_iam_group.benefits_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_20_devs__self_service" {
  group      = aws_iam_group.benefits_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_21_analysts" {
  name = "arior-1njchw-benefits-21-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_21_analysts__benefits_21_read" {
  group      = aws_iam_group.benefits_21_analysts.name
  policy_arn = aws_iam_policy.benefits_21_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_21_analysts__base_readonly" {
  group      = aws_iam_group.benefits_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_21_devs" {
  name = "arior-1njchw-benefits-21-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_21_devs__benefits_21_data_rw" {
  group      = aws_iam_group.benefits_21_devs.name
  policy_arn = aws_iam_policy.benefits_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_21_devs__benefits_21_ops" {
  group      = aws_iam_group.benefits_21_devs.name
  policy_arn = aws_iam_policy.benefits_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_21_devs__base_readonly" {
  group      = aws_iam_group.benefits_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_21_devs__self_service" {
  group      = aws_iam_group.benefits_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_22_analysts" {
  name = "arior-1njchw-benefits-22-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_22_analysts__benefits_22_read" {
  group      = aws_iam_group.benefits_22_analysts.name
  policy_arn = aws_iam_policy.benefits_22_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_22_analysts__base_readonly" {
  group      = aws_iam_group.benefits_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_22_devs" {
  name = "arior-1njchw-benefits-22-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_22_devs__benefits_22_data_rw" {
  group      = aws_iam_group.benefits_22_devs.name
  policy_arn = aws_iam_policy.benefits_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_22_devs__benefits_22_ops" {
  group      = aws_iam_group.benefits_22_devs.name
  policy_arn = aws_iam_policy.benefits_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_22_devs__base_readonly" {
  group      = aws_iam_group.benefits_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_22_devs__self_service" {
  group      = aws_iam_group.benefits_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_23_analysts" {
  name = "arior-1njchw-benefits-23-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_23_analysts__benefits_23_read" {
  group      = aws_iam_group.benefits_23_analysts.name
  policy_arn = aws_iam_policy.benefits_23_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_23_analysts__base_readonly" {
  group      = aws_iam_group.benefits_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_23_devs" {
  name = "arior-1njchw-benefits-23-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_23_devs__benefits_23_data_rw" {
  group      = aws_iam_group.benefits_23_devs.name
  policy_arn = aws_iam_policy.benefits_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_23_devs__benefits_23_ops" {
  group      = aws_iam_group.benefits_23_devs.name
  policy_arn = aws_iam_policy.benefits_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_23_devs__base_readonly" {
  group      = aws_iam_group.benefits_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_23_devs__self_service" {
  group      = aws_iam_group.benefits_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_24_analysts" {
  name = "arior-1njchw-benefits-24-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_24_analysts__benefits_24_read" {
  group      = aws_iam_group.benefits_24_analysts.name
  policy_arn = aws_iam_policy.benefits_24_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_24_analysts__base_readonly" {
  group      = aws_iam_group.benefits_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_24_devs" {
  name = "arior-1njchw-benefits-24-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_24_devs__benefits_24_data_rw" {
  group      = aws_iam_group.benefits_24_devs.name
  policy_arn = aws_iam_policy.benefits_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_24_devs__benefits_24_ops" {
  group      = aws_iam_group.benefits_24_devs.name
  policy_arn = aws_iam_policy.benefits_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_24_devs__base_readonly" {
  group      = aws_iam_group.benefits_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_24_devs__self_service" {
  group      = aws_iam_group.benefits_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_25_analysts" {
  name = "arior-1njchw-benefits-25-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_25_analysts__benefits_25_read" {
  group      = aws_iam_group.benefits_25_analysts.name
  policy_arn = aws_iam_policy.benefits_25_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_25_analysts__base_readonly" {
  group      = aws_iam_group.benefits_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_25_devs" {
  name = "arior-1njchw-benefits-25-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_25_devs__benefits_25_data_rw" {
  group      = aws_iam_group.benefits_25_devs.name
  policy_arn = aws_iam_policy.benefits_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_25_devs__benefits_25_ops" {
  group      = aws_iam_group.benefits_25_devs.name
  policy_arn = aws_iam_policy.benefits_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_25_devs__base_readonly" {
  group      = aws_iam_group.benefits_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_25_devs__self_service" {
  group      = aws_iam_group.benefits_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_26_analysts" {
  name = "arior-1njchw-benefits-26-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_26_analysts__benefits_26_read" {
  group      = aws_iam_group.benefits_26_analysts.name
  policy_arn = aws_iam_policy.benefits_26_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_26_analysts__base_readonly" {
  group      = aws_iam_group.benefits_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_26_devs" {
  name = "arior-1njchw-benefits-26-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_26_devs__benefits_26_data_rw" {
  group      = aws_iam_group.benefits_26_devs.name
  policy_arn = aws_iam_policy.benefits_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_26_devs__benefits_26_ops" {
  group      = aws_iam_group.benefits_26_devs.name
  policy_arn = aws_iam_policy.benefits_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_26_devs__base_readonly" {
  group      = aws_iam_group.benefits_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_26_devs__self_service" {
  group      = aws_iam_group.benefits_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_27_analysts" {
  name = "arior-1njchw-benefits-27-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_27_analysts__benefits_27_read" {
  group      = aws_iam_group.benefits_27_analysts.name
  policy_arn = aws_iam_policy.benefits_27_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_27_analysts__base_readonly" {
  group      = aws_iam_group.benefits_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_27_devs" {
  name = "arior-1njchw-benefits-27-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_27_devs__benefits_27_data_rw" {
  group      = aws_iam_group.benefits_27_devs.name
  policy_arn = aws_iam_policy.benefits_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_27_devs__benefits_27_ops" {
  group      = aws_iam_group.benefits_27_devs.name
  policy_arn = aws_iam_policy.benefits_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_27_devs__base_readonly" {
  group      = aws_iam_group.benefits_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_27_devs__self_service" {
  group      = aws_iam_group.benefits_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_28_analysts" {
  name = "arior-1njchw-benefits-28-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_28_analysts__benefits_28_read" {
  group      = aws_iam_group.benefits_28_analysts.name
  policy_arn = aws_iam_policy.benefits_28_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_28_analysts__base_readonly" {
  group      = aws_iam_group.benefits_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_28_devs" {
  name = "arior-1njchw-benefits-28-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_28_devs__benefits_28_data_rw" {
  group      = aws_iam_group.benefits_28_devs.name
  policy_arn = aws_iam_policy.benefits_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_28_devs__benefits_28_ops" {
  group      = aws_iam_group.benefits_28_devs.name
  policy_arn = aws_iam_policy.benefits_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_28_devs__base_readonly" {
  group      = aws_iam_group.benefits_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_28_devs__self_service" {
  group      = aws_iam_group.benefits_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_29_analysts" {
  name = "arior-1njchw-benefits-29-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_29_analysts__benefits_29_read" {
  group      = aws_iam_group.benefits_29_analysts.name
  policy_arn = aws_iam_policy.benefits_29_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_29_analysts__base_readonly" {
  group      = aws_iam_group.benefits_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_29_devs" {
  name = "arior-1njchw-benefits-29-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_29_devs__benefits_29_data_rw" {
  group      = aws_iam_group.benefits_29_devs.name
  policy_arn = aws_iam_policy.benefits_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_29_devs__benefits_29_ops" {
  group      = aws_iam_group.benefits_29_devs.name
  policy_arn = aws_iam_policy.benefits_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_29_devs__base_readonly" {
  group      = aws_iam_group.benefits_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_29_devs__self_service" {
  group      = aws_iam_group.benefits_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_3_analysts" {
  name = "arior-1njchw-benefits-3-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_3_analysts__benefits_3_read" {
  group      = aws_iam_group.benefits_3_analysts.name
  policy_arn = aws_iam_policy.benefits_3_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_3_analysts__base_readonly" {
  group      = aws_iam_group.benefits_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_3_devs" {
  name = "arior-1njchw-benefits-3-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_3_devs__benefits_3_data_rw" {
  group      = aws_iam_group.benefits_3_devs.name
  policy_arn = aws_iam_policy.benefits_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_3_devs__benefits_3_ops" {
  group      = aws_iam_group.benefits_3_devs.name
  policy_arn = aws_iam_policy.benefits_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_3_devs__base_readonly" {
  group      = aws_iam_group.benefits_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_3_devs__self_service" {
  group      = aws_iam_group.benefits_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_30_analysts" {
  name = "arior-1njchw-benefits-30-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_30_analysts__benefits_30_read" {
  group      = aws_iam_group.benefits_30_analysts.name
  policy_arn = aws_iam_policy.benefits_30_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_30_analysts__base_readonly" {
  group      = aws_iam_group.benefits_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_30_devs" {
  name = "arior-1njchw-benefits-30-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_30_devs__benefits_30_data_rw" {
  group      = aws_iam_group.benefits_30_devs.name
  policy_arn = aws_iam_policy.benefits_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_30_devs__benefits_30_ops" {
  group      = aws_iam_group.benefits_30_devs.name
  policy_arn = aws_iam_policy.benefits_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_30_devs__base_readonly" {
  group      = aws_iam_group.benefits_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_30_devs__self_service" {
  group      = aws_iam_group.benefits_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_31_analysts" {
  name = "arior-1njchw-benefits-31-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_31_analysts__benefits_31_read" {
  group      = aws_iam_group.benefits_31_analysts.name
  policy_arn = aws_iam_policy.benefits_31_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_31_analysts__base_readonly" {
  group      = aws_iam_group.benefits_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_31_devs" {
  name = "arior-1njchw-benefits-31-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_31_devs__benefits_31_data_rw" {
  group      = aws_iam_group.benefits_31_devs.name
  policy_arn = aws_iam_policy.benefits_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_31_devs__benefits_31_ops" {
  group      = aws_iam_group.benefits_31_devs.name
  policy_arn = aws_iam_policy.benefits_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_31_devs__base_readonly" {
  group      = aws_iam_group.benefits_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_31_devs__self_service" {
  group      = aws_iam_group.benefits_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_32_analysts" {
  name = "arior-1njchw-benefits-32-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_32_analysts__benefits_32_read" {
  group      = aws_iam_group.benefits_32_analysts.name
  policy_arn = aws_iam_policy.benefits_32_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_32_analysts__base_readonly" {
  group      = aws_iam_group.benefits_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_32_devs" {
  name = "arior-1njchw-benefits-32-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_32_devs__benefits_32_data_rw" {
  group      = aws_iam_group.benefits_32_devs.name
  policy_arn = aws_iam_policy.benefits_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_32_devs__benefits_32_ops" {
  group      = aws_iam_group.benefits_32_devs.name
  policy_arn = aws_iam_policy.benefits_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_32_devs__base_readonly" {
  group      = aws_iam_group.benefits_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_32_devs__self_service" {
  group      = aws_iam_group.benefits_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_33_analysts" {
  name = "arior-1njchw-benefits-33-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_33_analysts__benefits_33_read" {
  group      = aws_iam_group.benefits_33_analysts.name
  policy_arn = aws_iam_policy.benefits_33_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_33_analysts__base_readonly" {
  group      = aws_iam_group.benefits_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_33_devs" {
  name = "arior-1njchw-benefits-33-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_33_devs__benefits_33_data_rw" {
  group      = aws_iam_group.benefits_33_devs.name
  policy_arn = aws_iam_policy.benefits_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_33_devs__benefits_33_ops" {
  group      = aws_iam_group.benefits_33_devs.name
  policy_arn = aws_iam_policy.benefits_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_33_devs__base_readonly" {
  group      = aws_iam_group.benefits_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_33_devs__self_service" {
  group      = aws_iam_group.benefits_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_34_analysts" {
  name = "arior-1njchw-benefits-34-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_34_analysts__benefits_34_read" {
  group      = aws_iam_group.benefits_34_analysts.name
  policy_arn = aws_iam_policy.benefits_34_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_34_analysts__base_readonly" {
  group      = aws_iam_group.benefits_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_34_devs" {
  name = "arior-1njchw-benefits-34-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_34_devs__benefits_34_data_rw" {
  group      = aws_iam_group.benefits_34_devs.name
  policy_arn = aws_iam_policy.benefits_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_34_devs__benefits_34_ops" {
  group      = aws_iam_group.benefits_34_devs.name
  policy_arn = aws_iam_policy.benefits_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_34_devs__base_readonly" {
  group      = aws_iam_group.benefits_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_34_devs__self_service" {
  group      = aws_iam_group.benefits_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_4_analysts" {
  name = "arior-1njchw-benefits-4-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_4_analysts__benefits_4_read" {
  group      = aws_iam_group.benefits_4_analysts.name
  policy_arn = aws_iam_policy.benefits_4_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_4_analysts__base_readonly" {
  group      = aws_iam_group.benefits_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_4_devs" {
  name = "arior-1njchw-benefits-4-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_4_devs__benefits_4_data_rw" {
  group      = aws_iam_group.benefits_4_devs.name
  policy_arn = aws_iam_policy.benefits_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_4_devs__benefits_4_ops" {
  group      = aws_iam_group.benefits_4_devs.name
  policy_arn = aws_iam_policy.benefits_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_4_devs__base_readonly" {
  group      = aws_iam_group.benefits_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_4_devs__self_service" {
  group      = aws_iam_group.benefits_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_5_analysts" {
  name = "arior-1njchw-benefits-5-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_5_analysts__benefits_5_read" {
  group      = aws_iam_group.benefits_5_analysts.name
  policy_arn = aws_iam_policy.benefits_5_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_5_analysts__base_readonly" {
  group      = aws_iam_group.benefits_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_5_devs" {
  name = "arior-1njchw-benefits-5-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_5_devs__benefits_5_data_rw" {
  group      = aws_iam_group.benefits_5_devs.name
  policy_arn = aws_iam_policy.benefits_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_5_devs__benefits_5_ops" {
  group      = aws_iam_group.benefits_5_devs.name
  policy_arn = aws_iam_policy.benefits_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_5_devs__base_readonly" {
  group      = aws_iam_group.benefits_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_5_devs__self_service" {
  group      = aws_iam_group.benefits_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_6_analysts" {
  name = "arior-1njchw-benefits-6-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_6_analysts__benefits_6_read" {
  group      = aws_iam_group.benefits_6_analysts.name
  policy_arn = aws_iam_policy.benefits_6_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_6_analysts__base_readonly" {
  group      = aws_iam_group.benefits_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_6_devs" {
  name = "arior-1njchw-benefits-6-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_6_devs__benefits_6_data_rw" {
  group      = aws_iam_group.benefits_6_devs.name
  policy_arn = aws_iam_policy.benefits_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_6_devs__benefits_6_ops" {
  group      = aws_iam_group.benefits_6_devs.name
  policy_arn = aws_iam_policy.benefits_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_6_devs__base_readonly" {
  group      = aws_iam_group.benefits_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_6_devs__self_service" {
  group      = aws_iam_group.benefits_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_7_analysts" {
  name = "arior-1njchw-benefits-7-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_7_analysts__benefits_7_read" {
  group      = aws_iam_group.benefits_7_analysts.name
  policy_arn = aws_iam_policy.benefits_7_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_7_analysts__base_readonly" {
  group      = aws_iam_group.benefits_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_7_devs" {
  name = "arior-1njchw-benefits-7-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_7_devs__benefits_7_data_rw" {
  group      = aws_iam_group.benefits_7_devs.name
  policy_arn = aws_iam_policy.benefits_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_7_devs__benefits_7_ops" {
  group      = aws_iam_group.benefits_7_devs.name
  policy_arn = aws_iam_policy.benefits_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_7_devs__base_readonly" {
  group      = aws_iam_group.benefits_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_7_devs__self_service" {
  group      = aws_iam_group.benefits_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_8_analysts" {
  name = "arior-1njchw-benefits-8-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_8_analysts__benefits_8_read" {
  group      = aws_iam_group.benefits_8_analysts.name
  policy_arn = aws_iam_policy.benefits_8_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_8_analysts__base_readonly" {
  group      = aws_iam_group.benefits_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_8_devs" {
  name = "arior-1njchw-benefits-8-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_8_devs__benefits_8_data_rw" {
  group      = aws_iam_group.benefits_8_devs.name
  policy_arn = aws_iam_policy.benefits_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_8_devs__benefits_8_ops" {
  group      = aws_iam_group.benefits_8_devs.name
  policy_arn = aws_iam_policy.benefits_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_8_devs__base_readonly" {
  group      = aws_iam_group.benefits_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_8_devs__self_service" {
  group      = aws_iam_group.benefits_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_9_analysts" {
  name = "arior-1njchw-benefits-9-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_9_analysts__benefits_9_read" {
  group      = aws_iam_group.benefits_9_analysts.name
  policy_arn = aws_iam_policy.benefits_9_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_9_analysts__base_readonly" {
  group      = aws_iam_group.benefits_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_9_devs" {
  name = "arior-1njchw-benefits-9-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_9_devs__benefits_9_data_rw" {
  group      = aws_iam_group.benefits_9_devs.name
  policy_arn = aws_iam_policy.benefits_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_9_devs__benefits_9_ops" {
  group      = aws_iam_group.benefits_9_devs.name
  policy_arn = aws_iam_policy.benefits_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_9_devs__base_readonly" {
  group      = aws_iam_group.benefits_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_9_devs__self_service" {
  group      = aws_iam_group.benefits_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "benefits_analysts" {
  name = "arior-1njchw-benefits-analysts"
}

resource "aws_iam_group_policy_attachment" "benefits_analysts__benefits_read" {
  group      = aws_iam_group.benefits_analysts.name
  policy_arn = aws_iam_policy.benefits_read.arn
}

resource "aws_iam_group_policy_attachment" "benefits_analysts__base_readonly" {
  group      = aws_iam_group.benefits_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "benefits_devs" {
  name = "arior-1njchw-benefits-devs"
}

resource "aws_iam_group_policy_attachment" "benefits_devs__benefits_data_rw" {
  group      = aws_iam_group.benefits_devs.name
  policy_arn = aws_iam_policy.benefits_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "benefits_devs__benefits_ops" {
  group      = aws_iam_group.benefits_devs.name
  policy_arn = aws_iam_policy.benefits_ops.arn
}

resource "aws_iam_group_policy_attachment" "benefits_devs__base_readonly" {
  group      = aws_iam_group.benefits_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "benefits_devs__self_service" {
  group      = aws_iam_group.benefits_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_10_analysts" {
  name = "arior-1njchw-citizen-portal-10-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_analysts__citizen_portal_10_read" {
  group      = aws_iam_group.citizen_portal_10_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_10_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_10_devs" {
  name = "arior-1njchw-citizen-portal-10-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_devs__citizen_portal_10_data_rw" {
  group      = aws_iam_group.citizen_portal_10_devs.name
  policy_arn = aws_iam_policy.citizen_portal_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_devs__citizen_portal_10_ops" {
  group      = aws_iam_group.citizen_portal_10_devs.name
  policy_arn = aws_iam_policy.citizen_portal_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_10_devs__self_service" {
  group      = aws_iam_group.citizen_portal_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_11_analysts" {
  name = "arior-1njchw-citizen-portal-11-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_analysts__citizen_portal_11_read" {
  group      = aws_iam_group.citizen_portal_11_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_11_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_11_devs" {
  name = "arior-1njchw-citizen-portal-11-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_devs__citizen_portal_11_data_rw" {
  group      = aws_iam_group.citizen_portal_11_devs.name
  policy_arn = aws_iam_policy.citizen_portal_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_devs__citizen_portal_11_ops" {
  group      = aws_iam_group.citizen_portal_11_devs.name
  policy_arn = aws_iam_policy.citizen_portal_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_11_devs__self_service" {
  group      = aws_iam_group.citizen_portal_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_12_analysts" {
  name = "arior-1njchw-citizen-portal-12-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_analysts__citizen_portal_12_read" {
  group      = aws_iam_group.citizen_portal_12_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_12_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_12_devs" {
  name = "arior-1njchw-citizen-portal-12-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_devs__citizen_portal_12_data_rw" {
  group      = aws_iam_group.citizen_portal_12_devs.name
  policy_arn = aws_iam_policy.citizen_portal_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_devs__citizen_portal_12_ops" {
  group      = aws_iam_group.citizen_portal_12_devs.name
  policy_arn = aws_iam_policy.citizen_portal_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_12_devs__self_service" {
  group      = aws_iam_group.citizen_portal_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_13_analysts" {
  name = "arior-1njchw-citizen-portal-13-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_analysts__citizen_portal_13_read" {
  group      = aws_iam_group.citizen_portal_13_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_13_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_13_devs" {
  name = "arior-1njchw-citizen-portal-13-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_devs__citizen_portal_13_data_rw" {
  group      = aws_iam_group.citizen_portal_13_devs.name
  policy_arn = aws_iam_policy.citizen_portal_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_devs__citizen_portal_13_ops" {
  group      = aws_iam_group.citizen_portal_13_devs.name
  policy_arn = aws_iam_policy.citizen_portal_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_13_devs__self_service" {
  group      = aws_iam_group.citizen_portal_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_14_analysts" {
  name = "arior-1njchw-citizen-portal-14-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_analysts__citizen_portal_14_read" {
  group      = aws_iam_group.citizen_portal_14_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_14_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_14_devs" {
  name = "arior-1njchw-citizen-portal-14-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_devs__citizen_portal_14_data_rw" {
  group      = aws_iam_group.citizen_portal_14_devs.name
  policy_arn = aws_iam_policy.citizen_portal_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_devs__citizen_portal_14_ops" {
  group      = aws_iam_group.citizen_portal_14_devs.name
  policy_arn = aws_iam_policy.citizen_portal_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_14_devs__self_service" {
  group      = aws_iam_group.citizen_portal_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_15_analysts" {
  name = "arior-1njchw-citizen-portal-15-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_analysts__citizen_portal_15_read" {
  group      = aws_iam_group.citizen_portal_15_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_15_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_15_devs" {
  name = "arior-1njchw-citizen-portal-15-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_devs__citizen_portal_15_data_rw" {
  group      = aws_iam_group.citizen_portal_15_devs.name
  policy_arn = aws_iam_policy.citizen_portal_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_devs__citizen_portal_15_ops" {
  group      = aws_iam_group.citizen_portal_15_devs.name
  policy_arn = aws_iam_policy.citizen_portal_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_15_devs__self_service" {
  group      = aws_iam_group.citizen_portal_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_16_analysts" {
  name = "arior-1njchw-citizen-portal-16-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_analysts__citizen_portal_16_read" {
  group      = aws_iam_group.citizen_portal_16_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_16_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_16_devs" {
  name = "arior-1njchw-citizen-portal-16-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_devs__citizen_portal_16_data_rw" {
  group      = aws_iam_group.citizen_portal_16_devs.name
  policy_arn = aws_iam_policy.citizen_portal_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_devs__citizen_portal_16_ops" {
  group      = aws_iam_group.citizen_portal_16_devs.name
  policy_arn = aws_iam_policy.citizen_portal_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_16_devs__self_service" {
  group      = aws_iam_group.citizen_portal_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_17_analysts" {
  name = "arior-1njchw-citizen-portal-17-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_analysts__citizen_portal_17_read" {
  group      = aws_iam_group.citizen_portal_17_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_17_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_17_devs" {
  name = "arior-1njchw-citizen-portal-17-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_devs__citizen_portal_17_data_rw" {
  group      = aws_iam_group.citizen_portal_17_devs.name
  policy_arn = aws_iam_policy.citizen_portal_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_devs__citizen_portal_17_ops" {
  group      = aws_iam_group.citizen_portal_17_devs.name
  policy_arn = aws_iam_policy.citizen_portal_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_17_devs__self_service" {
  group      = aws_iam_group.citizen_portal_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_18_analysts" {
  name = "arior-1njchw-citizen-portal-18-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_analysts__citizen_portal_18_read" {
  group      = aws_iam_group.citizen_portal_18_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_18_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_18_devs" {
  name = "arior-1njchw-citizen-portal-18-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_devs__citizen_portal_18_data_rw" {
  group      = aws_iam_group.citizen_portal_18_devs.name
  policy_arn = aws_iam_policy.citizen_portal_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_devs__citizen_portal_18_ops" {
  group      = aws_iam_group.citizen_portal_18_devs.name
  policy_arn = aws_iam_policy.citizen_portal_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_18_devs__self_service" {
  group      = aws_iam_group.citizen_portal_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_19_analysts" {
  name = "arior-1njchw-citizen-portal-19-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_analysts__citizen_portal_19_read" {
  group      = aws_iam_group.citizen_portal_19_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_19_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_19_devs" {
  name = "arior-1njchw-citizen-portal-19-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_devs__citizen_portal_19_data_rw" {
  group      = aws_iam_group.citizen_portal_19_devs.name
  policy_arn = aws_iam_policy.citizen_portal_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_devs__citizen_portal_19_ops" {
  group      = aws_iam_group.citizen_portal_19_devs.name
  policy_arn = aws_iam_policy.citizen_portal_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_19_devs__self_service" {
  group      = aws_iam_group.citizen_portal_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_2_analysts" {
  name = "arior-1njchw-citizen-portal-2-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_analysts__citizen_portal_2_read" {
  group      = aws_iam_group.citizen_portal_2_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_2_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_2_devs" {
  name = "arior-1njchw-citizen-portal-2-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_devs__citizen_portal_2_data_rw" {
  group      = aws_iam_group.citizen_portal_2_devs.name
  policy_arn = aws_iam_policy.citizen_portal_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_devs__citizen_portal_2_ops" {
  group      = aws_iam_group.citizen_portal_2_devs.name
  policy_arn = aws_iam_policy.citizen_portal_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_2_devs__self_service" {
  group      = aws_iam_group.citizen_portal_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_20_analysts" {
  name = "arior-1njchw-citizen-portal-20-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_analysts__citizen_portal_20_read" {
  group      = aws_iam_group.citizen_portal_20_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_20_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_20_devs" {
  name = "arior-1njchw-citizen-portal-20-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_devs__citizen_portal_20_data_rw" {
  group      = aws_iam_group.citizen_portal_20_devs.name
  policy_arn = aws_iam_policy.citizen_portal_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_devs__citizen_portal_20_ops" {
  group      = aws_iam_group.citizen_portal_20_devs.name
  policy_arn = aws_iam_policy.citizen_portal_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_20_devs__self_service" {
  group      = aws_iam_group.citizen_portal_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_21_analysts" {
  name = "arior-1njchw-citizen-portal-21-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_analysts__citizen_portal_21_read" {
  group      = aws_iam_group.citizen_portal_21_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_21_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_21_devs" {
  name = "arior-1njchw-citizen-portal-21-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_devs__citizen_portal_21_data_rw" {
  group      = aws_iam_group.citizen_portal_21_devs.name
  policy_arn = aws_iam_policy.citizen_portal_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_devs__citizen_portal_21_ops" {
  group      = aws_iam_group.citizen_portal_21_devs.name
  policy_arn = aws_iam_policy.citizen_portal_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_21_devs__self_service" {
  group      = aws_iam_group.citizen_portal_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_22_analysts" {
  name = "arior-1njchw-citizen-portal-22-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_analysts__citizen_portal_22_read" {
  group      = aws_iam_group.citizen_portal_22_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_22_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_22_devs" {
  name = "arior-1njchw-citizen-portal-22-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_devs__citizen_portal_22_data_rw" {
  group      = aws_iam_group.citizen_portal_22_devs.name
  policy_arn = aws_iam_policy.citizen_portal_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_devs__citizen_portal_22_ops" {
  group      = aws_iam_group.citizen_portal_22_devs.name
  policy_arn = aws_iam_policy.citizen_portal_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_22_devs__self_service" {
  group      = aws_iam_group.citizen_portal_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_23_analysts" {
  name = "arior-1njchw-citizen-portal-23-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_analysts__citizen_portal_23_read" {
  group      = aws_iam_group.citizen_portal_23_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_23_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_23_devs" {
  name = "arior-1njchw-citizen-portal-23-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_devs__citizen_portal_23_data_rw" {
  group      = aws_iam_group.citizen_portal_23_devs.name
  policy_arn = aws_iam_policy.citizen_portal_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_devs__citizen_portal_23_ops" {
  group      = aws_iam_group.citizen_portal_23_devs.name
  policy_arn = aws_iam_policy.citizen_portal_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_23_devs__self_service" {
  group      = aws_iam_group.citizen_portal_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_24_analysts" {
  name = "arior-1njchw-citizen-portal-24-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_analysts__citizen_portal_24_read" {
  group      = aws_iam_group.citizen_portal_24_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_24_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_24_devs" {
  name = "arior-1njchw-citizen-portal-24-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_devs__citizen_portal_24_data_rw" {
  group      = aws_iam_group.citizen_portal_24_devs.name
  policy_arn = aws_iam_policy.citizen_portal_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_devs__citizen_portal_24_ops" {
  group      = aws_iam_group.citizen_portal_24_devs.name
  policy_arn = aws_iam_policy.citizen_portal_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_24_devs__self_service" {
  group      = aws_iam_group.citizen_portal_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_25_analysts" {
  name = "arior-1njchw-citizen-portal-25-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_analysts__citizen_portal_25_read" {
  group      = aws_iam_group.citizen_portal_25_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_25_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_25_devs" {
  name = "arior-1njchw-citizen-portal-25-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_devs__citizen_portal_25_data_rw" {
  group      = aws_iam_group.citizen_portal_25_devs.name
  policy_arn = aws_iam_policy.citizen_portal_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_devs__citizen_portal_25_ops" {
  group      = aws_iam_group.citizen_portal_25_devs.name
  policy_arn = aws_iam_policy.citizen_portal_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_25_devs__self_service" {
  group      = aws_iam_group.citizen_portal_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_26_analysts" {
  name = "arior-1njchw-citizen-portal-26-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_analysts__citizen_portal_26_read" {
  group      = aws_iam_group.citizen_portal_26_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_26_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_26_devs" {
  name = "arior-1njchw-citizen-portal-26-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_devs__citizen_portal_26_data_rw" {
  group      = aws_iam_group.citizen_portal_26_devs.name
  policy_arn = aws_iam_policy.citizen_portal_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_devs__citizen_portal_26_ops" {
  group      = aws_iam_group.citizen_portal_26_devs.name
  policy_arn = aws_iam_policy.citizen_portal_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_26_devs__self_service" {
  group      = aws_iam_group.citizen_portal_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_27_analysts" {
  name = "arior-1njchw-citizen-portal-27-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_analysts__citizen_portal_27_read" {
  group      = aws_iam_group.citizen_portal_27_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_27_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_27_devs" {
  name = "arior-1njchw-citizen-portal-27-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_devs__citizen_portal_27_data_rw" {
  group      = aws_iam_group.citizen_portal_27_devs.name
  policy_arn = aws_iam_policy.citizen_portal_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_devs__citizen_portal_27_ops" {
  group      = aws_iam_group.citizen_portal_27_devs.name
  policy_arn = aws_iam_policy.citizen_portal_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_27_devs__self_service" {
  group      = aws_iam_group.citizen_portal_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_28_analysts" {
  name = "arior-1njchw-citizen-portal-28-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_analysts__citizen_portal_28_read" {
  group      = aws_iam_group.citizen_portal_28_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_28_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_28_devs" {
  name = "arior-1njchw-citizen-portal-28-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_devs__citizen_portal_28_data_rw" {
  group      = aws_iam_group.citizen_portal_28_devs.name
  policy_arn = aws_iam_policy.citizen_portal_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_devs__citizen_portal_28_ops" {
  group      = aws_iam_group.citizen_portal_28_devs.name
  policy_arn = aws_iam_policy.citizen_portal_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_28_devs__self_service" {
  group      = aws_iam_group.citizen_portal_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_29_analysts" {
  name = "arior-1njchw-citizen-portal-29-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_analysts__citizen_portal_29_read" {
  group      = aws_iam_group.citizen_portal_29_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_29_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_29_devs" {
  name = "arior-1njchw-citizen-portal-29-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_devs__citizen_portal_29_data_rw" {
  group      = aws_iam_group.citizen_portal_29_devs.name
  policy_arn = aws_iam_policy.citizen_portal_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_devs__citizen_portal_29_ops" {
  group      = aws_iam_group.citizen_portal_29_devs.name
  policy_arn = aws_iam_policy.citizen_portal_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_29_devs__self_service" {
  group      = aws_iam_group.citizen_portal_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_3_analysts" {
  name = "arior-1njchw-citizen-portal-3-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_analysts__citizen_portal_3_read" {
  group      = aws_iam_group.citizen_portal_3_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_3_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_3_devs" {
  name = "arior-1njchw-citizen-portal-3-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_devs__citizen_portal_3_data_rw" {
  group      = aws_iam_group.citizen_portal_3_devs.name
  policy_arn = aws_iam_policy.citizen_portal_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_devs__citizen_portal_3_ops" {
  group      = aws_iam_group.citizen_portal_3_devs.name
  policy_arn = aws_iam_policy.citizen_portal_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_3_devs__self_service" {
  group      = aws_iam_group.citizen_portal_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_30_analysts" {
  name = "arior-1njchw-citizen-portal-30-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_analysts__citizen_portal_30_read" {
  group      = aws_iam_group.citizen_portal_30_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_30_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_30_devs" {
  name = "arior-1njchw-citizen-portal-30-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_devs__citizen_portal_30_data_rw" {
  group      = aws_iam_group.citizen_portal_30_devs.name
  policy_arn = aws_iam_policy.citizen_portal_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_devs__citizen_portal_30_ops" {
  group      = aws_iam_group.citizen_portal_30_devs.name
  policy_arn = aws_iam_policy.citizen_portal_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_30_devs__self_service" {
  group      = aws_iam_group.citizen_portal_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_31_analysts" {
  name = "arior-1njchw-citizen-portal-31-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_analysts__citizen_portal_31_read" {
  group      = aws_iam_group.citizen_portal_31_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_31_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_31_devs" {
  name = "arior-1njchw-citizen-portal-31-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_devs__citizen_portal_31_data_rw" {
  group      = aws_iam_group.citizen_portal_31_devs.name
  policy_arn = aws_iam_policy.citizen_portal_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_devs__citizen_portal_31_ops" {
  group      = aws_iam_group.citizen_portal_31_devs.name
  policy_arn = aws_iam_policy.citizen_portal_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_31_devs__self_service" {
  group      = aws_iam_group.citizen_portal_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_32_analysts" {
  name = "arior-1njchw-citizen-portal-32-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_analysts__citizen_portal_32_read" {
  group      = aws_iam_group.citizen_portal_32_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_32_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_32_devs" {
  name = "arior-1njchw-citizen-portal-32-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_devs__citizen_portal_32_data_rw" {
  group      = aws_iam_group.citizen_portal_32_devs.name
  policy_arn = aws_iam_policy.citizen_portal_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_devs__citizen_portal_32_ops" {
  group      = aws_iam_group.citizen_portal_32_devs.name
  policy_arn = aws_iam_policy.citizen_portal_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_32_devs__self_service" {
  group      = aws_iam_group.citizen_portal_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_33_analysts" {
  name = "arior-1njchw-citizen-portal-33-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_analysts__citizen_portal_33_read" {
  group      = aws_iam_group.citizen_portal_33_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_33_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_33_devs" {
  name = "arior-1njchw-citizen-portal-33-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_devs__citizen_portal_33_data_rw" {
  group      = aws_iam_group.citizen_portal_33_devs.name
  policy_arn = aws_iam_policy.citizen_portal_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_devs__citizen_portal_33_ops" {
  group      = aws_iam_group.citizen_portal_33_devs.name
  policy_arn = aws_iam_policy.citizen_portal_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_33_devs__self_service" {
  group      = aws_iam_group.citizen_portal_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_34_analysts" {
  name = "arior-1njchw-citizen-portal-34-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_analysts__citizen_portal_34_read" {
  group      = aws_iam_group.citizen_portal_34_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_34_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_34_devs" {
  name = "arior-1njchw-citizen-portal-34-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_devs__citizen_portal_34_data_rw" {
  group      = aws_iam_group.citizen_portal_34_devs.name
  policy_arn = aws_iam_policy.citizen_portal_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_devs__citizen_portal_34_ops" {
  group      = aws_iam_group.citizen_portal_34_devs.name
  policy_arn = aws_iam_policy.citizen_portal_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_34_devs__self_service" {
  group      = aws_iam_group.citizen_portal_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_35_analysts" {
  name = "arior-1njchw-citizen-portal-35-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_analysts__citizen_portal_35_read" {
  group      = aws_iam_group.citizen_portal_35_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_35_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_35_devs" {
  name = "arior-1njchw-citizen-portal-35-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_devs__citizen_portal_35_data_rw" {
  group      = aws_iam_group.citizen_portal_35_devs.name
  policy_arn = aws_iam_policy.citizen_portal_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_devs__citizen_portal_35_ops" {
  group      = aws_iam_group.citizen_portal_35_devs.name
  policy_arn = aws_iam_policy.citizen_portal_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_35_devs__self_service" {
  group      = aws_iam_group.citizen_portal_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_4_analysts" {
  name = "arior-1njchw-citizen-portal-4-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_analysts__citizen_portal_4_read" {
  group      = aws_iam_group.citizen_portal_4_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_4_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_4_devs" {
  name = "arior-1njchw-citizen-portal-4-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_devs__citizen_portal_4_data_rw" {
  group      = aws_iam_group.citizen_portal_4_devs.name
  policy_arn = aws_iam_policy.citizen_portal_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_devs__citizen_portal_4_ops" {
  group      = aws_iam_group.citizen_portal_4_devs.name
  policy_arn = aws_iam_policy.citizen_portal_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_4_devs__self_service" {
  group      = aws_iam_group.citizen_portal_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_5_analysts" {
  name = "arior-1njchw-citizen-portal-5-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_analysts__citizen_portal_5_read" {
  group      = aws_iam_group.citizen_portal_5_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_5_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_5_devs" {
  name = "arior-1njchw-citizen-portal-5-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_devs__citizen_portal_5_data_rw" {
  group      = aws_iam_group.citizen_portal_5_devs.name
  policy_arn = aws_iam_policy.citizen_portal_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_devs__citizen_portal_5_ops" {
  group      = aws_iam_group.citizen_portal_5_devs.name
  policy_arn = aws_iam_policy.citizen_portal_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_5_devs__self_service" {
  group      = aws_iam_group.citizen_portal_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_6_analysts" {
  name = "arior-1njchw-citizen-portal-6-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_analysts__citizen_portal_6_read" {
  group      = aws_iam_group.citizen_portal_6_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_6_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_6_devs" {
  name = "arior-1njchw-citizen-portal-6-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_devs__citizen_portal_6_data_rw" {
  group      = aws_iam_group.citizen_portal_6_devs.name
  policy_arn = aws_iam_policy.citizen_portal_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_devs__citizen_portal_6_ops" {
  group      = aws_iam_group.citizen_portal_6_devs.name
  policy_arn = aws_iam_policy.citizen_portal_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_6_devs__self_service" {
  group      = aws_iam_group.citizen_portal_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_7_analysts" {
  name = "arior-1njchw-citizen-portal-7-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_analysts__citizen_portal_7_read" {
  group      = aws_iam_group.citizen_portal_7_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_7_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_7_devs" {
  name = "arior-1njchw-citizen-portal-7-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_devs__citizen_portal_7_data_rw" {
  group      = aws_iam_group.citizen_portal_7_devs.name
  policy_arn = aws_iam_policy.citizen_portal_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_devs__citizen_portal_7_ops" {
  group      = aws_iam_group.citizen_portal_7_devs.name
  policy_arn = aws_iam_policy.citizen_portal_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_7_devs__self_service" {
  group      = aws_iam_group.citizen_portal_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_8_analysts" {
  name = "arior-1njchw-citizen-portal-8-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_analysts__citizen_portal_8_read" {
  group      = aws_iam_group.citizen_portal_8_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_8_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_8_devs" {
  name = "arior-1njchw-citizen-portal-8-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_devs__citizen_portal_8_data_rw" {
  group      = aws_iam_group.citizen_portal_8_devs.name
  policy_arn = aws_iam_policy.citizen_portal_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_devs__citizen_portal_8_ops" {
  group      = aws_iam_group.citizen_portal_8_devs.name
  policy_arn = aws_iam_policy.citizen_portal_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_8_devs__self_service" {
  group      = aws_iam_group.citizen_portal_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_9_analysts" {
  name = "arior-1njchw-citizen-portal-9-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_analysts__citizen_portal_9_read" {
  group      = aws_iam_group.citizen_portal_9_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_9_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_9_devs" {
  name = "arior-1njchw-citizen-portal-9-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_devs__citizen_portal_9_data_rw" {
  group      = aws_iam_group.citizen_portal_9_devs.name
  policy_arn = aws_iam_policy.citizen_portal_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_devs__citizen_portal_9_ops" {
  group      = aws_iam_group.citizen_portal_9_devs.name
  policy_arn = aws_iam_policy.citizen_portal_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_9_devs__self_service" {
  group      = aws_iam_group.citizen_portal_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "citizen_portal_analysts" {
  name = "arior-1njchw-citizen-portal-analysts"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_analysts__citizen_portal_read" {
  group      = aws_iam_group.citizen_portal_analysts.name
  policy_arn = aws_iam_policy.citizen_portal_read.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_analysts__base_readonly" {
  group      = aws_iam_group.citizen_portal_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "citizen_portal_devs" {
  name = "arior-1njchw-citizen-portal-devs"
}

resource "aws_iam_group_policy_attachment" "citizen_portal_devs__citizen_portal_data_rw" {
  group      = aws_iam_group.citizen_portal_devs.name
  policy_arn = aws_iam_policy.citizen_portal_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_devs__citizen_portal_ops" {
  group      = aws_iam_group.citizen_portal_devs.name
  policy_arn = aws_iam_policy.citizen_portal_ops.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_devs__base_readonly" {
  group      = aws_iam_group.citizen_portal_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "citizen_portal_devs__self_service" {
  group      = aws_iam_group.citizen_portal_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "contractors" {
  name = "arior-1njchw-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_10_analysts" {
  name = "arior-1njchw-gis-10-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_10_analysts__gis_10_read" {
  group      = aws_iam_group.gis_10_analysts.name
  policy_arn = aws_iam_policy.gis_10_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_10_analysts__base_readonly" {
  group      = aws_iam_group.gis_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_10_devs" {
  name = "arior-1njchw-gis-10-devs"
}

resource "aws_iam_group_policy_attachment" "gis_10_devs__gis_10_data_rw" {
  group      = aws_iam_group.gis_10_devs.name
  policy_arn = aws_iam_policy.gis_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_10_devs__gis_10_ops" {
  group      = aws_iam_group.gis_10_devs.name
  policy_arn = aws_iam_policy.gis_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_10_devs__base_readonly" {
  group      = aws_iam_group.gis_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_10_devs__self_service" {
  group      = aws_iam_group.gis_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_11_analysts" {
  name = "arior-1njchw-gis-11-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_11_analysts__gis_11_read" {
  group      = aws_iam_group.gis_11_analysts.name
  policy_arn = aws_iam_policy.gis_11_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_11_analysts__base_readonly" {
  group      = aws_iam_group.gis_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_11_devs" {
  name = "arior-1njchw-gis-11-devs"
}

resource "aws_iam_group_policy_attachment" "gis_11_devs__gis_11_data_rw" {
  group      = aws_iam_group.gis_11_devs.name
  policy_arn = aws_iam_policy.gis_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_11_devs__gis_11_ops" {
  group      = aws_iam_group.gis_11_devs.name
  policy_arn = aws_iam_policy.gis_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_11_devs__base_readonly" {
  group      = aws_iam_group.gis_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_11_devs__self_service" {
  group      = aws_iam_group.gis_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_12_analysts" {
  name = "arior-1njchw-gis-12-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_12_analysts__gis_12_read" {
  group      = aws_iam_group.gis_12_analysts.name
  policy_arn = aws_iam_policy.gis_12_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_12_analysts__base_readonly" {
  group      = aws_iam_group.gis_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_12_devs" {
  name = "arior-1njchw-gis-12-devs"
}

resource "aws_iam_group_policy_attachment" "gis_12_devs__gis_12_data_rw" {
  group      = aws_iam_group.gis_12_devs.name
  policy_arn = aws_iam_policy.gis_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_12_devs__gis_12_ops" {
  group      = aws_iam_group.gis_12_devs.name
  policy_arn = aws_iam_policy.gis_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_12_devs__base_readonly" {
  group      = aws_iam_group.gis_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_12_devs__self_service" {
  group      = aws_iam_group.gis_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_13_analysts" {
  name = "arior-1njchw-gis-13-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_13_analysts__gis_13_read" {
  group      = aws_iam_group.gis_13_analysts.name
  policy_arn = aws_iam_policy.gis_13_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_13_analysts__base_readonly" {
  group      = aws_iam_group.gis_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_13_devs" {
  name = "arior-1njchw-gis-13-devs"
}

resource "aws_iam_group_policy_attachment" "gis_13_devs__gis_13_data_rw" {
  group      = aws_iam_group.gis_13_devs.name
  policy_arn = aws_iam_policy.gis_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_13_devs__gis_13_ops" {
  group      = aws_iam_group.gis_13_devs.name
  policy_arn = aws_iam_policy.gis_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_13_devs__base_readonly" {
  group      = aws_iam_group.gis_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_13_devs__self_service" {
  group      = aws_iam_group.gis_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_14_analysts" {
  name = "arior-1njchw-gis-14-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_14_analysts__gis_14_read" {
  group      = aws_iam_group.gis_14_analysts.name
  policy_arn = aws_iam_policy.gis_14_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_14_analysts__base_readonly" {
  group      = aws_iam_group.gis_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_14_devs" {
  name = "arior-1njchw-gis-14-devs"
}

resource "aws_iam_group_policy_attachment" "gis_14_devs__gis_14_data_rw" {
  group      = aws_iam_group.gis_14_devs.name
  policy_arn = aws_iam_policy.gis_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_14_devs__gis_14_ops" {
  group      = aws_iam_group.gis_14_devs.name
  policy_arn = aws_iam_policy.gis_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_14_devs__base_readonly" {
  group      = aws_iam_group.gis_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_14_devs__self_service" {
  group      = aws_iam_group.gis_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_15_analysts" {
  name = "arior-1njchw-gis-15-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_15_analysts__gis_15_read" {
  group      = aws_iam_group.gis_15_analysts.name
  policy_arn = aws_iam_policy.gis_15_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_15_analysts__base_readonly" {
  group      = aws_iam_group.gis_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_15_devs" {
  name = "arior-1njchw-gis-15-devs"
}

resource "aws_iam_group_policy_attachment" "gis_15_devs__gis_15_data_rw" {
  group      = aws_iam_group.gis_15_devs.name
  policy_arn = aws_iam_policy.gis_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_15_devs__gis_15_ops" {
  group      = aws_iam_group.gis_15_devs.name
  policy_arn = aws_iam_policy.gis_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_15_devs__base_readonly" {
  group      = aws_iam_group.gis_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_15_devs__self_service" {
  group      = aws_iam_group.gis_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_16_analysts" {
  name = "arior-1njchw-gis-16-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_16_analysts__gis_16_read" {
  group      = aws_iam_group.gis_16_analysts.name
  policy_arn = aws_iam_policy.gis_16_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_16_analysts__base_readonly" {
  group      = aws_iam_group.gis_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_16_devs" {
  name = "arior-1njchw-gis-16-devs"
}

resource "aws_iam_group_policy_attachment" "gis_16_devs__gis_16_data_rw" {
  group      = aws_iam_group.gis_16_devs.name
  policy_arn = aws_iam_policy.gis_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_16_devs__gis_16_ops" {
  group      = aws_iam_group.gis_16_devs.name
  policy_arn = aws_iam_policy.gis_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_16_devs__base_readonly" {
  group      = aws_iam_group.gis_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_16_devs__self_service" {
  group      = aws_iam_group.gis_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_17_analysts" {
  name = "arior-1njchw-gis-17-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_17_analysts__gis_17_read" {
  group      = aws_iam_group.gis_17_analysts.name
  policy_arn = aws_iam_policy.gis_17_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_17_analysts__base_readonly" {
  group      = aws_iam_group.gis_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_17_devs" {
  name = "arior-1njchw-gis-17-devs"
}

resource "aws_iam_group_policy_attachment" "gis_17_devs__gis_17_data_rw" {
  group      = aws_iam_group.gis_17_devs.name
  policy_arn = aws_iam_policy.gis_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_17_devs__gis_17_ops" {
  group      = aws_iam_group.gis_17_devs.name
  policy_arn = aws_iam_policy.gis_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_17_devs__base_readonly" {
  group      = aws_iam_group.gis_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_17_devs__self_service" {
  group      = aws_iam_group.gis_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_18_analysts" {
  name = "arior-1njchw-gis-18-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_18_analysts__gis_18_read" {
  group      = aws_iam_group.gis_18_analysts.name
  policy_arn = aws_iam_policy.gis_18_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_18_analysts__base_readonly" {
  group      = aws_iam_group.gis_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_18_devs" {
  name = "arior-1njchw-gis-18-devs"
}

resource "aws_iam_group_policy_attachment" "gis_18_devs__gis_18_data_rw" {
  group      = aws_iam_group.gis_18_devs.name
  policy_arn = aws_iam_policy.gis_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_18_devs__gis_18_ops" {
  group      = aws_iam_group.gis_18_devs.name
  policy_arn = aws_iam_policy.gis_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_18_devs__base_readonly" {
  group      = aws_iam_group.gis_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_18_devs__self_service" {
  group      = aws_iam_group.gis_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_19_analysts" {
  name = "arior-1njchw-gis-19-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_19_analysts__gis_19_read" {
  group      = aws_iam_group.gis_19_analysts.name
  policy_arn = aws_iam_policy.gis_19_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_19_analysts__base_readonly" {
  group      = aws_iam_group.gis_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_19_devs" {
  name = "arior-1njchw-gis-19-devs"
}

resource "aws_iam_group_policy_attachment" "gis_19_devs__gis_19_data_rw" {
  group      = aws_iam_group.gis_19_devs.name
  policy_arn = aws_iam_policy.gis_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_19_devs__gis_19_ops" {
  group      = aws_iam_group.gis_19_devs.name
  policy_arn = aws_iam_policy.gis_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_19_devs__base_readonly" {
  group      = aws_iam_group.gis_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_19_devs__self_service" {
  group      = aws_iam_group.gis_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_2_analysts" {
  name = "arior-1njchw-gis-2-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_2_analysts__gis_2_read" {
  group      = aws_iam_group.gis_2_analysts.name
  policy_arn = aws_iam_policy.gis_2_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_2_analysts__base_readonly" {
  group      = aws_iam_group.gis_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_2_devs" {
  name = "arior-1njchw-gis-2-devs"
}

resource "aws_iam_group_policy_attachment" "gis_2_devs__gis_2_data_rw" {
  group      = aws_iam_group.gis_2_devs.name
  policy_arn = aws_iam_policy.gis_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_2_devs__gis_2_ops" {
  group      = aws_iam_group.gis_2_devs.name
  policy_arn = aws_iam_policy.gis_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_2_devs__base_readonly" {
  group      = aws_iam_group.gis_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_2_devs__self_service" {
  group      = aws_iam_group.gis_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_20_analysts" {
  name = "arior-1njchw-gis-20-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_20_analysts__gis_20_read" {
  group      = aws_iam_group.gis_20_analysts.name
  policy_arn = aws_iam_policy.gis_20_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_20_analysts__base_readonly" {
  group      = aws_iam_group.gis_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_20_devs" {
  name = "arior-1njchw-gis-20-devs"
}

resource "aws_iam_group_policy_attachment" "gis_20_devs__gis_20_data_rw" {
  group      = aws_iam_group.gis_20_devs.name
  policy_arn = aws_iam_policy.gis_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_20_devs__gis_20_ops" {
  group      = aws_iam_group.gis_20_devs.name
  policy_arn = aws_iam_policy.gis_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_20_devs__base_readonly" {
  group      = aws_iam_group.gis_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_20_devs__self_service" {
  group      = aws_iam_group.gis_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_21_analysts" {
  name = "arior-1njchw-gis-21-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_21_analysts__gis_21_read" {
  group      = aws_iam_group.gis_21_analysts.name
  policy_arn = aws_iam_policy.gis_21_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_21_analysts__base_readonly" {
  group      = aws_iam_group.gis_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_21_devs" {
  name = "arior-1njchw-gis-21-devs"
}

resource "aws_iam_group_policy_attachment" "gis_21_devs__gis_21_data_rw" {
  group      = aws_iam_group.gis_21_devs.name
  policy_arn = aws_iam_policy.gis_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_21_devs__gis_21_ops" {
  group      = aws_iam_group.gis_21_devs.name
  policy_arn = aws_iam_policy.gis_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_21_devs__base_readonly" {
  group      = aws_iam_group.gis_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_21_devs__self_service" {
  group      = aws_iam_group.gis_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_22_analysts" {
  name = "arior-1njchw-gis-22-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_22_analysts__gis_22_read" {
  group      = aws_iam_group.gis_22_analysts.name
  policy_arn = aws_iam_policy.gis_22_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_22_analysts__base_readonly" {
  group      = aws_iam_group.gis_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_22_devs" {
  name = "arior-1njchw-gis-22-devs"
}

resource "aws_iam_group_policy_attachment" "gis_22_devs__gis_22_data_rw" {
  group      = aws_iam_group.gis_22_devs.name
  policy_arn = aws_iam_policy.gis_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_22_devs__gis_22_ops" {
  group      = aws_iam_group.gis_22_devs.name
  policy_arn = aws_iam_policy.gis_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_22_devs__base_readonly" {
  group      = aws_iam_group.gis_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_22_devs__self_service" {
  group      = aws_iam_group.gis_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_23_analysts" {
  name = "arior-1njchw-gis-23-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_23_analysts__gis_23_read" {
  group      = aws_iam_group.gis_23_analysts.name
  policy_arn = aws_iam_policy.gis_23_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_23_analysts__base_readonly" {
  group      = aws_iam_group.gis_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_23_devs" {
  name = "arior-1njchw-gis-23-devs"
}

resource "aws_iam_group_policy_attachment" "gis_23_devs__gis_23_data_rw" {
  group      = aws_iam_group.gis_23_devs.name
  policy_arn = aws_iam_policy.gis_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_23_devs__gis_23_ops" {
  group      = aws_iam_group.gis_23_devs.name
  policy_arn = aws_iam_policy.gis_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_23_devs__base_readonly" {
  group      = aws_iam_group.gis_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_23_devs__self_service" {
  group      = aws_iam_group.gis_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_24_analysts" {
  name = "arior-1njchw-gis-24-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_24_analysts__gis_24_read" {
  group      = aws_iam_group.gis_24_analysts.name
  policy_arn = aws_iam_policy.gis_24_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_24_analysts__base_readonly" {
  group      = aws_iam_group.gis_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_24_devs" {
  name = "arior-1njchw-gis-24-devs"
}

resource "aws_iam_group_policy_attachment" "gis_24_devs__gis_24_data_rw" {
  group      = aws_iam_group.gis_24_devs.name
  policy_arn = aws_iam_policy.gis_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_24_devs__gis_24_ops" {
  group      = aws_iam_group.gis_24_devs.name
  policy_arn = aws_iam_policy.gis_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_24_devs__base_readonly" {
  group      = aws_iam_group.gis_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_24_devs__self_service" {
  group      = aws_iam_group.gis_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_25_analysts" {
  name = "arior-1njchw-gis-25-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_25_analysts__gis_25_read" {
  group      = aws_iam_group.gis_25_analysts.name
  policy_arn = aws_iam_policy.gis_25_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_25_analysts__base_readonly" {
  group      = aws_iam_group.gis_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_25_devs" {
  name = "arior-1njchw-gis-25-devs"
}

resource "aws_iam_group_policy_attachment" "gis_25_devs__gis_25_data_rw" {
  group      = aws_iam_group.gis_25_devs.name
  policy_arn = aws_iam_policy.gis_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_25_devs__gis_25_ops" {
  group      = aws_iam_group.gis_25_devs.name
  policy_arn = aws_iam_policy.gis_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_25_devs__base_readonly" {
  group      = aws_iam_group.gis_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_25_devs__self_service" {
  group      = aws_iam_group.gis_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_26_analysts" {
  name = "arior-1njchw-gis-26-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_26_analysts__gis_26_read" {
  group      = aws_iam_group.gis_26_analysts.name
  policy_arn = aws_iam_policy.gis_26_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_26_analysts__base_readonly" {
  group      = aws_iam_group.gis_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_26_devs" {
  name = "arior-1njchw-gis-26-devs"
}

resource "aws_iam_group_policy_attachment" "gis_26_devs__gis_26_data_rw" {
  group      = aws_iam_group.gis_26_devs.name
  policy_arn = aws_iam_policy.gis_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_26_devs__gis_26_ops" {
  group      = aws_iam_group.gis_26_devs.name
  policy_arn = aws_iam_policy.gis_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_26_devs__base_readonly" {
  group      = aws_iam_group.gis_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_26_devs__self_service" {
  group      = aws_iam_group.gis_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_27_analysts" {
  name = "arior-1njchw-gis-27-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_27_analysts__gis_27_read" {
  group      = aws_iam_group.gis_27_analysts.name
  policy_arn = aws_iam_policy.gis_27_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_27_analysts__base_readonly" {
  group      = aws_iam_group.gis_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_27_devs" {
  name = "arior-1njchw-gis-27-devs"
}

resource "aws_iam_group_policy_attachment" "gis_27_devs__gis_27_data_rw" {
  group      = aws_iam_group.gis_27_devs.name
  policy_arn = aws_iam_policy.gis_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_27_devs__gis_27_ops" {
  group      = aws_iam_group.gis_27_devs.name
  policy_arn = aws_iam_policy.gis_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_27_devs__base_readonly" {
  group      = aws_iam_group.gis_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_27_devs__self_service" {
  group      = aws_iam_group.gis_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_28_analysts" {
  name = "arior-1njchw-gis-28-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_28_analysts__gis_28_read" {
  group      = aws_iam_group.gis_28_analysts.name
  policy_arn = aws_iam_policy.gis_28_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_28_analysts__base_readonly" {
  group      = aws_iam_group.gis_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_28_devs" {
  name = "arior-1njchw-gis-28-devs"
}

resource "aws_iam_group_policy_attachment" "gis_28_devs__gis_28_data_rw" {
  group      = aws_iam_group.gis_28_devs.name
  policy_arn = aws_iam_policy.gis_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_28_devs__gis_28_ops" {
  group      = aws_iam_group.gis_28_devs.name
  policy_arn = aws_iam_policy.gis_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_28_devs__base_readonly" {
  group      = aws_iam_group.gis_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_28_devs__self_service" {
  group      = aws_iam_group.gis_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_29_analysts" {
  name = "arior-1njchw-gis-29-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_29_analysts__gis_29_read" {
  group      = aws_iam_group.gis_29_analysts.name
  policy_arn = aws_iam_policy.gis_29_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_29_analysts__base_readonly" {
  group      = aws_iam_group.gis_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_29_devs" {
  name = "arior-1njchw-gis-29-devs"
}

resource "aws_iam_group_policy_attachment" "gis_29_devs__gis_29_data_rw" {
  group      = aws_iam_group.gis_29_devs.name
  policy_arn = aws_iam_policy.gis_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_29_devs__gis_29_ops" {
  group      = aws_iam_group.gis_29_devs.name
  policy_arn = aws_iam_policy.gis_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_29_devs__base_readonly" {
  group      = aws_iam_group.gis_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_29_devs__self_service" {
  group      = aws_iam_group.gis_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_3_analysts" {
  name = "arior-1njchw-gis-3-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_3_analysts__gis_3_read" {
  group      = aws_iam_group.gis_3_analysts.name
  policy_arn = aws_iam_policy.gis_3_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_3_analysts__base_readonly" {
  group      = aws_iam_group.gis_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_3_devs" {
  name = "arior-1njchw-gis-3-devs"
}

resource "aws_iam_group_policy_attachment" "gis_3_devs__gis_3_data_rw" {
  group      = aws_iam_group.gis_3_devs.name
  policy_arn = aws_iam_policy.gis_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_3_devs__gis_3_ops" {
  group      = aws_iam_group.gis_3_devs.name
  policy_arn = aws_iam_policy.gis_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_3_devs__base_readonly" {
  group      = aws_iam_group.gis_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_3_devs__self_service" {
  group      = aws_iam_group.gis_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_30_analysts" {
  name = "arior-1njchw-gis-30-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_30_analysts__gis_30_read" {
  group      = aws_iam_group.gis_30_analysts.name
  policy_arn = aws_iam_policy.gis_30_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_30_analysts__base_readonly" {
  group      = aws_iam_group.gis_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_30_devs" {
  name = "arior-1njchw-gis-30-devs"
}

resource "aws_iam_group_policy_attachment" "gis_30_devs__gis_30_data_rw" {
  group      = aws_iam_group.gis_30_devs.name
  policy_arn = aws_iam_policy.gis_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_30_devs__gis_30_ops" {
  group      = aws_iam_group.gis_30_devs.name
  policy_arn = aws_iam_policy.gis_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_30_devs__base_readonly" {
  group      = aws_iam_group.gis_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_30_devs__self_service" {
  group      = aws_iam_group.gis_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_31_analysts" {
  name = "arior-1njchw-gis-31-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_31_analysts__gis_31_read" {
  group      = aws_iam_group.gis_31_analysts.name
  policy_arn = aws_iam_policy.gis_31_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_31_analysts__base_readonly" {
  group      = aws_iam_group.gis_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_31_devs" {
  name = "arior-1njchw-gis-31-devs"
}

resource "aws_iam_group_policy_attachment" "gis_31_devs__gis_31_data_rw" {
  group      = aws_iam_group.gis_31_devs.name
  policy_arn = aws_iam_policy.gis_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_31_devs__gis_31_ops" {
  group      = aws_iam_group.gis_31_devs.name
  policy_arn = aws_iam_policy.gis_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_31_devs__base_readonly" {
  group      = aws_iam_group.gis_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_31_devs__self_service" {
  group      = aws_iam_group.gis_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_32_analysts" {
  name = "arior-1njchw-gis-32-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_32_analysts__gis_32_read" {
  group      = aws_iam_group.gis_32_analysts.name
  policy_arn = aws_iam_policy.gis_32_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_32_analysts__base_readonly" {
  group      = aws_iam_group.gis_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_32_devs" {
  name = "arior-1njchw-gis-32-devs"
}

resource "aws_iam_group_policy_attachment" "gis_32_devs__gis_32_data_rw" {
  group      = aws_iam_group.gis_32_devs.name
  policy_arn = aws_iam_policy.gis_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_32_devs__gis_32_ops" {
  group      = aws_iam_group.gis_32_devs.name
  policy_arn = aws_iam_policy.gis_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_32_devs__base_readonly" {
  group      = aws_iam_group.gis_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_32_devs__self_service" {
  group      = aws_iam_group.gis_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_33_analysts" {
  name = "arior-1njchw-gis-33-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_33_analysts__gis_33_read" {
  group      = aws_iam_group.gis_33_analysts.name
  policy_arn = aws_iam_policy.gis_33_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_33_analysts__base_readonly" {
  group      = aws_iam_group.gis_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_33_devs" {
  name = "arior-1njchw-gis-33-devs"
}

resource "aws_iam_group_policy_attachment" "gis_33_devs__gis_33_data_rw" {
  group      = aws_iam_group.gis_33_devs.name
  policy_arn = aws_iam_policy.gis_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_33_devs__gis_33_ops" {
  group      = aws_iam_group.gis_33_devs.name
  policy_arn = aws_iam_policy.gis_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_33_devs__base_readonly" {
  group      = aws_iam_group.gis_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_33_devs__self_service" {
  group      = aws_iam_group.gis_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_34_analysts" {
  name = "arior-1njchw-gis-34-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_34_analysts__gis_34_read" {
  group      = aws_iam_group.gis_34_analysts.name
  policy_arn = aws_iam_policy.gis_34_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_34_analysts__base_readonly" {
  group      = aws_iam_group.gis_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_34_devs" {
  name = "arior-1njchw-gis-34-devs"
}

resource "aws_iam_group_policy_attachment" "gis_34_devs__gis_34_data_rw" {
  group      = aws_iam_group.gis_34_devs.name
  policy_arn = aws_iam_policy.gis_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_34_devs__gis_34_ops" {
  group      = aws_iam_group.gis_34_devs.name
  policy_arn = aws_iam_policy.gis_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_34_devs__base_readonly" {
  group      = aws_iam_group.gis_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_34_devs__self_service" {
  group      = aws_iam_group.gis_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_35_analysts" {
  name = "arior-1njchw-gis-35-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_35_analysts__gis_35_read" {
  group      = aws_iam_group.gis_35_analysts.name
  policy_arn = aws_iam_policy.gis_35_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_35_analysts__base_readonly" {
  group      = aws_iam_group.gis_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_35_devs" {
  name = "arior-1njchw-gis-35-devs"
}

resource "aws_iam_group_policy_attachment" "gis_35_devs__gis_35_data_rw" {
  group      = aws_iam_group.gis_35_devs.name
  policy_arn = aws_iam_policy.gis_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_35_devs__gis_35_ops" {
  group      = aws_iam_group.gis_35_devs.name
  policy_arn = aws_iam_policy.gis_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_35_devs__base_readonly" {
  group      = aws_iam_group.gis_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_35_devs__self_service" {
  group      = aws_iam_group.gis_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_4_analysts" {
  name = "arior-1njchw-gis-4-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_4_analysts__gis_4_read" {
  group      = aws_iam_group.gis_4_analysts.name
  policy_arn = aws_iam_policy.gis_4_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_4_analysts__base_readonly" {
  group      = aws_iam_group.gis_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_4_devs" {
  name = "arior-1njchw-gis-4-devs"
}

resource "aws_iam_group_policy_attachment" "gis_4_devs__gis_4_data_rw" {
  group      = aws_iam_group.gis_4_devs.name
  policy_arn = aws_iam_policy.gis_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_4_devs__gis_4_ops" {
  group      = aws_iam_group.gis_4_devs.name
  policy_arn = aws_iam_policy.gis_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_4_devs__base_readonly" {
  group      = aws_iam_group.gis_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_4_devs__self_service" {
  group      = aws_iam_group.gis_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_5_analysts" {
  name = "arior-1njchw-gis-5-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_5_analysts__gis_5_read" {
  group      = aws_iam_group.gis_5_analysts.name
  policy_arn = aws_iam_policy.gis_5_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_5_analysts__base_readonly" {
  group      = aws_iam_group.gis_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_5_devs" {
  name = "arior-1njchw-gis-5-devs"
}

resource "aws_iam_group_policy_attachment" "gis_5_devs__gis_5_data_rw" {
  group      = aws_iam_group.gis_5_devs.name
  policy_arn = aws_iam_policy.gis_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_5_devs__gis_5_ops" {
  group      = aws_iam_group.gis_5_devs.name
  policy_arn = aws_iam_policy.gis_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_5_devs__base_readonly" {
  group      = aws_iam_group.gis_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_5_devs__self_service" {
  group      = aws_iam_group.gis_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_6_analysts" {
  name = "arior-1njchw-gis-6-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_6_analysts__gis_6_read" {
  group      = aws_iam_group.gis_6_analysts.name
  policy_arn = aws_iam_policy.gis_6_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_6_analysts__base_readonly" {
  group      = aws_iam_group.gis_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_6_devs" {
  name = "arior-1njchw-gis-6-devs"
}

resource "aws_iam_group_policy_attachment" "gis_6_devs__gis_6_data_rw" {
  group      = aws_iam_group.gis_6_devs.name
  policy_arn = aws_iam_policy.gis_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_6_devs__gis_6_ops" {
  group      = aws_iam_group.gis_6_devs.name
  policy_arn = aws_iam_policy.gis_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_6_devs__base_readonly" {
  group      = aws_iam_group.gis_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_6_devs__self_service" {
  group      = aws_iam_group.gis_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_7_analysts" {
  name = "arior-1njchw-gis-7-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_7_analysts__gis_7_read" {
  group      = aws_iam_group.gis_7_analysts.name
  policy_arn = aws_iam_policy.gis_7_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_7_analysts__base_readonly" {
  group      = aws_iam_group.gis_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_7_devs" {
  name = "arior-1njchw-gis-7-devs"
}

resource "aws_iam_group_policy_attachment" "gis_7_devs__gis_7_data_rw" {
  group      = aws_iam_group.gis_7_devs.name
  policy_arn = aws_iam_policy.gis_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_7_devs__gis_7_ops" {
  group      = aws_iam_group.gis_7_devs.name
  policy_arn = aws_iam_policy.gis_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_7_devs__base_readonly" {
  group      = aws_iam_group.gis_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_7_devs__self_service" {
  group      = aws_iam_group.gis_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_8_analysts" {
  name = "arior-1njchw-gis-8-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_8_analysts__gis_8_read" {
  group      = aws_iam_group.gis_8_analysts.name
  policy_arn = aws_iam_policy.gis_8_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_8_analysts__base_readonly" {
  group      = aws_iam_group.gis_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_8_devs" {
  name = "arior-1njchw-gis-8-devs"
}

resource "aws_iam_group_policy_attachment" "gis_8_devs__gis_8_data_rw" {
  group      = aws_iam_group.gis_8_devs.name
  policy_arn = aws_iam_policy.gis_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_8_devs__gis_8_ops" {
  group      = aws_iam_group.gis_8_devs.name
  policy_arn = aws_iam_policy.gis_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_8_devs__base_readonly" {
  group      = aws_iam_group.gis_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_8_devs__self_service" {
  group      = aws_iam_group.gis_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_9_analysts" {
  name = "arior-1njchw-gis-9-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_9_analysts__gis_9_read" {
  group      = aws_iam_group.gis_9_analysts.name
  policy_arn = aws_iam_policy.gis_9_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_9_analysts__base_readonly" {
  group      = aws_iam_group.gis_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_9_devs" {
  name = "arior-1njchw-gis-9-devs"
}

resource "aws_iam_group_policy_attachment" "gis_9_devs__gis_9_data_rw" {
  group      = aws_iam_group.gis_9_devs.name
  policy_arn = aws_iam_policy.gis_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_9_devs__gis_9_ops" {
  group      = aws_iam_group.gis_9_devs.name
  policy_arn = aws_iam_policy.gis_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_9_devs__base_readonly" {
  group      = aws_iam_group.gis_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_9_devs__self_service" {
  group      = aws_iam_group.gis_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "gis_analysts" {
  name = "arior-1njchw-gis-analysts"
}

resource "aws_iam_group_policy_attachment" "gis_analysts__gis_read" {
  group      = aws_iam_group.gis_analysts.name
  policy_arn = aws_iam_policy.gis_read.arn
}

resource "aws_iam_group_policy_attachment" "gis_analysts__base_readonly" {
  group      = aws_iam_group.gis_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_devs" {
  name = "arior-1njchw-gis-devs"
}

resource "aws_iam_group_policy_attachment" "gis_devs__gis_data_rw" {
  group      = aws_iam_group.gis_devs.name
  policy_arn = aws_iam_policy.gis_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "gis_devs__gis_ops" {
  group      = aws_iam_group.gis_devs.name
  policy_arn = aws_iam_policy.gis_ops.arn
}

resource "aws_iam_group_policy_attachment" "gis_devs__base_readonly" {
  group      = aws_iam_group.gis_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "gis_devs__self_service" {
  group      = aws_iam_group.gis_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_10_analysts" {
  name = "arior-1njchw-hr-10-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_10_analysts__hr_10_read" {
  group      = aws_iam_group.hr_10_analysts.name
  policy_arn = aws_iam_policy.hr_10_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_10_analysts__base_readonly" {
  group      = aws_iam_group.hr_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_10_devs" {
  name = "arior-1njchw-hr-10-devs"
}

resource "aws_iam_group_policy_attachment" "hr_10_devs__hr_10_data_rw" {
  group      = aws_iam_group.hr_10_devs.name
  policy_arn = aws_iam_policy.hr_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_10_devs__hr_10_ops" {
  group      = aws_iam_group.hr_10_devs.name
  policy_arn = aws_iam_policy.hr_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_10_devs__base_readonly" {
  group      = aws_iam_group.hr_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_10_devs__self_service" {
  group      = aws_iam_group.hr_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_11_analysts" {
  name = "arior-1njchw-hr-11-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_11_analysts__hr_11_read" {
  group      = aws_iam_group.hr_11_analysts.name
  policy_arn = aws_iam_policy.hr_11_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_11_analysts__base_readonly" {
  group      = aws_iam_group.hr_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_11_devs" {
  name = "arior-1njchw-hr-11-devs"
}

resource "aws_iam_group_policy_attachment" "hr_11_devs__hr_11_data_rw" {
  group      = aws_iam_group.hr_11_devs.name
  policy_arn = aws_iam_policy.hr_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_11_devs__hr_11_ops" {
  group      = aws_iam_group.hr_11_devs.name
  policy_arn = aws_iam_policy.hr_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_11_devs__base_readonly" {
  group      = aws_iam_group.hr_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_11_devs__self_service" {
  group      = aws_iam_group.hr_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_12_analysts" {
  name = "arior-1njchw-hr-12-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_12_analysts__hr_12_read" {
  group      = aws_iam_group.hr_12_analysts.name
  policy_arn = aws_iam_policy.hr_12_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_12_analysts__base_readonly" {
  group      = aws_iam_group.hr_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_12_devs" {
  name = "arior-1njchw-hr-12-devs"
}

resource "aws_iam_group_policy_attachment" "hr_12_devs__hr_12_data_rw" {
  group      = aws_iam_group.hr_12_devs.name
  policy_arn = aws_iam_policy.hr_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_12_devs__hr_12_ops" {
  group      = aws_iam_group.hr_12_devs.name
  policy_arn = aws_iam_policy.hr_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_12_devs__base_readonly" {
  group      = aws_iam_group.hr_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_12_devs__self_service" {
  group      = aws_iam_group.hr_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_13_analysts" {
  name = "arior-1njchw-hr-13-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_13_analysts__hr_13_read" {
  group      = aws_iam_group.hr_13_analysts.name
  policy_arn = aws_iam_policy.hr_13_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_13_analysts__base_readonly" {
  group      = aws_iam_group.hr_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_13_devs" {
  name = "arior-1njchw-hr-13-devs"
}

resource "aws_iam_group_policy_attachment" "hr_13_devs__hr_13_data_rw" {
  group      = aws_iam_group.hr_13_devs.name
  policy_arn = aws_iam_policy.hr_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_13_devs__hr_13_ops" {
  group      = aws_iam_group.hr_13_devs.name
  policy_arn = aws_iam_policy.hr_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_13_devs__base_readonly" {
  group      = aws_iam_group.hr_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_13_devs__self_service" {
  group      = aws_iam_group.hr_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_14_analysts" {
  name = "arior-1njchw-hr-14-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_14_analysts__hr_14_read" {
  group      = aws_iam_group.hr_14_analysts.name
  policy_arn = aws_iam_policy.hr_14_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_14_analysts__base_readonly" {
  group      = aws_iam_group.hr_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_14_devs" {
  name = "arior-1njchw-hr-14-devs"
}

resource "aws_iam_group_policy_attachment" "hr_14_devs__hr_14_data_rw" {
  group      = aws_iam_group.hr_14_devs.name
  policy_arn = aws_iam_policy.hr_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_14_devs__hr_14_ops" {
  group      = aws_iam_group.hr_14_devs.name
  policy_arn = aws_iam_policy.hr_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_14_devs__base_readonly" {
  group      = aws_iam_group.hr_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_14_devs__self_service" {
  group      = aws_iam_group.hr_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_15_analysts" {
  name = "arior-1njchw-hr-15-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_15_analysts__hr_15_read" {
  group      = aws_iam_group.hr_15_analysts.name
  policy_arn = aws_iam_policy.hr_15_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_15_analysts__base_readonly" {
  group      = aws_iam_group.hr_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_15_devs" {
  name = "arior-1njchw-hr-15-devs"
}

resource "aws_iam_group_policy_attachment" "hr_15_devs__hr_15_data_rw" {
  group      = aws_iam_group.hr_15_devs.name
  policy_arn = aws_iam_policy.hr_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_15_devs__hr_15_ops" {
  group      = aws_iam_group.hr_15_devs.name
  policy_arn = aws_iam_policy.hr_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_15_devs__base_readonly" {
  group      = aws_iam_group.hr_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_15_devs__self_service" {
  group      = aws_iam_group.hr_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_16_analysts" {
  name = "arior-1njchw-hr-16-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_16_analysts__hr_16_read" {
  group      = aws_iam_group.hr_16_analysts.name
  policy_arn = aws_iam_policy.hr_16_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_16_analysts__base_readonly" {
  group      = aws_iam_group.hr_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_16_devs" {
  name = "arior-1njchw-hr-16-devs"
}

resource "aws_iam_group_policy_attachment" "hr_16_devs__hr_16_data_rw" {
  group      = aws_iam_group.hr_16_devs.name
  policy_arn = aws_iam_policy.hr_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_16_devs__hr_16_ops" {
  group      = aws_iam_group.hr_16_devs.name
  policy_arn = aws_iam_policy.hr_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_16_devs__base_readonly" {
  group      = aws_iam_group.hr_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_16_devs__self_service" {
  group      = aws_iam_group.hr_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_17_analysts" {
  name = "arior-1njchw-hr-17-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_17_analysts__hr_17_read" {
  group      = aws_iam_group.hr_17_analysts.name
  policy_arn = aws_iam_policy.hr_17_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_17_analysts__base_readonly" {
  group      = aws_iam_group.hr_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_17_devs" {
  name = "arior-1njchw-hr-17-devs"
}

resource "aws_iam_group_policy_attachment" "hr_17_devs__hr_17_data_rw" {
  group      = aws_iam_group.hr_17_devs.name
  policy_arn = aws_iam_policy.hr_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_17_devs__hr_17_ops" {
  group      = aws_iam_group.hr_17_devs.name
  policy_arn = aws_iam_policy.hr_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_17_devs__base_readonly" {
  group      = aws_iam_group.hr_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_17_devs__self_service" {
  group      = aws_iam_group.hr_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_18_analysts" {
  name = "arior-1njchw-hr-18-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_18_analysts__hr_18_read" {
  group      = aws_iam_group.hr_18_analysts.name
  policy_arn = aws_iam_policy.hr_18_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_18_analysts__base_readonly" {
  group      = aws_iam_group.hr_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_18_devs" {
  name = "arior-1njchw-hr-18-devs"
}

resource "aws_iam_group_policy_attachment" "hr_18_devs__hr_18_data_rw" {
  group      = aws_iam_group.hr_18_devs.name
  policy_arn = aws_iam_policy.hr_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_18_devs__hr_18_ops" {
  group      = aws_iam_group.hr_18_devs.name
  policy_arn = aws_iam_policy.hr_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_18_devs__base_readonly" {
  group      = aws_iam_group.hr_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_18_devs__self_service" {
  group      = aws_iam_group.hr_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_19_analysts" {
  name = "arior-1njchw-hr-19-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_19_analysts__hr_19_read" {
  group      = aws_iam_group.hr_19_analysts.name
  policy_arn = aws_iam_policy.hr_19_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_19_analysts__base_readonly" {
  group      = aws_iam_group.hr_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_19_devs" {
  name = "arior-1njchw-hr-19-devs"
}

resource "aws_iam_group_policy_attachment" "hr_19_devs__hr_19_data_rw" {
  group      = aws_iam_group.hr_19_devs.name
  policy_arn = aws_iam_policy.hr_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_19_devs__hr_19_ops" {
  group      = aws_iam_group.hr_19_devs.name
  policy_arn = aws_iam_policy.hr_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_19_devs__base_readonly" {
  group      = aws_iam_group.hr_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_19_devs__self_service" {
  group      = aws_iam_group.hr_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_2_analysts" {
  name = "arior-1njchw-hr-2-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_2_analysts__hr_2_read" {
  group      = aws_iam_group.hr_2_analysts.name
  policy_arn = aws_iam_policy.hr_2_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_2_analysts__base_readonly" {
  group      = aws_iam_group.hr_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_2_devs" {
  name = "arior-1njchw-hr-2-devs"
}

resource "aws_iam_group_policy_attachment" "hr_2_devs__hr_2_data_rw" {
  group      = aws_iam_group.hr_2_devs.name
  policy_arn = aws_iam_policy.hr_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_2_devs__hr_2_ops" {
  group      = aws_iam_group.hr_2_devs.name
  policy_arn = aws_iam_policy.hr_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_2_devs__base_readonly" {
  group      = aws_iam_group.hr_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_2_devs__self_service" {
  group      = aws_iam_group.hr_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_20_analysts" {
  name = "arior-1njchw-hr-20-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_20_analysts__hr_20_read" {
  group      = aws_iam_group.hr_20_analysts.name
  policy_arn = aws_iam_policy.hr_20_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_20_analysts__base_readonly" {
  group      = aws_iam_group.hr_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_20_devs" {
  name = "arior-1njchw-hr-20-devs"
}

resource "aws_iam_group_policy_attachment" "hr_20_devs__hr_20_data_rw" {
  group      = aws_iam_group.hr_20_devs.name
  policy_arn = aws_iam_policy.hr_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_20_devs__hr_20_ops" {
  group      = aws_iam_group.hr_20_devs.name
  policy_arn = aws_iam_policy.hr_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_20_devs__base_readonly" {
  group      = aws_iam_group.hr_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_20_devs__self_service" {
  group      = aws_iam_group.hr_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_21_analysts" {
  name = "arior-1njchw-hr-21-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_21_analysts__hr_21_read" {
  group      = aws_iam_group.hr_21_analysts.name
  policy_arn = aws_iam_policy.hr_21_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_21_analysts__base_readonly" {
  group      = aws_iam_group.hr_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_21_devs" {
  name = "arior-1njchw-hr-21-devs"
}

resource "aws_iam_group_policy_attachment" "hr_21_devs__hr_21_data_rw" {
  group      = aws_iam_group.hr_21_devs.name
  policy_arn = aws_iam_policy.hr_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_21_devs__hr_21_ops" {
  group      = aws_iam_group.hr_21_devs.name
  policy_arn = aws_iam_policy.hr_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_21_devs__base_readonly" {
  group      = aws_iam_group.hr_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_21_devs__self_service" {
  group      = aws_iam_group.hr_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_22_analysts" {
  name = "arior-1njchw-hr-22-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_22_analysts__hr_22_read" {
  group      = aws_iam_group.hr_22_analysts.name
  policy_arn = aws_iam_policy.hr_22_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_22_analysts__base_readonly" {
  group      = aws_iam_group.hr_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_22_devs" {
  name = "arior-1njchw-hr-22-devs"
}

resource "aws_iam_group_policy_attachment" "hr_22_devs__hr_22_data_rw" {
  group      = aws_iam_group.hr_22_devs.name
  policy_arn = aws_iam_policy.hr_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_22_devs__hr_22_ops" {
  group      = aws_iam_group.hr_22_devs.name
  policy_arn = aws_iam_policy.hr_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_22_devs__base_readonly" {
  group      = aws_iam_group.hr_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_22_devs__self_service" {
  group      = aws_iam_group.hr_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_23_analysts" {
  name = "arior-1njchw-hr-23-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_23_analysts__hr_23_read" {
  group      = aws_iam_group.hr_23_analysts.name
  policy_arn = aws_iam_policy.hr_23_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_23_analysts__base_readonly" {
  group      = aws_iam_group.hr_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_23_devs" {
  name = "arior-1njchw-hr-23-devs"
}

resource "aws_iam_group_policy_attachment" "hr_23_devs__hr_23_data_rw" {
  group      = aws_iam_group.hr_23_devs.name
  policy_arn = aws_iam_policy.hr_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_23_devs__hr_23_ops" {
  group      = aws_iam_group.hr_23_devs.name
  policy_arn = aws_iam_policy.hr_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_23_devs__base_readonly" {
  group      = aws_iam_group.hr_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_23_devs__self_service" {
  group      = aws_iam_group.hr_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_24_analysts" {
  name = "arior-1njchw-hr-24-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_24_analysts__hr_24_read" {
  group      = aws_iam_group.hr_24_analysts.name
  policy_arn = aws_iam_policy.hr_24_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_24_analysts__base_readonly" {
  group      = aws_iam_group.hr_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_24_devs" {
  name = "arior-1njchw-hr-24-devs"
}

resource "aws_iam_group_policy_attachment" "hr_24_devs__hr_24_data_rw" {
  group      = aws_iam_group.hr_24_devs.name
  policy_arn = aws_iam_policy.hr_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_24_devs__hr_24_ops" {
  group      = aws_iam_group.hr_24_devs.name
  policy_arn = aws_iam_policy.hr_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_24_devs__base_readonly" {
  group      = aws_iam_group.hr_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_24_devs__self_service" {
  group      = aws_iam_group.hr_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_25_analysts" {
  name = "arior-1njchw-hr-25-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_25_analysts__hr_25_read" {
  group      = aws_iam_group.hr_25_analysts.name
  policy_arn = aws_iam_policy.hr_25_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_25_analysts__base_readonly" {
  group      = aws_iam_group.hr_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_25_devs" {
  name = "arior-1njchw-hr-25-devs"
}

resource "aws_iam_group_policy_attachment" "hr_25_devs__hr_25_data_rw" {
  group      = aws_iam_group.hr_25_devs.name
  policy_arn = aws_iam_policy.hr_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_25_devs__hr_25_ops" {
  group      = aws_iam_group.hr_25_devs.name
  policy_arn = aws_iam_policy.hr_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_25_devs__base_readonly" {
  group      = aws_iam_group.hr_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_25_devs__self_service" {
  group      = aws_iam_group.hr_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_26_analysts" {
  name = "arior-1njchw-hr-26-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_26_analysts__hr_26_read" {
  group      = aws_iam_group.hr_26_analysts.name
  policy_arn = aws_iam_policy.hr_26_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_26_analysts__base_readonly" {
  group      = aws_iam_group.hr_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_26_devs" {
  name = "arior-1njchw-hr-26-devs"
}

resource "aws_iam_group_policy_attachment" "hr_26_devs__hr_26_data_rw" {
  group      = aws_iam_group.hr_26_devs.name
  policy_arn = aws_iam_policy.hr_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_26_devs__hr_26_ops" {
  group      = aws_iam_group.hr_26_devs.name
  policy_arn = aws_iam_policy.hr_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_26_devs__base_readonly" {
  group      = aws_iam_group.hr_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_26_devs__self_service" {
  group      = aws_iam_group.hr_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_27_analysts" {
  name = "arior-1njchw-hr-27-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_27_analysts__hr_27_read" {
  group      = aws_iam_group.hr_27_analysts.name
  policy_arn = aws_iam_policy.hr_27_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_27_analysts__base_readonly" {
  group      = aws_iam_group.hr_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_27_devs" {
  name = "arior-1njchw-hr-27-devs"
}

resource "aws_iam_group_policy_attachment" "hr_27_devs__hr_27_data_rw" {
  group      = aws_iam_group.hr_27_devs.name
  policy_arn = aws_iam_policy.hr_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_27_devs__hr_27_ops" {
  group      = aws_iam_group.hr_27_devs.name
  policy_arn = aws_iam_policy.hr_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_27_devs__base_readonly" {
  group      = aws_iam_group.hr_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_27_devs__self_service" {
  group      = aws_iam_group.hr_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_28_analysts" {
  name = "arior-1njchw-hr-28-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_28_analysts__hr_28_read" {
  group      = aws_iam_group.hr_28_analysts.name
  policy_arn = aws_iam_policy.hr_28_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_28_analysts__base_readonly" {
  group      = aws_iam_group.hr_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_28_devs" {
  name = "arior-1njchw-hr-28-devs"
}

resource "aws_iam_group_policy_attachment" "hr_28_devs__hr_28_data_rw" {
  group      = aws_iam_group.hr_28_devs.name
  policy_arn = aws_iam_policy.hr_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_28_devs__hr_28_ops" {
  group      = aws_iam_group.hr_28_devs.name
  policy_arn = aws_iam_policy.hr_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_28_devs__base_readonly" {
  group      = aws_iam_group.hr_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_28_devs__self_service" {
  group      = aws_iam_group.hr_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_29_analysts" {
  name = "arior-1njchw-hr-29-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_29_analysts__hr_29_read" {
  group      = aws_iam_group.hr_29_analysts.name
  policy_arn = aws_iam_policy.hr_29_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_29_analysts__base_readonly" {
  group      = aws_iam_group.hr_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_29_devs" {
  name = "arior-1njchw-hr-29-devs"
}

resource "aws_iam_group_policy_attachment" "hr_29_devs__hr_29_data_rw" {
  group      = aws_iam_group.hr_29_devs.name
  policy_arn = aws_iam_policy.hr_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_29_devs__hr_29_ops" {
  group      = aws_iam_group.hr_29_devs.name
  policy_arn = aws_iam_policy.hr_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_29_devs__base_readonly" {
  group      = aws_iam_group.hr_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_29_devs__self_service" {
  group      = aws_iam_group.hr_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_3_analysts" {
  name = "arior-1njchw-hr-3-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_3_analysts__hr_3_read" {
  group      = aws_iam_group.hr_3_analysts.name
  policy_arn = aws_iam_policy.hr_3_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_3_analysts__base_readonly" {
  group      = aws_iam_group.hr_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_3_devs" {
  name = "arior-1njchw-hr-3-devs"
}

resource "aws_iam_group_policy_attachment" "hr_3_devs__hr_3_data_rw" {
  group      = aws_iam_group.hr_3_devs.name
  policy_arn = aws_iam_policy.hr_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_3_devs__hr_3_ops" {
  group      = aws_iam_group.hr_3_devs.name
  policy_arn = aws_iam_policy.hr_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_3_devs__base_readonly" {
  group      = aws_iam_group.hr_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_3_devs__self_service" {
  group      = aws_iam_group.hr_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_30_analysts" {
  name = "arior-1njchw-hr-30-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_30_analysts__hr_30_read" {
  group      = aws_iam_group.hr_30_analysts.name
  policy_arn = aws_iam_policy.hr_30_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_30_analysts__base_readonly" {
  group      = aws_iam_group.hr_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_30_devs" {
  name = "arior-1njchw-hr-30-devs"
}

resource "aws_iam_group_policy_attachment" "hr_30_devs__hr_30_data_rw" {
  group      = aws_iam_group.hr_30_devs.name
  policy_arn = aws_iam_policy.hr_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_30_devs__hr_30_ops" {
  group      = aws_iam_group.hr_30_devs.name
  policy_arn = aws_iam_policy.hr_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_30_devs__base_readonly" {
  group      = aws_iam_group.hr_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_30_devs__self_service" {
  group      = aws_iam_group.hr_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_31_analysts" {
  name = "arior-1njchw-hr-31-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_31_analysts__hr_31_read" {
  group      = aws_iam_group.hr_31_analysts.name
  policy_arn = aws_iam_policy.hr_31_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_31_analysts__base_readonly" {
  group      = aws_iam_group.hr_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_31_devs" {
  name = "arior-1njchw-hr-31-devs"
}

resource "aws_iam_group_policy_attachment" "hr_31_devs__hr_31_data_rw" {
  group      = aws_iam_group.hr_31_devs.name
  policy_arn = aws_iam_policy.hr_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_31_devs__hr_31_ops" {
  group      = aws_iam_group.hr_31_devs.name
  policy_arn = aws_iam_policy.hr_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_31_devs__base_readonly" {
  group      = aws_iam_group.hr_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_31_devs__self_service" {
  group      = aws_iam_group.hr_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_32_analysts" {
  name = "arior-1njchw-hr-32-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_32_analysts__hr_32_read" {
  group      = aws_iam_group.hr_32_analysts.name
  policy_arn = aws_iam_policy.hr_32_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_32_analysts__base_readonly" {
  group      = aws_iam_group.hr_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_32_devs" {
  name = "arior-1njchw-hr-32-devs"
}

resource "aws_iam_group_policy_attachment" "hr_32_devs__hr_32_data_rw" {
  group      = aws_iam_group.hr_32_devs.name
  policy_arn = aws_iam_policy.hr_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_32_devs__hr_32_ops" {
  group      = aws_iam_group.hr_32_devs.name
  policy_arn = aws_iam_policy.hr_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_32_devs__base_readonly" {
  group      = aws_iam_group.hr_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_32_devs__self_service" {
  group      = aws_iam_group.hr_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_33_analysts" {
  name = "arior-1njchw-hr-33-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_33_analysts__hr_33_read" {
  group      = aws_iam_group.hr_33_analysts.name
  policy_arn = aws_iam_policy.hr_33_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_33_analysts__base_readonly" {
  group      = aws_iam_group.hr_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_33_devs" {
  name = "arior-1njchw-hr-33-devs"
}

resource "aws_iam_group_policy_attachment" "hr_33_devs__hr_33_data_rw" {
  group      = aws_iam_group.hr_33_devs.name
  policy_arn = aws_iam_policy.hr_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_33_devs__hr_33_ops" {
  group      = aws_iam_group.hr_33_devs.name
  policy_arn = aws_iam_policy.hr_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_33_devs__base_readonly" {
  group      = aws_iam_group.hr_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_33_devs__self_service" {
  group      = aws_iam_group.hr_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_34_analysts" {
  name = "arior-1njchw-hr-34-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_34_analysts__hr_34_read" {
  group      = aws_iam_group.hr_34_analysts.name
  policy_arn = aws_iam_policy.hr_34_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_34_analysts__base_readonly" {
  group      = aws_iam_group.hr_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_34_devs" {
  name = "arior-1njchw-hr-34-devs"
}

resource "aws_iam_group_policy_attachment" "hr_34_devs__hr_34_data_rw" {
  group      = aws_iam_group.hr_34_devs.name
  policy_arn = aws_iam_policy.hr_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_34_devs__hr_34_ops" {
  group      = aws_iam_group.hr_34_devs.name
  policy_arn = aws_iam_policy.hr_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_34_devs__base_readonly" {
  group      = aws_iam_group.hr_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_34_devs__self_service" {
  group      = aws_iam_group.hr_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_4_analysts" {
  name = "arior-1njchw-hr-4-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_4_analysts__hr_4_read" {
  group      = aws_iam_group.hr_4_analysts.name
  policy_arn = aws_iam_policy.hr_4_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_4_analysts__base_readonly" {
  group      = aws_iam_group.hr_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_4_devs" {
  name = "arior-1njchw-hr-4-devs"
}

resource "aws_iam_group_policy_attachment" "hr_4_devs__hr_4_data_rw" {
  group      = aws_iam_group.hr_4_devs.name
  policy_arn = aws_iam_policy.hr_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_4_devs__hr_4_ops" {
  group      = aws_iam_group.hr_4_devs.name
  policy_arn = aws_iam_policy.hr_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_4_devs__base_readonly" {
  group      = aws_iam_group.hr_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_4_devs__self_service" {
  group      = aws_iam_group.hr_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_5_analysts" {
  name = "arior-1njchw-hr-5-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_5_analysts__hr_5_read" {
  group      = aws_iam_group.hr_5_analysts.name
  policy_arn = aws_iam_policy.hr_5_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_5_analysts__base_readonly" {
  group      = aws_iam_group.hr_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_5_devs" {
  name = "arior-1njchw-hr-5-devs"
}

resource "aws_iam_group_policy_attachment" "hr_5_devs__hr_5_data_rw" {
  group      = aws_iam_group.hr_5_devs.name
  policy_arn = aws_iam_policy.hr_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_5_devs__hr_5_ops" {
  group      = aws_iam_group.hr_5_devs.name
  policy_arn = aws_iam_policy.hr_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_5_devs__base_readonly" {
  group      = aws_iam_group.hr_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_5_devs__self_service" {
  group      = aws_iam_group.hr_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_6_analysts" {
  name = "arior-1njchw-hr-6-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_6_analysts__hr_6_read" {
  group      = aws_iam_group.hr_6_analysts.name
  policy_arn = aws_iam_policy.hr_6_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_6_analysts__base_readonly" {
  group      = aws_iam_group.hr_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_6_devs" {
  name = "arior-1njchw-hr-6-devs"
}

resource "aws_iam_group_policy_attachment" "hr_6_devs__hr_6_data_rw" {
  group      = aws_iam_group.hr_6_devs.name
  policy_arn = aws_iam_policy.hr_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_6_devs__hr_6_ops" {
  group      = aws_iam_group.hr_6_devs.name
  policy_arn = aws_iam_policy.hr_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_6_devs__base_readonly" {
  group      = aws_iam_group.hr_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_6_devs__self_service" {
  group      = aws_iam_group.hr_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_7_analysts" {
  name = "arior-1njchw-hr-7-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_7_analysts__hr_7_read" {
  group      = aws_iam_group.hr_7_analysts.name
  policy_arn = aws_iam_policy.hr_7_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_7_analysts__base_readonly" {
  group      = aws_iam_group.hr_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_7_devs" {
  name = "arior-1njchw-hr-7-devs"
}

resource "aws_iam_group_policy_attachment" "hr_7_devs__hr_7_data_rw" {
  group      = aws_iam_group.hr_7_devs.name
  policy_arn = aws_iam_policy.hr_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_7_devs__hr_7_ops" {
  group      = aws_iam_group.hr_7_devs.name
  policy_arn = aws_iam_policy.hr_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_7_devs__base_readonly" {
  group      = aws_iam_group.hr_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_7_devs__self_service" {
  group      = aws_iam_group.hr_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_8_analysts" {
  name = "arior-1njchw-hr-8-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_8_analysts__hr_8_read" {
  group      = aws_iam_group.hr_8_analysts.name
  policy_arn = aws_iam_policy.hr_8_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_8_analysts__base_readonly" {
  group      = aws_iam_group.hr_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_8_devs" {
  name = "arior-1njchw-hr-8-devs"
}

resource "aws_iam_group_policy_attachment" "hr_8_devs__hr_8_data_rw" {
  group      = aws_iam_group.hr_8_devs.name
  policy_arn = aws_iam_policy.hr_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_8_devs__hr_8_ops" {
  group      = aws_iam_group.hr_8_devs.name
  policy_arn = aws_iam_policy.hr_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_8_devs__base_readonly" {
  group      = aws_iam_group.hr_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_8_devs__self_service" {
  group      = aws_iam_group.hr_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_9_analysts" {
  name = "arior-1njchw-hr-9-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_9_analysts__hr_9_read" {
  group      = aws_iam_group.hr_9_analysts.name
  policy_arn = aws_iam_policy.hr_9_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_9_analysts__base_readonly" {
  group      = aws_iam_group.hr_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_9_devs" {
  name = "arior-1njchw-hr-9-devs"
}

resource "aws_iam_group_policy_attachment" "hr_9_devs__hr_9_data_rw" {
  group      = aws_iam_group.hr_9_devs.name
  policy_arn = aws_iam_policy.hr_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_9_devs__hr_9_ops" {
  group      = aws_iam_group.hr_9_devs.name
  policy_arn = aws_iam_policy.hr_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_9_devs__base_readonly" {
  group      = aws_iam_group.hr_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_9_devs__self_service" {
  group      = aws_iam_group.hr_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "hr_analysts" {
  name = "arior-1njchw-hr-analysts"
}

resource "aws_iam_group_policy_attachment" "hr_analysts__hr_read" {
  group      = aws_iam_group.hr_analysts.name
  policy_arn = aws_iam_policy.hr_read.arn
}

resource "aws_iam_group_policy_attachment" "hr_analysts__base_readonly" {
  group      = aws_iam_group.hr_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "hr_devs" {
  name = "arior-1njchw-hr-devs"
}

resource "aws_iam_group_policy_attachment" "hr_devs__hr_data_rw" {
  group      = aws_iam_group.hr_devs.name
  policy_arn = aws_iam_policy.hr_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "hr_devs__hr_ops" {
  group      = aws_iam_group.hr_devs.name
  policy_arn = aws_iam_policy.hr_ops.arn
}

resource "aws_iam_group_policy_attachment" "hr_devs__base_readonly" {
  group      = aws_iam_group.hr_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "hr_devs__self_service" {
  group      = aws_iam_group.hr_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "inj_grp_g40" {
  name = "arior-1njchw-inj-grp-g40"
}

resource "aws_iam_group_policy_attachment" "inj_grp_g40__inj_pol_p43" {
  group      = aws_iam_group.inj_grp_g40.name
  policy_arn = aws_iam_policy.inj_pol_p43.arn
}

resource "aws_iam_group_policy_attachment" "inj_grp_g40__inj_pol_p44" {
  group      = aws_iam_group.inj_grp_g40.name
  policy_arn = aws_iam_policy.inj_pol_p44.arn
}

resource "aws_iam_group" "it_ops_10_analysts" {
  name = "arior-1njchw-it-ops-10-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_10_analysts__it_ops_10_read" {
  group      = aws_iam_group.it_ops_10_analysts.name
  policy_arn = aws_iam_policy.it_ops_10_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_10_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_10_devs" {
  name = "arior-1njchw-it-ops-10-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_10_devs__it_ops_10_data_rw" {
  group      = aws_iam_group.it_ops_10_devs.name
  policy_arn = aws_iam_policy.it_ops_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_10_devs__it_ops_10_ops" {
  group      = aws_iam_group.it_ops_10_devs.name
  policy_arn = aws_iam_policy.it_ops_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_10_devs__base_readonly" {
  group      = aws_iam_group.it_ops_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_10_devs__self_service" {
  group      = aws_iam_group.it_ops_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_11_analysts" {
  name = "arior-1njchw-it-ops-11-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_11_analysts__it_ops_11_read" {
  group      = aws_iam_group.it_ops_11_analysts.name
  policy_arn = aws_iam_policy.it_ops_11_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_11_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_11_devs" {
  name = "arior-1njchw-it-ops-11-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_11_devs__it_ops_11_data_rw" {
  group      = aws_iam_group.it_ops_11_devs.name
  policy_arn = aws_iam_policy.it_ops_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_11_devs__it_ops_11_ops" {
  group      = aws_iam_group.it_ops_11_devs.name
  policy_arn = aws_iam_policy.it_ops_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_11_devs__base_readonly" {
  group      = aws_iam_group.it_ops_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_11_devs__self_service" {
  group      = aws_iam_group.it_ops_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_12_analysts" {
  name = "arior-1njchw-it-ops-12-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_12_analysts__it_ops_12_read" {
  group      = aws_iam_group.it_ops_12_analysts.name
  policy_arn = aws_iam_policy.it_ops_12_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_12_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_12_devs" {
  name = "arior-1njchw-it-ops-12-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_12_devs__it_ops_12_data_rw" {
  group      = aws_iam_group.it_ops_12_devs.name
  policy_arn = aws_iam_policy.it_ops_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_12_devs__it_ops_12_ops" {
  group      = aws_iam_group.it_ops_12_devs.name
  policy_arn = aws_iam_policy.it_ops_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_12_devs__base_readonly" {
  group      = aws_iam_group.it_ops_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_12_devs__self_service" {
  group      = aws_iam_group.it_ops_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_13_analysts" {
  name = "arior-1njchw-it-ops-13-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_13_analysts__it_ops_13_read" {
  group      = aws_iam_group.it_ops_13_analysts.name
  policy_arn = aws_iam_policy.it_ops_13_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_13_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_13_devs" {
  name = "arior-1njchw-it-ops-13-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_13_devs__it_ops_13_data_rw" {
  group      = aws_iam_group.it_ops_13_devs.name
  policy_arn = aws_iam_policy.it_ops_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_13_devs__it_ops_13_ops" {
  group      = aws_iam_group.it_ops_13_devs.name
  policy_arn = aws_iam_policy.it_ops_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_13_devs__base_readonly" {
  group      = aws_iam_group.it_ops_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_13_devs__self_service" {
  group      = aws_iam_group.it_ops_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_14_analysts" {
  name = "arior-1njchw-it-ops-14-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_14_analysts__it_ops_14_read" {
  group      = aws_iam_group.it_ops_14_analysts.name
  policy_arn = aws_iam_policy.it_ops_14_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_14_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_14_devs" {
  name = "arior-1njchw-it-ops-14-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_14_devs__it_ops_14_data_rw" {
  group      = aws_iam_group.it_ops_14_devs.name
  policy_arn = aws_iam_policy.it_ops_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_14_devs__it_ops_14_ops" {
  group      = aws_iam_group.it_ops_14_devs.name
  policy_arn = aws_iam_policy.it_ops_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_14_devs__base_readonly" {
  group      = aws_iam_group.it_ops_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_14_devs__self_service" {
  group      = aws_iam_group.it_ops_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_15_analysts" {
  name = "arior-1njchw-it-ops-15-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_15_analysts__it_ops_15_read" {
  group      = aws_iam_group.it_ops_15_analysts.name
  policy_arn = aws_iam_policy.it_ops_15_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_15_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_15_devs" {
  name = "arior-1njchw-it-ops-15-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_15_devs__it_ops_15_data_rw" {
  group      = aws_iam_group.it_ops_15_devs.name
  policy_arn = aws_iam_policy.it_ops_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_15_devs__it_ops_15_ops" {
  group      = aws_iam_group.it_ops_15_devs.name
  policy_arn = aws_iam_policy.it_ops_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_15_devs__base_readonly" {
  group      = aws_iam_group.it_ops_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_15_devs__self_service" {
  group      = aws_iam_group.it_ops_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_16_analysts" {
  name = "arior-1njchw-it-ops-16-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_16_analysts__it_ops_16_read" {
  group      = aws_iam_group.it_ops_16_analysts.name
  policy_arn = aws_iam_policy.it_ops_16_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_16_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_16_devs" {
  name = "arior-1njchw-it-ops-16-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_16_devs__it_ops_16_data_rw" {
  group      = aws_iam_group.it_ops_16_devs.name
  policy_arn = aws_iam_policy.it_ops_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_16_devs__it_ops_16_ops" {
  group      = aws_iam_group.it_ops_16_devs.name
  policy_arn = aws_iam_policy.it_ops_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_16_devs__base_readonly" {
  group      = aws_iam_group.it_ops_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_16_devs__self_service" {
  group      = aws_iam_group.it_ops_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_17_analysts" {
  name = "arior-1njchw-it-ops-17-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_17_analysts__it_ops_17_read" {
  group      = aws_iam_group.it_ops_17_analysts.name
  policy_arn = aws_iam_policy.it_ops_17_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_17_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_17_devs" {
  name = "arior-1njchw-it-ops-17-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_17_devs__it_ops_17_data_rw" {
  group      = aws_iam_group.it_ops_17_devs.name
  policy_arn = aws_iam_policy.it_ops_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_17_devs__it_ops_17_ops" {
  group      = aws_iam_group.it_ops_17_devs.name
  policy_arn = aws_iam_policy.it_ops_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_17_devs__base_readonly" {
  group      = aws_iam_group.it_ops_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_17_devs__self_service" {
  group      = aws_iam_group.it_ops_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_18_analysts" {
  name = "arior-1njchw-it-ops-18-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_18_analysts__it_ops_18_read" {
  group      = aws_iam_group.it_ops_18_analysts.name
  policy_arn = aws_iam_policy.it_ops_18_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_18_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_18_devs" {
  name = "arior-1njchw-it-ops-18-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_18_devs__it_ops_18_data_rw" {
  group      = aws_iam_group.it_ops_18_devs.name
  policy_arn = aws_iam_policy.it_ops_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_18_devs__it_ops_18_ops" {
  group      = aws_iam_group.it_ops_18_devs.name
  policy_arn = aws_iam_policy.it_ops_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_18_devs__base_readonly" {
  group      = aws_iam_group.it_ops_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_18_devs__self_service" {
  group      = aws_iam_group.it_ops_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_19_analysts" {
  name = "arior-1njchw-it-ops-19-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_19_analysts__it_ops_19_read" {
  group      = aws_iam_group.it_ops_19_analysts.name
  policy_arn = aws_iam_policy.it_ops_19_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_19_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_19_devs" {
  name = "arior-1njchw-it-ops-19-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_19_devs__it_ops_19_data_rw" {
  group      = aws_iam_group.it_ops_19_devs.name
  policy_arn = aws_iam_policy.it_ops_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_19_devs__it_ops_19_ops" {
  group      = aws_iam_group.it_ops_19_devs.name
  policy_arn = aws_iam_policy.it_ops_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_19_devs__base_readonly" {
  group      = aws_iam_group.it_ops_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_19_devs__self_service" {
  group      = aws_iam_group.it_ops_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_2_analysts" {
  name = "arior-1njchw-it-ops-2-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_2_analysts__it_ops_2_read" {
  group      = aws_iam_group.it_ops_2_analysts.name
  policy_arn = aws_iam_policy.it_ops_2_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_2_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_2_devs" {
  name = "arior-1njchw-it-ops-2-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_2_devs__it_ops_2_data_rw" {
  group      = aws_iam_group.it_ops_2_devs.name
  policy_arn = aws_iam_policy.it_ops_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_2_devs__it_ops_2_ops" {
  group      = aws_iam_group.it_ops_2_devs.name
  policy_arn = aws_iam_policy.it_ops_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_2_devs__base_readonly" {
  group      = aws_iam_group.it_ops_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_2_devs__self_service" {
  group      = aws_iam_group.it_ops_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_20_analysts" {
  name = "arior-1njchw-it-ops-20-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_20_analysts__it_ops_20_read" {
  group      = aws_iam_group.it_ops_20_analysts.name
  policy_arn = aws_iam_policy.it_ops_20_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_20_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_20_devs" {
  name = "arior-1njchw-it-ops-20-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_20_devs__it_ops_20_data_rw" {
  group      = aws_iam_group.it_ops_20_devs.name
  policy_arn = aws_iam_policy.it_ops_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_20_devs__it_ops_20_ops" {
  group      = aws_iam_group.it_ops_20_devs.name
  policy_arn = aws_iam_policy.it_ops_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_20_devs__base_readonly" {
  group      = aws_iam_group.it_ops_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_20_devs__self_service" {
  group      = aws_iam_group.it_ops_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_21_analysts" {
  name = "arior-1njchw-it-ops-21-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_21_analysts__it_ops_21_read" {
  group      = aws_iam_group.it_ops_21_analysts.name
  policy_arn = aws_iam_policy.it_ops_21_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_21_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_21_devs" {
  name = "arior-1njchw-it-ops-21-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_21_devs__it_ops_21_data_rw" {
  group      = aws_iam_group.it_ops_21_devs.name
  policy_arn = aws_iam_policy.it_ops_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_21_devs__it_ops_21_ops" {
  group      = aws_iam_group.it_ops_21_devs.name
  policy_arn = aws_iam_policy.it_ops_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_21_devs__base_readonly" {
  group      = aws_iam_group.it_ops_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_21_devs__self_service" {
  group      = aws_iam_group.it_ops_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_22_analysts" {
  name = "arior-1njchw-it-ops-22-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_22_analysts__it_ops_22_read" {
  group      = aws_iam_group.it_ops_22_analysts.name
  policy_arn = aws_iam_policy.it_ops_22_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_22_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_22_devs" {
  name = "arior-1njchw-it-ops-22-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_22_devs__it_ops_22_data_rw" {
  group      = aws_iam_group.it_ops_22_devs.name
  policy_arn = aws_iam_policy.it_ops_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_22_devs__it_ops_22_ops" {
  group      = aws_iam_group.it_ops_22_devs.name
  policy_arn = aws_iam_policy.it_ops_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_22_devs__base_readonly" {
  group      = aws_iam_group.it_ops_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_22_devs__self_service" {
  group      = aws_iam_group.it_ops_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_23_analysts" {
  name = "arior-1njchw-it-ops-23-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_23_analysts__it_ops_23_read" {
  group      = aws_iam_group.it_ops_23_analysts.name
  policy_arn = aws_iam_policy.it_ops_23_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_23_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_23_devs" {
  name = "arior-1njchw-it-ops-23-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_23_devs__it_ops_23_data_rw" {
  group      = aws_iam_group.it_ops_23_devs.name
  policy_arn = aws_iam_policy.it_ops_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_23_devs__it_ops_23_ops" {
  group      = aws_iam_group.it_ops_23_devs.name
  policy_arn = aws_iam_policy.it_ops_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_23_devs__base_readonly" {
  group      = aws_iam_group.it_ops_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_23_devs__self_service" {
  group      = aws_iam_group.it_ops_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_24_analysts" {
  name = "arior-1njchw-it-ops-24-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_24_analysts__it_ops_24_read" {
  group      = aws_iam_group.it_ops_24_analysts.name
  policy_arn = aws_iam_policy.it_ops_24_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_24_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_24_devs" {
  name = "arior-1njchw-it-ops-24-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_24_devs__it_ops_24_data_rw" {
  group      = aws_iam_group.it_ops_24_devs.name
  policy_arn = aws_iam_policy.it_ops_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_24_devs__it_ops_24_ops" {
  group      = aws_iam_group.it_ops_24_devs.name
  policy_arn = aws_iam_policy.it_ops_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_24_devs__base_readonly" {
  group      = aws_iam_group.it_ops_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_24_devs__self_service" {
  group      = aws_iam_group.it_ops_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_25_analysts" {
  name = "arior-1njchw-it-ops-25-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_25_analysts__it_ops_25_read" {
  group      = aws_iam_group.it_ops_25_analysts.name
  policy_arn = aws_iam_policy.it_ops_25_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_25_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_25_devs" {
  name = "arior-1njchw-it-ops-25-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_25_devs__it_ops_25_data_rw" {
  group      = aws_iam_group.it_ops_25_devs.name
  policy_arn = aws_iam_policy.it_ops_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_25_devs__it_ops_25_ops" {
  group      = aws_iam_group.it_ops_25_devs.name
  policy_arn = aws_iam_policy.it_ops_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_25_devs__base_readonly" {
  group      = aws_iam_group.it_ops_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_25_devs__self_service" {
  group      = aws_iam_group.it_ops_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_26_analysts" {
  name = "arior-1njchw-it-ops-26-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_26_analysts__it_ops_26_read" {
  group      = aws_iam_group.it_ops_26_analysts.name
  policy_arn = aws_iam_policy.it_ops_26_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_26_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_26_devs" {
  name = "arior-1njchw-it-ops-26-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_26_devs__it_ops_26_data_rw" {
  group      = aws_iam_group.it_ops_26_devs.name
  policy_arn = aws_iam_policy.it_ops_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_26_devs__it_ops_26_ops" {
  group      = aws_iam_group.it_ops_26_devs.name
  policy_arn = aws_iam_policy.it_ops_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_26_devs__base_readonly" {
  group      = aws_iam_group.it_ops_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_26_devs__self_service" {
  group      = aws_iam_group.it_ops_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_27_analysts" {
  name = "arior-1njchw-it-ops-27-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_27_analysts__it_ops_27_read" {
  group      = aws_iam_group.it_ops_27_analysts.name
  policy_arn = aws_iam_policy.it_ops_27_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_27_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_27_devs" {
  name = "arior-1njchw-it-ops-27-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_27_devs__it_ops_27_data_rw" {
  group      = aws_iam_group.it_ops_27_devs.name
  policy_arn = aws_iam_policy.it_ops_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_27_devs__it_ops_27_ops" {
  group      = aws_iam_group.it_ops_27_devs.name
  policy_arn = aws_iam_policy.it_ops_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_27_devs__base_readonly" {
  group      = aws_iam_group.it_ops_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_27_devs__self_service" {
  group      = aws_iam_group.it_ops_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_28_analysts" {
  name = "arior-1njchw-it-ops-28-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_28_analysts__it_ops_28_read" {
  group      = aws_iam_group.it_ops_28_analysts.name
  policy_arn = aws_iam_policy.it_ops_28_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_28_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_28_devs" {
  name = "arior-1njchw-it-ops-28-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_28_devs__it_ops_28_data_rw" {
  group      = aws_iam_group.it_ops_28_devs.name
  policy_arn = aws_iam_policy.it_ops_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_28_devs__it_ops_28_ops" {
  group      = aws_iam_group.it_ops_28_devs.name
  policy_arn = aws_iam_policy.it_ops_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_28_devs__base_readonly" {
  group      = aws_iam_group.it_ops_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_28_devs__self_service" {
  group      = aws_iam_group.it_ops_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_29_analysts" {
  name = "arior-1njchw-it-ops-29-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_29_analysts__it_ops_29_read" {
  group      = aws_iam_group.it_ops_29_analysts.name
  policy_arn = aws_iam_policy.it_ops_29_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_29_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_29_devs" {
  name = "arior-1njchw-it-ops-29-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_29_devs__it_ops_29_data_rw" {
  group      = aws_iam_group.it_ops_29_devs.name
  policy_arn = aws_iam_policy.it_ops_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_29_devs__it_ops_29_ops" {
  group      = aws_iam_group.it_ops_29_devs.name
  policy_arn = aws_iam_policy.it_ops_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_29_devs__base_readonly" {
  group      = aws_iam_group.it_ops_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_29_devs__self_service" {
  group      = aws_iam_group.it_ops_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_3_analysts" {
  name = "arior-1njchw-it-ops-3-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_3_analysts__it_ops_3_read" {
  group      = aws_iam_group.it_ops_3_analysts.name
  policy_arn = aws_iam_policy.it_ops_3_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_3_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_3_devs" {
  name = "arior-1njchw-it-ops-3-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_3_devs__it_ops_3_data_rw" {
  group      = aws_iam_group.it_ops_3_devs.name
  policy_arn = aws_iam_policy.it_ops_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_3_devs__it_ops_3_ops" {
  group      = aws_iam_group.it_ops_3_devs.name
  policy_arn = aws_iam_policy.it_ops_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_3_devs__base_readonly" {
  group      = aws_iam_group.it_ops_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_3_devs__self_service" {
  group      = aws_iam_group.it_ops_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_30_analysts" {
  name = "arior-1njchw-it-ops-30-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_30_analysts__it_ops_30_read" {
  group      = aws_iam_group.it_ops_30_analysts.name
  policy_arn = aws_iam_policy.it_ops_30_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_30_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_30_devs" {
  name = "arior-1njchw-it-ops-30-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_30_devs__it_ops_30_data_rw" {
  group      = aws_iam_group.it_ops_30_devs.name
  policy_arn = aws_iam_policy.it_ops_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_30_devs__it_ops_30_ops" {
  group      = aws_iam_group.it_ops_30_devs.name
  policy_arn = aws_iam_policy.it_ops_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_30_devs__base_readonly" {
  group      = aws_iam_group.it_ops_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_30_devs__self_service" {
  group      = aws_iam_group.it_ops_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_31_analysts" {
  name = "arior-1njchw-it-ops-31-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_31_analysts__it_ops_31_read" {
  group      = aws_iam_group.it_ops_31_analysts.name
  policy_arn = aws_iam_policy.it_ops_31_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_31_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_31_devs" {
  name = "arior-1njchw-it-ops-31-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_31_devs__it_ops_31_data_rw" {
  group      = aws_iam_group.it_ops_31_devs.name
  policy_arn = aws_iam_policy.it_ops_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_31_devs__it_ops_31_ops" {
  group      = aws_iam_group.it_ops_31_devs.name
  policy_arn = aws_iam_policy.it_ops_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_31_devs__base_readonly" {
  group      = aws_iam_group.it_ops_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_31_devs__self_service" {
  group      = aws_iam_group.it_ops_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_32_analysts" {
  name = "arior-1njchw-it-ops-32-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_32_analysts__it_ops_32_read" {
  group      = aws_iam_group.it_ops_32_analysts.name
  policy_arn = aws_iam_policy.it_ops_32_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_32_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_32_devs" {
  name = "arior-1njchw-it-ops-32-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_32_devs__it_ops_32_data_rw" {
  group      = aws_iam_group.it_ops_32_devs.name
  policy_arn = aws_iam_policy.it_ops_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_32_devs__it_ops_32_ops" {
  group      = aws_iam_group.it_ops_32_devs.name
  policy_arn = aws_iam_policy.it_ops_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_32_devs__base_readonly" {
  group      = aws_iam_group.it_ops_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_32_devs__self_service" {
  group      = aws_iam_group.it_ops_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_33_analysts" {
  name = "arior-1njchw-it-ops-33-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_33_analysts__it_ops_33_read" {
  group      = aws_iam_group.it_ops_33_analysts.name
  policy_arn = aws_iam_policy.it_ops_33_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_33_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_33_devs" {
  name = "arior-1njchw-it-ops-33-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_33_devs__it_ops_33_data_rw" {
  group      = aws_iam_group.it_ops_33_devs.name
  policy_arn = aws_iam_policy.it_ops_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_33_devs__it_ops_33_ops" {
  group      = aws_iam_group.it_ops_33_devs.name
  policy_arn = aws_iam_policy.it_ops_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_33_devs__base_readonly" {
  group      = aws_iam_group.it_ops_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_33_devs__self_service" {
  group      = aws_iam_group.it_ops_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_34_analysts" {
  name = "arior-1njchw-it-ops-34-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_34_analysts__it_ops_34_read" {
  group      = aws_iam_group.it_ops_34_analysts.name
  policy_arn = aws_iam_policy.it_ops_34_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_34_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_34_devs" {
  name = "arior-1njchw-it-ops-34-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_34_devs__it_ops_34_data_rw" {
  group      = aws_iam_group.it_ops_34_devs.name
  policy_arn = aws_iam_policy.it_ops_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_34_devs__it_ops_34_ops" {
  group      = aws_iam_group.it_ops_34_devs.name
  policy_arn = aws_iam_policy.it_ops_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_34_devs__base_readonly" {
  group      = aws_iam_group.it_ops_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_34_devs__self_service" {
  group      = aws_iam_group.it_ops_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_4_analysts" {
  name = "arior-1njchw-it-ops-4-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_4_analysts__it_ops_4_read" {
  group      = aws_iam_group.it_ops_4_analysts.name
  policy_arn = aws_iam_policy.it_ops_4_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_4_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_4_devs" {
  name = "arior-1njchw-it-ops-4-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_4_devs__it_ops_4_data_rw" {
  group      = aws_iam_group.it_ops_4_devs.name
  policy_arn = aws_iam_policy.it_ops_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_4_devs__it_ops_4_ops" {
  group      = aws_iam_group.it_ops_4_devs.name
  policy_arn = aws_iam_policy.it_ops_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_4_devs__base_readonly" {
  group      = aws_iam_group.it_ops_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_4_devs__self_service" {
  group      = aws_iam_group.it_ops_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_5_analysts" {
  name = "arior-1njchw-it-ops-5-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_5_analysts__it_ops_5_read" {
  group      = aws_iam_group.it_ops_5_analysts.name
  policy_arn = aws_iam_policy.it_ops_5_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_5_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_5_devs" {
  name = "arior-1njchw-it-ops-5-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_5_devs__it_ops_5_data_rw" {
  group      = aws_iam_group.it_ops_5_devs.name
  policy_arn = aws_iam_policy.it_ops_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_5_devs__it_ops_5_ops" {
  group      = aws_iam_group.it_ops_5_devs.name
  policy_arn = aws_iam_policy.it_ops_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_5_devs__base_readonly" {
  group      = aws_iam_group.it_ops_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_5_devs__self_service" {
  group      = aws_iam_group.it_ops_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_6_analysts" {
  name = "arior-1njchw-it-ops-6-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_6_analysts__it_ops_6_read" {
  group      = aws_iam_group.it_ops_6_analysts.name
  policy_arn = aws_iam_policy.it_ops_6_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_6_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_6_devs" {
  name = "arior-1njchw-it-ops-6-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_6_devs__it_ops_6_data_rw" {
  group      = aws_iam_group.it_ops_6_devs.name
  policy_arn = aws_iam_policy.it_ops_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_6_devs__it_ops_6_ops" {
  group      = aws_iam_group.it_ops_6_devs.name
  policy_arn = aws_iam_policy.it_ops_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_6_devs__base_readonly" {
  group      = aws_iam_group.it_ops_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_6_devs__self_service" {
  group      = aws_iam_group.it_ops_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_7_analysts" {
  name = "arior-1njchw-it-ops-7-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_7_analysts__it_ops_7_read" {
  group      = aws_iam_group.it_ops_7_analysts.name
  policy_arn = aws_iam_policy.it_ops_7_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_7_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_7_devs" {
  name = "arior-1njchw-it-ops-7-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_7_devs__it_ops_7_data_rw" {
  group      = aws_iam_group.it_ops_7_devs.name
  policy_arn = aws_iam_policy.it_ops_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_7_devs__it_ops_7_ops" {
  group      = aws_iam_group.it_ops_7_devs.name
  policy_arn = aws_iam_policy.it_ops_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_7_devs__base_readonly" {
  group      = aws_iam_group.it_ops_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_7_devs__self_service" {
  group      = aws_iam_group.it_ops_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_8_analysts" {
  name = "arior-1njchw-it-ops-8-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_8_analysts__it_ops_8_read" {
  group      = aws_iam_group.it_ops_8_analysts.name
  policy_arn = aws_iam_policy.it_ops_8_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_8_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_8_devs" {
  name = "arior-1njchw-it-ops-8-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_8_devs__it_ops_8_data_rw" {
  group      = aws_iam_group.it_ops_8_devs.name
  policy_arn = aws_iam_policy.it_ops_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_8_devs__it_ops_8_ops" {
  group      = aws_iam_group.it_ops_8_devs.name
  policy_arn = aws_iam_policy.it_ops_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_8_devs__base_readonly" {
  group      = aws_iam_group.it_ops_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_8_devs__self_service" {
  group      = aws_iam_group.it_ops_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_9_analysts" {
  name = "arior-1njchw-it-ops-9-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_9_analysts__it_ops_9_read" {
  group      = aws_iam_group.it_ops_9_analysts.name
  policy_arn = aws_iam_policy.it_ops_9_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_9_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_9_devs" {
  name = "arior-1njchw-it-ops-9-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_9_devs__it_ops_9_data_rw" {
  group      = aws_iam_group.it_ops_9_devs.name
  policy_arn = aws_iam_policy.it_ops_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_9_devs__it_ops_9_ops" {
  group      = aws_iam_group.it_ops_9_devs.name
  policy_arn = aws_iam_policy.it_ops_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_9_devs__base_readonly" {
  group      = aws_iam_group.it_ops_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_9_devs__self_service" {
  group      = aws_iam_group.it_ops_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "it_ops_analysts" {
  name = "arior-1njchw-it-ops-analysts"
}

resource "aws_iam_group_policy_attachment" "it_ops_analysts__it_ops_read" {
  group      = aws_iam_group.it_ops_analysts.name
  policy_arn = aws_iam_policy.it_ops_read.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_analysts__base_readonly" {
  group      = aws_iam_group.it_ops_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "it_ops_devs" {
  name = "arior-1njchw-it-ops-devs"
}

resource "aws_iam_group_policy_attachment" "it_ops_devs__it_ops_data_rw" {
  group      = aws_iam_group.it_ops_devs.name
  policy_arn = aws_iam_policy.it_ops_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_devs__it_ops_ops" {
  group      = aws_iam_group.it_ops_devs.name
  policy_arn = aws_iam_policy.it_ops_ops.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_devs__base_readonly" {
  group      = aws_iam_group.it_ops_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "it_ops_devs__self_service" {
  group      = aws_iam_group.it_ops_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_10_analysts" {
  name = "arior-1njchw-licensing-10-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_10_analysts__licensing_10_read" {
  group      = aws_iam_group.licensing_10_analysts.name
  policy_arn = aws_iam_policy.licensing_10_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_10_analysts__base_readonly" {
  group      = aws_iam_group.licensing_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_10_devs" {
  name = "arior-1njchw-licensing-10-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_10_devs__licensing_10_data_rw" {
  group      = aws_iam_group.licensing_10_devs.name
  policy_arn = aws_iam_policy.licensing_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_10_devs__licensing_10_ops" {
  group      = aws_iam_group.licensing_10_devs.name
  policy_arn = aws_iam_policy.licensing_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_10_devs__base_readonly" {
  group      = aws_iam_group.licensing_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_10_devs__self_service" {
  group      = aws_iam_group.licensing_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_11_analysts" {
  name = "arior-1njchw-licensing-11-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_11_analysts__licensing_11_read" {
  group      = aws_iam_group.licensing_11_analysts.name
  policy_arn = aws_iam_policy.licensing_11_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_11_analysts__base_readonly" {
  group      = aws_iam_group.licensing_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_11_devs" {
  name = "arior-1njchw-licensing-11-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_11_devs__licensing_11_data_rw" {
  group      = aws_iam_group.licensing_11_devs.name
  policy_arn = aws_iam_policy.licensing_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_11_devs__licensing_11_ops" {
  group      = aws_iam_group.licensing_11_devs.name
  policy_arn = aws_iam_policy.licensing_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_11_devs__base_readonly" {
  group      = aws_iam_group.licensing_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_11_devs__self_service" {
  group      = aws_iam_group.licensing_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_12_analysts" {
  name = "arior-1njchw-licensing-12-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_12_analysts__licensing_12_read" {
  group      = aws_iam_group.licensing_12_analysts.name
  policy_arn = aws_iam_policy.licensing_12_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_12_analysts__base_readonly" {
  group      = aws_iam_group.licensing_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_12_devs" {
  name = "arior-1njchw-licensing-12-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_12_devs__licensing_12_data_rw" {
  group      = aws_iam_group.licensing_12_devs.name
  policy_arn = aws_iam_policy.licensing_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_12_devs__licensing_12_ops" {
  group      = aws_iam_group.licensing_12_devs.name
  policy_arn = aws_iam_policy.licensing_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_12_devs__base_readonly" {
  group      = aws_iam_group.licensing_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_12_devs__self_service" {
  group      = aws_iam_group.licensing_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_13_analysts" {
  name = "arior-1njchw-licensing-13-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_13_analysts__licensing_13_read" {
  group      = aws_iam_group.licensing_13_analysts.name
  policy_arn = aws_iam_policy.licensing_13_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_13_analysts__base_readonly" {
  group      = aws_iam_group.licensing_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_13_devs" {
  name = "arior-1njchw-licensing-13-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_13_devs__licensing_13_data_rw" {
  group      = aws_iam_group.licensing_13_devs.name
  policy_arn = aws_iam_policy.licensing_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_13_devs__licensing_13_ops" {
  group      = aws_iam_group.licensing_13_devs.name
  policy_arn = aws_iam_policy.licensing_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_13_devs__base_readonly" {
  group      = aws_iam_group.licensing_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_13_devs__self_service" {
  group      = aws_iam_group.licensing_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_14_analysts" {
  name = "arior-1njchw-licensing-14-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_14_analysts__licensing_14_read" {
  group      = aws_iam_group.licensing_14_analysts.name
  policy_arn = aws_iam_policy.licensing_14_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_14_analysts__base_readonly" {
  group      = aws_iam_group.licensing_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_14_devs" {
  name = "arior-1njchw-licensing-14-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_14_devs__licensing_14_data_rw" {
  group      = aws_iam_group.licensing_14_devs.name
  policy_arn = aws_iam_policy.licensing_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_14_devs__licensing_14_ops" {
  group      = aws_iam_group.licensing_14_devs.name
  policy_arn = aws_iam_policy.licensing_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_14_devs__base_readonly" {
  group      = aws_iam_group.licensing_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_14_devs__self_service" {
  group      = aws_iam_group.licensing_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_15_analysts" {
  name = "arior-1njchw-licensing-15-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_15_analysts__licensing_15_read" {
  group      = aws_iam_group.licensing_15_analysts.name
  policy_arn = aws_iam_policy.licensing_15_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_15_analysts__base_readonly" {
  group      = aws_iam_group.licensing_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_15_devs" {
  name = "arior-1njchw-licensing-15-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_15_devs__licensing_15_data_rw" {
  group      = aws_iam_group.licensing_15_devs.name
  policy_arn = aws_iam_policy.licensing_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_15_devs__licensing_15_ops" {
  group      = aws_iam_group.licensing_15_devs.name
  policy_arn = aws_iam_policy.licensing_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_15_devs__base_readonly" {
  group      = aws_iam_group.licensing_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_15_devs__self_service" {
  group      = aws_iam_group.licensing_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_16_analysts" {
  name = "arior-1njchw-licensing-16-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_16_analysts__licensing_16_read" {
  group      = aws_iam_group.licensing_16_analysts.name
  policy_arn = aws_iam_policy.licensing_16_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_16_analysts__base_readonly" {
  group      = aws_iam_group.licensing_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_16_devs" {
  name = "arior-1njchw-licensing-16-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_16_devs__licensing_16_data_rw" {
  group      = aws_iam_group.licensing_16_devs.name
  policy_arn = aws_iam_policy.licensing_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_16_devs__licensing_16_ops" {
  group      = aws_iam_group.licensing_16_devs.name
  policy_arn = aws_iam_policy.licensing_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_16_devs__base_readonly" {
  group      = aws_iam_group.licensing_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_16_devs__self_service" {
  group      = aws_iam_group.licensing_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_17_analysts" {
  name = "arior-1njchw-licensing-17-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_17_analysts__licensing_17_read" {
  group      = aws_iam_group.licensing_17_analysts.name
  policy_arn = aws_iam_policy.licensing_17_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_17_analysts__base_readonly" {
  group      = aws_iam_group.licensing_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_17_devs" {
  name = "arior-1njchw-licensing-17-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_17_devs__licensing_17_data_rw" {
  group      = aws_iam_group.licensing_17_devs.name
  policy_arn = aws_iam_policy.licensing_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_17_devs__licensing_17_ops" {
  group      = aws_iam_group.licensing_17_devs.name
  policy_arn = aws_iam_policy.licensing_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_17_devs__base_readonly" {
  group      = aws_iam_group.licensing_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_17_devs__self_service" {
  group      = aws_iam_group.licensing_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_18_analysts" {
  name = "arior-1njchw-licensing-18-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_18_analysts__licensing_18_read" {
  group      = aws_iam_group.licensing_18_analysts.name
  policy_arn = aws_iam_policy.licensing_18_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_18_analysts__base_readonly" {
  group      = aws_iam_group.licensing_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_18_devs" {
  name = "arior-1njchw-licensing-18-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_18_devs__licensing_18_data_rw" {
  group      = aws_iam_group.licensing_18_devs.name
  policy_arn = aws_iam_policy.licensing_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_18_devs__licensing_18_ops" {
  group      = aws_iam_group.licensing_18_devs.name
  policy_arn = aws_iam_policy.licensing_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_18_devs__base_readonly" {
  group      = aws_iam_group.licensing_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_18_devs__self_service" {
  group      = aws_iam_group.licensing_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_19_analysts" {
  name = "arior-1njchw-licensing-19-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_19_analysts__licensing_19_read" {
  group      = aws_iam_group.licensing_19_analysts.name
  policy_arn = aws_iam_policy.licensing_19_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_19_analysts__base_readonly" {
  group      = aws_iam_group.licensing_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_19_devs" {
  name = "arior-1njchw-licensing-19-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_19_devs__licensing_19_data_rw" {
  group      = aws_iam_group.licensing_19_devs.name
  policy_arn = aws_iam_policy.licensing_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_19_devs__licensing_19_ops" {
  group      = aws_iam_group.licensing_19_devs.name
  policy_arn = aws_iam_policy.licensing_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_19_devs__base_readonly" {
  group      = aws_iam_group.licensing_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_19_devs__self_service" {
  group      = aws_iam_group.licensing_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_2_analysts" {
  name = "arior-1njchw-licensing-2-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_2_analysts__licensing_2_read" {
  group      = aws_iam_group.licensing_2_analysts.name
  policy_arn = aws_iam_policy.licensing_2_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_2_analysts__base_readonly" {
  group      = aws_iam_group.licensing_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_2_devs" {
  name = "arior-1njchw-licensing-2-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_2_devs__licensing_2_data_rw" {
  group      = aws_iam_group.licensing_2_devs.name
  policy_arn = aws_iam_policy.licensing_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_2_devs__licensing_2_ops" {
  group      = aws_iam_group.licensing_2_devs.name
  policy_arn = aws_iam_policy.licensing_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_2_devs__base_readonly" {
  group      = aws_iam_group.licensing_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_2_devs__self_service" {
  group      = aws_iam_group.licensing_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_20_analysts" {
  name = "arior-1njchw-licensing-20-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_20_analysts__licensing_20_read" {
  group      = aws_iam_group.licensing_20_analysts.name
  policy_arn = aws_iam_policy.licensing_20_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_20_analysts__base_readonly" {
  group      = aws_iam_group.licensing_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_20_devs" {
  name = "arior-1njchw-licensing-20-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_20_devs__licensing_20_data_rw" {
  group      = aws_iam_group.licensing_20_devs.name
  policy_arn = aws_iam_policy.licensing_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_20_devs__licensing_20_ops" {
  group      = aws_iam_group.licensing_20_devs.name
  policy_arn = aws_iam_policy.licensing_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_20_devs__base_readonly" {
  group      = aws_iam_group.licensing_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_20_devs__self_service" {
  group      = aws_iam_group.licensing_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_21_analysts" {
  name = "arior-1njchw-licensing-21-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_21_analysts__licensing_21_read" {
  group      = aws_iam_group.licensing_21_analysts.name
  policy_arn = aws_iam_policy.licensing_21_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_21_analysts__base_readonly" {
  group      = aws_iam_group.licensing_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_21_devs" {
  name = "arior-1njchw-licensing-21-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_21_devs__licensing_21_data_rw" {
  group      = aws_iam_group.licensing_21_devs.name
  policy_arn = aws_iam_policy.licensing_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_21_devs__licensing_21_ops" {
  group      = aws_iam_group.licensing_21_devs.name
  policy_arn = aws_iam_policy.licensing_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_21_devs__base_readonly" {
  group      = aws_iam_group.licensing_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_21_devs__self_service" {
  group      = aws_iam_group.licensing_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_22_analysts" {
  name = "arior-1njchw-licensing-22-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_22_analysts__licensing_22_read" {
  group      = aws_iam_group.licensing_22_analysts.name
  policy_arn = aws_iam_policy.licensing_22_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_22_analysts__base_readonly" {
  group      = aws_iam_group.licensing_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_22_devs" {
  name = "arior-1njchw-licensing-22-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_22_devs__licensing_22_data_rw" {
  group      = aws_iam_group.licensing_22_devs.name
  policy_arn = aws_iam_policy.licensing_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_22_devs__licensing_22_ops" {
  group      = aws_iam_group.licensing_22_devs.name
  policy_arn = aws_iam_policy.licensing_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_22_devs__base_readonly" {
  group      = aws_iam_group.licensing_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_22_devs__self_service" {
  group      = aws_iam_group.licensing_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_23_analysts" {
  name = "arior-1njchw-licensing-23-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_23_analysts__licensing_23_read" {
  group      = aws_iam_group.licensing_23_analysts.name
  policy_arn = aws_iam_policy.licensing_23_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_23_analysts__base_readonly" {
  group      = aws_iam_group.licensing_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_23_devs" {
  name = "arior-1njchw-licensing-23-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_23_devs__licensing_23_data_rw" {
  group      = aws_iam_group.licensing_23_devs.name
  policy_arn = aws_iam_policy.licensing_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_23_devs__licensing_23_ops" {
  group      = aws_iam_group.licensing_23_devs.name
  policy_arn = aws_iam_policy.licensing_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_23_devs__base_readonly" {
  group      = aws_iam_group.licensing_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_23_devs__self_service" {
  group      = aws_iam_group.licensing_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_24_analysts" {
  name = "arior-1njchw-licensing-24-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_24_analysts__licensing_24_read" {
  group      = aws_iam_group.licensing_24_analysts.name
  policy_arn = aws_iam_policy.licensing_24_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_24_analysts__base_readonly" {
  group      = aws_iam_group.licensing_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_24_devs" {
  name = "arior-1njchw-licensing-24-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_24_devs__licensing_24_data_rw" {
  group      = aws_iam_group.licensing_24_devs.name
  policy_arn = aws_iam_policy.licensing_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_24_devs__licensing_24_ops" {
  group      = aws_iam_group.licensing_24_devs.name
  policy_arn = aws_iam_policy.licensing_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_24_devs__base_readonly" {
  group      = aws_iam_group.licensing_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_24_devs__self_service" {
  group      = aws_iam_group.licensing_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_25_analysts" {
  name = "arior-1njchw-licensing-25-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_25_analysts__licensing_25_read" {
  group      = aws_iam_group.licensing_25_analysts.name
  policy_arn = aws_iam_policy.licensing_25_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_25_analysts__base_readonly" {
  group      = aws_iam_group.licensing_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_25_devs" {
  name = "arior-1njchw-licensing-25-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_25_devs__licensing_25_data_rw" {
  group      = aws_iam_group.licensing_25_devs.name
  policy_arn = aws_iam_policy.licensing_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_25_devs__licensing_25_ops" {
  group      = aws_iam_group.licensing_25_devs.name
  policy_arn = aws_iam_policy.licensing_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_25_devs__base_readonly" {
  group      = aws_iam_group.licensing_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_25_devs__self_service" {
  group      = aws_iam_group.licensing_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_26_analysts" {
  name = "arior-1njchw-licensing-26-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_26_analysts__licensing_26_read" {
  group      = aws_iam_group.licensing_26_analysts.name
  policy_arn = aws_iam_policy.licensing_26_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_26_analysts__base_readonly" {
  group      = aws_iam_group.licensing_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_26_devs" {
  name = "arior-1njchw-licensing-26-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_26_devs__licensing_26_data_rw" {
  group      = aws_iam_group.licensing_26_devs.name
  policy_arn = aws_iam_policy.licensing_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_26_devs__licensing_26_ops" {
  group      = aws_iam_group.licensing_26_devs.name
  policy_arn = aws_iam_policy.licensing_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_26_devs__base_readonly" {
  group      = aws_iam_group.licensing_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_26_devs__self_service" {
  group      = aws_iam_group.licensing_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_27_analysts" {
  name = "arior-1njchw-licensing-27-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_27_analysts__licensing_27_read" {
  group      = aws_iam_group.licensing_27_analysts.name
  policy_arn = aws_iam_policy.licensing_27_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_27_analysts__base_readonly" {
  group      = aws_iam_group.licensing_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_27_devs" {
  name = "arior-1njchw-licensing-27-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_27_devs__licensing_27_data_rw" {
  group      = aws_iam_group.licensing_27_devs.name
  policy_arn = aws_iam_policy.licensing_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_27_devs__licensing_27_ops" {
  group      = aws_iam_group.licensing_27_devs.name
  policy_arn = aws_iam_policy.licensing_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_27_devs__base_readonly" {
  group      = aws_iam_group.licensing_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_27_devs__self_service" {
  group      = aws_iam_group.licensing_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_28_analysts" {
  name = "arior-1njchw-licensing-28-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_28_analysts__licensing_28_read" {
  group      = aws_iam_group.licensing_28_analysts.name
  policy_arn = aws_iam_policy.licensing_28_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_28_analysts__base_readonly" {
  group      = aws_iam_group.licensing_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_28_devs" {
  name = "arior-1njchw-licensing-28-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_28_devs__licensing_28_data_rw" {
  group      = aws_iam_group.licensing_28_devs.name
  policy_arn = aws_iam_policy.licensing_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_28_devs__licensing_28_ops" {
  group      = aws_iam_group.licensing_28_devs.name
  policy_arn = aws_iam_policy.licensing_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_28_devs__base_readonly" {
  group      = aws_iam_group.licensing_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_28_devs__self_service" {
  group      = aws_iam_group.licensing_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_29_analysts" {
  name = "arior-1njchw-licensing-29-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_29_analysts__licensing_29_read" {
  group      = aws_iam_group.licensing_29_analysts.name
  policy_arn = aws_iam_policy.licensing_29_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_29_analysts__base_readonly" {
  group      = aws_iam_group.licensing_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_29_devs" {
  name = "arior-1njchw-licensing-29-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_29_devs__licensing_29_data_rw" {
  group      = aws_iam_group.licensing_29_devs.name
  policy_arn = aws_iam_policy.licensing_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_29_devs__licensing_29_ops" {
  group      = aws_iam_group.licensing_29_devs.name
  policy_arn = aws_iam_policy.licensing_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_29_devs__base_readonly" {
  group      = aws_iam_group.licensing_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_29_devs__self_service" {
  group      = aws_iam_group.licensing_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_3_analysts" {
  name = "arior-1njchw-licensing-3-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_3_analysts__licensing_3_read" {
  group      = aws_iam_group.licensing_3_analysts.name
  policy_arn = aws_iam_policy.licensing_3_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_3_analysts__base_readonly" {
  group      = aws_iam_group.licensing_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_3_devs" {
  name = "arior-1njchw-licensing-3-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_3_devs__licensing_3_data_rw" {
  group      = aws_iam_group.licensing_3_devs.name
  policy_arn = aws_iam_policy.licensing_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_3_devs__licensing_3_ops" {
  group      = aws_iam_group.licensing_3_devs.name
  policy_arn = aws_iam_policy.licensing_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_3_devs__base_readonly" {
  group      = aws_iam_group.licensing_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_3_devs__self_service" {
  group      = aws_iam_group.licensing_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_30_analysts" {
  name = "arior-1njchw-licensing-30-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_30_analysts__licensing_30_read" {
  group      = aws_iam_group.licensing_30_analysts.name
  policy_arn = aws_iam_policy.licensing_30_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_30_analysts__base_readonly" {
  group      = aws_iam_group.licensing_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_30_devs" {
  name = "arior-1njchw-licensing-30-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_30_devs__licensing_30_data_rw" {
  group      = aws_iam_group.licensing_30_devs.name
  policy_arn = aws_iam_policy.licensing_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_30_devs__licensing_30_ops" {
  group      = aws_iam_group.licensing_30_devs.name
  policy_arn = aws_iam_policy.licensing_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_30_devs__base_readonly" {
  group      = aws_iam_group.licensing_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_30_devs__self_service" {
  group      = aws_iam_group.licensing_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_31_analysts" {
  name = "arior-1njchw-licensing-31-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_31_analysts__licensing_31_read" {
  group      = aws_iam_group.licensing_31_analysts.name
  policy_arn = aws_iam_policy.licensing_31_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_31_analysts__base_readonly" {
  group      = aws_iam_group.licensing_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_31_devs" {
  name = "arior-1njchw-licensing-31-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_31_devs__licensing_31_data_rw" {
  group      = aws_iam_group.licensing_31_devs.name
  policy_arn = aws_iam_policy.licensing_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_31_devs__licensing_31_ops" {
  group      = aws_iam_group.licensing_31_devs.name
  policy_arn = aws_iam_policy.licensing_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_31_devs__base_readonly" {
  group      = aws_iam_group.licensing_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_31_devs__self_service" {
  group      = aws_iam_group.licensing_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_32_analysts" {
  name = "arior-1njchw-licensing-32-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_32_analysts__licensing_32_read" {
  group      = aws_iam_group.licensing_32_analysts.name
  policy_arn = aws_iam_policy.licensing_32_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_32_analysts__base_readonly" {
  group      = aws_iam_group.licensing_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_32_devs" {
  name = "arior-1njchw-licensing-32-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_32_devs__licensing_32_data_rw" {
  group      = aws_iam_group.licensing_32_devs.name
  policy_arn = aws_iam_policy.licensing_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_32_devs__licensing_32_ops" {
  group      = aws_iam_group.licensing_32_devs.name
  policy_arn = aws_iam_policy.licensing_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_32_devs__base_readonly" {
  group      = aws_iam_group.licensing_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_32_devs__self_service" {
  group      = aws_iam_group.licensing_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_33_analysts" {
  name = "arior-1njchw-licensing-33-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_33_analysts__licensing_33_read" {
  group      = aws_iam_group.licensing_33_analysts.name
  policy_arn = aws_iam_policy.licensing_33_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_33_analysts__base_readonly" {
  group      = aws_iam_group.licensing_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_33_devs" {
  name = "arior-1njchw-licensing-33-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_33_devs__licensing_33_data_rw" {
  group      = aws_iam_group.licensing_33_devs.name
  policy_arn = aws_iam_policy.licensing_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_33_devs__licensing_33_ops" {
  group      = aws_iam_group.licensing_33_devs.name
  policy_arn = aws_iam_policy.licensing_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_33_devs__base_readonly" {
  group      = aws_iam_group.licensing_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_33_devs__self_service" {
  group      = aws_iam_group.licensing_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_34_analysts" {
  name = "arior-1njchw-licensing-34-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_34_analysts__licensing_34_read" {
  group      = aws_iam_group.licensing_34_analysts.name
  policy_arn = aws_iam_policy.licensing_34_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_34_analysts__base_readonly" {
  group      = aws_iam_group.licensing_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_34_devs" {
  name = "arior-1njchw-licensing-34-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_34_devs__licensing_34_data_rw" {
  group      = aws_iam_group.licensing_34_devs.name
  policy_arn = aws_iam_policy.licensing_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_34_devs__licensing_34_ops" {
  group      = aws_iam_group.licensing_34_devs.name
  policy_arn = aws_iam_policy.licensing_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_34_devs__base_readonly" {
  group      = aws_iam_group.licensing_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_34_devs__self_service" {
  group      = aws_iam_group.licensing_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_35_analysts" {
  name = "arior-1njchw-licensing-35-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_35_analysts__licensing_35_read" {
  group      = aws_iam_group.licensing_35_analysts.name
  policy_arn = aws_iam_policy.licensing_35_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_35_analysts__base_readonly" {
  group      = aws_iam_group.licensing_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_35_devs" {
  name = "arior-1njchw-licensing-35-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_35_devs__licensing_35_data_rw" {
  group      = aws_iam_group.licensing_35_devs.name
  policy_arn = aws_iam_policy.licensing_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_35_devs__licensing_35_ops" {
  group      = aws_iam_group.licensing_35_devs.name
  policy_arn = aws_iam_policy.licensing_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_35_devs__base_readonly" {
  group      = aws_iam_group.licensing_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_35_devs__self_service" {
  group      = aws_iam_group.licensing_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_4_analysts" {
  name = "arior-1njchw-licensing-4-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_4_analysts__licensing_4_read" {
  group      = aws_iam_group.licensing_4_analysts.name
  policy_arn = aws_iam_policy.licensing_4_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_4_analysts__base_readonly" {
  group      = aws_iam_group.licensing_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_4_devs" {
  name = "arior-1njchw-licensing-4-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_4_devs__licensing_4_data_rw" {
  group      = aws_iam_group.licensing_4_devs.name
  policy_arn = aws_iam_policy.licensing_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_4_devs__licensing_4_ops" {
  group      = aws_iam_group.licensing_4_devs.name
  policy_arn = aws_iam_policy.licensing_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_4_devs__base_readonly" {
  group      = aws_iam_group.licensing_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_4_devs__self_service" {
  group      = aws_iam_group.licensing_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_5_analysts" {
  name = "arior-1njchw-licensing-5-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_5_analysts__licensing_5_read" {
  group      = aws_iam_group.licensing_5_analysts.name
  policy_arn = aws_iam_policy.licensing_5_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_5_analysts__base_readonly" {
  group      = aws_iam_group.licensing_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_5_devs" {
  name = "arior-1njchw-licensing-5-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_5_devs__licensing_5_data_rw" {
  group      = aws_iam_group.licensing_5_devs.name
  policy_arn = aws_iam_policy.licensing_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_5_devs__licensing_5_ops" {
  group      = aws_iam_group.licensing_5_devs.name
  policy_arn = aws_iam_policy.licensing_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_5_devs__base_readonly" {
  group      = aws_iam_group.licensing_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_5_devs__self_service" {
  group      = aws_iam_group.licensing_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_6_analysts" {
  name = "arior-1njchw-licensing-6-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_6_analysts__licensing_6_read" {
  group      = aws_iam_group.licensing_6_analysts.name
  policy_arn = aws_iam_policy.licensing_6_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_6_analysts__base_readonly" {
  group      = aws_iam_group.licensing_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_6_devs" {
  name = "arior-1njchw-licensing-6-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_6_devs__licensing_6_data_rw" {
  group      = aws_iam_group.licensing_6_devs.name
  policy_arn = aws_iam_policy.licensing_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_6_devs__licensing_6_ops" {
  group      = aws_iam_group.licensing_6_devs.name
  policy_arn = aws_iam_policy.licensing_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_6_devs__base_readonly" {
  group      = aws_iam_group.licensing_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_6_devs__self_service" {
  group      = aws_iam_group.licensing_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_7_analysts" {
  name = "arior-1njchw-licensing-7-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_7_analysts__licensing_7_read" {
  group      = aws_iam_group.licensing_7_analysts.name
  policy_arn = aws_iam_policy.licensing_7_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_7_analysts__base_readonly" {
  group      = aws_iam_group.licensing_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_7_devs" {
  name = "arior-1njchw-licensing-7-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_7_devs__licensing_7_data_rw" {
  group      = aws_iam_group.licensing_7_devs.name
  policy_arn = aws_iam_policy.licensing_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_7_devs__licensing_7_ops" {
  group      = aws_iam_group.licensing_7_devs.name
  policy_arn = aws_iam_policy.licensing_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_7_devs__base_readonly" {
  group      = aws_iam_group.licensing_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_7_devs__self_service" {
  group      = aws_iam_group.licensing_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_8_analysts" {
  name = "arior-1njchw-licensing-8-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_8_analysts__licensing_8_read" {
  group      = aws_iam_group.licensing_8_analysts.name
  policy_arn = aws_iam_policy.licensing_8_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_8_analysts__base_readonly" {
  group      = aws_iam_group.licensing_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_8_devs" {
  name = "arior-1njchw-licensing-8-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_8_devs__licensing_8_data_rw" {
  group      = aws_iam_group.licensing_8_devs.name
  policy_arn = aws_iam_policy.licensing_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_8_devs__licensing_8_ops" {
  group      = aws_iam_group.licensing_8_devs.name
  policy_arn = aws_iam_policy.licensing_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_8_devs__base_readonly" {
  group      = aws_iam_group.licensing_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_8_devs__self_service" {
  group      = aws_iam_group.licensing_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_9_analysts" {
  name = "arior-1njchw-licensing-9-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_9_analysts__licensing_9_read" {
  group      = aws_iam_group.licensing_9_analysts.name
  policy_arn = aws_iam_policy.licensing_9_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_9_analysts__base_readonly" {
  group      = aws_iam_group.licensing_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_9_devs" {
  name = "arior-1njchw-licensing-9-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_9_devs__licensing_9_data_rw" {
  group      = aws_iam_group.licensing_9_devs.name
  policy_arn = aws_iam_policy.licensing_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_9_devs__licensing_9_ops" {
  group      = aws_iam_group.licensing_9_devs.name
  policy_arn = aws_iam_policy.licensing_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_9_devs__base_readonly" {
  group      = aws_iam_group.licensing_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_9_devs__self_service" {
  group      = aws_iam_group.licensing_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "licensing_analysts" {
  name = "arior-1njchw-licensing-analysts"
}

resource "aws_iam_group_policy_attachment" "licensing_analysts__licensing_read" {
  group      = aws_iam_group.licensing_analysts.name
  policy_arn = aws_iam_policy.licensing_read.arn
}

resource "aws_iam_group_policy_attachment" "licensing_analysts__base_readonly" {
  group      = aws_iam_group.licensing_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "licensing_devs" {
  name = "arior-1njchw-licensing-devs"
}

resource "aws_iam_group_policy_attachment" "licensing_devs__licensing_data_rw" {
  group      = aws_iam_group.licensing_devs.name
  policy_arn = aws_iam_policy.licensing_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "licensing_devs__licensing_ops" {
  group      = aws_iam_group.licensing_devs.name
  policy_arn = aws_iam_policy.licensing_ops.arn
}

resource "aws_iam_group_policy_attachment" "licensing_devs__base_readonly" {
  group      = aws_iam_group.licensing_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "licensing_devs__self_service" {
  group      = aws_iam_group.licensing_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_10_analysts" {
  name = "arior-1njchw-open-data-10-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_10_analysts__open_data_10_read" {
  group      = aws_iam_group.open_data_10_analysts.name
  policy_arn = aws_iam_policy.open_data_10_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_10_analysts__base_readonly" {
  group      = aws_iam_group.open_data_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_10_devs" {
  name = "arior-1njchw-open-data-10-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_10_devs__open_data_10_data_rw" {
  group      = aws_iam_group.open_data_10_devs.name
  policy_arn = aws_iam_policy.open_data_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_10_devs__open_data_10_ops" {
  group      = aws_iam_group.open_data_10_devs.name
  policy_arn = aws_iam_policy.open_data_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_10_devs__base_readonly" {
  group      = aws_iam_group.open_data_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_10_devs__self_service" {
  group      = aws_iam_group.open_data_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_11_analysts" {
  name = "arior-1njchw-open-data-11-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_11_analysts__open_data_11_read" {
  group      = aws_iam_group.open_data_11_analysts.name
  policy_arn = aws_iam_policy.open_data_11_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_11_analysts__base_readonly" {
  group      = aws_iam_group.open_data_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_11_devs" {
  name = "arior-1njchw-open-data-11-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_11_devs__open_data_11_data_rw" {
  group      = aws_iam_group.open_data_11_devs.name
  policy_arn = aws_iam_policy.open_data_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_11_devs__open_data_11_ops" {
  group      = aws_iam_group.open_data_11_devs.name
  policy_arn = aws_iam_policy.open_data_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_11_devs__base_readonly" {
  group      = aws_iam_group.open_data_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_11_devs__self_service" {
  group      = aws_iam_group.open_data_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_12_analysts" {
  name = "arior-1njchw-open-data-12-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_12_analysts__open_data_12_read" {
  group      = aws_iam_group.open_data_12_analysts.name
  policy_arn = aws_iam_policy.open_data_12_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_12_analysts__base_readonly" {
  group      = aws_iam_group.open_data_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_12_devs" {
  name = "arior-1njchw-open-data-12-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_12_devs__open_data_12_data_rw" {
  group      = aws_iam_group.open_data_12_devs.name
  policy_arn = aws_iam_policy.open_data_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_12_devs__open_data_12_ops" {
  group      = aws_iam_group.open_data_12_devs.name
  policy_arn = aws_iam_policy.open_data_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_12_devs__base_readonly" {
  group      = aws_iam_group.open_data_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_12_devs__self_service" {
  group      = aws_iam_group.open_data_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_13_analysts" {
  name = "arior-1njchw-open-data-13-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_13_analysts__open_data_13_read" {
  group      = aws_iam_group.open_data_13_analysts.name
  policy_arn = aws_iam_policy.open_data_13_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_13_analysts__base_readonly" {
  group      = aws_iam_group.open_data_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_13_devs" {
  name = "arior-1njchw-open-data-13-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_13_devs__open_data_13_data_rw" {
  group      = aws_iam_group.open_data_13_devs.name
  policy_arn = aws_iam_policy.open_data_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_13_devs__open_data_13_ops" {
  group      = aws_iam_group.open_data_13_devs.name
  policy_arn = aws_iam_policy.open_data_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_13_devs__base_readonly" {
  group      = aws_iam_group.open_data_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_13_devs__self_service" {
  group      = aws_iam_group.open_data_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_14_analysts" {
  name = "arior-1njchw-open-data-14-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_14_analysts__open_data_14_read" {
  group      = aws_iam_group.open_data_14_analysts.name
  policy_arn = aws_iam_policy.open_data_14_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_14_analysts__base_readonly" {
  group      = aws_iam_group.open_data_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_14_devs" {
  name = "arior-1njchw-open-data-14-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_14_devs__open_data_14_data_rw" {
  group      = aws_iam_group.open_data_14_devs.name
  policy_arn = aws_iam_policy.open_data_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_14_devs__open_data_14_ops" {
  group      = aws_iam_group.open_data_14_devs.name
  policy_arn = aws_iam_policy.open_data_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_14_devs__base_readonly" {
  group      = aws_iam_group.open_data_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_14_devs__self_service" {
  group      = aws_iam_group.open_data_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_15_analysts" {
  name = "arior-1njchw-open-data-15-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_15_analysts__open_data_15_read" {
  group      = aws_iam_group.open_data_15_analysts.name
  policy_arn = aws_iam_policy.open_data_15_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_15_analysts__base_readonly" {
  group      = aws_iam_group.open_data_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_15_devs" {
  name = "arior-1njchw-open-data-15-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_15_devs__open_data_15_data_rw" {
  group      = aws_iam_group.open_data_15_devs.name
  policy_arn = aws_iam_policy.open_data_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_15_devs__open_data_15_ops" {
  group      = aws_iam_group.open_data_15_devs.name
  policy_arn = aws_iam_policy.open_data_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_15_devs__base_readonly" {
  group      = aws_iam_group.open_data_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_15_devs__self_service" {
  group      = aws_iam_group.open_data_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_16_analysts" {
  name = "arior-1njchw-open-data-16-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_16_analysts__open_data_16_read" {
  group      = aws_iam_group.open_data_16_analysts.name
  policy_arn = aws_iam_policy.open_data_16_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_16_analysts__base_readonly" {
  group      = aws_iam_group.open_data_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_16_devs" {
  name = "arior-1njchw-open-data-16-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_16_devs__open_data_16_data_rw" {
  group      = aws_iam_group.open_data_16_devs.name
  policy_arn = aws_iam_policy.open_data_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_16_devs__open_data_16_ops" {
  group      = aws_iam_group.open_data_16_devs.name
  policy_arn = aws_iam_policy.open_data_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_16_devs__base_readonly" {
  group      = aws_iam_group.open_data_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_16_devs__self_service" {
  group      = aws_iam_group.open_data_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_17_analysts" {
  name = "arior-1njchw-open-data-17-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_17_analysts__open_data_17_read" {
  group      = aws_iam_group.open_data_17_analysts.name
  policy_arn = aws_iam_policy.open_data_17_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_17_analysts__base_readonly" {
  group      = aws_iam_group.open_data_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_17_devs" {
  name = "arior-1njchw-open-data-17-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_17_devs__open_data_17_data_rw" {
  group      = aws_iam_group.open_data_17_devs.name
  policy_arn = aws_iam_policy.open_data_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_17_devs__open_data_17_ops" {
  group      = aws_iam_group.open_data_17_devs.name
  policy_arn = aws_iam_policy.open_data_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_17_devs__base_readonly" {
  group      = aws_iam_group.open_data_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_17_devs__self_service" {
  group      = aws_iam_group.open_data_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_18_analysts" {
  name = "arior-1njchw-open-data-18-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_18_analysts__open_data_18_read" {
  group      = aws_iam_group.open_data_18_analysts.name
  policy_arn = aws_iam_policy.open_data_18_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_18_analysts__base_readonly" {
  group      = aws_iam_group.open_data_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_18_devs" {
  name = "arior-1njchw-open-data-18-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_18_devs__open_data_18_data_rw" {
  group      = aws_iam_group.open_data_18_devs.name
  policy_arn = aws_iam_policy.open_data_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_18_devs__open_data_18_ops" {
  group      = aws_iam_group.open_data_18_devs.name
  policy_arn = aws_iam_policy.open_data_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_18_devs__base_readonly" {
  group      = aws_iam_group.open_data_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_18_devs__self_service" {
  group      = aws_iam_group.open_data_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_19_analysts" {
  name = "arior-1njchw-open-data-19-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_19_analysts__open_data_19_read" {
  group      = aws_iam_group.open_data_19_analysts.name
  policy_arn = aws_iam_policy.open_data_19_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_19_analysts__base_readonly" {
  group      = aws_iam_group.open_data_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_19_devs" {
  name = "arior-1njchw-open-data-19-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_19_devs__open_data_19_data_rw" {
  group      = aws_iam_group.open_data_19_devs.name
  policy_arn = aws_iam_policy.open_data_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_19_devs__open_data_19_ops" {
  group      = aws_iam_group.open_data_19_devs.name
  policy_arn = aws_iam_policy.open_data_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_19_devs__base_readonly" {
  group      = aws_iam_group.open_data_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_19_devs__self_service" {
  group      = aws_iam_group.open_data_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_2_analysts" {
  name = "arior-1njchw-open-data-2-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_2_analysts__open_data_2_read" {
  group      = aws_iam_group.open_data_2_analysts.name
  policy_arn = aws_iam_policy.open_data_2_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_2_analysts__base_readonly" {
  group      = aws_iam_group.open_data_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_2_devs" {
  name = "arior-1njchw-open-data-2-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_2_devs__open_data_2_data_rw" {
  group      = aws_iam_group.open_data_2_devs.name
  policy_arn = aws_iam_policy.open_data_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_2_devs__open_data_2_ops" {
  group      = aws_iam_group.open_data_2_devs.name
  policy_arn = aws_iam_policy.open_data_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_2_devs__base_readonly" {
  group      = aws_iam_group.open_data_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_2_devs__self_service" {
  group      = aws_iam_group.open_data_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_20_analysts" {
  name = "arior-1njchw-open-data-20-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_20_analysts__open_data_20_read" {
  group      = aws_iam_group.open_data_20_analysts.name
  policy_arn = aws_iam_policy.open_data_20_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_20_analysts__base_readonly" {
  group      = aws_iam_group.open_data_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_20_devs" {
  name = "arior-1njchw-open-data-20-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_20_devs__open_data_20_data_rw" {
  group      = aws_iam_group.open_data_20_devs.name
  policy_arn = aws_iam_policy.open_data_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_20_devs__open_data_20_ops" {
  group      = aws_iam_group.open_data_20_devs.name
  policy_arn = aws_iam_policy.open_data_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_20_devs__base_readonly" {
  group      = aws_iam_group.open_data_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_20_devs__self_service" {
  group      = aws_iam_group.open_data_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_21_analysts" {
  name = "arior-1njchw-open-data-21-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_21_analysts__open_data_21_read" {
  group      = aws_iam_group.open_data_21_analysts.name
  policy_arn = aws_iam_policy.open_data_21_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_21_analysts__base_readonly" {
  group      = aws_iam_group.open_data_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_21_devs" {
  name = "arior-1njchw-open-data-21-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_21_devs__open_data_21_data_rw" {
  group      = aws_iam_group.open_data_21_devs.name
  policy_arn = aws_iam_policy.open_data_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_21_devs__open_data_21_ops" {
  group      = aws_iam_group.open_data_21_devs.name
  policy_arn = aws_iam_policy.open_data_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_21_devs__base_readonly" {
  group      = aws_iam_group.open_data_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_21_devs__self_service" {
  group      = aws_iam_group.open_data_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_22_analysts" {
  name = "arior-1njchw-open-data-22-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_22_analysts__open_data_22_read" {
  group      = aws_iam_group.open_data_22_analysts.name
  policy_arn = aws_iam_policy.open_data_22_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_22_analysts__base_readonly" {
  group      = aws_iam_group.open_data_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_22_devs" {
  name = "arior-1njchw-open-data-22-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_22_devs__open_data_22_data_rw" {
  group      = aws_iam_group.open_data_22_devs.name
  policy_arn = aws_iam_policy.open_data_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_22_devs__open_data_22_ops" {
  group      = aws_iam_group.open_data_22_devs.name
  policy_arn = aws_iam_policy.open_data_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_22_devs__base_readonly" {
  group      = aws_iam_group.open_data_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_22_devs__self_service" {
  group      = aws_iam_group.open_data_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_23_analysts" {
  name = "arior-1njchw-open-data-23-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_23_analysts__open_data_23_read" {
  group      = aws_iam_group.open_data_23_analysts.name
  policy_arn = aws_iam_policy.open_data_23_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_23_analysts__base_readonly" {
  group      = aws_iam_group.open_data_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_23_devs" {
  name = "arior-1njchw-open-data-23-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_23_devs__open_data_23_data_rw" {
  group      = aws_iam_group.open_data_23_devs.name
  policy_arn = aws_iam_policy.open_data_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_23_devs__open_data_23_ops" {
  group      = aws_iam_group.open_data_23_devs.name
  policy_arn = aws_iam_policy.open_data_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_23_devs__base_readonly" {
  group      = aws_iam_group.open_data_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_23_devs__self_service" {
  group      = aws_iam_group.open_data_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_24_analysts" {
  name = "arior-1njchw-open-data-24-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_24_analysts__open_data_24_read" {
  group      = aws_iam_group.open_data_24_analysts.name
  policy_arn = aws_iam_policy.open_data_24_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_24_analysts__base_readonly" {
  group      = aws_iam_group.open_data_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_24_devs" {
  name = "arior-1njchw-open-data-24-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_24_devs__open_data_24_data_rw" {
  group      = aws_iam_group.open_data_24_devs.name
  policy_arn = aws_iam_policy.open_data_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_24_devs__open_data_24_ops" {
  group      = aws_iam_group.open_data_24_devs.name
  policy_arn = aws_iam_policy.open_data_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_24_devs__base_readonly" {
  group      = aws_iam_group.open_data_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_24_devs__self_service" {
  group      = aws_iam_group.open_data_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_25_analysts" {
  name = "arior-1njchw-open-data-25-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_25_analysts__open_data_25_read" {
  group      = aws_iam_group.open_data_25_analysts.name
  policy_arn = aws_iam_policy.open_data_25_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_25_analysts__base_readonly" {
  group      = aws_iam_group.open_data_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_25_devs" {
  name = "arior-1njchw-open-data-25-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_25_devs__open_data_25_data_rw" {
  group      = aws_iam_group.open_data_25_devs.name
  policy_arn = aws_iam_policy.open_data_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_25_devs__open_data_25_ops" {
  group      = aws_iam_group.open_data_25_devs.name
  policy_arn = aws_iam_policy.open_data_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_25_devs__base_readonly" {
  group      = aws_iam_group.open_data_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_25_devs__self_service" {
  group      = aws_iam_group.open_data_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_26_analysts" {
  name = "arior-1njchw-open-data-26-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_26_analysts__open_data_26_read" {
  group      = aws_iam_group.open_data_26_analysts.name
  policy_arn = aws_iam_policy.open_data_26_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_26_analysts__base_readonly" {
  group      = aws_iam_group.open_data_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_26_devs" {
  name = "arior-1njchw-open-data-26-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_26_devs__open_data_26_data_rw" {
  group      = aws_iam_group.open_data_26_devs.name
  policy_arn = aws_iam_policy.open_data_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_26_devs__open_data_26_ops" {
  group      = aws_iam_group.open_data_26_devs.name
  policy_arn = aws_iam_policy.open_data_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_26_devs__base_readonly" {
  group      = aws_iam_group.open_data_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_26_devs__self_service" {
  group      = aws_iam_group.open_data_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_27_analysts" {
  name = "arior-1njchw-open-data-27-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_27_analysts__open_data_27_read" {
  group      = aws_iam_group.open_data_27_analysts.name
  policy_arn = aws_iam_policy.open_data_27_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_27_analysts__base_readonly" {
  group      = aws_iam_group.open_data_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_27_devs" {
  name = "arior-1njchw-open-data-27-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_27_devs__open_data_27_data_rw" {
  group      = aws_iam_group.open_data_27_devs.name
  policy_arn = aws_iam_policy.open_data_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_27_devs__open_data_27_ops" {
  group      = aws_iam_group.open_data_27_devs.name
  policy_arn = aws_iam_policy.open_data_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_27_devs__base_readonly" {
  group      = aws_iam_group.open_data_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_27_devs__self_service" {
  group      = aws_iam_group.open_data_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_28_analysts" {
  name = "arior-1njchw-open-data-28-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_28_analysts__open_data_28_read" {
  group      = aws_iam_group.open_data_28_analysts.name
  policy_arn = aws_iam_policy.open_data_28_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_28_analysts__base_readonly" {
  group      = aws_iam_group.open_data_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_28_devs" {
  name = "arior-1njchw-open-data-28-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_28_devs__open_data_28_data_rw" {
  group      = aws_iam_group.open_data_28_devs.name
  policy_arn = aws_iam_policy.open_data_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_28_devs__open_data_28_ops" {
  group      = aws_iam_group.open_data_28_devs.name
  policy_arn = aws_iam_policy.open_data_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_28_devs__base_readonly" {
  group      = aws_iam_group.open_data_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_28_devs__self_service" {
  group      = aws_iam_group.open_data_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_29_analysts" {
  name = "arior-1njchw-open-data-29-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_29_analysts__open_data_29_read" {
  group      = aws_iam_group.open_data_29_analysts.name
  policy_arn = aws_iam_policy.open_data_29_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_29_analysts__base_readonly" {
  group      = aws_iam_group.open_data_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_29_devs" {
  name = "arior-1njchw-open-data-29-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_29_devs__open_data_29_data_rw" {
  group      = aws_iam_group.open_data_29_devs.name
  policy_arn = aws_iam_policy.open_data_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_29_devs__open_data_29_ops" {
  group      = aws_iam_group.open_data_29_devs.name
  policy_arn = aws_iam_policy.open_data_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_29_devs__base_readonly" {
  group      = aws_iam_group.open_data_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_29_devs__self_service" {
  group      = aws_iam_group.open_data_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_3_analysts" {
  name = "arior-1njchw-open-data-3-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_3_analysts__open_data_3_read" {
  group      = aws_iam_group.open_data_3_analysts.name
  policy_arn = aws_iam_policy.open_data_3_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_3_analysts__base_readonly" {
  group      = aws_iam_group.open_data_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_3_devs" {
  name = "arior-1njchw-open-data-3-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_3_devs__open_data_3_data_rw" {
  group      = aws_iam_group.open_data_3_devs.name
  policy_arn = aws_iam_policy.open_data_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_3_devs__open_data_3_ops" {
  group      = aws_iam_group.open_data_3_devs.name
  policy_arn = aws_iam_policy.open_data_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_3_devs__base_readonly" {
  group      = aws_iam_group.open_data_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_3_devs__self_service" {
  group      = aws_iam_group.open_data_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_30_analysts" {
  name = "arior-1njchw-open-data-30-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_30_analysts__open_data_30_read" {
  group      = aws_iam_group.open_data_30_analysts.name
  policy_arn = aws_iam_policy.open_data_30_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_30_analysts__base_readonly" {
  group      = aws_iam_group.open_data_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_30_devs" {
  name = "arior-1njchw-open-data-30-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_30_devs__open_data_30_data_rw" {
  group      = aws_iam_group.open_data_30_devs.name
  policy_arn = aws_iam_policy.open_data_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_30_devs__open_data_30_ops" {
  group      = aws_iam_group.open_data_30_devs.name
  policy_arn = aws_iam_policy.open_data_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_30_devs__base_readonly" {
  group      = aws_iam_group.open_data_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_30_devs__self_service" {
  group      = aws_iam_group.open_data_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_31_analysts" {
  name = "arior-1njchw-open-data-31-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_31_analysts__open_data_31_read" {
  group      = aws_iam_group.open_data_31_analysts.name
  policy_arn = aws_iam_policy.open_data_31_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_31_analysts__base_readonly" {
  group      = aws_iam_group.open_data_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_31_devs" {
  name = "arior-1njchw-open-data-31-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_31_devs__open_data_31_data_rw" {
  group      = aws_iam_group.open_data_31_devs.name
  policy_arn = aws_iam_policy.open_data_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_31_devs__open_data_31_ops" {
  group      = aws_iam_group.open_data_31_devs.name
  policy_arn = aws_iam_policy.open_data_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_31_devs__base_readonly" {
  group      = aws_iam_group.open_data_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_31_devs__self_service" {
  group      = aws_iam_group.open_data_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_32_analysts" {
  name = "arior-1njchw-open-data-32-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_32_analysts__open_data_32_read" {
  group      = aws_iam_group.open_data_32_analysts.name
  policy_arn = aws_iam_policy.open_data_32_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_32_analysts__base_readonly" {
  group      = aws_iam_group.open_data_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_32_devs" {
  name = "arior-1njchw-open-data-32-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_32_devs__open_data_32_data_rw" {
  group      = aws_iam_group.open_data_32_devs.name
  policy_arn = aws_iam_policy.open_data_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_32_devs__open_data_32_ops" {
  group      = aws_iam_group.open_data_32_devs.name
  policy_arn = aws_iam_policy.open_data_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_32_devs__base_readonly" {
  group      = aws_iam_group.open_data_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_32_devs__self_service" {
  group      = aws_iam_group.open_data_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_33_analysts" {
  name = "arior-1njchw-open-data-33-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_33_analysts__open_data_33_read" {
  group      = aws_iam_group.open_data_33_analysts.name
  policy_arn = aws_iam_policy.open_data_33_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_33_analysts__base_readonly" {
  group      = aws_iam_group.open_data_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_33_devs" {
  name = "arior-1njchw-open-data-33-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_33_devs__open_data_33_data_rw" {
  group      = aws_iam_group.open_data_33_devs.name
  policy_arn = aws_iam_policy.open_data_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_33_devs__open_data_33_ops" {
  group      = aws_iam_group.open_data_33_devs.name
  policy_arn = aws_iam_policy.open_data_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_33_devs__base_readonly" {
  group      = aws_iam_group.open_data_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_33_devs__self_service" {
  group      = aws_iam_group.open_data_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_34_analysts" {
  name = "arior-1njchw-open-data-34-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_34_analysts__open_data_34_read" {
  group      = aws_iam_group.open_data_34_analysts.name
  policy_arn = aws_iam_policy.open_data_34_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_34_analysts__base_readonly" {
  group      = aws_iam_group.open_data_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_34_devs" {
  name = "arior-1njchw-open-data-34-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_34_devs__open_data_34_data_rw" {
  group      = aws_iam_group.open_data_34_devs.name
  policy_arn = aws_iam_policy.open_data_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_34_devs__open_data_34_ops" {
  group      = aws_iam_group.open_data_34_devs.name
  policy_arn = aws_iam_policy.open_data_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_34_devs__base_readonly" {
  group      = aws_iam_group.open_data_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_34_devs__self_service" {
  group      = aws_iam_group.open_data_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_35_analysts" {
  name = "arior-1njchw-open-data-35-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_35_analysts__open_data_35_read" {
  group      = aws_iam_group.open_data_35_analysts.name
  policy_arn = aws_iam_policy.open_data_35_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_35_analysts__base_readonly" {
  group      = aws_iam_group.open_data_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_35_devs" {
  name = "arior-1njchw-open-data-35-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_35_devs__open_data_35_data_rw" {
  group      = aws_iam_group.open_data_35_devs.name
  policy_arn = aws_iam_policy.open_data_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_35_devs__open_data_35_ops" {
  group      = aws_iam_group.open_data_35_devs.name
  policy_arn = aws_iam_policy.open_data_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_35_devs__base_readonly" {
  group      = aws_iam_group.open_data_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_35_devs__self_service" {
  group      = aws_iam_group.open_data_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_4_analysts" {
  name = "arior-1njchw-open-data-4-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_4_analysts__open_data_4_read" {
  group      = aws_iam_group.open_data_4_analysts.name
  policy_arn = aws_iam_policy.open_data_4_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_4_analysts__base_readonly" {
  group      = aws_iam_group.open_data_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_4_devs" {
  name = "arior-1njchw-open-data-4-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_4_devs__open_data_4_data_rw" {
  group      = aws_iam_group.open_data_4_devs.name
  policy_arn = aws_iam_policy.open_data_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_4_devs__open_data_4_ops" {
  group      = aws_iam_group.open_data_4_devs.name
  policy_arn = aws_iam_policy.open_data_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_4_devs__base_readonly" {
  group      = aws_iam_group.open_data_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_4_devs__self_service" {
  group      = aws_iam_group.open_data_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_5_analysts" {
  name = "arior-1njchw-open-data-5-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_5_analysts__open_data_5_read" {
  group      = aws_iam_group.open_data_5_analysts.name
  policy_arn = aws_iam_policy.open_data_5_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_5_analysts__base_readonly" {
  group      = aws_iam_group.open_data_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_5_devs" {
  name = "arior-1njchw-open-data-5-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_5_devs__open_data_5_data_rw" {
  group      = aws_iam_group.open_data_5_devs.name
  policy_arn = aws_iam_policy.open_data_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_5_devs__open_data_5_ops" {
  group      = aws_iam_group.open_data_5_devs.name
  policy_arn = aws_iam_policy.open_data_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_5_devs__base_readonly" {
  group      = aws_iam_group.open_data_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_5_devs__self_service" {
  group      = aws_iam_group.open_data_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_6_analysts" {
  name = "arior-1njchw-open-data-6-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_6_analysts__open_data_6_read" {
  group      = aws_iam_group.open_data_6_analysts.name
  policy_arn = aws_iam_policy.open_data_6_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_6_analysts__base_readonly" {
  group      = aws_iam_group.open_data_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_6_devs" {
  name = "arior-1njchw-open-data-6-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_6_devs__open_data_6_data_rw" {
  group      = aws_iam_group.open_data_6_devs.name
  policy_arn = aws_iam_policy.open_data_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_6_devs__open_data_6_ops" {
  group      = aws_iam_group.open_data_6_devs.name
  policy_arn = aws_iam_policy.open_data_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_6_devs__base_readonly" {
  group      = aws_iam_group.open_data_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_6_devs__self_service" {
  group      = aws_iam_group.open_data_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_7_analysts" {
  name = "arior-1njchw-open-data-7-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_7_analysts__open_data_7_read" {
  group      = aws_iam_group.open_data_7_analysts.name
  policy_arn = aws_iam_policy.open_data_7_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_7_analysts__base_readonly" {
  group      = aws_iam_group.open_data_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_7_devs" {
  name = "arior-1njchw-open-data-7-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_7_devs__open_data_7_data_rw" {
  group      = aws_iam_group.open_data_7_devs.name
  policy_arn = aws_iam_policy.open_data_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_7_devs__open_data_7_ops" {
  group      = aws_iam_group.open_data_7_devs.name
  policy_arn = aws_iam_policy.open_data_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_7_devs__base_readonly" {
  group      = aws_iam_group.open_data_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_7_devs__self_service" {
  group      = aws_iam_group.open_data_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_8_analysts" {
  name = "arior-1njchw-open-data-8-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_8_analysts__open_data_8_read" {
  group      = aws_iam_group.open_data_8_analysts.name
  policy_arn = aws_iam_policy.open_data_8_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_8_analysts__base_readonly" {
  group      = aws_iam_group.open_data_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_8_devs" {
  name = "arior-1njchw-open-data-8-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_8_devs__open_data_8_data_rw" {
  group      = aws_iam_group.open_data_8_devs.name
  policy_arn = aws_iam_policy.open_data_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_8_devs__open_data_8_ops" {
  group      = aws_iam_group.open_data_8_devs.name
  policy_arn = aws_iam_policy.open_data_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_8_devs__base_readonly" {
  group      = aws_iam_group.open_data_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_8_devs__self_service" {
  group      = aws_iam_group.open_data_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_9_analysts" {
  name = "arior-1njchw-open-data-9-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_9_analysts__open_data_9_read" {
  group      = aws_iam_group.open_data_9_analysts.name
  policy_arn = aws_iam_policy.open_data_9_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_9_analysts__base_readonly" {
  group      = aws_iam_group.open_data_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_9_devs" {
  name = "arior-1njchw-open-data-9-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_9_devs__open_data_9_data_rw" {
  group      = aws_iam_group.open_data_9_devs.name
  policy_arn = aws_iam_policy.open_data_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_9_devs__open_data_9_ops" {
  group      = aws_iam_group.open_data_9_devs.name
  policy_arn = aws_iam_policy.open_data_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_9_devs__base_readonly" {
  group      = aws_iam_group.open_data_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_9_devs__self_service" {
  group      = aws_iam_group.open_data_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "open_data_analysts" {
  name = "arior-1njchw-open-data-analysts"
}

resource "aws_iam_group_policy_attachment" "open_data_analysts__open_data_read" {
  group      = aws_iam_group.open_data_analysts.name
  policy_arn = aws_iam_policy.open_data_read.arn
}

resource "aws_iam_group_policy_attachment" "open_data_analysts__base_readonly" {
  group      = aws_iam_group.open_data_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "open_data_devs" {
  name = "arior-1njchw-open-data-devs"
}

resource "aws_iam_group_policy_attachment" "open_data_devs__open_data_data_rw" {
  group      = aws_iam_group.open_data_devs.name
  policy_arn = aws_iam_policy.open_data_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "open_data_devs__open_data_ops" {
  group      = aws_iam_group.open_data_devs.name
  policy_arn = aws_iam_policy.open_data_ops.arn
}

resource "aws_iam_group_policy_attachment" "open_data_devs__base_readonly" {
  group      = aws_iam_group.open_data_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "open_data_devs__self_service" {
  group      = aws_iam_group.open_data_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "arior-1njchw-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "procurement_10_analysts" {
  name = "arior-1njchw-procurement-10-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_10_analysts__procurement_10_read" {
  group      = aws_iam_group.procurement_10_analysts.name
  policy_arn = aws_iam_policy.procurement_10_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_10_analysts__base_readonly" {
  group      = aws_iam_group.procurement_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_10_devs" {
  name = "arior-1njchw-procurement-10-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_10_devs__procurement_10_data_rw" {
  group      = aws_iam_group.procurement_10_devs.name
  policy_arn = aws_iam_policy.procurement_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_10_devs__procurement_10_ops" {
  group      = aws_iam_group.procurement_10_devs.name
  policy_arn = aws_iam_policy.procurement_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_10_devs__base_readonly" {
  group      = aws_iam_group.procurement_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_10_devs__self_service" {
  group      = aws_iam_group.procurement_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_11_analysts" {
  name = "arior-1njchw-procurement-11-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_11_analysts__procurement_11_read" {
  group      = aws_iam_group.procurement_11_analysts.name
  policy_arn = aws_iam_policy.procurement_11_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_11_analysts__base_readonly" {
  group      = aws_iam_group.procurement_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_11_devs" {
  name = "arior-1njchw-procurement-11-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_11_devs__procurement_11_data_rw" {
  group      = aws_iam_group.procurement_11_devs.name
  policy_arn = aws_iam_policy.procurement_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_11_devs__procurement_11_ops" {
  group      = aws_iam_group.procurement_11_devs.name
  policy_arn = aws_iam_policy.procurement_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_11_devs__base_readonly" {
  group      = aws_iam_group.procurement_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_11_devs__self_service" {
  group      = aws_iam_group.procurement_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_12_analysts" {
  name = "arior-1njchw-procurement-12-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_12_analysts__procurement_12_read" {
  group      = aws_iam_group.procurement_12_analysts.name
  policy_arn = aws_iam_policy.procurement_12_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_12_analysts__base_readonly" {
  group      = aws_iam_group.procurement_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_12_devs" {
  name = "arior-1njchw-procurement-12-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_12_devs__procurement_12_data_rw" {
  group      = aws_iam_group.procurement_12_devs.name
  policy_arn = aws_iam_policy.procurement_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_12_devs__procurement_12_ops" {
  group      = aws_iam_group.procurement_12_devs.name
  policy_arn = aws_iam_policy.procurement_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_12_devs__base_readonly" {
  group      = aws_iam_group.procurement_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_12_devs__self_service" {
  group      = aws_iam_group.procurement_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_13_analysts" {
  name = "arior-1njchw-procurement-13-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_13_analysts__procurement_13_read" {
  group      = aws_iam_group.procurement_13_analysts.name
  policy_arn = aws_iam_policy.procurement_13_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_13_analysts__base_readonly" {
  group      = aws_iam_group.procurement_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_13_devs" {
  name = "arior-1njchw-procurement-13-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_13_devs__procurement_13_data_rw" {
  group      = aws_iam_group.procurement_13_devs.name
  policy_arn = aws_iam_policy.procurement_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_13_devs__procurement_13_ops" {
  group      = aws_iam_group.procurement_13_devs.name
  policy_arn = aws_iam_policy.procurement_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_13_devs__base_readonly" {
  group      = aws_iam_group.procurement_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_13_devs__self_service" {
  group      = aws_iam_group.procurement_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_14_analysts" {
  name = "arior-1njchw-procurement-14-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_14_analysts__procurement_14_read" {
  group      = aws_iam_group.procurement_14_analysts.name
  policy_arn = aws_iam_policy.procurement_14_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_14_analysts__base_readonly" {
  group      = aws_iam_group.procurement_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_14_devs" {
  name = "arior-1njchw-procurement-14-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_14_devs__procurement_14_data_rw" {
  group      = aws_iam_group.procurement_14_devs.name
  policy_arn = aws_iam_policy.procurement_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_14_devs__procurement_14_ops" {
  group      = aws_iam_group.procurement_14_devs.name
  policy_arn = aws_iam_policy.procurement_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_14_devs__base_readonly" {
  group      = aws_iam_group.procurement_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_14_devs__self_service" {
  group      = aws_iam_group.procurement_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_15_analysts" {
  name = "arior-1njchw-procurement-15-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_15_analysts__procurement_15_read" {
  group      = aws_iam_group.procurement_15_analysts.name
  policy_arn = aws_iam_policy.procurement_15_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_15_analysts__base_readonly" {
  group      = aws_iam_group.procurement_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_15_devs" {
  name = "arior-1njchw-procurement-15-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_15_devs__procurement_15_data_rw" {
  group      = aws_iam_group.procurement_15_devs.name
  policy_arn = aws_iam_policy.procurement_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_15_devs__procurement_15_ops" {
  group      = aws_iam_group.procurement_15_devs.name
  policy_arn = aws_iam_policy.procurement_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_15_devs__base_readonly" {
  group      = aws_iam_group.procurement_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_15_devs__self_service" {
  group      = aws_iam_group.procurement_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_16_analysts" {
  name = "arior-1njchw-procurement-16-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_16_analysts__procurement_16_read" {
  group      = aws_iam_group.procurement_16_analysts.name
  policy_arn = aws_iam_policy.procurement_16_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_16_analysts__base_readonly" {
  group      = aws_iam_group.procurement_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_16_devs" {
  name = "arior-1njchw-procurement-16-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_16_devs__procurement_16_data_rw" {
  group      = aws_iam_group.procurement_16_devs.name
  policy_arn = aws_iam_policy.procurement_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_16_devs__procurement_16_ops" {
  group      = aws_iam_group.procurement_16_devs.name
  policy_arn = aws_iam_policy.procurement_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_16_devs__base_readonly" {
  group      = aws_iam_group.procurement_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_16_devs__self_service" {
  group      = aws_iam_group.procurement_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_17_analysts" {
  name = "arior-1njchw-procurement-17-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_17_analysts__procurement_17_read" {
  group      = aws_iam_group.procurement_17_analysts.name
  policy_arn = aws_iam_policy.procurement_17_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_17_analysts__base_readonly" {
  group      = aws_iam_group.procurement_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_17_devs" {
  name = "arior-1njchw-procurement-17-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_17_devs__procurement_17_data_rw" {
  group      = aws_iam_group.procurement_17_devs.name
  policy_arn = aws_iam_policy.procurement_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_17_devs__procurement_17_ops" {
  group      = aws_iam_group.procurement_17_devs.name
  policy_arn = aws_iam_policy.procurement_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_17_devs__base_readonly" {
  group      = aws_iam_group.procurement_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_17_devs__self_service" {
  group      = aws_iam_group.procurement_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_18_analysts" {
  name = "arior-1njchw-procurement-18-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_18_analysts__procurement_18_read" {
  group      = aws_iam_group.procurement_18_analysts.name
  policy_arn = aws_iam_policy.procurement_18_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_18_analysts__base_readonly" {
  group      = aws_iam_group.procurement_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_18_devs" {
  name = "arior-1njchw-procurement-18-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_18_devs__procurement_18_data_rw" {
  group      = aws_iam_group.procurement_18_devs.name
  policy_arn = aws_iam_policy.procurement_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_18_devs__procurement_18_ops" {
  group      = aws_iam_group.procurement_18_devs.name
  policy_arn = aws_iam_policy.procurement_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_18_devs__base_readonly" {
  group      = aws_iam_group.procurement_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_18_devs__self_service" {
  group      = aws_iam_group.procurement_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_19_analysts" {
  name = "arior-1njchw-procurement-19-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_19_analysts__procurement_19_read" {
  group      = aws_iam_group.procurement_19_analysts.name
  policy_arn = aws_iam_policy.procurement_19_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_19_analysts__base_readonly" {
  group      = aws_iam_group.procurement_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_19_devs" {
  name = "arior-1njchw-procurement-19-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_19_devs__procurement_19_data_rw" {
  group      = aws_iam_group.procurement_19_devs.name
  policy_arn = aws_iam_policy.procurement_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_19_devs__procurement_19_ops" {
  group      = aws_iam_group.procurement_19_devs.name
  policy_arn = aws_iam_policy.procurement_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_19_devs__base_readonly" {
  group      = aws_iam_group.procurement_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_19_devs__self_service" {
  group      = aws_iam_group.procurement_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_2_analysts" {
  name = "arior-1njchw-procurement-2-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_2_analysts__procurement_2_read" {
  group      = aws_iam_group.procurement_2_analysts.name
  policy_arn = aws_iam_policy.procurement_2_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_2_analysts__base_readonly" {
  group      = aws_iam_group.procurement_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_2_devs" {
  name = "arior-1njchw-procurement-2-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_2_devs__procurement_2_data_rw" {
  group      = aws_iam_group.procurement_2_devs.name
  policy_arn = aws_iam_policy.procurement_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_2_devs__procurement_2_ops" {
  group      = aws_iam_group.procurement_2_devs.name
  policy_arn = aws_iam_policy.procurement_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_2_devs__base_readonly" {
  group      = aws_iam_group.procurement_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_2_devs__self_service" {
  group      = aws_iam_group.procurement_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_20_analysts" {
  name = "arior-1njchw-procurement-20-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_20_analysts__procurement_20_read" {
  group      = aws_iam_group.procurement_20_analysts.name
  policy_arn = aws_iam_policy.procurement_20_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_20_analysts__base_readonly" {
  group      = aws_iam_group.procurement_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_20_devs" {
  name = "arior-1njchw-procurement-20-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_20_devs__procurement_20_data_rw" {
  group      = aws_iam_group.procurement_20_devs.name
  policy_arn = aws_iam_policy.procurement_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_20_devs__procurement_20_ops" {
  group      = aws_iam_group.procurement_20_devs.name
  policy_arn = aws_iam_policy.procurement_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_20_devs__base_readonly" {
  group      = aws_iam_group.procurement_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_20_devs__self_service" {
  group      = aws_iam_group.procurement_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_21_analysts" {
  name = "arior-1njchw-procurement-21-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_21_analysts__procurement_21_read" {
  group      = aws_iam_group.procurement_21_analysts.name
  policy_arn = aws_iam_policy.procurement_21_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_21_analysts__base_readonly" {
  group      = aws_iam_group.procurement_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_21_devs" {
  name = "arior-1njchw-procurement-21-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_21_devs__procurement_21_data_rw" {
  group      = aws_iam_group.procurement_21_devs.name
  policy_arn = aws_iam_policy.procurement_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_21_devs__procurement_21_ops" {
  group      = aws_iam_group.procurement_21_devs.name
  policy_arn = aws_iam_policy.procurement_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_21_devs__base_readonly" {
  group      = aws_iam_group.procurement_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_21_devs__self_service" {
  group      = aws_iam_group.procurement_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_22_analysts" {
  name = "arior-1njchw-procurement-22-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_22_analysts__procurement_22_read" {
  group      = aws_iam_group.procurement_22_analysts.name
  policy_arn = aws_iam_policy.procurement_22_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_22_analysts__base_readonly" {
  group      = aws_iam_group.procurement_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_22_devs" {
  name = "arior-1njchw-procurement-22-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_22_devs__procurement_22_data_rw" {
  group      = aws_iam_group.procurement_22_devs.name
  policy_arn = aws_iam_policy.procurement_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_22_devs__procurement_22_ops" {
  group      = aws_iam_group.procurement_22_devs.name
  policy_arn = aws_iam_policy.procurement_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_22_devs__base_readonly" {
  group      = aws_iam_group.procurement_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_22_devs__self_service" {
  group      = aws_iam_group.procurement_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_23_analysts" {
  name = "arior-1njchw-procurement-23-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_23_analysts__procurement_23_read" {
  group      = aws_iam_group.procurement_23_analysts.name
  policy_arn = aws_iam_policy.procurement_23_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_23_analysts__base_readonly" {
  group      = aws_iam_group.procurement_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_23_devs" {
  name = "arior-1njchw-procurement-23-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_23_devs__procurement_23_data_rw" {
  group      = aws_iam_group.procurement_23_devs.name
  policy_arn = aws_iam_policy.procurement_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_23_devs__procurement_23_ops" {
  group      = aws_iam_group.procurement_23_devs.name
  policy_arn = aws_iam_policy.procurement_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_23_devs__base_readonly" {
  group      = aws_iam_group.procurement_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_23_devs__self_service" {
  group      = aws_iam_group.procurement_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_24_analysts" {
  name = "arior-1njchw-procurement-24-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_24_analysts__procurement_24_read" {
  group      = aws_iam_group.procurement_24_analysts.name
  policy_arn = aws_iam_policy.procurement_24_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_24_analysts__base_readonly" {
  group      = aws_iam_group.procurement_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_24_devs" {
  name = "arior-1njchw-procurement-24-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_24_devs__procurement_24_data_rw" {
  group      = aws_iam_group.procurement_24_devs.name
  policy_arn = aws_iam_policy.procurement_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_24_devs__procurement_24_ops" {
  group      = aws_iam_group.procurement_24_devs.name
  policy_arn = aws_iam_policy.procurement_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_24_devs__base_readonly" {
  group      = aws_iam_group.procurement_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_24_devs__self_service" {
  group      = aws_iam_group.procurement_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_25_analysts" {
  name = "arior-1njchw-procurement-25-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_25_analysts__procurement_25_read" {
  group      = aws_iam_group.procurement_25_analysts.name
  policy_arn = aws_iam_policy.procurement_25_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_25_analysts__base_readonly" {
  group      = aws_iam_group.procurement_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_25_devs" {
  name = "arior-1njchw-procurement-25-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_25_devs__procurement_25_data_rw" {
  group      = aws_iam_group.procurement_25_devs.name
  policy_arn = aws_iam_policy.procurement_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_25_devs__procurement_25_ops" {
  group      = aws_iam_group.procurement_25_devs.name
  policy_arn = aws_iam_policy.procurement_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_25_devs__base_readonly" {
  group      = aws_iam_group.procurement_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_25_devs__self_service" {
  group      = aws_iam_group.procurement_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_26_analysts" {
  name = "arior-1njchw-procurement-26-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_26_analysts__procurement_26_read" {
  group      = aws_iam_group.procurement_26_analysts.name
  policy_arn = aws_iam_policy.procurement_26_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_26_analysts__base_readonly" {
  group      = aws_iam_group.procurement_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_26_devs" {
  name = "arior-1njchw-procurement-26-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_26_devs__procurement_26_data_rw" {
  group      = aws_iam_group.procurement_26_devs.name
  policy_arn = aws_iam_policy.procurement_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_26_devs__procurement_26_ops" {
  group      = aws_iam_group.procurement_26_devs.name
  policy_arn = aws_iam_policy.procurement_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_26_devs__base_readonly" {
  group      = aws_iam_group.procurement_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_26_devs__self_service" {
  group      = aws_iam_group.procurement_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_27_analysts" {
  name = "arior-1njchw-procurement-27-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_27_analysts__procurement_27_read" {
  group      = aws_iam_group.procurement_27_analysts.name
  policy_arn = aws_iam_policy.procurement_27_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_27_analysts__base_readonly" {
  group      = aws_iam_group.procurement_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_27_devs" {
  name = "arior-1njchw-procurement-27-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_27_devs__procurement_27_data_rw" {
  group      = aws_iam_group.procurement_27_devs.name
  policy_arn = aws_iam_policy.procurement_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_27_devs__procurement_27_ops" {
  group      = aws_iam_group.procurement_27_devs.name
  policy_arn = aws_iam_policy.procurement_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_27_devs__base_readonly" {
  group      = aws_iam_group.procurement_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_27_devs__self_service" {
  group      = aws_iam_group.procurement_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_28_analysts" {
  name = "arior-1njchw-procurement-28-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_28_analysts__procurement_28_read" {
  group      = aws_iam_group.procurement_28_analysts.name
  policy_arn = aws_iam_policy.procurement_28_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_28_analysts__base_readonly" {
  group      = aws_iam_group.procurement_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_28_devs" {
  name = "arior-1njchw-procurement-28-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_28_devs__procurement_28_data_rw" {
  group      = aws_iam_group.procurement_28_devs.name
  policy_arn = aws_iam_policy.procurement_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_28_devs__procurement_28_ops" {
  group      = aws_iam_group.procurement_28_devs.name
  policy_arn = aws_iam_policy.procurement_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_28_devs__base_readonly" {
  group      = aws_iam_group.procurement_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_28_devs__self_service" {
  group      = aws_iam_group.procurement_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_29_analysts" {
  name = "arior-1njchw-procurement-29-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_29_analysts__procurement_29_read" {
  group      = aws_iam_group.procurement_29_analysts.name
  policy_arn = aws_iam_policy.procurement_29_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_29_analysts__base_readonly" {
  group      = aws_iam_group.procurement_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_29_devs" {
  name = "arior-1njchw-procurement-29-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_29_devs__procurement_29_data_rw" {
  group      = aws_iam_group.procurement_29_devs.name
  policy_arn = aws_iam_policy.procurement_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_29_devs__procurement_29_ops" {
  group      = aws_iam_group.procurement_29_devs.name
  policy_arn = aws_iam_policy.procurement_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_29_devs__base_readonly" {
  group      = aws_iam_group.procurement_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_29_devs__self_service" {
  group      = aws_iam_group.procurement_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_3_analysts" {
  name = "arior-1njchw-procurement-3-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_3_analysts__procurement_3_read" {
  group      = aws_iam_group.procurement_3_analysts.name
  policy_arn = aws_iam_policy.procurement_3_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_3_analysts__base_readonly" {
  group      = aws_iam_group.procurement_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_3_devs" {
  name = "arior-1njchw-procurement-3-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_3_devs__procurement_3_data_rw" {
  group      = aws_iam_group.procurement_3_devs.name
  policy_arn = aws_iam_policy.procurement_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_3_devs__procurement_3_ops" {
  group      = aws_iam_group.procurement_3_devs.name
  policy_arn = aws_iam_policy.procurement_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_3_devs__base_readonly" {
  group      = aws_iam_group.procurement_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_3_devs__self_service" {
  group      = aws_iam_group.procurement_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_30_analysts" {
  name = "arior-1njchw-procurement-30-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_30_analysts__procurement_30_read" {
  group      = aws_iam_group.procurement_30_analysts.name
  policy_arn = aws_iam_policy.procurement_30_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_30_analysts__base_readonly" {
  group      = aws_iam_group.procurement_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_30_devs" {
  name = "arior-1njchw-procurement-30-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_30_devs__procurement_30_data_rw" {
  group      = aws_iam_group.procurement_30_devs.name
  policy_arn = aws_iam_policy.procurement_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_30_devs__procurement_30_ops" {
  group      = aws_iam_group.procurement_30_devs.name
  policy_arn = aws_iam_policy.procurement_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_30_devs__base_readonly" {
  group      = aws_iam_group.procurement_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_30_devs__self_service" {
  group      = aws_iam_group.procurement_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_31_analysts" {
  name = "arior-1njchw-procurement-31-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_31_analysts__procurement_31_read" {
  group      = aws_iam_group.procurement_31_analysts.name
  policy_arn = aws_iam_policy.procurement_31_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_31_analysts__base_readonly" {
  group      = aws_iam_group.procurement_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_31_devs" {
  name = "arior-1njchw-procurement-31-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_31_devs__procurement_31_data_rw" {
  group      = aws_iam_group.procurement_31_devs.name
  policy_arn = aws_iam_policy.procurement_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_31_devs__procurement_31_ops" {
  group      = aws_iam_group.procurement_31_devs.name
  policy_arn = aws_iam_policy.procurement_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_31_devs__base_readonly" {
  group      = aws_iam_group.procurement_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_31_devs__self_service" {
  group      = aws_iam_group.procurement_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_32_analysts" {
  name = "arior-1njchw-procurement-32-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_32_analysts__procurement_32_read" {
  group      = aws_iam_group.procurement_32_analysts.name
  policy_arn = aws_iam_policy.procurement_32_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_32_analysts__base_readonly" {
  group      = aws_iam_group.procurement_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_32_devs" {
  name = "arior-1njchw-procurement-32-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_32_devs__procurement_32_data_rw" {
  group      = aws_iam_group.procurement_32_devs.name
  policy_arn = aws_iam_policy.procurement_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_32_devs__procurement_32_ops" {
  group      = aws_iam_group.procurement_32_devs.name
  policy_arn = aws_iam_policy.procurement_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_32_devs__base_readonly" {
  group      = aws_iam_group.procurement_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_32_devs__self_service" {
  group      = aws_iam_group.procurement_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_33_analysts" {
  name = "arior-1njchw-procurement-33-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_33_analysts__procurement_33_read" {
  group      = aws_iam_group.procurement_33_analysts.name
  policy_arn = aws_iam_policy.procurement_33_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_33_analysts__base_readonly" {
  group      = aws_iam_group.procurement_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_33_devs" {
  name = "arior-1njchw-procurement-33-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_33_devs__procurement_33_data_rw" {
  group      = aws_iam_group.procurement_33_devs.name
  policy_arn = aws_iam_policy.procurement_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_33_devs__procurement_33_ops" {
  group      = aws_iam_group.procurement_33_devs.name
  policy_arn = aws_iam_policy.procurement_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_33_devs__base_readonly" {
  group      = aws_iam_group.procurement_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_33_devs__self_service" {
  group      = aws_iam_group.procurement_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_34_analysts" {
  name = "arior-1njchw-procurement-34-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_34_analysts__procurement_34_read" {
  group      = aws_iam_group.procurement_34_analysts.name
  policy_arn = aws_iam_policy.procurement_34_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_34_analysts__base_readonly" {
  group      = aws_iam_group.procurement_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_34_devs" {
  name = "arior-1njchw-procurement-34-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_34_devs__procurement_34_data_rw" {
  group      = aws_iam_group.procurement_34_devs.name
  policy_arn = aws_iam_policy.procurement_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_34_devs__procurement_34_ops" {
  group      = aws_iam_group.procurement_34_devs.name
  policy_arn = aws_iam_policy.procurement_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_34_devs__base_readonly" {
  group      = aws_iam_group.procurement_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_34_devs__self_service" {
  group      = aws_iam_group.procurement_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_35_analysts" {
  name = "arior-1njchw-procurement-35-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_35_analysts__procurement_35_read" {
  group      = aws_iam_group.procurement_35_analysts.name
  policy_arn = aws_iam_policy.procurement_35_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_35_analysts__base_readonly" {
  group      = aws_iam_group.procurement_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_35_devs" {
  name = "arior-1njchw-procurement-35-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_35_devs__procurement_35_data_rw" {
  group      = aws_iam_group.procurement_35_devs.name
  policy_arn = aws_iam_policy.procurement_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_35_devs__procurement_35_ops" {
  group      = aws_iam_group.procurement_35_devs.name
  policy_arn = aws_iam_policy.procurement_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_35_devs__base_readonly" {
  group      = aws_iam_group.procurement_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_35_devs__self_service" {
  group      = aws_iam_group.procurement_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_4_analysts" {
  name = "arior-1njchw-procurement-4-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_4_analysts__procurement_4_read" {
  group      = aws_iam_group.procurement_4_analysts.name
  policy_arn = aws_iam_policy.procurement_4_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_4_analysts__base_readonly" {
  group      = aws_iam_group.procurement_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_4_devs" {
  name = "arior-1njchw-procurement-4-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_4_devs__procurement_4_data_rw" {
  group      = aws_iam_group.procurement_4_devs.name
  policy_arn = aws_iam_policy.procurement_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_4_devs__procurement_4_ops" {
  group      = aws_iam_group.procurement_4_devs.name
  policy_arn = aws_iam_policy.procurement_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_4_devs__base_readonly" {
  group      = aws_iam_group.procurement_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_4_devs__self_service" {
  group      = aws_iam_group.procurement_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_5_analysts" {
  name = "arior-1njchw-procurement-5-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_5_analysts__procurement_5_read" {
  group      = aws_iam_group.procurement_5_analysts.name
  policy_arn = aws_iam_policy.procurement_5_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_5_analysts__base_readonly" {
  group      = aws_iam_group.procurement_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_5_devs" {
  name = "arior-1njchw-procurement-5-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_5_devs__procurement_5_data_rw" {
  group      = aws_iam_group.procurement_5_devs.name
  policy_arn = aws_iam_policy.procurement_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_5_devs__procurement_5_ops" {
  group      = aws_iam_group.procurement_5_devs.name
  policy_arn = aws_iam_policy.procurement_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_5_devs__base_readonly" {
  group      = aws_iam_group.procurement_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_5_devs__self_service" {
  group      = aws_iam_group.procurement_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_6_analysts" {
  name = "arior-1njchw-procurement-6-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_6_analysts__procurement_6_read" {
  group      = aws_iam_group.procurement_6_analysts.name
  policy_arn = aws_iam_policy.procurement_6_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_6_analysts__base_readonly" {
  group      = aws_iam_group.procurement_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_6_devs" {
  name = "arior-1njchw-procurement-6-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_6_devs__procurement_6_data_rw" {
  group      = aws_iam_group.procurement_6_devs.name
  policy_arn = aws_iam_policy.procurement_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_6_devs__procurement_6_ops" {
  group      = aws_iam_group.procurement_6_devs.name
  policy_arn = aws_iam_policy.procurement_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_6_devs__base_readonly" {
  group      = aws_iam_group.procurement_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_6_devs__self_service" {
  group      = aws_iam_group.procurement_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_7_analysts" {
  name = "arior-1njchw-procurement-7-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_7_analysts__procurement_7_read" {
  group      = aws_iam_group.procurement_7_analysts.name
  policy_arn = aws_iam_policy.procurement_7_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_7_analysts__base_readonly" {
  group      = aws_iam_group.procurement_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_7_devs" {
  name = "arior-1njchw-procurement-7-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_7_devs__procurement_7_data_rw" {
  group      = aws_iam_group.procurement_7_devs.name
  policy_arn = aws_iam_policy.procurement_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_7_devs__procurement_7_ops" {
  group      = aws_iam_group.procurement_7_devs.name
  policy_arn = aws_iam_policy.procurement_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_7_devs__base_readonly" {
  group      = aws_iam_group.procurement_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_7_devs__self_service" {
  group      = aws_iam_group.procurement_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_8_analysts" {
  name = "arior-1njchw-procurement-8-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_8_analysts__procurement_8_read" {
  group      = aws_iam_group.procurement_8_analysts.name
  policy_arn = aws_iam_policy.procurement_8_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_8_analysts__base_readonly" {
  group      = aws_iam_group.procurement_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_8_devs" {
  name = "arior-1njchw-procurement-8-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_8_devs__procurement_8_data_rw" {
  group      = aws_iam_group.procurement_8_devs.name
  policy_arn = aws_iam_policy.procurement_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_8_devs__procurement_8_ops" {
  group      = aws_iam_group.procurement_8_devs.name
  policy_arn = aws_iam_policy.procurement_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_8_devs__base_readonly" {
  group      = aws_iam_group.procurement_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_8_devs__self_service" {
  group      = aws_iam_group.procurement_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_9_analysts" {
  name = "arior-1njchw-procurement-9-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_9_analysts__procurement_9_read" {
  group      = aws_iam_group.procurement_9_analysts.name
  policy_arn = aws_iam_policy.procurement_9_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_9_analysts__base_readonly" {
  group      = aws_iam_group.procurement_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_9_devs" {
  name = "arior-1njchw-procurement-9-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_9_devs__procurement_9_data_rw" {
  group      = aws_iam_group.procurement_9_devs.name
  policy_arn = aws_iam_policy.procurement_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_9_devs__procurement_9_ops" {
  group      = aws_iam_group.procurement_9_devs.name
  policy_arn = aws_iam_policy.procurement_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_9_devs__base_readonly" {
  group      = aws_iam_group.procurement_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_9_devs__self_service" {
  group      = aws_iam_group.procurement_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "procurement_analysts" {
  name = "arior-1njchw-procurement-analysts"
}

resource "aws_iam_group_policy_attachment" "procurement_analysts__procurement_read" {
  group      = aws_iam_group.procurement_analysts.name
  policy_arn = aws_iam_policy.procurement_read.arn
}

resource "aws_iam_group_policy_attachment" "procurement_analysts__base_readonly" {
  group      = aws_iam_group.procurement_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "procurement_devs" {
  name = "arior-1njchw-procurement-devs"
}

resource "aws_iam_group_policy_attachment" "procurement_devs__procurement_data_rw" {
  group      = aws_iam_group.procurement_devs.name
  policy_arn = aws_iam_policy.procurement_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "procurement_devs__procurement_ops" {
  group      = aws_iam_group.procurement_devs.name
  policy_arn = aws_iam_policy.procurement_ops.arn
}

resource "aws_iam_group_policy_attachment" "procurement_devs__base_readonly" {
  group      = aws_iam_group.procurement_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "procurement_devs__self_service" {
  group      = aws_iam_group.procurement_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_10_analysts" {
  name = "arior-1njchw-public-safety-10-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_10_analysts__public_safety_10_read" {
  group      = aws_iam_group.public_safety_10_analysts.name
  policy_arn = aws_iam_policy.public_safety_10_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_10_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_10_devs" {
  name = "arior-1njchw-public-safety-10-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_10_devs__public_safety_10_data_rw" {
  group      = aws_iam_group.public_safety_10_devs.name
  policy_arn = aws_iam_policy.public_safety_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_10_devs__public_safety_10_ops" {
  group      = aws_iam_group.public_safety_10_devs.name
  policy_arn = aws_iam_policy.public_safety_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_10_devs__base_readonly" {
  group      = aws_iam_group.public_safety_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_10_devs__self_service" {
  group      = aws_iam_group.public_safety_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_11_analysts" {
  name = "arior-1njchw-public-safety-11-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_11_analysts__public_safety_11_read" {
  group      = aws_iam_group.public_safety_11_analysts.name
  policy_arn = aws_iam_policy.public_safety_11_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_11_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_11_devs" {
  name = "arior-1njchw-public-safety-11-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_11_devs__public_safety_11_data_rw" {
  group      = aws_iam_group.public_safety_11_devs.name
  policy_arn = aws_iam_policy.public_safety_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_11_devs__public_safety_11_ops" {
  group      = aws_iam_group.public_safety_11_devs.name
  policy_arn = aws_iam_policy.public_safety_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_11_devs__base_readonly" {
  group      = aws_iam_group.public_safety_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_11_devs__self_service" {
  group      = aws_iam_group.public_safety_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_12_analysts" {
  name = "arior-1njchw-public-safety-12-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_12_analysts__public_safety_12_read" {
  group      = aws_iam_group.public_safety_12_analysts.name
  policy_arn = aws_iam_policy.public_safety_12_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_12_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_12_devs" {
  name = "arior-1njchw-public-safety-12-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_12_devs__public_safety_12_data_rw" {
  group      = aws_iam_group.public_safety_12_devs.name
  policy_arn = aws_iam_policy.public_safety_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_12_devs__public_safety_12_ops" {
  group      = aws_iam_group.public_safety_12_devs.name
  policy_arn = aws_iam_policy.public_safety_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_12_devs__base_readonly" {
  group      = aws_iam_group.public_safety_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_12_devs__self_service" {
  group      = aws_iam_group.public_safety_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_13_analysts" {
  name = "arior-1njchw-public-safety-13-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_13_analysts__public_safety_13_read" {
  group      = aws_iam_group.public_safety_13_analysts.name
  policy_arn = aws_iam_policy.public_safety_13_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_13_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_13_devs" {
  name = "arior-1njchw-public-safety-13-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_13_devs__public_safety_13_data_rw" {
  group      = aws_iam_group.public_safety_13_devs.name
  policy_arn = aws_iam_policy.public_safety_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_13_devs__public_safety_13_ops" {
  group      = aws_iam_group.public_safety_13_devs.name
  policy_arn = aws_iam_policy.public_safety_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_13_devs__base_readonly" {
  group      = aws_iam_group.public_safety_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_13_devs__self_service" {
  group      = aws_iam_group.public_safety_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_14_analysts" {
  name = "arior-1njchw-public-safety-14-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_14_analysts__public_safety_14_read" {
  group      = aws_iam_group.public_safety_14_analysts.name
  policy_arn = aws_iam_policy.public_safety_14_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_14_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_14_devs" {
  name = "arior-1njchw-public-safety-14-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_14_devs__public_safety_14_data_rw" {
  group      = aws_iam_group.public_safety_14_devs.name
  policy_arn = aws_iam_policy.public_safety_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_14_devs__public_safety_14_ops" {
  group      = aws_iam_group.public_safety_14_devs.name
  policy_arn = aws_iam_policy.public_safety_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_14_devs__base_readonly" {
  group      = aws_iam_group.public_safety_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_14_devs__self_service" {
  group      = aws_iam_group.public_safety_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_15_analysts" {
  name = "arior-1njchw-public-safety-15-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_15_analysts__public_safety_15_read" {
  group      = aws_iam_group.public_safety_15_analysts.name
  policy_arn = aws_iam_policy.public_safety_15_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_15_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_15_devs" {
  name = "arior-1njchw-public-safety-15-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_15_devs__public_safety_15_data_rw" {
  group      = aws_iam_group.public_safety_15_devs.name
  policy_arn = aws_iam_policy.public_safety_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_15_devs__public_safety_15_ops" {
  group      = aws_iam_group.public_safety_15_devs.name
  policy_arn = aws_iam_policy.public_safety_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_15_devs__base_readonly" {
  group      = aws_iam_group.public_safety_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_15_devs__self_service" {
  group      = aws_iam_group.public_safety_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_16_analysts" {
  name = "arior-1njchw-public-safety-16-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_16_analysts__public_safety_16_read" {
  group      = aws_iam_group.public_safety_16_analysts.name
  policy_arn = aws_iam_policy.public_safety_16_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_16_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_16_devs" {
  name = "arior-1njchw-public-safety-16-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_16_devs__public_safety_16_data_rw" {
  group      = aws_iam_group.public_safety_16_devs.name
  policy_arn = aws_iam_policy.public_safety_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_16_devs__public_safety_16_ops" {
  group      = aws_iam_group.public_safety_16_devs.name
  policy_arn = aws_iam_policy.public_safety_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_16_devs__base_readonly" {
  group      = aws_iam_group.public_safety_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_16_devs__self_service" {
  group      = aws_iam_group.public_safety_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_17_analysts" {
  name = "arior-1njchw-public-safety-17-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_17_analysts__public_safety_17_read" {
  group      = aws_iam_group.public_safety_17_analysts.name
  policy_arn = aws_iam_policy.public_safety_17_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_17_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_17_devs" {
  name = "arior-1njchw-public-safety-17-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_17_devs__public_safety_17_data_rw" {
  group      = aws_iam_group.public_safety_17_devs.name
  policy_arn = aws_iam_policy.public_safety_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_17_devs__public_safety_17_ops" {
  group      = aws_iam_group.public_safety_17_devs.name
  policy_arn = aws_iam_policy.public_safety_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_17_devs__base_readonly" {
  group      = aws_iam_group.public_safety_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_17_devs__self_service" {
  group      = aws_iam_group.public_safety_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_18_analysts" {
  name = "arior-1njchw-public-safety-18-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_18_analysts__public_safety_18_read" {
  group      = aws_iam_group.public_safety_18_analysts.name
  policy_arn = aws_iam_policy.public_safety_18_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_18_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_18_devs" {
  name = "arior-1njchw-public-safety-18-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_18_devs__public_safety_18_data_rw" {
  group      = aws_iam_group.public_safety_18_devs.name
  policy_arn = aws_iam_policy.public_safety_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_18_devs__public_safety_18_ops" {
  group      = aws_iam_group.public_safety_18_devs.name
  policy_arn = aws_iam_policy.public_safety_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_18_devs__base_readonly" {
  group      = aws_iam_group.public_safety_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_18_devs__self_service" {
  group      = aws_iam_group.public_safety_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_19_analysts" {
  name = "arior-1njchw-public-safety-19-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_19_analysts__public_safety_19_read" {
  group      = aws_iam_group.public_safety_19_analysts.name
  policy_arn = aws_iam_policy.public_safety_19_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_19_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_19_devs" {
  name = "arior-1njchw-public-safety-19-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_19_devs__public_safety_19_data_rw" {
  group      = aws_iam_group.public_safety_19_devs.name
  policy_arn = aws_iam_policy.public_safety_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_19_devs__public_safety_19_ops" {
  group      = aws_iam_group.public_safety_19_devs.name
  policy_arn = aws_iam_policy.public_safety_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_19_devs__base_readonly" {
  group      = aws_iam_group.public_safety_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_19_devs__self_service" {
  group      = aws_iam_group.public_safety_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_2_analysts" {
  name = "arior-1njchw-public-safety-2-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_2_analysts__public_safety_2_read" {
  group      = aws_iam_group.public_safety_2_analysts.name
  policy_arn = aws_iam_policy.public_safety_2_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_2_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_2_devs" {
  name = "arior-1njchw-public-safety-2-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_2_devs__public_safety_2_data_rw" {
  group      = aws_iam_group.public_safety_2_devs.name
  policy_arn = aws_iam_policy.public_safety_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_2_devs__public_safety_2_ops" {
  group      = aws_iam_group.public_safety_2_devs.name
  policy_arn = aws_iam_policy.public_safety_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_2_devs__base_readonly" {
  group      = aws_iam_group.public_safety_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_2_devs__self_service" {
  group      = aws_iam_group.public_safety_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_20_analysts" {
  name = "arior-1njchw-public-safety-20-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_20_analysts__public_safety_20_read" {
  group      = aws_iam_group.public_safety_20_analysts.name
  policy_arn = aws_iam_policy.public_safety_20_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_20_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_20_devs" {
  name = "arior-1njchw-public-safety-20-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_20_devs__public_safety_20_data_rw" {
  group      = aws_iam_group.public_safety_20_devs.name
  policy_arn = aws_iam_policy.public_safety_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_20_devs__public_safety_20_ops" {
  group      = aws_iam_group.public_safety_20_devs.name
  policy_arn = aws_iam_policy.public_safety_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_20_devs__base_readonly" {
  group      = aws_iam_group.public_safety_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_20_devs__self_service" {
  group      = aws_iam_group.public_safety_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_21_analysts" {
  name = "arior-1njchw-public-safety-21-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_21_analysts__public_safety_21_read" {
  group      = aws_iam_group.public_safety_21_analysts.name
  policy_arn = aws_iam_policy.public_safety_21_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_21_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_21_devs" {
  name = "arior-1njchw-public-safety-21-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_21_devs__public_safety_21_data_rw" {
  group      = aws_iam_group.public_safety_21_devs.name
  policy_arn = aws_iam_policy.public_safety_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_21_devs__public_safety_21_ops" {
  group      = aws_iam_group.public_safety_21_devs.name
  policy_arn = aws_iam_policy.public_safety_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_21_devs__base_readonly" {
  group      = aws_iam_group.public_safety_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_21_devs__self_service" {
  group      = aws_iam_group.public_safety_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_22_analysts" {
  name = "arior-1njchw-public-safety-22-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_22_analysts__public_safety_22_read" {
  group      = aws_iam_group.public_safety_22_analysts.name
  policy_arn = aws_iam_policy.public_safety_22_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_22_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_22_devs" {
  name = "arior-1njchw-public-safety-22-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_22_devs__public_safety_22_data_rw" {
  group      = aws_iam_group.public_safety_22_devs.name
  policy_arn = aws_iam_policy.public_safety_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_22_devs__public_safety_22_ops" {
  group      = aws_iam_group.public_safety_22_devs.name
  policy_arn = aws_iam_policy.public_safety_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_22_devs__base_readonly" {
  group      = aws_iam_group.public_safety_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_22_devs__self_service" {
  group      = aws_iam_group.public_safety_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_23_analysts" {
  name = "arior-1njchw-public-safety-23-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_23_analysts__public_safety_23_read" {
  group      = aws_iam_group.public_safety_23_analysts.name
  policy_arn = aws_iam_policy.public_safety_23_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_23_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_23_devs" {
  name = "arior-1njchw-public-safety-23-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_23_devs__public_safety_23_data_rw" {
  group      = aws_iam_group.public_safety_23_devs.name
  policy_arn = aws_iam_policy.public_safety_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_23_devs__public_safety_23_ops" {
  group      = aws_iam_group.public_safety_23_devs.name
  policy_arn = aws_iam_policy.public_safety_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_23_devs__base_readonly" {
  group      = aws_iam_group.public_safety_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_23_devs__self_service" {
  group      = aws_iam_group.public_safety_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_24_analysts" {
  name = "arior-1njchw-public-safety-24-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_24_analysts__public_safety_24_read" {
  group      = aws_iam_group.public_safety_24_analysts.name
  policy_arn = aws_iam_policy.public_safety_24_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_24_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_24_devs" {
  name = "arior-1njchw-public-safety-24-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_24_devs__public_safety_24_data_rw" {
  group      = aws_iam_group.public_safety_24_devs.name
  policy_arn = aws_iam_policy.public_safety_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_24_devs__public_safety_24_ops" {
  group      = aws_iam_group.public_safety_24_devs.name
  policy_arn = aws_iam_policy.public_safety_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_24_devs__base_readonly" {
  group      = aws_iam_group.public_safety_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_24_devs__self_service" {
  group      = aws_iam_group.public_safety_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_25_analysts" {
  name = "arior-1njchw-public-safety-25-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_25_analysts__public_safety_25_read" {
  group      = aws_iam_group.public_safety_25_analysts.name
  policy_arn = aws_iam_policy.public_safety_25_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_25_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_25_devs" {
  name = "arior-1njchw-public-safety-25-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_25_devs__public_safety_25_data_rw" {
  group      = aws_iam_group.public_safety_25_devs.name
  policy_arn = aws_iam_policy.public_safety_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_25_devs__public_safety_25_ops" {
  group      = aws_iam_group.public_safety_25_devs.name
  policy_arn = aws_iam_policy.public_safety_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_25_devs__base_readonly" {
  group      = aws_iam_group.public_safety_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_25_devs__self_service" {
  group      = aws_iam_group.public_safety_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_26_analysts" {
  name = "arior-1njchw-public-safety-26-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_26_analysts__public_safety_26_read" {
  group      = aws_iam_group.public_safety_26_analysts.name
  policy_arn = aws_iam_policy.public_safety_26_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_26_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_26_devs" {
  name = "arior-1njchw-public-safety-26-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_26_devs__public_safety_26_data_rw" {
  group      = aws_iam_group.public_safety_26_devs.name
  policy_arn = aws_iam_policy.public_safety_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_26_devs__public_safety_26_ops" {
  group      = aws_iam_group.public_safety_26_devs.name
  policy_arn = aws_iam_policy.public_safety_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_26_devs__base_readonly" {
  group      = aws_iam_group.public_safety_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_26_devs__self_service" {
  group      = aws_iam_group.public_safety_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_27_analysts" {
  name = "arior-1njchw-public-safety-27-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_27_analysts__public_safety_27_read" {
  group      = aws_iam_group.public_safety_27_analysts.name
  policy_arn = aws_iam_policy.public_safety_27_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_27_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_27_devs" {
  name = "arior-1njchw-public-safety-27-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_27_devs__public_safety_27_data_rw" {
  group      = aws_iam_group.public_safety_27_devs.name
  policy_arn = aws_iam_policy.public_safety_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_27_devs__public_safety_27_ops" {
  group      = aws_iam_group.public_safety_27_devs.name
  policy_arn = aws_iam_policy.public_safety_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_27_devs__base_readonly" {
  group      = aws_iam_group.public_safety_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_27_devs__self_service" {
  group      = aws_iam_group.public_safety_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_28_analysts" {
  name = "arior-1njchw-public-safety-28-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_28_analysts__public_safety_28_read" {
  group      = aws_iam_group.public_safety_28_analysts.name
  policy_arn = aws_iam_policy.public_safety_28_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_28_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_28_devs" {
  name = "arior-1njchw-public-safety-28-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_28_devs__public_safety_28_data_rw" {
  group      = aws_iam_group.public_safety_28_devs.name
  policy_arn = aws_iam_policy.public_safety_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_28_devs__public_safety_28_ops" {
  group      = aws_iam_group.public_safety_28_devs.name
  policy_arn = aws_iam_policy.public_safety_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_28_devs__base_readonly" {
  group      = aws_iam_group.public_safety_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_28_devs__self_service" {
  group      = aws_iam_group.public_safety_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_29_analysts" {
  name = "arior-1njchw-public-safety-29-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_29_analysts__public_safety_29_read" {
  group      = aws_iam_group.public_safety_29_analysts.name
  policy_arn = aws_iam_policy.public_safety_29_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_29_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_29_devs" {
  name = "arior-1njchw-public-safety-29-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_29_devs__public_safety_29_data_rw" {
  group      = aws_iam_group.public_safety_29_devs.name
  policy_arn = aws_iam_policy.public_safety_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_29_devs__public_safety_29_ops" {
  group      = aws_iam_group.public_safety_29_devs.name
  policy_arn = aws_iam_policy.public_safety_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_29_devs__base_readonly" {
  group      = aws_iam_group.public_safety_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_29_devs__self_service" {
  group      = aws_iam_group.public_safety_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_3_analysts" {
  name = "arior-1njchw-public-safety-3-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_3_analysts__public_safety_3_read" {
  group      = aws_iam_group.public_safety_3_analysts.name
  policy_arn = aws_iam_policy.public_safety_3_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_3_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_3_devs" {
  name = "arior-1njchw-public-safety-3-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_3_devs__public_safety_3_data_rw" {
  group      = aws_iam_group.public_safety_3_devs.name
  policy_arn = aws_iam_policy.public_safety_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_3_devs__public_safety_3_ops" {
  group      = aws_iam_group.public_safety_3_devs.name
  policy_arn = aws_iam_policy.public_safety_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_3_devs__base_readonly" {
  group      = aws_iam_group.public_safety_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_3_devs__self_service" {
  group      = aws_iam_group.public_safety_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_30_analysts" {
  name = "arior-1njchw-public-safety-30-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_30_analysts__public_safety_30_read" {
  group      = aws_iam_group.public_safety_30_analysts.name
  policy_arn = aws_iam_policy.public_safety_30_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_30_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_30_devs" {
  name = "arior-1njchw-public-safety-30-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_30_devs__public_safety_30_data_rw" {
  group      = aws_iam_group.public_safety_30_devs.name
  policy_arn = aws_iam_policy.public_safety_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_30_devs__public_safety_30_ops" {
  group      = aws_iam_group.public_safety_30_devs.name
  policy_arn = aws_iam_policy.public_safety_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_30_devs__base_readonly" {
  group      = aws_iam_group.public_safety_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_30_devs__self_service" {
  group      = aws_iam_group.public_safety_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_31_analysts" {
  name = "arior-1njchw-public-safety-31-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_31_analysts__public_safety_31_read" {
  group      = aws_iam_group.public_safety_31_analysts.name
  policy_arn = aws_iam_policy.public_safety_31_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_31_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_31_devs" {
  name = "arior-1njchw-public-safety-31-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_31_devs__public_safety_31_data_rw" {
  group      = aws_iam_group.public_safety_31_devs.name
  policy_arn = aws_iam_policy.public_safety_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_31_devs__public_safety_31_ops" {
  group      = aws_iam_group.public_safety_31_devs.name
  policy_arn = aws_iam_policy.public_safety_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_31_devs__base_readonly" {
  group      = aws_iam_group.public_safety_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_31_devs__self_service" {
  group      = aws_iam_group.public_safety_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_32_analysts" {
  name = "arior-1njchw-public-safety-32-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_32_analysts__public_safety_32_read" {
  group      = aws_iam_group.public_safety_32_analysts.name
  policy_arn = aws_iam_policy.public_safety_32_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_32_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_32_devs" {
  name = "arior-1njchw-public-safety-32-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_32_devs__public_safety_32_data_rw" {
  group      = aws_iam_group.public_safety_32_devs.name
  policy_arn = aws_iam_policy.public_safety_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_32_devs__public_safety_32_ops" {
  group      = aws_iam_group.public_safety_32_devs.name
  policy_arn = aws_iam_policy.public_safety_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_32_devs__base_readonly" {
  group      = aws_iam_group.public_safety_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_32_devs__self_service" {
  group      = aws_iam_group.public_safety_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_33_analysts" {
  name = "arior-1njchw-public-safety-33-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_33_analysts__public_safety_33_read" {
  group      = aws_iam_group.public_safety_33_analysts.name
  policy_arn = aws_iam_policy.public_safety_33_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_33_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_33_devs" {
  name = "arior-1njchw-public-safety-33-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_33_devs__public_safety_33_data_rw" {
  group      = aws_iam_group.public_safety_33_devs.name
  policy_arn = aws_iam_policy.public_safety_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_33_devs__public_safety_33_ops" {
  group      = aws_iam_group.public_safety_33_devs.name
  policy_arn = aws_iam_policy.public_safety_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_33_devs__base_readonly" {
  group      = aws_iam_group.public_safety_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_33_devs__self_service" {
  group      = aws_iam_group.public_safety_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_34_analysts" {
  name = "arior-1njchw-public-safety-34-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_34_analysts__public_safety_34_read" {
  group      = aws_iam_group.public_safety_34_analysts.name
  policy_arn = aws_iam_policy.public_safety_34_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_34_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_34_devs" {
  name = "arior-1njchw-public-safety-34-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_34_devs__public_safety_34_data_rw" {
  group      = aws_iam_group.public_safety_34_devs.name
  policy_arn = aws_iam_policy.public_safety_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_34_devs__public_safety_34_ops" {
  group      = aws_iam_group.public_safety_34_devs.name
  policy_arn = aws_iam_policy.public_safety_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_34_devs__base_readonly" {
  group      = aws_iam_group.public_safety_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_34_devs__self_service" {
  group      = aws_iam_group.public_safety_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_35_analysts" {
  name = "arior-1njchw-public-safety-35-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_35_analysts__public_safety_35_read" {
  group      = aws_iam_group.public_safety_35_analysts.name
  policy_arn = aws_iam_policy.public_safety_35_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_35_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_35_devs" {
  name = "arior-1njchw-public-safety-35-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_35_devs__public_safety_35_data_rw" {
  group      = aws_iam_group.public_safety_35_devs.name
  policy_arn = aws_iam_policy.public_safety_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_35_devs__public_safety_35_ops" {
  group      = aws_iam_group.public_safety_35_devs.name
  policy_arn = aws_iam_policy.public_safety_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_35_devs__base_readonly" {
  group      = aws_iam_group.public_safety_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_35_devs__self_service" {
  group      = aws_iam_group.public_safety_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_4_analysts" {
  name = "arior-1njchw-public-safety-4-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_4_analysts__public_safety_4_read" {
  group      = aws_iam_group.public_safety_4_analysts.name
  policy_arn = aws_iam_policy.public_safety_4_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_4_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_4_devs" {
  name = "arior-1njchw-public-safety-4-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_4_devs__public_safety_4_data_rw" {
  group      = aws_iam_group.public_safety_4_devs.name
  policy_arn = aws_iam_policy.public_safety_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_4_devs__public_safety_4_ops" {
  group      = aws_iam_group.public_safety_4_devs.name
  policy_arn = aws_iam_policy.public_safety_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_4_devs__base_readonly" {
  group      = aws_iam_group.public_safety_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_4_devs__self_service" {
  group      = aws_iam_group.public_safety_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_5_analysts" {
  name = "arior-1njchw-public-safety-5-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_5_analysts__public_safety_5_read" {
  group      = aws_iam_group.public_safety_5_analysts.name
  policy_arn = aws_iam_policy.public_safety_5_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_5_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_5_devs" {
  name = "arior-1njchw-public-safety-5-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_5_devs__public_safety_5_data_rw" {
  group      = aws_iam_group.public_safety_5_devs.name
  policy_arn = aws_iam_policy.public_safety_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_5_devs__public_safety_5_ops" {
  group      = aws_iam_group.public_safety_5_devs.name
  policy_arn = aws_iam_policy.public_safety_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_5_devs__base_readonly" {
  group      = aws_iam_group.public_safety_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_5_devs__self_service" {
  group      = aws_iam_group.public_safety_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_6_analysts" {
  name = "arior-1njchw-public-safety-6-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_6_analysts__public_safety_6_read" {
  group      = aws_iam_group.public_safety_6_analysts.name
  policy_arn = aws_iam_policy.public_safety_6_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_6_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_6_devs" {
  name = "arior-1njchw-public-safety-6-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_6_devs__public_safety_6_data_rw" {
  group      = aws_iam_group.public_safety_6_devs.name
  policy_arn = aws_iam_policy.public_safety_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_6_devs__public_safety_6_ops" {
  group      = aws_iam_group.public_safety_6_devs.name
  policy_arn = aws_iam_policy.public_safety_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_6_devs__base_readonly" {
  group      = aws_iam_group.public_safety_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_6_devs__self_service" {
  group      = aws_iam_group.public_safety_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_7_analysts" {
  name = "arior-1njchw-public-safety-7-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_7_analysts__public_safety_7_read" {
  group      = aws_iam_group.public_safety_7_analysts.name
  policy_arn = aws_iam_policy.public_safety_7_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_7_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_7_devs" {
  name = "arior-1njchw-public-safety-7-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_7_devs__public_safety_7_data_rw" {
  group      = aws_iam_group.public_safety_7_devs.name
  policy_arn = aws_iam_policy.public_safety_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_7_devs__public_safety_7_ops" {
  group      = aws_iam_group.public_safety_7_devs.name
  policy_arn = aws_iam_policy.public_safety_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_7_devs__base_readonly" {
  group      = aws_iam_group.public_safety_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_7_devs__self_service" {
  group      = aws_iam_group.public_safety_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_8_analysts" {
  name = "arior-1njchw-public-safety-8-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_8_analysts__public_safety_8_read" {
  group      = aws_iam_group.public_safety_8_analysts.name
  policy_arn = aws_iam_policy.public_safety_8_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_8_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_8_devs" {
  name = "arior-1njchw-public-safety-8-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_8_devs__public_safety_8_data_rw" {
  group      = aws_iam_group.public_safety_8_devs.name
  policy_arn = aws_iam_policy.public_safety_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_8_devs__public_safety_8_ops" {
  group      = aws_iam_group.public_safety_8_devs.name
  policy_arn = aws_iam_policy.public_safety_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_8_devs__base_readonly" {
  group      = aws_iam_group.public_safety_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_8_devs__self_service" {
  group      = aws_iam_group.public_safety_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_9_analysts" {
  name = "arior-1njchw-public-safety-9-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_9_analysts__public_safety_9_read" {
  group      = aws_iam_group.public_safety_9_analysts.name
  policy_arn = aws_iam_policy.public_safety_9_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_9_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_9_devs" {
  name = "arior-1njchw-public-safety-9-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_9_devs__public_safety_9_data_rw" {
  group      = aws_iam_group.public_safety_9_devs.name
  policy_arn = aws_iam_policy.public_safety_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_9_devs__public_safety_9_ops" {
  group      = aws_iam_group.public_safety_9_devs.name
  policy_arn = aws_iam_policy.public_safety_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_9_devs__base_readonly" {
  group      = aws_iam_group.public_safety_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_9_devs__self_service" {
  group      = aws_iam_group.public_safety_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "public_safety_analysts" {
  name = "arior-1njchw-public-safety-analysts"
}

resource "aws_iam_group_policy_attachment" "public_safety_analysts__public_safety_read" {
  group      = aws_iam_group.public_safety_analysts.name
  policy_arn = aws_iam_policy.public_safety_read.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_analysts__base_readonly" {
  group      = aws_iam_group.public_safety_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "public_safety_devs" {
  name = "arior-1njchw-public-safety-devs"
}

resource "aws_iam_group_policy_attachment" "public_safety_devs__public_safety_data_rw" {
  group      = aws_iam_group.public_safety_devs.name
  policy_arn = aws_iam_policy.public_safety_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_devs__public_safety_ops" {
  group      = aws_iam_group.public_safety_devs.name
  policy_arn = aws_iam_policy.public_safety_ops.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_devs__base_readonly" {
  group      = aws_iam_group.public_safety_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "public_safety_devs__self_service" {
  group      = aws_iam_group.public_safety_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_10_analysts" {
  name = "arior-1njchw-records-10-analysts"
}

resource "aws_iam_group_policy_attachment" "records_10_analysts__records_10_read" {
  group      = aws_iam_group.records_10_analysts.name
  policy_arn = aws_iam_policy.records_10_read.arn
}

resource "aws_iam_group_policy_attachment" "records_10_analysts__base_readonly" {
  group      = aws_iam_group.records_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_10_devs" {
  name = "arior-1njchw-records-10-devs"
}

resource "aws_iam_group_policy_attachment" "records_10_devs__records_10_data_rw" {
  group      = aws_iam_group.records_10_devs.name
  policy_arn = aws_iam_policy.records_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_10_devs__records_10_ops" {
  group      = aws_iam_group.records_10_devs.name
  policy_arn = aws_iam_policy.records_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_10_devs__base_readonly" {
  group      = aws_iam_group.records_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_10_devs__self_service" {
  group      = aws_iam_group.records_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_11_analysts" {
  name = "arior-1njchw-records-11-analysts"
}

resource "aws_iam_group_policy_attachment" "records_11_analysts__records_11_read" {
  group      = aws_iam_group.records_11_analysts.name
  policy_arn = aws_iam_policy.records_11_read.arn
}

resource "aws_iam_group_policy_attachment" "records_11_analysts__base_readonly" {
  group      = aws_iam_group.records_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_11_devs" {
  name = "arior-1njchw-records-11-devs"
}

resource "aws_iam_group_policy_attachment" "records_11_devs__records_11_data_rw" {
  group      = aws_iam_group.records_11_devs.name
  policy_arn = aws_iam_policy.records_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_11_devs__records_11_ops" {
  group      = aws_iam_group.records_11_devs.name
  policy_arn = aws_iam_policy.records_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_11_devs__base_readonly" {
  group      = aws_iam_group.records_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_11_devs__self_service" {
  group      = aws_iam_group.records_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_12_analysts" {
  name = "arior-1njchw-records-12-analysts"
}

resource "aws_iam_group_policy_attachment" "records_12_analysts__records_12_read" {
  group      = aws_iam_group.records_12_analysts.name
  policy_arn = aws_iam_policy.records_12_read.arn
}

resource "aws_iam_group_policy_attachment" "records_12_analysts__base_readonly" {
  group      = aws_iam_group.records_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_12_devs" {
  name = "arior-1njchw-records-12-devs"
}

resource "aws_iam_group_policy_attachment" "records_12_devs__records_12_data_rw" {
  group      = aws_iam_group.records_12_devs.name
  policy_arn = aws_iam_policy.records_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_12_devs__records_12_ops" {
  group      = aws_iam_group.records_12_devs.name
  policy_arn = aws_iam_policy.records_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_12_devs__base_readonly" {
  group      = aws_iam_group.records_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_12_devs__self_service" {
  group      = aws_iam_group.records_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_13_analysts" {
  name = "arior-1njchw-records-13-analysts"
}

resource "aws_iam_group_policy_attachment" "records_13_analysts__records_13_read" {
  group      = aws_iam_group.records_13_analysts.name
  policy_arn = aws_iam_policy.records_13_read.arn
}

resource "aws_iam_group_policy_attachment" "records_13_analysts__base_readonly" {
  group      = aws_iam_group.records_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_13_devs" {
  name = "arior-1njchw-records-13-devs"
}

resource "aws_iam_group_policy_attachment" "records_13_devs__records_13_data_rw" {
  group      = aws_iam_group.records_13_devs.name
  policy_arn = aws_iam_policy.records_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_13_devs__records_13_ops" {
  group      = aws_iam_group.records_13_devs.name
  policy_arn = aws_iam_policy.records_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_13_devs__base_readonly" {
  group      = aws_iam_group.records_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_13_devs__self_service" {
  group      = aws_iam_group.records_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_14_analysts" {
  name = "arior-1njchw-records-14-analysts"
}

resource "aws_iam_group_policy_attachment" "records_14_analysts__records_14_read" {
  group      = aws_iam_group.records_14_analysts.name
  policy_arn = aws_iam_policy.records_14_read.arn
}

resource "aws_iam_group_policy_attachment" "records_14_analysts__base_readonly" {
  group      = aws_iam_group.records_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_14_devs" {
  name = "arior-1njchw-records-14-devs"
}

resource "aws_iam_group_policy_attachment" "records_14_devs__records_14_data_rw" {
  group      = aws_iam_group.records_14_devs.name
  policy_arn = aws_iam_policy.records_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_14_devs__records_14_ops" {
  group      = aws_iam_group.records_14_devs.name
  policy_arn = aws_iam_policy.records_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_14_devs__base_readonly" {
  group      = aws_iam_group.records_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_14_devs__self_service" {
  group      = aws_iam_group.records_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_15_analysts" {
  name = "arior-1njchw-records-15-analysts"
}

resource "aws_iam_group_policy_attachment" "records_15_analysts__records_15_read" {
  group      = aws_iam_group.records_15_analysts.name
  policy_arn = aws_iam_policy.records_15_read.arn
}

resource "aws_iam_group_policy_attachment" "records_15_analysts__base_readonly" {
  group      = aws_iam_group.records_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_15_devs" {
  name = "arior-1njchw-records-15-devs"
}

resource "aws_iam_group_policy_attachment" "records_15_devs__records_15_data_rw" {
  group      = aws_iam_group.records_15_devs.name
  policy_arn = aws_iam_policy.records_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_15_devs__records_15_ops" {
  group      = aws_iam_group.records_15_devs.name
  policy_arn = aws_iam_policy.records_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_15_devs__base_readonly" {
  group      = aws_iam_group.records_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_15_devs__self_service" {
  group      = aws_iam_group.records_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_16_analysts" {
  name = "arior-1njchw-records-16-analysts"
}

resource "aws_iam_group_policy_attachment" "records_16_analysts__records_16_read" {
  group      = aws_iam_group.records_16_analysts.name
  policy_arn = aws_iam_policy.records_16_read.arn
}

resource "aws_iam_group_policy_attachment" "records_16_analysts__base_readonly" {
  group      = aws_iam_group.records_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_16_devs" {
  name = "arior-1njchw-records-16-devs"
}

resource "aws_iam_group_policy_attachment" "records_16_devs__records_16_data_rw" {
  group      = aws_iam_group.records_16_devs.name
  policy_arn = aws_iam_policy.records_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_16_devs__records_16_ops" {
  group      = aws_iam_group.records_16_devs.name
  policy_arn = aws_iam_policy.records_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_16_devs__base_readonly" {
  group      = aws_iam_group.records_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_16_devs__self_service" {
  group      = aws_iam_group.records_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_17_analysts" {
  name = "arior-1njchw-records-17-analysts"
}

resource "aws_iam_group_policy_attachment" "records_17_analysts__records_17_read" {
  group      = aws_iam_group.records_17_analysts.name
  policy_arn = aws_iam_policy.records_17_read.arn
}

resource "aws_iam_group_policy_attachment" "records_17_analysts__base_readonly" {
  group      = aws_iam_group.records_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_17_devs" {
  name = "arior-1njchw-records-17-devs"
}

resource "aws_iam_group_policy_attachment" "records_17_devs__records_17_data_rw" {
  group      = aws_iam_group.records_17_devs.name
  policy_arn = aws_iam_policy.records_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_17_devs__records_17_ops" {
  group      = aws_iam_group.records_17_devs.name
  policy_arn = aws_iam_policy.records_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_17_devs__base_readonly" {
  group      = aws_iam_group.records_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_17_devs__self_service" {
  group      = aws_iam_group.records_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_18_analysts" {
  name = "arior-1njchw-records-18-analysts"
}

resource "aws_iam_group_policy_attachment" "records_18_analysts__records_18_read" {
  group      = aws_iam_group.records_18_analysts.name
  policy_arn = aws_iam_policy.records_18_read.arn
}

resource "aws_iam_group_policy_attachment" "records_18_analysts__base_readonly" {
  group      = aws_iam_group.records_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_18_devs" {
  name = "arior-1njchw-records-18-devs"
}

resource "aws_iam_group_policy_attachment" "records_18_devs__records_18_data_rw" {
  group      = aws_iam_group.records_18_devs.name
  policy_arn = aws_iam_policy.records_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_18_devs__records_18_ops" {
  group      = aws_iam_group.records_18_devs.name
  policy_arn = aws_iam_policy.records_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_18_devs__base_readonly" {
  group      = aws_iam_group.records_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_18_devs__self_service" {
  group      = aws_iam_group.records_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_19_analysts" {
  name = "arior-1njchw-records-19-analysts"
}

resource "aws_iam_group_policy_attachment" "records_19_analysts__records_19_read" {
  group      = aws_iam_group.records_19_analysts.name
  policy_arn = aws_iam_policy.records_19_read.arn
}

resource "aws_iam_group_policy_attachment" "records_19_analysts__base_readonly" {
  group      = aws_iam_group.records_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_19_devs" {
  name = "arior-1njchw-records-19-devs"
}

resource "aws_iam_group_policy_attachment" "records_19_devs__records_19_data_rw" {
  group      = aws_iam_group.records_19_devs.name
  policy_arn = aws_iam_policy.records_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_19_devs__records_19_ops" {
  group      = aws_iam_group.records_19_devs.name
  policy_arn = aws_iam_policy.records_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_19_devs__base_readonly" {
  group      = aws_iam_group.records_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_19_devs__self_service" {
  group      = aws_iam_group.records_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_2_analysts" {
  name = "arior-1njchw-records-2-analysts"
}

resource "aws_iam_group_policy_attachment" "records_2_analysts__records_2_read" {
  group      = aws_iam_group.records_2_analysts.name
  policy_arn = aws_iam_policy.records_2_read.arn
}

resource "aws_iam_group_policy_attachment" "records_2_analysts__base_readonly" {
  group      = aws_iam_group.records_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_2_devs" {
  name = "arior-1njchw-records-2-devs"
}

resource "aws_iam_group_policy_attachment" "records_2_devs__records_2_data_rw" {
  group      = aws_iam_group.records_2_devs.name
  policy_arn = aws_iam_policy.records_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_2_devs__records_2_ops" {
  group      = aws_iam_group.records_2_devs.name
  policy_arn = aws_iam_policy.records_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_2_devs__base_readonly" {
  group      = aws_iam_group.records_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_2_devs__self_service" {
  group      = aws_iam_group.records_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_20_analysts" {
  name = "arior-1njchw-records-20-analysts"
}

resource "aws_iam_group_policy_attachment" "records_20_analysts__records_20_read" {
  group      = aws_iam_group.records_20_analysts.name
  policy_arn = aws_iam_policy.records_20_read.arn
}

resource "aws_iam_group_policy_attachment" "records_20_analysts__base_readonly" {
  group      = aws_iam_group.records_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_20_devs" {
  name = "arior-1njchw-records-20-devs"
}

resource "aws_iam_group_policy_attachment" "records_20_devs__records_20_data_rw" {
  group      = aws_iam_group.records_20_devs.name
  policy_arn = aws_iam_policy.records_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_20_devs__records_20_ops" {
  group      = aws_iam_group.records_20_devs.name
  policy_arn = aws_iam_policy.records_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_20_devs__base_readonly" {
  group      = aws_iam_group.records_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_20_devs__self_service" {
  group      = aws_iam_group.records_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_21_analysts" {
  name = "arior-1njchw-records-21-analysts"
}

resource "aws_iam_group_policy_attachment" "records_21_analysts__records_21_read" {
  group      = aws_iam_group.records_21_analysts.name
  policy_arn = aws_iam_policy.records_21_read.arn
}

resource "aws_iam_group_policy_attachment" "records_21_analysts__base_readonly" {
  group      = aws_iam_group.records_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_21_devs" {
  name = "arior-1njchw-records-21-devs"
}

resource "aws_iam_group_policy_attachment" "records_21_devs__records_21_data_rw" {
  group      = aws_iam_group.records_21_devs.name
  policy_arn = aws_iam_policy.records_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_21_devs__records_21_ops" {
  group      = aws_iam_group.records_21_devs.name
  policy_arn = aws_iam_policy.records_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_21_devs__base_readonly" {
  group      = aws_iam_group.records_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_21_devs__self_service" {
  group      = aws_iam_group.records_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_22_analysts" {
  name = "arior-1njchw-records-22-analysts"
}

resource "aws_iam_group_policy_attachment" "records_22_analysts__records_22_read" {
  group      = aws_iam_group.records_22_analysts.name
  policy_arn = aws_iam_policy.records_22_read.arn
}

resource "aws_iam_group_policy_attachment" "records_22_analysts__base_readonly" {
  group      = aws_iam_group.records_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_22_devs" {
  name = "arior-1njchw-records-22-devs"
}

resource "aws_iam_group_policy_attachment" "records_22_devs__records_22_data_rw" {
  group      = aws_iam_group.records_22_devs.name
  policy_arn = aws_iam_policy.records_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_22_devs__records_22_ops" {
  group      = aws_iam_group.records_22_devs.name
  policy_arn = aws_iam_policy.records_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_22_devs__base_readonly" {
  group      = aws_iam_group.records_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_22_devs__self_service" {
  group      = aws_iam_group.records_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_23_analysts" {
  name = "arior-1njchw-records-23-analysts"
}

resource "aws_iam_group_policy_attachment" "records_23_analysts__records_23_read" {
  group      = aws_iam_group.records_23_analysts.name
  policy_arn = aws_iam_policy.records_23_read.arn
}

resource "aws_iam_group_policy_attachment" "records_23_analysts__base_readonly" {
  group      = aws_iam_group.records_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_23_devs" {
  name = "arior-1njchw-records-23-devs"
}

resource "aws_iam_group_policy_attachment" "records_23_devs__records_23_data_rw" {
  group      = aws_iam_group.records_23_devs.name
  policy_arn = aws_iam_policy.records_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_23_devs__records_23_ops" {
  group      = aws_iam_group.records_23_devs.name
  policy_arn = aws_iam_policy.records_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_23_devs__base_readonly" {
  group      = aws_iam_group.records_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_23_devs__self_service" {
  group      = aws_iam_group.records_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_24_analysts" {
  name = "arior-1njchw-records-24-analysts"
}

resource "aws_iam_group_policy_attachment" "records_24_analysts__records_24_read" {
  group      = aws_iam_group.records_24_analysts.name
  policy_arn = aws_iam_policy.records_24_read.arn
}

resource "aws_iam_group_policy_attachment" "records_24_analysts__base_readonly" {
  group      = aws_iam_group.records_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_24_devs" {
  name = "arior-1njchw-records-24-devs"
}

resource "aws_iam_group_policy_attachment" "records_24_devs__records_24_data_rw" {
  group      = aws_iam_group.records_24_devs.name
  policy_arn = aws_iam_policy.records_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_24_devs__records_24_ops" {
  group      = aws_iam_group.records_24_devs.name
  policy_arn = aws_iam_policy.records_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_24_devs__base_readonly" {
  group      = aws_iam_group.records_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_24_devs__self_service" {
  group      = aws_iam_group.records_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_25_analysts" {
  name = "arior-1njchw-records-25-analysts"
}

resource "aws_iam_group_policy_attachment" "records_25_analysts__records_25_read" {
  group      = aws_iam_group.records_25_analysts.name
  policy_arn = aws_iam_policy.records_25_read.arn
}

resource "aws_iam_group_policy_attachment" "records_25_analysts__base_readonly" {
  group      = aws_iam_group.records_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_25_devs" {
  name = "arior-1njchw-records-25-devs"
}

resource "aws_iam_group_policy_attachment" "records_25_devs__records_25_data_rw" {
  group      = aws_iam_group.records_25_devs.name
  policy_arn = aws_iam_policy.records_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_25_devs__records_25_ops" {
  group      = aws_iam_group.records_25_devs.name
  policy_arn = aws_iam_policy.records_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_25_devs__base_readonly" {
  group      = aws_iam_group.records_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_25_devs__self_service" {
  group      = aws_iam_group.records_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_26_analysts" {
  name = "arior-1njchw-records-26-analysts"
}

resource "aws_iam_group_policy_attachment" "records_26_analysts__records_26_read" {
  group      = aws_iam_group.records_26_analysts.name
  policy_arn = aws_iam_policy.records_26_read.arn
}

resource "aws_iam_group_policy_attachment" "records_26_analysts__base_readonly" {
  group      = aws_iam_group.records_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_26_devs" {
  name = "arior-1njchw-records-26-devs"
}

resource "aws_iam_group_policy_attachment" "records_26_devs__records_26_data_rw" {
  group      = aws_iam_group.records_26_devs.name
  policy_arn = aws_iam_policy.records_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_26_devs__records_26_ops" {
  group      = aws_iam_group.records_26_devs.name
  policy_arn = aws_iam_policy.records_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_26_devs__base_readonly" {
  group      = aws_iam_group.records_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_26_devs__self_service" {
  group      = aws_iam_group.records_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_27_analysts" {
  name = "arior-1njchw-records-27-analysts"
}

resource "aws_iam_group_policy_attachment" "records_27_analysts__records_27_read" {
  group      = aws_iam_group.records_27_analysts.name
  policy_arn = aws_iam_policy.records_27_read.arn
}

resource "aws_iam_group_policy_attachment" "records_27_analysts__base_readonly" {
  group      = aws_iam_group.records_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_27_devs" {
  name = "arior-1njchw-records-27-devs"
}

resource "aws_iam_group_policy_attachment" "records_27_devs__records_27_data_rw" {
  group      = aws_iam_group.records_27_devs.name
  policy_arn = aws_iam_policy.records_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_27_devs__records_27_ops" {
  group      = aws_iam_group.records_27_devs.name
  policy_arn = aws_iam_policy.records_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_27_devs__base_readonly" {
  group      = aws_iam_group.records_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_27_devs__self_service" {
  group      = aws_iam_group.records_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_28_analysts" {
  name = "arior-1njchw-records-28-analysts"
}

resource "aws_iam_group_policy_attachment" "records_28_analysts__records_28_read" {
  group      = aws_iam_group.records_28_analysts.name
  policy_arn = aws_iam_policy.records_28_read.arn
}

resource "aws_iam_group_policy_attachment" "records_28_analysts__base_readonly" {
  group      = aws_iam_group.records_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_28_devs" {
  name = "arior-1njchw-records-28-devs"
}

resource "aws_iam_group_policy_attachment" "records_28_devs__records_28_data_rw" {
  group      = aws_iam_group.records_28_devs.name
  policy_arn = aws_iam_policy.records_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_28_devs__records_28_ops" {
  group      = aws_iam_group.records_28_devs.name
  policy_arn = aws_iam_policy.records_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_28_devs__base_readonly" {
  group      = aws_iam_group.records_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_28_devs__self_service" {
  group      = aws_iam_group.records_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_29_analysts" {
  name = "arior-1njchw-records-29-analysts"
}

resource "aws_iam_group_policy_attachment" "records_29_analysts__records_29_read" {
  group      = aws_iam_group.records_29_analysts.name
  policy_arn = aws_iam_policy.records_29_read.arn
}

resource "aws_iam_group_policy_attachment" "records_29_analysts__base_readonly" {
  group      = aws_iam_group.records_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_29_devs" {
  name = "arior-1njchw-records-29-devs"
}

resource "aws_iam_group_policy_attachment" "records_29_devs__records_29_data_rw" {
  group      = aws_iam_group.records_29_devs.name
  policy_arn = aws_iam_policy.records_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_29_devs__records_29_ops" {
  group      = aws_iam_group.records_29_devs.name
  policy_arn = aws_iam_policy.records_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_29_devs__base_readonly" {
  group      = aws_iam_group.records_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_29_devs__self_service" {
  group      = aws_iam_group.records_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_3_analysts" {
  name = "arior-1njchw-records-3-analysts"
}

resource "aws_iam_group_policy_attachment" "records_3_analysts__records_3_read" {
  group      = aws_iam_group.records_3_analysts.name
  policy_arn = aws_iam_policy.records_3_read.arn
}

resource "aws_iam_group_policy_attachment" "records_3_analysts__base_readonly" {
  group      = aws_iam_group.records_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_3_devs" {
  name = "arior-1njchw-records-3-devs"
}

resource "aws_iam_group_policy_attachment" "records_3_devs__records_3_data_rw" {
  group      = aws_iam_group.records_3_devs.name
  policy_arn = aws_iam_policy.records_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_3_devs__records_3_ops" {
  group      = aws_iam_group.records_3_devs.name
  policy_arn = aws_iam_policy.records_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_3_devs__base_readonly" {
  group      = aws_iam_group.records_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_3_devs__self_service" {
  group      = aws_iam_group.records_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_30_analysts" {
  name = "arior-1njchw-records-30-analysts"
}

resource "aws_iam_group_policy_attachment" "records_30_analysts__records_30_read" {
  group      = aws_iam_group.records_30_analysts.name
  policy_arn = aws_iam_policy.records_30_read.arn
}

resource "aws_iam_group_policy_attachment" "records_30_analysts__base_readonly" {
  group      = aws_iam_group.records_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_30_devs" {
  name = "arior-1njchw-records-30-devs"
}

resource "aws_iam_group_policy_attachment" "records_30_devs__records_30_data_rw" {
  group      = aws_iam_group.records_30_devs.name
  policy_arn = aws_iam_policy.records_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_30_devs__records_30_ops" {
  group      = aws_iam_group.records_30_devs.name
  policy_arn = aws_iam_policy.records_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_30_devs__base_readonly" {
  group      = aws_iam_group.records_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_30_devs__self_service" {
  group      = aws_iam_group.records_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_31_analysts" {
  name = "arior-1njchw-records-31-analysts"
}

resource "aws_iam_group_policy_attachment" "records_31_analysts__records_31_read" {
  group      = aws_iam_group.records_31_analysts.name
  policy_arn = aws_iam_policy.records_31_read.arn
}

resource "aws_iam_group_policy_attachment" "records_31_analysts__base_readonly" {
  group      = aws_iam_group.records_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_31_devs" {
  name = "arior-1njchw-records-31-devs"
}

resource "aws_iam_group_policy_attachment" "records_31_devs__records_31_data_rw" {
  group      = aws_iam_group.records_31_devs.name
  policy_arn = aws_iam_policy.records_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_31_devs__records_31_ops" {
  group      = aws_iam_group.records_31_devs.name
  policy_arn = aws_iam_policy.records_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_31_devs__base_readonly" {
  group      = aws_iam_group.records_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_31_devs__self_service" {
  group      = aws_iam_group.records_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_32_analysts" {
  name = "arior-1njchw-records-32-analysts"
}

resource "aws_iam_group_policy_attachment" "records_32_analysts__records_32_read" {
  group      = aws_iam_group.records_32_analysts.name
  policy_arn = aws_iam_policy.records_32_read.arn
}

resource "aws_iam_group_policy_attachment" "records_32_analysts__base_readonly" {
  group      = aws_iam_group.records_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_32_devs" {
  name = "arior-1njchw-records-32-devs"
}

resource "aws_iam_group_policy_attachment" "records_32_devs__records_32_data_rw" {
  group      = aws_iam_group.records_32_devs.name
  policy_arn = aws_iam_policy.records_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_32_devs__records_32_ops" {
  group      = aws_iam_group.records_32_devs.name
  policy_arn = aws_iam_policy.records_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_32_devs__base_readonly" {
  group      = aws_iam_group.records_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_32_devs__self_service" {
  group      = aws_iam_group.records_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_33_analysts" {
  name = "arior-1njchw-records-33-analysts"
}

resource "aws_iam_group_policy_attachment" "records_33_analysts__records_33_read" {
  group      = aws_iam_group.records_33_analysts.name
  policy_arn = aws_iam_policy.records_33_read.arn
}

resource "aws_iam_group_policy_attachment" "records_33_analysts__base_readonly" {
  group      = aws_iam_group.records_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_33_devs" {
  name = "arior-1njchw-records-33-devs"
}

resource "aws_iam_group_policy_attachment" "records_33_devs__records_33_data_rw" {
  group      = aws_iam_group.records_33_devs.name
  policy_arn = aws_iam_policy.records_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_33_devs__records_33_ops" {
  group      = aws_iam_group.records_33_devs.name
  policy_arn = aws_iam_policy.records_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_33_devs__base_readonly" {
  group      = aws_iam_group.records_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_33_devs__self_service" {
  group      = aws_iam_group.records_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_34_analysts" {
  name = "arior-1njchw-records-34-analysts"
}

resource "aws_iam_group_policy_attachment" "records_34_analysts__records_34_read" {
  group      = aws_iam_group.records_34_analysts.name
  policy_arn = aws_iam_policy.records_34_read.arn
}

resource "aws_iam_group_policy_attachment" "records_34_analysts__base_readonly" {
  group      = aws_iam_group.records_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_34_devs" {
  name = "arior-1njchw-records-34-devs"
}

resource "aws_iam_group_policy_attachment" "records_34_devs__records_34_data_rw" {
  group      = aws_iam_group.records_34_devs.name
  policy_arn = aws_iam_policy.records_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_34_devs__records_34_ops" {
  group      = aws_iam_group.records_34_devs.name
  policy_arn = aws_iam_policy.records_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_34_devs__base_readonly" {
  group      = aws_iam_group.records_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_34_devs__self_service" {
  group      = aws_iam_group.records_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_35_analysts" {
  name = "arior-1njchw-records-35-analysts"
}

resource "aws_iam_group_policy_attachment" "records_35_analysts__records_35_read" {
  group      = aws_iam_group.records_35_analysts.name
  policy_arn = aws_iam_policy.records_35_read.arn
}

resource "aws_iam_group_policy_attachment" "records_35_analysts__base_readonly" {
  group      = aws_iam_group.records_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_35_devs" {
  name = "arior-1njchw-records-35-devs"
}

resource "aws_iam_group_policy_attachment" "records_35_devs__records_35_data_rw" {
  group      = aws_iam_group.records_35_devs.name
  policy_arn = aws_iam_policy.records_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_35_devs__records_35_ops" {
  group      = aws_iam_group.records_35_devs.name
  policy_arn = aws_iam_policy.records_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_35_devs__base_readonly" {
  group      = aws_iam_group.records_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_35_devs__self_service" {
  group      = aws_iam_group.records_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_4_analysts" {
  name = "arior-1njchw-records-4-analysts"
}

resource "aws_iam_group_policy_attachment" "records_4_analysts__records_4_read" {
  group      = aws_iam_group.records_4_analysts.name
  policy_arn = aws_iam_policy.records_4_read.arn
}

resource "aws_iam_group_policy_attachment" "records_4_analysts__base_readonly" {
  group      = aws_iam_group.records_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_4_devs" {
  name = "arior-1njchw-records-4-devs"
}

resource "aws_iam_group_policy_attachment" "records_4_devs__records_4_data_rw" {
  group      = aws_iam_group.records_4_devs.name
  policy_arn = aws_iam_policy.records_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_4_devs__records_4_ops" {
  group      = aws_iam_group.records_4_devs.name
  policy_arn = aws_iam_policy.records_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_4_devs__base_readonly" {
  group      = aws_iam_group.records_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_4_devs__self_service" {
  group      = aws_iam_group.records_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_5_analysts" {
  name = "arior-1njchw-records-5-analysts"
}

resource "aws_iam_group_policy_attachment" "records_5_analysts__records_5_read" {
  group      = aws_iam_group.records_5_analysts.name
  policy_arn = aws_iam_policy.records_5_read.arn
}

resource "aws_iam_group_policy_attachment" "records_5_analysts__base_readonly" {
  group      = aws_iam_group.records_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_5_devs" {
  name = "arior-1njchw-records-5-devs"
}

resource "aws_iam_group_policy_attachment" "records_5_devs__records_5_data_rw" {
  group      = aws_iam_group.records_5_devs.name
  policy_arn = aws_iam_policy.records_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_5_devs__records_5_ops" {
  group      = aws_iam_group.records_5_devs.name
  policy_arn = aws_iam_policy.records_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_5_devs__base_readonly" {
  group      = aws_iam_group.records_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_5_devs__self_service" {
  group      = aws_iam_group.records_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_6_analysts" {
  name = "arior-1njchw-records-6-analysts"
}

resource "aws_iam_group_policy_attachment" "records_6_analysts__records_6_read" {
  group      = aws_iam_group.records_6_analysts.name
  policy_arn = aws_iam_policy.records_6_read.arn
}

resource "aws_iam_group_policy_attachment" "records_6_analysts__base_readonly" {
  group      = aws_iam_group.records_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_6_devs" {
  name = "arior-1njchw-records-6-devs"
}

resource "aws_iam_group_policy_attachment" "records_6_devs__records_6_data_rw" {
  group      = aws_iam_group.records_6_devs.name
  policy_arn = aws_iam_policy.records_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_6_devs__records_6_ops" {
  group      = aws_iam_group.records_6_devs.name
  policy_arn = aws_iam_policy.records_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_6_devs__base_readonly" {
  group      = aws_iam_group.records_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_6_devs__self_service" {
  group      = aws_iam_group.records_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_7_analysts" {
  name = "arior-1njchw-records-7-analysts"
}

resource "aws_iam_group_policy_attachment" "records_7_analysts__records_7_read" {
  group      = aws_iam_group.records_7_analysts.name
  policy_arn = aws_iam_policy.records_7_read.arn
}

resource "aws_iam_group_policy_attachment" "records_7_analysts__base_readonly" {
  group      = aws_iam_group.records_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_7_devs" {
  name = "arior-1njchw-records-7-devs"
}

resource "aws_iam_group_policy_attachment" "records_7_devs__records_7_data_rw" {
  group      = aws_iam_group.records_7_devs.name
  policy_arn = aws_iam_policy.records_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_7_devs__records_7_ops" {
  group      = aws_iam_group.records_7_devs.name
  policy_arn = aws_iam_policy.records_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_7_devs__base_readonly" {
  group      = aws_iam_group.records_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_7_devs__self_service" {
  group      = aws_iam_group.records_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_8_analysts" {
  name = "arior-1njchw-records-8-analysts"
}

resource "aws_iam_group_policy_attachment" "records_8_analysts__records_8_read" {
  group      = aws_iam_group.records_8_analysts.name
  policy_arn = aws_iam_policy.records_8_read.arn
}

resource "aws_iam_group_policy_attachment" "records_8_analysts__base_readonly" {
  group      = aws_iam_group.records_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_8_devs" {
  name = "arior-1njchw-records-8-devs"
}

resource "aws_iam_group_policy_attachment" "records_8_devs__records_8_data_rw" {
  group      = aws_iam_group.records_8_devs.name
  policy_arn = aws_iam_policy.records_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_8_devs__records_8_ops" {
  group      = aws_iam_group.records_8_devs.name
  policy_arn = aws_iam_policy.records_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_8_devs__base_readonly" {
  group      = aws_iam_group.records_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_8_devs__self_service" {
  group      = aws_iam_group.records_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_9_analysts" {
  name = "arior-1njchw-records-9-analysts"
}

resource "aws_iam_group_policy_attachment" "records_9_analysts__records_9_read" {
  group      = aws_iam_group.records_9_analysts.name
  policy_arn = aws_iam_policy.records_9_read.arn
}

resource "aws_iam_group_policy_attachment" "records_9_analysts__base_readonly" {
  group      = aws_iam_group.records_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_9_devs" {
  name = "arior-1njchw-records-9-devs"
}

resource "aws_iam_group_policy_attachment" "records_9_devs__records_9_data_rw" {
  group      = aws_iam_group.records_9_devs.name
  policy_arn = aws_iam_policy.records_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_9_devs__records_9_ops" {
  group      = aws_iam_group.records_9_devs.name
  policy_arn = aws_iam_policy.records_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_9_devs__base_readonly" {
  group      = aws_iam_group.records_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_9_devs__self_service" {
  group      = aws_iam_group.records_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "records_analysts" {
  name = "arior-1njchw-records-analysts"
}

resource "aws_iam_group_policy_attachment" "records_analysts__records_read" {
  group      = aws_iam_group.records_analysts.name
  policy_arn = aws_iam_policy.records_read.arn
}

resource "aws_iam_group_policy_attachment" "records_analysts__base_readonly" {
  group      = aws_iam_group.records_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "records_devs" {
  name = "arior-1njchw-records-devs"
}

resource "aws_iam_group_policy_attachment" "records_devs__records_data_rw" {
  group      = aws_iam_group.records_devs.name
  policy_arn = aws_iam_policy.records_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "records_devs__records_ops" {
  group      = aws_iam_group.records_devs.name
  policy_arn = aws_iam_policy.records_ops.arn
}

resource "aws_iam_group_policy_attachment" "records_devs__base_readonly" {
  group      = aws_iam_group.records_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "records_devs__self_service" {
  group      = aws_iam_group.records_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_10_analysts" {
  name = "arior-1njchw-tax-10-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_10_analysts__tax_10_read" {
  group      = aws_iam_group.tax_10_analysts.name
  policy_arn = aws_iam_policy.tax_10_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_10_analysts__base_readonly" {
  group      = aws_iam_group.tax_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_10_devs" {
  name = "arior-1njchw-tax-10-devs"
}

resource "aws_iam_group_policy_attachment" "tax_10_devs__tax_10_data_rw" {
  group      = aws_iam_group.tax_10_devs.name
  policy_arn = aws_iam_policy.tax_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_10_devs__tax_10_ops" {
  group      = aws_iam_group.tax_10_devs.name
  policy_arn = aws_iam_policy.tax_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_10_devs__base_readonly" {
  group      = aws_iam_group.tax_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_10_devs__self_service" {
  group      = aws_iam_group.tax_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_11_analysts" {
  name = "arior-1njchw-tax-11-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_11_analysts__tax_11_read" {
  group      = aws_iam_group.tax_11_analysts.name
  policy_arn = aws_iam_policy.tax_11_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_11_analysts__base_readonly" {
  group      = aws_iam_group.tax_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_11_devs" {
  name = "arior-1njchw-tax-11-devs"
}

resource "aws_iam_group_policy_attachment" "tax_11_devs__tax_11_data_rw" {
  group      = aws_iam_group.tax_11_devs.name
  policy_arn = aws_iam_policy.tax_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_11_devs__tax_11_ops" {
  group      = aws_iam_group.tax_11_devs.name
  policy_arn = aws_iam_policy.tax_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_11_devs__base_readonly" {
  group      = aws_iam_group.tax_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_11_devs__self_service" {
  group      = aws_iam_group.tax_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_12_analysts" {
  name = "arior-1njchw-tax-12-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_12_analysts__tax_12_read" {
  group      = aws_iam_group.tax_12_analysts.name
  policy_arn = aws_iam_policy.tax_12_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_12_analysts__base_readonly" {
  group      = aws_iam_group.tax_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_12_devs" {
  name = "arior-1njchw-tax-12-devs"
}

resource "aws_iam_group_policy_attachment" "tax_12_devs__tax_12_data_rw" {
  group      = aws_iam_group.tax_12_devs.name
  policy_arn = aws_iam_policy.tax_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_12_devs__tax_12_ops" {
  group      = aws_iam_group.tax_12_devs.name
  policy_arn = aws_iam_policy.tax_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_12_devs__base_readonly" {
  group      = aws_iam_group.tax_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_12_devs__self_service" {
  group      = aws_iam_group.tax_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_13_analysts" {
  name = "arior-1njchw-tax-13-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_13_analysts__tax_13_read" {
  group      = aws_iam_group.tax_13_analysts.name
  policy_arn = aws_iam_policy.tax_13_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_13_analysts__base_readonly" {
  group      = aws_iam_group.tax_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_13_devs" {
  name = "arior-1njchw-tax-13-devs"
}

resource "aws_iam_group_policy_attachment" "tax_13_devs__tax_13_data_rw" {
  group      = aws_iam_group.tax_13_devs.name
  policy_arn = aws_iam_policy.tax_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_13_devs__tax_13_ops" {
  group      = aws_iam_group.tax_13_devs.name
  policy_arn = aws_iam_policy.tax_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_13_devs__base_readonly" {
  group      = aws_iam_group.tax_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_13_devs__self_service" {
  group      = aws_iam_group.tax_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_14_analysts" {
  name = "arior-1njchw-tax-14-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_14_analysts__tax_14_read" {
  group      = aws_iam_group.tax_14_analysts.name
  policy_arn = aws_iam_policy.tax_14_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_14_analysts__base_readonly" {
  group      = aws_iam_group.tax_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_14_devs" {
  name = "arior-1njchw-tax-14-devs"
}

resource "aws_iam_group_policy_attachment" "tax_14_devs__tax_14_data_rw" {
  group      = aws_iam_group.tax_14_devs.name
  policy_arn = aws_iam_policy.tax_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_14_devs__tax_14_ops" {
  group      = aws_iam_group.tax_14_devs.name
  policy_arn = aws_iam_policy.tax_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_14_devs__base_readonly" {
  group      = aws_iam_group.tax_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_14_devs__self_service" {
  group      = aws_iam_group.tax_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_15_analysts" {
  name = "arior-1njchw-tax-15-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_15_analysts__tax_15_read" {
  group      = aws_iam_group.tax_15_analysts.name
  policy_arn = aws_iam_policy.tax_15_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_15_analysts__base_readonly" {
  group      = aws_iam_group.tax_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_15_devs" {
  name = "arior-1njchw-tax-15-devs"
}

resource "aws_iam_group_policy_attachment" "tax_15_devs__tax_15_data_rw" {
  group      = aws_iam_group.tax_15_devs.name
  policy_arn = aws_iam_policy.tax_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_15_devs__tax_15_ops" {
  group      = aws_iam_group.tax_15_devs.name
  policy_arn = aws_iam_policy.tax_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_15_devs__base_readonly" {
  group      = aws_iam_group.tax_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_15_devs__self_service" {
  group      = aws_iam_group.tax_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_16_analysts" {
  name = "arior-1njchw-tax-16-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_16_analysts__tax_16_read" {
  group      = aws_iam_group.tax_16_analysts.name
  policy_arn = aws_iam_policy.tax_16_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_16_analysts__base_readonly" {
  group      = aws_iam_group.tax_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_16_devs" {
  name = "arior-1njchw-tax-16-devs"
}

resource "aws_iam_group_policy_attachment" "tax_16_devs__tax_16_data_rw" {
  group      = aws_iam_group.tax_16_devs.name
  policy_arn = aws_iam_policy.tax_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_16_devs__tax_16_ops" {
  group      = aws_iam_group.tax_16_devs.name
  policy_arn = aws_iam_policy.tax_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_16_devs__base_readonly" {
  group      = aws_iam_group.tax_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_16_devs__self_service" {
  group      = aws_iam_group.tax_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_17_analysts" {
  name = "arior-1njchw-tax-17-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_17_analysts__tax_17_read" {
  group      = aws_iam_group.tax_17_analysts.name
  policy_arn = aws_iam_policy.tax_17_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_17_analysts__base_readonly" {
  group      = aws_iam_group.tax_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_17_devs" {
  name = "arior-1njchw-tax-17-devs"
}

resource "aws_iam_group_policy_attachment" "tax_17_devs__tax_17_data_rw" {
  group      = aws_iam_group.tax_17_devs.name
  policy_arn = aws_iam_policy.tax_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_17_devs__tax_17_ops" {
  group      = aws_iam_group.tax_17_devs.name
  policy_arn = aws_iam_policy.tax_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_17_devs__base_readonly" {
  group      = aws_iam_group.tax_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_17_devs__self_service" {
  group      = aws_iam_group.tax_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_18_analysts" {
  name = "arior-1njchw-tax-18-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_18_analysts__tax_18_read" {
  group      = aws_iam_group.tax_18_analysts.name
  policy_arn = aws_iam_policy.tax_18_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_18_analysts__base_readonly" {
  group      = aws_iam_group.tax_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_18_devs" {
  name = "arior-1njchw-tax-18-devs"
}

resource "aws_iam_group_policy_attachment" "tax_18_devs__tax_18_data_rw" {
  group      = aws_iam_group.tax_18_devs.name
  policy_arn = aws_iam_policy.tax_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_18_devs__tax_18_ops" {
  group      = aws_iam_group.tax_18_devs.name
  policy_arn = aws_iam_policy.tax_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_18_devs__base_readonly" {
  group      = aws_iam_group.tax_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_18_devs__self_service" {
  group      = aws_iam_group.tax_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_19_analysts" {
  name = "arior-1njchw-tax-19-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_19_analysts__tax_19_read" {
  group      = aws_iam_group.tax_19_analysts.name
  policy_arn = aws_iam_policy.tax_19_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_19_analysts__base_readonly" {
  group      = aws_iam_group.tax_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_19_devs" {
  name = "arior-1njchw-tax-19-devs"
}

resource "aws_iam_group_policy_attachment" "tax_19_devs__tax_19_data_rw" {
  group      = aws_iam_group.tax_19_devs.name
  policy_arn = aws_iam_policy.tax_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_19_devs__tax_19_ops" {
  group      = aws_iam_group.tax_19_devs.name
  policy_arn = aws_iam_policy.tax_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_19_devs__base_readonly" {
  group      = aws_iam_group.tax_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_19_devs__self_service" {
  group      = aws_iam_group.tax_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_2_analysts" {
  name = "arior-1njchw-tax-2-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_2_analysts__tax_2_read" {
  group      = aws_iam_group.tax_2_analysts.name
  policy_arn = aws_iam_policy.tax_2_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_2_analysts__base_readonly" {
  group      = aws_iam_group.tax_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_2_devs" {
  name = "arior-1njchw-tax-2-devs"
}

resource "aws_iam_group_policy_attachment" "tax_2_devs__tax_2_data_rw" {
  group      = aws_iam_group.tax_2_devs.name
  policy_arn = aws_iam_policy.tax_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_2_devs__tax_2_ops" {
  group      = aws_iam_group.tax_2_devs.name
  policy_arn = aws_iam_policy.tax_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_2_devs__base_readonly" {
  group      = aws_iam_group.tax_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_2_devs__self_service" {
  group      = aws_iam_group.tax_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_20_analysts" {
  name = "arior-1njchw-tax-20-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_20_analysts__tax_20_read" {
  group      = aws_iam_group.tax_20_analysts.name
  policy_arn = aws_iam_policy.tax_20_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_20_analysts__base_readonly" {
  group      = aws_iam_group.tax_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_20_devs" {
  name = "arior-1njchw-tax-20-devs"
}

resource "aws_iam_group_policy_attachment" "tax_20_devs__tax_20_data_rw" {
  group      = aws_iam_group.tax_20_devs.name
  policy_arn = aws_iam_policy.tax_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_20_devs__tax_20_ops" {
  group      = aws_iam_group.tax_20_devs.name
  policy_arn = aws_iam_policy.tax_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_20_devs__base_readonly" {
  group      = aws_iam_group.tax_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_20_devs__self_service" {
  group      = aws_iam_group.tax_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_21_analysts" {
  name = "arior-1njchw-tax-21-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_21_analysts__tax_21_read" {
  group      = aws_iam_group.tax_21_analysts.name
  policy_arn = aws_iam_policy.tax_21_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_21_analysts__base_readonly" {
  group      = aws_iam_group.tax_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_21_devs" {
  name = "arior-1njchw-tax-21-devs"
}

resource "aws_iam_group_policy_attachment" "tax_21_devs__tax_21_data_rw" {
  group      = aws_iam_group.tax_21_devs.name
  policy_arn = aws_iam_policy.tax_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_21_devs__tax_21_ops" {
  group      = aws_iam_group.tax_21_devs.name
  policy_arn = aws_iam_policy.tax_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_21_devs__base_readonly" {
  group      = aws_iam_group.tax_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_21_devs__self_service" {
  group      = aws_iam_group.tax_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_22_analysts" {
  name = "arior-1njchw-tax-22-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_22_analysts__tax_22_read" {
  group      = aws_iam_group.tax_22_analysts.name
  policy_arn = aws_iam_policy.tax_22_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_22_analysts__base_readonly" {
  group      = aws_iam_group.tax_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_22_devs" {
  name = "arior-1njchw-tax-22-devs"
}

resource "aws_iam_group_policy_attachment" "tax_22_devs__tax_22_data_rw" {
  group      = aws_iam_group.tax_22_devs.name
  policy_arn = aws_iam_policy.tax_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_22_devs__tax_22_ops" {
  group      = aws_iam_group.tax_22_devs.name
  policy_arn = aws_iam_policy.tax_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_22_devs__base_readonly" {
  group      = aws_iam_group.tax_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_22_devs__self_service" {
  group      = aws_iam_group.tax_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_23_analysts" {
  name = "arior-1njchw-tax-23-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_23_analysts__tax_23_read" {
  group      = aws_iam_group.tax_23_analysts.name
  policy_arn = aws_iam_policy.tax_23_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_23_analysts__base_readonly" {
  group      = aws_iam_group.tax_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_23_devs" {
  name = "arior-1njchw-tax-23-devs"
}

resource "aws_iam_group_policy_attachment" "tax_23_devs__tax_23_data_rw" {
  group      = aws_iam_group.tax_23_devs.name
  policy_arn = aws_iam_policy.tax_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_23_devs__tax_23_ops" {
  group      = aws_iam_group.tax_23_devs.name
  policy_arn = aws_iam_policy.tax_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_23_devs__base_readonly" {
  group      = aws_iam_group.tax_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_23_devs__self_service" {
  group      = aws_iam_group.tax_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_24_analysts" {
  name = "arior-1njchw-tax-24-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_24_analysts__tax_24_read" {
  group      = aws_iam_group.tax_24_analysts.name
  policy_arn = aws_iam_policy.tax_24_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_24_analysts__base_readonly" {
  group      = aws_iam_group.tax_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_24_devs" {
  name = "arior-1njchw-tax-24-devs"
}

resource "aws_iam_group_policy_attachment" "tax_24_devs__tax_24_data_rw" {
  group      = aws_iam_group.tax_24_devs.name
  policy_arn = aws_iam_policy.tax_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_24_devs__tax_24_ops" {
  group      = aws_iam_group.tax_24_devs.name
  policy_arn = aws_iam_policy.tax_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_24_devs__base_readonly" {
  group      = aws_iam_group.tax_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_24_devs__self_service" {
  group      = aws_iam_group.tax_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_25_analysts" {
  name = "arior-1njchw-tax-25-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_25_analysts__tax_25_read" {
  group      = aws_iam_group.tax_25_analysts.name
  policy_arn = aws_iam_policy.tax_25_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_25_analysts__base_readonly" {
  group      = aws_iam_group.tax_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_25_devs" {
  name = "arior-1njchw-tax-25-devs"
}

resource "aws_iam_group_policy_attachment" "tax_25_devs__tax_25_data_rw" {
  group      = aws_iam_group.tax_25_devs.name
  policy_arn = aws_iam_policy.tax_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_25_devs__tax_25_ops" {
  group      = aws_iam_group.tax_25_devs.name
  policy_arn = aws_iam_policy.tax_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_25_devs__base_readonly" {
  group      = aws_iam_group.tax_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_25_devs__self_service" {
  group      = aws_iam_group.tax_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_26_analysts" {
  name = "arior-1njchw-tax-26-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_26_analysts__tax_26_read" {
  group      = aws_iam_group.tax_26_analysts.name
  policy_arn = aws_iam_policy.tax_26_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_26_analysts__base_readonly" {
  group      = aws_iam_group.tax_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_26_devs" {
  name = "arior-1njchw-tax-26-devs"
}

resource "aws_iam_group_policy_attachment" "tax_26_devs__tax_26_data_rw" {
  group      = aws_iam_group.tax_26_devs.name
  policy_arn = aws_iam_policy.tax_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_26_devs__tax_26_ops" {
  group      = aws_iam_group.tax_26_devs.name
  policy_arn = aws_iam_policy.tax_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_26_devs__base_readonly" {
  group      = aws_iam_group.tax_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_26_devs__self_service" {
  group      = aws_iam_group.tax_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_27_analysts" {
  name = "arior-1njchw-tax-27-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_27_analysts__tax_27_read" {
  group      = aws_iam_group.tax_27_analysts.name
  policy_arn = aws_iam_policy.tax_27_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_27_analysts__base_readonly" {
  group      = aws_iam_group.tax_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_27_devs" {
  name = "arior-1njchw-tax-27-devs"
}

resource "aws_iam_group_policy_attachment" "tax_27_devs__tax_27_data_rw" {
  group      = aws_iam_group.tax_27_devs.name
  policy_arn = aws_iam_policy.tax_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_27_devs__tax_27_ops" {
  group      = aws_iam_group.tax_27_devs.name
  policy_arn = aws_iam_policy.tax_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_27_devs__base_readonly" {
  group      = aws_iam_group.tax_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_27_devs__self_service" {
  group      = aws_iam_group.tax_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_28_analysts" {
  name = "arior-1njchw-tax-28-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_28_analysts__tax_28_read" {
  group      = aws_iam_group.tax_28_analysts.name
  policy_arn = aws_iam_policy.tax_28_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_28_analysts__base_readonly" {
  group      = aws_iam_group.tax_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_28_devs" {
  name = "arior-1njchw-tax-28-devs"
}

resource "aws_iam_group_policy_attachment" "tax_28_devs__tax_28_data_rw" {
  group      = aws_iam_group.tax_28_devs.name
  policy_arn = aws_iam_policy.tax_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_28_devs__tax_28_ops" {
  group      = aws_iam_group.tax_28_devs.name
  policy_arn = aws_iam_policy.tax_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_28_devs__base_readonly" {
  group      = aws_iam_group.tax_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_28_devs__self_service" {
  group      = aws_iam_group.tax_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_29_analysts" {
  name = "arior-1njchw-tax-29-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_29_analysts__tax_29_read" {
  group      = aws_iam_group.tax_29_analysts.name
  policy_arn = aws_iam_policy.tax_29_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_29_analysts__base_readonly" {
  group      = aws_iam_group.tax_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_29_devs" {
  name = "arior-1njchw-tax-29-devs"
}

resource "aws_iam_group_policy_attachment" "tax_29_devs__tax_29_data_rw" {
  group      = aws_iam_group.tax_29_devs.name
  policy_arn = aws_iam_policy.tax_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_29_devs__tax_29_ops" {
  group      = aws_iam_group.tax_29_devs.name
  policy_arn = aws_iam_policy.tax_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_29_devs__base_readonly" {
  group      = aws_iam_group.tax_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_29_devs__self_service" {
  group      = aws_iam_group.tax_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_3_analysts" {
  name = "arior-1njchw-tax-3-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_3_analysts__tax_3_read" {
  group      = aws_iam_group.tax_3_analysts.name
  policy_arn = aws_iam_policy.tax_3_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_3_analysts__base_readonly" {
  group      = aws_iam_group.tax_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_3_devs" {
  name = "arior-1njchw-tax-3-devs"
}

resource "aws_iam_group_policy_attachment" "tax_3_devs__tax_3_data_rw" {
  group      = aws_iam_group.tax_3_devs.name
  policy_arn = aws_iam_policy.tax_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_3_devs__tax_3_ops" {
  group      = aws_iam_group.tax_3_devs.name
  policy_arn = aws_iam_policy.tax_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_3_devs__base_readonly" {
  group      = aws_iam_group.tax_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_3_devs__self_service" {
  group      = aws_iam_group.tax_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_30_analysts" {
  name = "arior-1njchw-tax-30-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_30_analysts__tax_30_read" {
  group      = aws_iam_group.tax_30_analysts.name
  policy_arn = aws_iam_policy.tax_30_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_30_analysts__base_readonly" {
  group      = aws_iam_group.tax_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_30_devs" {
  name = "arior-1njchw-tax-30-devs"
}

resource "aws_iam_group_policy_attachment" "tax_30_devs__tax_30_data_rw" {
  group      = aws_iam_group.tax_30_devs.name
  policy_arn = aws_iam_policy.tax_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_30_devs__tax_30_ops" {
  group      = aws_iam_group.tax_30_devs.name
  policy_arn = aws_iam_policy.tax_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_30_devs__base_readonly" {
  group      = aws_iam_group.tax_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_30_devs__self_service" {
  group      = aws_iam_group.tax_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_31_analysts" {
  name = "arior-1njchw-tax-31-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_31_analysts__tax_31_read" {
  group      = aws_iam_group.tax_31_analysts.name
  policy_arn = aws_iam_policy.tax_31_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_31_analysts__base_readonly" {
  group      = aws_iam_group.tax_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_31_devs" {
  name = "arior-1njchw-tax-31-devs"
}

resource "aws_iam_group_policy_attachment" "tax_31_devs__tax_31_data_rw" {
  group      = aws_iam_group.tax_31_devs.name
  policy_arn = aws_iam_policy.tax_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_31_devs__tax_31_ops" {
  group      = aws_iam_group.tax_31_devs.name
  policy_arn = aws_iam_policy.tax_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_31_devs__base_readonly" {
  group      = aws_iam_group.tax_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_31_devs__self_service" {
  group      = aws_iam_group.tax_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_32_analysts" {
  name = "arior-1njchw-tax-32-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_32_analysts__tax_32_read" {
  group      = aws_iam_group.tax_32_analysts.name
  policy_arn = aws_iam_policy.tax_32_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_32_analysts__base_readonly" {
  group      = aws_iam_group.tax_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_32_devs" {
  name = "arior-1njchw-tax-32-devs"
}

resource "aws_iam_group_policy_attachment" "tax_32_devs__tax_32_data_rw" {
  group      = aws_iam_group.tax_32_devs.name
  policy_arn = aws_iam_policy.tax_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_32_devs__tax_32_ops" {
  group      = aws_iam_group.tax_32_devs.name
  policy_arn = aws_iam_policy.tax_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_32_devs__base_readonly" {
  group      = aws_iam_group.tax_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_32_devs__self_service" {
  group      = aws_iam_group.tax_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_33_analysts" {
  name = "arior-1njchw-tax-33-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_33_analysts__tax_33_read" {
  group      = aws_iam_group.tax_33_analysts.name
  policy_arn = aws_iam_policy.tax_33_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_33_analysts__base_readonly" {
  group      = aws_iam_group.tax_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_33_devs" {
  name = "arior-1njchw-tax-33-devs"
}

resource "aws_iam_group_policy_attachment" "tax_33_devs__tax_33_data_rw" {
  group      = aws_iam_group.tax_33_devs.name
  policy_arn = aws_iam_policy.tax_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_33_devs__tax_33_ops" {
  group      = aws_iam_group.tax_33_devs.name
  policy_arn = aws_iam_policy.tax_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_33_devs__base_readonly" {
  group      = aws_iam_group.tax_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_33_devs__self_service" {
  group      = aws_iam_group.tax_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_34_analysts" {
  name = "arior-1njchw-tax-34-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_34_analysts__tax_34_read" {
  group      = aws_iam_group.tax_34_analysts.name
  policy_arn = aws_iam_policy.tax_34_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_34_analysts__base_readonly" {
  group      = aws_iam_group.tax_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_34_devs" {
  name = "arior-1njchw-tax-34-devs"
}

resource "aws_iam_group_policy_attachment" "tax_34_devs__tax_34_data_rw" {
  group      = aws_iam_group.tax_34_devs.name
  policy_arn = aws_iam_policy.tax_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_34_devs__tax_34_ops" {
  group      = aws_iam_group.tax_34_devs.name
  policy_arn = aws_iam_policy.tax_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_34_devs__base_readonly" {
  group      = aws_iam_group.tax_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_34_devs__self_service" {
  group      = aws_iam_group.tax_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_35_analysts" {
  name = "arior-1njchw-tax-35-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_35_analysts__tax_35_read" {
  group      = aws_iam_group.tax_35_analysts.name
  policy_arn = aws_iam_policy.tax_35_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_35_analysts__base_readonly" {
  group      = aws_iam_group.tax_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_35_devs" {
  name = "arior-1njchw-tax-35-devs"
}

resource "aws_iam_group_policy_attachment" "tax_35_devs__tax_35_data_rw" {
  group      = aws_iam_group.tax_35_devs.name
  policy_arn = aws_iam_policy.tax_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_35_devs__tax_35_ops" {
  group      = aws_iam_group.tax_35_devs.name
  policy_arn = aws_iam_policy.tax_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_35_devs__base_readonly" {
  group      = aws_iam_group.tax_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_35_devs__self_service" {
  group      = aws_iam_group.tax_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_4_analysts" {
  name = "arior-1njchw-tax-4-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_4_analysts__tax_4_read" {
  group      = aws_iam_group.tax_4_analysts.name
  policy_arn = aws_iam_policy.tax_4_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_4_analysts__base_readonly" {
  group      = aws_iam_group.tax_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_4_devs" {
  name = "arior-1njchw-tax-4-devs"
}

resource "aws_iam_group_policy_attachment" "tax_4_devs__tax_4_data_rw" {
  group      = aws_iam_group.tax_4_devs.name
  policy_arn = aws_iam_policy.tax_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_4_devs__tax_4_ops" {
  group      = aws_iam_group.tax_4_devs.name
  policy_arn = aws_iam_policy.tax_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_4_devs__base_readonly" {
  group      = aws_iam_group.tax_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_4_devs__self_service" {
  group      = aws_iam_group.tax_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_5_analysts" {
  name = "arior-1njchw-tax-5-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_5_analysts__tax_5_read" {
  group      = aws_iam_group.tax_5_analysts.name
  policy_arn = aws_iam_policy.tax_5_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_5_analysts__base_readonly" {
  group      = aws_iam_group.tax_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_5_devs" {
  name = "arior-1njchw-tax-5-devs"
}

resource "aws_iam_group_policy_attachment" "tax_5_devs__tax_5_data_rw" {
  group      = aws_iam_group.tax_5_devs.name
  policy_arn = aws_iam_policy.tax_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_5_devs__tax_5_ops" {
  group      = aws_iam_group.tax_5_devs.name
  policy_arn = aws_iam_policy.tax_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_5_devs__base_readonly" {
  group      = aws_iam_group.tax_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_5_devs__self_service" {
  group      = aws_iam_group.tax_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_6_analysts" {
  name = "arior-1njchw-tax-6-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_6_analysts__tax_6_read" {
  group      = aws_iam_group.tax_6_analysts.name
  policy_arn = aws_iam_policy.tax_6_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_6_analysts__base_readonly" {
  group      = aws_iam_group.tax_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_6_devs" {
  name = "arior-1njchw-tax-6-devs"
}

resource "aws_iam_group_policy_attachment" "tax_6_devs__tax_6_data_rw" {
  group      = aws_iam_group.tax_6_devs.name
  policy_arn = aws_iam_policy.tax_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_6_devs__tax_6_ops" {
  group      = aws_iam_group.tax_6_devs.name
  policy_arn = aws_iam_policy.tax_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_6_devs__base_readonly" {
  group      = aws_iam_group.tax_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_6_devs__self_service" {
  group      = aws_iam_group.tax_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_7_analysts" {
  name = "arior-1njchw-tax-7-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_7_analysts__tax_7_read" {
  group      = aws_iam_group.tax_7_analysts.name
  policy_arn = aws_iam_policy.tax_7_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_7_analysts__base_readonly" {
  group      = aws_iam_group.tax_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_7_devs" {
  name = "arior-1njchw-tax-7-devs"
}

resource "aws_iam_group_policy_attachment" "tax_7_devs__tax_7_data_rw" {
  group      = aws_iam_group.tax_7_devs.name
  policy_arn = aws_iam_policy.tax_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_7_devs__tax_7_ops" {
  group      = aws_iam_group.tax_7_devs.name
  policy_arn = aws_iam_policy.tax_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_7_devs__base_readonly" {
  group      = aws_iam_group.tax_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_7_devs__self_service" {
  group      = aws_iam_group.tax_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_8_analysts" {
  name = "arior-1njchw-tax-8-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_8_analysts__tax_8_read" {
  group      = aws_iam_group.tax_8_analysts.name
  policy_arn = aws_iam_policy.tax_8_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_8_analysts__base_readonly" {
  group      = aws_iam_group.tax_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_8_devs" {
  name = "arior-1njchw-tax-8-devs"
}

resource "aws_iam_group_policy_attachment" "tax_8_devs__tax_8_data_rw" {
  group      = aws_iam_group.tax_8_devs.name
  policy_arn = aws_iam_policy.tax_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_8_devs__tax_8_ops" {
  group      = aws_iam_group.tax_8_devs.name
  policy_arn = aws_iam_policy.tax_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_8_devs__base_readonly" {
  group      = aws_iam_group.tax_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_8_devs__self_service" {
  group      = aws_iam_group.tax_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_9_analysts" {
  name = "arior-1njchw-tax-9-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_9_analysts__tax_9_read" {
  group      = aws_iam_group.tax_9_analysts.name
  policy_arn = aws_iam_policy.tax_9_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_9_analysts__base_readonly" {
  group      = aws_iam_group.tax_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_9_devs" {
  name = "arior-1njchw-tax-9-devs"
}

resource "aws_iam_group_policy_attachment" "tax_9_devs__tax_9_data_rw" {
  group      = aws_iam_group.tax_9_devs.name
  policy_arn = aws_iam_policy.tax_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_9_devs__tax_9_ops" {
  group      = aws_iam_group.tax_9_devs.name
  policy_arn = aws_iam_policy.tax_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_9_devs__base_readonly" {
  group      = aws_iam_group.tax_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_9_devs__self_service" {
  group      = aws_iam_group.tax_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "tax_analysts" {
  name = "arior-1njchw-tax-analysts"
}

resource "aws_iam_group_policy_attachment" "tax_analysts__tax_read" {
  group      = aws_iam_group.tax_analysts.name
  policy_arn = aws_iam_policy.tax_read.arn
}

resource "aws_iam_group_policy_attachment" "tax_analysts__base_readonly" {
  group      = aws_iam_group.tax_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "tax_devs" {
  name = "arior-1njchw-tax-devs"
}

resource "aws_iam_group_policy_attachment" "tax_devs__tax_data_rw" {
  group      = aws_iam_group.tax_devs.name
  policy_arn = aws_iam_policy.tax_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "tax_devs__tax_ops" {
  group      = aws_iam_group.tax_devs.name
  policy_arn = aws_iam_policy.tax_ops.arn
}

resource "aws_iam_group_policy_attachment" "tax_devs__base_readonly" {
  group      = aws_iam_group.tax_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "tax_devs__self_service" {
  group      = aws_iam_group.tax_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}
