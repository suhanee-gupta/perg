resource "aws_iam_group" "contractors" {
  name = "solor-1njchy-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_10_analysts" {
  name = "solor-1njchy-data-eng-10-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_10_analysts__data_eng_10_read" {
  group      = aws_iam_group.data_eng_10_analysts.name
  policy_arn = aws_iam_policy.data_eng_10_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_10_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_10_devs" {
  name = "solor-1njchy-data-eng-10-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_10_devs__data_eng_10_data_rw" {
  group      = aws_iam_group.data_eng_10_devs.name
  policy_arn = aws_iam_policy.data_eng_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_10_devs__data_eng_10_ops" {
  group      = aws_iam_group.data_eng_10_devs.name
  policy_arn = aws_iam_policy.data_eng_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_10_devs__base_readonly" {
  group      = aws_iam_group.data_eng_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_10_devs__self_service" {
  group      = aws_iam_group.data_eng_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_11_analysts" {
  name = "solor-1njchy-data-eng-11-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_11_analysts__data_eng_11_read" {
  group      = aws_iam_group.data_eng_11_analysts.name
  policy_arn = aws_iam_policy.data_eng_11_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_11_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_11_devs" {
  name = "solor-1njchy-data-eng-11-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_11_devs__data_eng_11_data_rw" {
  group      = aws_iam_group.data_eng_11_devs.name
  policy_arn = aws_iam_policy.data_eng_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_11_devs__data_eng_11_ops" {
  group      = aws_iam_group.data_eng_11_devs.name
  policy_arn = aws_iam_policy.data_eng_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_11_devs__base_readonly" {
  group      = aws_iam_group.data_eng_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_11_devs__self_service" {
  group      = aws_iam_group.data_eng_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_12_analysts" {
  name = "solor-1njchy-data-eng-12-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_12_analysts__data_eng_12_read" {
  group      = aws_iam_group.data_eng_12_analysts.name
  policy_arn = aws_iam_policy.data_eng_12_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_12_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_12_devs" {
  name = "solor-1njchy-data-eng-12-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_12_devs__data_eng_12_data_rw" {
  group      = aws_iam_group.data_eng_12_devs.name
  policy_arn = aws_iam_policy.data_eng_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_12_devs__data_eng_12_ops" {
  group      = aws_iam_group.data_eng_12_devs.name
  policy_arn = aws_iam_policy.data_eng_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_12_devs__base_readonly" {
  group      = aws_iam_group.data_eng_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_12_devs__self_service" {
  group      = aws_iam_group.data_eng_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_13_analysts" {
  name = "solor-1njchy-data-eng-13-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_13_analysts__data_eng_13_read" {
  group      = aws_iam_group.data_eng_13_analysts.name
  policy_arn = aws_iam_policy.data_eng_13_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_13_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_13_devs" {
  name = "solor-1njchy-data-eng-13-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_13_devs__data_eng_13_data_rw" {
  group      = aws_iam_group.data_eng_13_devs.name
  policy_arn = aws_iam_policy.data_eng_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_13_devs__data_eng_13_ops" {
  group      = aws_iam_group.data_eng_13_devs.name
  policy_arn = aws_iam_policy.data_eng_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_13_devs__base_readonly" {
  group      = aws_iam_group.data_eng_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_13_devs__self_service" {
  group      = aws_iam_group.data_eng_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_14_analysts" {
  name = "solor-1njchy-data-eng-14-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_14_analysts__data_eng_14_read" {
  group      = aws_iam_group.data_eng_14_analysts.name
  policy_arn = aws_iam_policy.data_eng_14_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_14_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_14_devs" {
  name = "solor-1njchy-data-eng-14-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_14_devs__data_eng_14_data_rw" {
  group      = aws_iam_group.data_eng_14_devs.name
  policy_arn = aws_iam_policy.data_eng_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_14_devs__data_eng_14_ops" {
  group      = aws_iam_group.data_eng_14_devs.name
  policy_arn = aws_iam_policy.data_eng_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_14_devs__base_readonly" {
  group      = aws_iam_group.data_eng_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_14_devs__self_service" {
  group      = aws_iam_group.data_eng_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_15_analysts" {
  name = "solor-1njchy-data-eng-15-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_15_analysts__data_eng_15_read" {
  group      = aws_iam_group.data_eng_15_analysts.name
  policy_arn = aws_iam_policy.data_eng_15_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_15_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_15_devs" {
  name = "solor-1njchy-data-eng-15-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_15_devs__data_eng_15_data_rw" {
  group      = aws_iam_group.data_eng_15_devs.name
  policy_arn = aws_iam_policy.data_eng_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_15_devs__data_eng_15_ops" {
  group      = aws_iam_group.data_eng_15_devs.name
  policy_arn = aws_iam_policy.data_eng_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_15_devs__base_readonly" {
  group      = aws_iam_group.data_eng_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_15_devs__self_service" {
  group      = aws_iam_group.data_eng_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_16_analysts" {
  name = "solor-1njchy-data-eng-16-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_16_analysts__data_eng_16_read" {
  group      = aws_iam_group.data_eng_16_analysts.name
  policy_arn = aws_iam_policy.data_eng_16_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_16_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_16_devs" {
  name = "solor-1njchy-data-eng-16-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_16_devs__data_eng_16_data_rw" {
  group      = aws_iam_group.data_eng_16_devs.name
  policy_arn = aws_iam_policy.data_eng_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_16_devs__data_eng_16_ops" {
  group      = aws_iam_group.data_eng_16_devs.name
  policy_arn = aws_iam_policy.data_eng_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_16_devs__base_readonly" {
  group      = aws_iam_group.data_eng_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_16_devs__self_service" {
  group      = aws_iam_group.data_eng_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_17_analysts" {
  name = "solor-1njchy-data-eng-17-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_17_analysts__data_eng_17_read" {
  group      = aws_iam_group.data_eng_17_analysts.name
  policy_arn = aws_iam_policy.data_eng_17_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_17_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_17_devs" {
  name = "solor-1njchy-data-eng-17-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_17_devs__data_eng_17_data_rw" {
  group      = aws_iam_group.data_eng_17_devs.name
  policy_arn = aws_iam_policy.data_eng_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_17_devs__data_eng_17_ops" {
  group      = aws_iam_group.data_eng_17_devs.name
  policy_arn = aws_iam_policy.data_eng_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_17_devs__base_readonly" {
  group      = aws_iam_group.data_eng_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_17_devs__self_service" {
  group      = aws_iam_group.data_eng_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_18_analysts" {
  name = "solor-1njchy-data-eng-18-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_18_analysts__data_eng_18_read" {
  group      = aws_iam_group.data_eng_18_analysts.name
  policy_arn = aws_iam_policy.data_eng_18_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_18_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_18_devs" {
  name = "solor-1njchy-data-eng-18-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_18_devs__data_eng_18_data_rw" {
  group      = aws_iam_group.data_eng_18_devs.name
  policy_arn = aws_iam_policy.data_eng_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_18_devs__data_eng_18_ops" {
  group      = aws_iam_group.data_eng_18_devs.name
  policy_arn = aws_iam_policy.data_eng_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_18_devs__base_readonly" {
  group      = aws_iam_group.data_eng_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_18_devs__self_service" {
  group      = aws_iam_group.data_eng_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_19_analysts" {
  name = "solor-1njchy-data-eng-19-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_19_analysts__data_eng_19_read" {
  group      = aws_iam_group.data_eng_19_analysts.name
  policy_arn = aws_iam_policy.data_eng_19_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_19_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_19_devs" {
  name = "solor-1njchy-data-eng-19-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_19_devs__data_eng_19_data_rw" {
  group      = aws_iam_group.data_eng_19_devs.name
  policy_arn = aws_iam_policy.data_eng_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_19_devs__data_eng_19_ops" {
  group      = aws_iam_group.data_eng_19_devs.name
  policy_arn = aws_iam_policy.data_eng_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_19_devs__base_readonly" {
  group      = aws_iam_group.data_eng_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_19_devs__self_service" {
  group      = aws_iam_group.data_eng_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_2_analysts" {
  name = "solor-1njchy-data-eng-2-analysts"
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
  name = "solor-1njchy-data-eng-2-devs"
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

resource "aws_iam_group" "data_eng_20_analysts" {
  name = "solor-1njchy-data-eng-20-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_20_analysts__data_eng_20_read" {
  group      = aws_iam_group.data_eng_20_analysts.name
  policy_arn = aws_iam_policy.data_eng_20_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_20_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_20_devs" {
  name = "solor-1njchy-data-eng-20-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_20_devs__data_eng_20_data_rw" {
  group      = aws_iam_group.data_eng_20_devs.name
  policy_arn = aws_iam_policy.data_eng_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_20_devs__data_eng_20_ops" {
  group      = aws_iam_group.data_eng_20_devs.name
  policy_arn = aws_iam_policy.data_eng_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_20_devs__base_readonly" {
  group      = aws_iam_group.data_eng_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_20_devs__self_service" {
  group      = aws_iam_group.data_eng_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_21_analysts" {
  name = "solor-1njchy-data-eng-21-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_21_analysts__data_eng_21_read" {
  group      = aws_iam_group.data_eng_21_analysts.name
  policy_arn = aws_iam_policy.data_eng_21_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_21_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_21_devs" {
  name = "solor-1njchy-data-eng-21-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_21_devs__data_eng_21_data_rw" {
  group      = aws_iam_group.data_eng_21_devs.name
  policy_arn = aws_iam_policy.data_eng_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_21_devs__data_eng_21_ops" {
  group      = aws_iam_group.data_eng_21_devs.name
  policy_arn = aws_iam_policy.data_eng_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_21_devs__base_readonly" {
  group      = aws_iam_group.data_eng_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_21_devs__self_service" {
  group      = aws_iam_group.data_eng_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_22_analysts" {
  name = "solor-1njchy-data-eng-22-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_22_analysts__data_eng_22_read" {
  group      = aws_iam_group.data_eng_22_analysts.name
  policy_arn = aws_iam_policy.data_eng_22_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_22_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_22_devs" {
  name = "solor-1njchy-data-eng-22-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_22_devs__data_eng_22_data_rw" {
  group      = aws_iam_group.data_eng_22_devs.name
  policy_arn = aws_iam_policy.data_eng_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_22_devs__data_eng_22_ops" {
  group      = aws_iam_group.data_eng_22_devs.name
  policy_arn = aws_iam_policy.data_eng_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_22_devs__base_readonly" {
  group      = aws_iam_group.data_eng_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_22_devs__self_service" {
  group      = aws_iam_group.data_eng_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_23_analysts" {
  name = "solor-1njchy-data-eng-23-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_23_analysts__data_eng_23_read" {
  group      = aws_iam_group.data_eng_23_analysts.name
  policy_arn = aws_iam_policy.data_eng_23_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_23_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_23_devs" {
  name = "solor-1njchy-data-eng-23-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_23_devs__data_eng_23_data_rw" {
  group      = aws_iam_group.data_eng_23_devs.name
  policy_arn = aws_iam_policy.data_eng_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_23_devs__data_eng_23_ops" {
  group      = aws_iam_group.data_eng_23_devs.name
  policy_arn = aws_iam_policy.data_eng_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_23_devs__base_readonly" {
  group      = aws_iam_group.data_eng_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_23_devs__self_service" {
  group      = aws_iam_group.data_eng_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_24_analysts" {
  name = "solor-1njchy-data-eng-24-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_24_analysts__data_eng_24_read" {
  group      = aws_iam_group.data_eng_24_analysts.name
  policy_arn = aws_iam_policy.data_eng_24_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_24_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_24_devs" {
  name = "solor-1njchy-data-eng-24-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_24_devs__data_eng_24_data_rw" {
  group      = aws_iam_group.data_eng_24_devs.name
  policy_arn = aws_iam_policy.data_eng_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_24_devs__data_eng_24_ops" {
  group      = aws_iam_group.data_eng_24_devs.name
  policy_arn = aws_iam_policy.data_eng_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_24_devs__base_readonly" {
  group      = aws_iam_group.data_eng_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_24_devs__self_service" {
  group      = aws_iam_group.data_eng_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_25_analysts" {
  name = "solor-1njchy-data-eng-25-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_25_analysts__data_eng_25_read" {
  group      = aws_iam_group.data_eng_25_analysts.name
  policy_arn = aws_iam_policy.data_eng_25_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_25_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_25_devs" {
  name = "solor-1njchy-data-eng-25-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_25_devs__data_eng_25_data_rw" {
  group      = aws_iam_group.data_eng_25_devs.name
  policy_arn = aws_iam_policy.data_eng_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_25_devs__data_eng_25_ops" {
  group      = aws_iam_group.data_eng_25_devs.name
  policy_arn = aws_iam_policy.data_eng_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_25_devs__base_readonly" {
  group      = aws_iam_group.data_eng_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_25_devs__self_service" {
  group      = aws_iam_group.data_eng_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_26_analysts" {
  name = "solor-1njchy-data-eng-26-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_26_analysts__data_eng_26_read" {
  group      = aws_iam_group.data_eng_26_analysts.name
  policy_arn = aws_iam_policy.data_eng_26_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_26_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_26_devs" {
  name = "solor-1njchy-data-eng-26-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_26_devs__data_eng_26_data_rw" {
  group      = aws_iam_group.data_eng_26_devs.name
  policy_arn = aws_iam_policy.data_eng_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_26_devs__data_eng_26_ops" {
  group      = aws_iam_group.data_eng_26_devs.name
  policy_arn = aws_iam_policy.data_eng_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_26_devs__base_readonly" {
  group      = aws_iam_group.data_eng_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_26_devs__self_service" {
  group      = aws_iam_group.data_eng_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_27_analysts" {
  name = "solor-1njchy-data-eng-27-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_27_analysts__data_eng_27_read" {
  group      = aws_iam_group.data_eng_27_analysts.name
  policy_arn = aws_iam_policy.data_eng_27_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_27_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_27_devs" {
  name = "solor-1njchy-data-eng-27-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_27_devs__data_eng_27_data_rw" {
  group      = aws_iam_group.data_eng_27_devs.name
  policy_arn = aws_iam_policy.data_eng_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_27_devs__data_eng_27_ops" {
  group      = aws_iam_group.data_eng_27_devs.name
  policy_arn = aws_iam_policy.data_eng_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_27_devs__base_readonly" {
  group      = aws_iam_group.data_eng_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_27_devs__self_service" {
  group      = aws_iam_group.data_eng_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_28_analysts" {
  name = "solor-1njchy-data-eng-28-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_28_analysts__data_eng_28_read" {
  group      = aws_iam_group.data_eng_28_analysts.name
  policy_arn = aws_iam_policy.data_eng_28_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_28_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_28_devs" {
  name = "solor-1njchy-data-eng-28-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_28_devs__data_eng_28_data_rw" {
  group      = aws_iam_group.data_eng_28_devs.name
  policy_arn = aws_iam_policy.data_eng_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_28_devs__data_eng_28_ops" {
  group      = aws_iam_group.data_eng_28_devs.name
  policy_arn = aws_iam_policy.data_eng_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_28_devs__base_readonly" {
  group      = aws_iam_group.data_eng_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_28_devs__self_service" {
  group      = aws_iam_group.data_eng_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_29_analysts" {
  name = "solor-1njchy-data-eng-29-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_29_analysts__data_eng_29_read" {
  group      = aws_iam_group.data_eng_29_analysts.name
  policy_arn = aws_iam_policy.data_eng_29_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_29_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_29_devs" {
  name = "solor-1njchy-data-eng-29-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_29_devs__data_eng_29_data_rw" {
  group      = aws_iam_group.data_eng_29_devs.name
  policy_arn = aws_iam_policy.data_eng_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_29_devs__data_eng_29_ops" {
  group      = aws_iam_group.data_eng_29_devs.name
  policy_arn = aws_iam_policy.data_eng_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_29_devs__base_readonly" {
  group      = aws_iam_group.data_eng_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_29_devs__self_service" {
  group      = aws_iam_group.data_eng_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_3_analysts" {
  name = "solor-1njchy-data-eng-3-analysts"
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
  name = "solor-1njchy-data-eng-3-devs"
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

resource "aws_iam_group" "data_eng_30_analysts" {
  name = "solor-1njchy-data-eng-30-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_30_analysts__data_eng_30_read" {
  group      = aws_iam_group.data_eng_30_analysts.name
  policy_arn = aws_iam_policy.data_eng_30_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_30_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_30_devs" {
  name = "solor-1njchy-data-eng-30-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_30_devs__data_eng_30_data_rw" {
  group      = aws_iam_group.data_eng_30_devs.name
  policy_arn = aws_iam_policy.data_eng_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_30_devs__data_eng_30_ops" {
  group      = aws_iam_group.data_eng_30_devs.name
  policy_arn = aws_iam_policy.data_eng_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_30_devs__base_readonly" {
  group      = aws_iam_group.data_eng_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_30_devs__self_service" {
  group      = aws_iam_group.data_eng_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_31_analysts" {
  name = "solor-1njchy-data-eng-31-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_31_analysts__data_eng_31_read" {
  group      = aws_iam_group.data_eng_31_analysts.name
  policy_arn = aws_iam_policy.data_eng_31_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_31_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_31_devs" {
  name = "solor-1njchy-data-eng-31-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_31_devs__data_eng_31_data_rw" {
  group      = aws_iam_group.data_eng_31_devs.name
  policy_arn = aws_iam_policy.data_eng_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_31_devs__data_eng_31_ops" {
  group      = aws_iam_group.data_eng_31_devs.name
  policy_arn = aws_iam_policy.data_eng_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_31_devs__base_readonly" {
  group      = aws_iam_group.data_eng_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_31_devs__self_service" {
  group      = aws_iam_group.data_eng_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_32_analysts" {
  name = "solor-1njchy-data-eng-32-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_32_analysts__data_eng_32_read" {
  group      = aws_iam_group.data_eng_32_analysts.name
  policy_arn = aws_iam_policy.data_eng_32_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_32_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_32_devs" {
  name = "solor-1njchy-data-eng-32-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_32_devs__data_eng_32_data_rw" {
  group      = aws_iam_group.data_eng_32_devs.name
  policy_arn = aws_iam_policy.data_eng_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_32_devs__data_eng_32_ops" {
  group      = aws_iam_group.data_eng_32_devs.name
  policy_arn = aws_iam_policy.data_eng_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_32_devs__base_readonly" {
  group      = aws_iam_group.data_eng_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_32_devs__self_service" {
  group      = aws_iam_group.data_eng_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_33_analysts" {
  name = "solor-1njchy-data-eng-33-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_33_analysts__data_eng_33_read" {
  group      = aws_iam_group.data_eng_33_analysts.name
  policy_arn = aws_iam_policy.data_eng_33_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_33_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_33_devs" {
  name = "solor-1njchy-data-eng-33-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_33_devs__data_eng_33_data_rw" {
  group      = aws_iam_group.data_eng_33_devs.name
  policy_arn = aws_iam_policy.data_eng_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_33_devs__data_eng_33_ops" {
  group      = aws_iam_group.data_eng_33_devs.name
  policy_arn = aws_iam_policy.data_eng_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_33_devs__base_readonly" {
  group      = aws_iam_group.data_eng_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_33_devs__self_service" {
  group      = aws_iam_group.data_eng_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_34_analysts" {
  name = "solor-1njchy-data-eng-34-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_34_analysts__data_eng_34_read" {
  group      = aws_iam_group.data_eng_34_analysts.name
  policy_arn = aws_iam_policy.data_eng_34_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_34_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_34_devs" {
  name = "solor-1njchy-data-eng-34-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_34_devs__data_eng_34_data_rw" {
  group      = aws_iam_group.data_eng_34_devs.name
  policy_arn = aws_iam_policy.data_eng_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_34_devs__data_eng_34_ops" {
  group      = aws_iam_group.data_eng_34_devs.name
  policy_arn = aws_iam_policy.data_eng_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_34_devs__base_readonly" {
  group      = aws_iam_group.data_eng_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_34_devs__self_service" {
  group      = aws_iam_group.data_eng_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_35_analysts" {
  name = "solor-1njchy-data-eng-35-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_35_analysts__data_eng_35_read" {
  group      = aws_iam_group.data_eng_35_analysts.name
  policy_arn = aws_iam_policy.data_eng_35_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_35_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_35_devs" {
  name = "solor-1njchy-data-eng-35-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_35_devs__data_eng_35_data_rw" {
  group      = aws_iam_group.data_eng_35_devs.name
  policy_arn = aws_iam_policy.data_eng_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_35_devs__data_eng_35_ops" {
  group      = aws_iam_group.data_eng_35_devs.name
  policy_arn = aws_iam_policy.data_eng_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_35_devs__base_readonly" {
  group      = aws_iam_group.data_eng_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_35_devs__self_service" {
  group      = aws_iam_group.data_eng_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_36_analysts" {
  name = "solor-1njchy-data-eng-36-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_36_analysts__data_eng_36_read" {
  group      = aws_iam_group.data_eng_36_analysts.name
  policy_arn = aws_iam_policy.data_eng_36_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_36_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_36_devs" {
  name = "solor-1njchy-data-eng-36-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_36_devs__data_eng_36_data_rw" {
  group      = aws_iam_group.data_eng_36_devs.name
  policy_arn = aws_iam_policy.data_eng_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_36_devs__data_eng_36_ops" {
  group      = aws_iam_group.data_eng_36_devs.name
  policy_arn = aws_iam_policy.data_eng_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_36_devs__base_readonly" {
  group      = aws_iam_group.data_eng_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_36_devs__self_service" {
  group      = aws_iam_group.data_eng_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_37_analysts" {
  name = "solor-1njchy-data-eng-37-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_37_analysts__data_eng_37_read" {
  group      = aws_iam_group.data_eng_37_analysts.name
  policy_arn = aws_iam_policy.data_eng_37_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_37_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_37_devs" {
  name = "solor-1njchy-data-eng-37-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_37_devs__data_eng_37_data_rw" {
  group      = aws_iam_group.data_eng_37_devs.name
  policy_arn = aws_iam_policy.data_eng_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_37_devs__data_eng_37_ops" {
  group      = aws_iam_group.data_eng_37_devs.name
  policy_arn = aws_iam_policy.data_eng_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_37_devs__base_readonly" {
  group      = aws_iam_group.data_eng_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_37_devs__self_service" {
  group      = aws_iam_group.data_eng_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_38_analysts" {
  name = "solor-1njchy-data-eng-38-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_38_analysts__data_eng_38_read" {
  group      = aws_iam_group.data_eng_38_analysts.name
  policy_arn = aws_iam_policy.data_eng_38_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_38_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_38_devs" {
  name = "solor-1njchy-data-eng-38-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_38_devs__data_eng_38_data_rw" {
  group      = aws_iam_group.data_eng_38_devs.name
  policy_arn = aws_iam_policy.data_eng_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_38_devs__data_eng_38_ops" {
  group      = aws_iam_group.data_eng_38_devs.name
  policy_arn = aws_iam_policy.data_eng_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_38_devs__base_readonly" {
  group      = aws_iam_group.data_eng_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_38_devs__self_service" {
  group      = aws_iam_group.data_eng_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_39_analysts" {
  name = "solor-1njchy-data-eng-39-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_39_analysts__data_eng_39_read" {
  group      = aws_iam_group.data_eng_39_analysts.name
  policy_arn = aws_iam_policy.data_eng_39_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_39_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_39_devs" {
  name = "solor-1njchy-data-eng-39-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_39_devs__data_eng_39_data_rw" {
  group      = aws_iam_group.data_eng_39_devs.name
  policy_arn = aws_iam_policy.data_eng_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_39_devs__data_eng_39_ops" {
  group      = aws_iam_group.data_eng_39_devs.name
  policy_arn = aws_iam_policy.data_eng_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_39_devs__base_readonly" {
  group      = aws_iam_group.data_eng_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_39_devs__self_service" {
  group      = aws_iam_group.data_eng_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_4_analysts" {
  name = "solor-1njchy-data-eng-4-analysts"
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
  name = "solor-1njchy-data-eng-4-devs"
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

resource "aws_iam_group" "data_eng_40_analysts" {
  name = "solor-1njchy-data-eng-40-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_40_analysts__data_eng_40_read" {
  group      = aws_iam_group.data_eng_40_analysts.name
  policy_arn = aws_iam_policy.data_eng_40_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_40_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_40_devs" {
  name = "solor-1njchy-data-eng-40-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_40_devs__data_eng_40_data_rw" {
  group      = aws_iam_group.data_eng_40_devs.name
  policy_arn = aws_iam_policy.data_eng_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_40_devs__data_eng_40_ops" {
  group      = aws_iam_group.data_eng_40_devs.name
  policy_arn = aws_iam_policy.data_eng_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_40_devs__base_readonly" {
  group      = aws_iam_group.data_eng_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_40_devs__self_service" {
  group      = aws_iam_group.data_eng_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_41_analysts" {
  name = "solor-1njchy-data-eng-41-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_41_analysts__data_eng_41_read" {
  group      = aws_iam_group.data_eng_41_analysts.name
  policy_arn = aws_iam_policy.data_eng_41_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_41_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_41_devs" {
  name = "solor-1njchy-data-eng-41-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_41_devs__data_eng_41_data_rw" {
  group      = aws_iam_group.data_eng_41_devs.name
  policy_arn = aws_iam_policy.data_eng_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_41_devs__data_eng_41_ops" {
  group      = aws_iam_group.data_eng_41_devs.name
  policy_arn = aws_iam_policy.data_eng_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_41_devs__base_readonly" {
  group      = aws_iam_group.data_eng_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_41_devs__self_service" {
  group      = aws_iam_group.data_eng_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_42_analysts" {
  name = "solor-1njchy-data-eng-42-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_42_analysts__data_eng_42_read" {
  group      = aws_iam_group.data_eng_42_analysts.name
  policy_arn = aws_iam_policy.data_eng_42_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_42_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_42_devs" {
  name = "solor-1njchy-data-eng-42-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_42_devs__data_eng_42_data_rw" {
  group      = aws_iam_group.data_eng_42_devs.name
  policy_arn = aws_iam_policy.data_eng_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_42_devs__data_eng_42_ops" {
  group      = aws_iam_group.data_eng_42_devs.name
  policy_arn = aws_iam_policy.data_eng_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_42_devs__base_readonly" {
  group      = aws_iam_group.data_eng_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_42_devs__self_service" {
  group      = aws_iam_group.data_eng_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_43_analysts" {
  name = "solor-1njchy-data-eng-43-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_43_analysts__data_eng_43_read" {
  group      = aws_iam_group.data_eng_43_analysts.name
  policy_arn = aws_iam_policy.data_eng_43_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_43_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_43_devs" {
  name = "solor-1njchy-data-eng-43-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_43_devs__data_eng_43_data_rw" {
  group      = aws_iam_group.data_eng_43_devs.name
  policy_arn = aws_iam_policy.data_eng_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_43_devs__data_eng_43_ops" {
  group      = aws_iam_group.data_eng_43_devs.name
  policy_arn = aws_iam_policy.data_eng_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_43_devs__base_readonly" {
  group      = aws_iam_group.data_eng_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_43_devs__self_service" {
  group      = aws_iam_group.data_eng_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_44_analysts" {
  name = "solor-1njchy-data-eng-44-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_44_analysts__data_eng_44_read" {
  group      = aws_iam_group.data_eng_44_analysts.name
  policy_arn = aws_iam_policy.data_eng_44_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_44_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_44_devs" {
  name = "solor-1njchy-data-eng-44-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_44_devs__data_eng_44_data_rw" {
  group      = aws_iam_group.data_eng_44_devs.name
  policy_arn = aws_iam_policy.data_eng_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_44_devs__data_eng_44_ops" {
  group      = aws_iam_group.data_eng_44_devs.name
  policy_arn = aws_iam_policy.data_eng_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_44_devs__base_readonly" {
  group      = aws_iam_group.data_eng_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_44_devs__self_service" {
  group      = aws_iam_group.data_eng_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_45_analysts" {
  name = "solor-1njchy-data-eng-45-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_45_analysts__data_eng_45_read" {
  group      = aws_iam_group.data_eng_45_analysts.name
  policy_arn = aws_iam_policy.data_eng_45_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_45_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_45_devs" {
  name = "solor-1njchy-data-eng-45-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_45_devs__data_eng_45_data_rw" {
  group      = aws_iam_group.data_eng_45_devs.name
  policy_arn = aws_iam_policy.data_eng_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_45_devs__data_eng_45_ops" {
  group      = aws_iam_group.data_eng_45_devs.name
  policy_arn = aws_iam_policy.data_eng_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_45_devs__base_readonly" {
  group      = aws_iam_group.data_eng_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_45_devs__self_service" {
  group      = aws_iam_group.data_eng_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_46_analysts" {
  name = "solor-1njchy-data-eng-46-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_46_analysts__data_eng_46_read" {
  group      = aws_iam_group.data_eng_46_analysts.name
  policy_arn = aws_iam_policy.data_eng_46_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_46_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_46_devs" {
  name = "solor-1njchy-data-eng-46-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_46_devs__data_eng_46_data_rw" {
  group      = aws_iam_group.data_eng_46_devs.name
  policy_arn = aws_iam_policy.data_eng_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_46_devs__data_eng_46_ops" {
  group      = aws_iam_group.data_eng_46_devs.name
  policy_arn = aws_iam_policy.data_eng_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_46_devs__base_readonly" {
  group      = aws_iam_group.data_eng_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_46_devs__self_service" {
  group      = aws_iam_group.data_eng_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_47_analysts" {
  name = "solor-1njchy-data-eng-47-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_47_analysts__data_eng_47_read" {
  group      = aws_iam_group.data_eng_47_analysts.name
  policy_arn = aws_iam_policy.data_eng_47_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_47_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_47_devs" {
  name = "solor-1njchy-data-eng-47-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_47_devs__data_eng_47_data_rw" {
  group      = aws_iam_group.data_eng_47_devs.name
  policy_arn = aws_iam_policy.data_eng_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_47_devs__data_eng_47_ops" {
  group      = aws_iam_group.data_eng_47_devs.name
  policy_arn = aws_iam_policy.data_eng_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_47_devs__base_readonly" {
  group      = aws_iam_group.data_eng_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_47_devs__self_service" {
  group      = aws_iam_group.data_eng_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_48_analysts" {
  name = "solor-1njchy-data-eng-48-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_48_analysts__data_eng_48_read" {
  group      = aws_iam_group.data_eng_48_analysts.name
  policy_arn = aws_iam_policy.data_eng_48_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_48_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_48_devs" {
  name = "solor-1njchy-data-eng-48-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_48_devs__data_eng_48_data_rw" {
  group      = aws_iam_group.data_eng_48_devs.name
  policy_arn = aws_iam_policy.data_eng_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_48_devs__data_eng_48_ops" {
  group      = aws_iam_group.data_eng_48_devs.name
  policy_arn = aws_iam_policy.data_eng_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_48_devs__base_readonly" {
  group      = aws_iam_group.data_eng_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_48_devs__self_service" {
  group      = aws_iam_group.data_eng_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_49_analysts" {
  name = "solor-1njchy-data-eng-49-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_49_analysts__data_eng_49_read" {
  group      = aws_iam_group.data_eng_49_analysts.name
  policy_arn = aws_iam_policy.data_eng_49_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_49_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_49_devs" {
  name = "solor-1njchy-data-eng-49-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_49_devs__data_eng_49_data_rw" {
  group      = aws_iam_group.data_eng_49_devs.name
  policy_arn = aws_iam_policy.data_eng_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_49_devs__data_eng_49_ops" {
  group      = aws_iam_group.data_eng_49_devs.name
  policy_arn = aws_iam_policy.data_eng_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_49_devs__base_readonly" {
  group      = aws_iam_group.data_eng_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_49_devs__self_service" {
  group      = aws_iam_group.data_eng_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_5_analysts" {
  name = "solor-1njchy-data-eng-5-analysts"
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
  name = "solor-1njchy-data-eng-5-devs"
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

resource "aws_iam_group" "data_eng_50_analysts" {
  name = "solor-1njchy-data-eng-50-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_50_analysts__data_eng_50_read" {
  group      = aws_iam_group.data_eng_50_analysts.name
  policy_arn = aws_iam_policy.data_eng_50_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_50_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_50_devs" {
  name = "solor-1njchy-data-eng-50-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_50_devs__data_eng_50_data_rw" {
  group      = aws_iam_group.data_eng_50_devs.name
  policy_arn = aws_iam_policy.data_eng_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_50_devs__data_eng_50_ops" {
  group      = aws_iam_group.data_eng_50_devs.name
  policy_arn = aws_iam_policy.data_eng_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_50_devs__base_readonly" {
  group      = aws_iam_group.data_eng_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_50_devs__self_service" {
  group      = aws_iam_group.data_eng_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_6_analysts" {
  name = "solor-1njchy-data-eng-6-analysts"
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
  name = "solor-1njchy-data-eng-6-devs"
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

resource "aws_iam_group" "data_eng_7_analysts" {
  name = "solor-1njchy-data-eng-7-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_7_analysts__data_eng_7_read" {
  group      = aws_iam_group.data_eng_7_analysts.name
  policy_arn = aws_iam_policy.data_eng_7_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_7_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_7_devs" {
  name = "solor-1njchy-data-eng-7-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_7_devs__data_eng_7_data_rw" {
  group      = aws_iam_group.data_eng_7_devs.name
  policy_arn = aws_iam_policy.data_eng_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_7_devs__data_eng_7_ops" {
  group      = aws_iam_group.data_eng_7_devs.name
  policy_arn = aws_iam_policy.data_eng_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_7_devs__base_readonly" {
  group      = aws_iam_group.data_eng_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_7_devs__self_service" {
  group      = aws_iam_group.data_eng_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_8_analysts" {
  name = "solor-1njchy-data-eng-8-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_8_analysts__data_eng_8_read" {
  group      = aws_iam_group.data_eng_8_analysts.name
  policy_arn = aws_iam_policy.data_eng_8_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_8_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_8_devs" {
  name = "solor-1njchy-data-eng-8-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_8_devs__data_eng_8_data_rw" {
  group      = aws_iam_group.data_eng_8_devs.name
  policy_arn = aws_iam_policy.data_eng_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_8_devs__data_eng_8_ops" {
  group      = aws_iam_group.data_eng_8_devs.name
  policy_arn = aws_iam_policy.data_eng_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_8_devs__base_readonly" {
  group      = aws_iam_group.data_eng_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_8_devs__self_service" {
  group      = aws_iam_group.data_eng_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_9_analysts" {
  name = "solor-1njchy-data-eng-9-analysts"
}

resource "aws_iam_group_policy_attachment" "data_eng_9_analysts__data_eng_9_read" {
  group      = aws_iam_group.data_eng_9_analysts.name
  policy_arn = aws_iam_policy.data_eng_9_read.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_9_analysts__base_readonly" {
  group      = aws_iam_group.data_eng_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_eng_9_devs" {
  name = "solor-1njchy-data-eng-9-devs"
}

resource "aws_iam_group_policy_attachment" "data_eng_9_devs__data_eng_9_data_rw" {
  group      = aws_iam_group.data_eng_9_devs.name
  policy_arn = aws_iam_policy.data_eng_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_9_devs__data_eng_9_ops" {
  group      = aws_iam_group.data_eng_9_devs.name
  policy_arn = aws_iam_policy.data_eng_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_9_devs__base_readonly" {
  group      = aws_iam_group.data_eng_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_eng_9_devs__self_service" {
  group      = aws_iam_group.data_eng_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_eng_analysts" {
  name = "solor-1njchy-data-eng-analysts"
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
  name = "solor-1njchy-data-eng-devs"
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

resource "aws_iam_group" "fraud_10_analysts" {
  name = "solor-1njchy-fraud-10-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_10_analysts__fraud_10_read" {
  group      = aws_iam_group.fraud_10_analysts.name
  policy_arn = aws_iam_policy.fraud_10_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_10_analysts__base_readonly" {
  group      = aws_iam_group.fraud_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_10_devs" {
  name = "solor-1njchy-fraud-10-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_10_devs__fraud_10_data_rw" {
  group      = aws_iam_group.fraud_10_devs.name
  policy_arn = aws_iam_policy.fraud_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_10_devs__fraud_10_ops" {
  group      = aws_iam_group.fraud_10_devs.name
  policy_arn = aws_iam_policy.fraud_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_10_devs__base_readonly" {
  group      = aws_iam_group.fraud_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_10_devs__self_service" {
  group      = aws_iam_group.fraud_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_11_analysts" {
  name = "solor-1njchy-fraud-11-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_11_analysts__fraud_11_read" {
  group      = aws_iam_group.fraud_11_analysts.name
  policy_arn = aws_iam_policy.fraud_11_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_11_analysts__base_readonly" {
  group      = aws_iam_group.fraud_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_11_devs" {
  name = "solor-1njchy-fraud-11-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_11_devs__fraud_11_data_rw" {
  group      = aws_iam_group.fraud_11_devs.name
  policy_arn = aws_iam_policy.fraud_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_11_devs__fraud_11_ops" {
  group      = aws_iam_group.fraud_11_devs.name
  policy_arn = aws_iam_policy.fraud_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_11_devs__base_readonly" {
  group      = aws_iam_group.fraud_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_11_devs__self_service" {
  group      = aws_iam_group.fraud_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_12_analysts" {
  name = "solor-1njchy-fraud-12-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_12_analysts__fraud_12_read" {
  group      = aws_iam_group.fraud_12_analysts.name
  policy_arn = aws_iam_policy.fraud_12_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_12_analysts__base_readonly" {
  group      = aws_iam_group.fraud_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_12_devs" {
  name = "solor-1njchy-fraud-12-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_12_devs__fraud_12_data_rw" {
  group      = aws_iam_group.fraud_12_devs.name
  policy_arn = aws_iam_policy.fraud_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_12_devs__fraud_12_ops" {
  group      = aws_iam_group.fraud_12_devs.name
  policy_arn = aws_iam_policy.fraud_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_12_devs__base_readonly" {
  group      = aws_iam_group.fraud_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_12_devs__self_service" {
  group      = aws_iam_group.fraud_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_13_analysts" {
  name = "solor-1njchy-fraud-13-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_13_analysts__fraud_13_read" {
  group      = aws_iam_group.fraud_13_analysts.name
  policy_arn = aws_iam_policy.fraud_13_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_13_analysts__base_readonly" {
  group      = aws_iam_group.fraud_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_13_devs" {
  name = "solor-1njchy-fraud-13-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_13_devs__fraud_13_data_rw" {
  group      = aws_iam_group.fraud_13_devs.name
  policy_arn = aws_iam_policy.fraud_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_13_devs__fraud_13_ops" {
  group      = aws_iam_group.fraud_13_devs.name
  policy_arn = aws_iam_policy.fraud_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_13_devs__base_readonly" {
  group      = aws_iam_group.fraud_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_13_devs__self_service" {
  group      = aws_iam_group.fraud_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_14_analysts" {
  name = "solor-1njchy-fraud-14-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_14_analysts__fraud_14_read" {
  group      = aws_iam_group.fraud_14_analysts.name
  policy_arn = aws_iam_policy.fraud_14_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_14_analysts__base_readonly" {
  group      = aws_iam_group.fraud_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_14_devs" {
  name = "solor-1njchy-fraud-14-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_14_devs__fraud_14_data_rw" {
  group      = aws_iam_group.fraud_14_devs.name
  policy_arn = aws_iam_policy.fraud_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_14_devs__fraud_14_ops" {
  group      = aws_iam_group.fraud_14_devs.name
  policy_arn = aws_iam_policy.fraud_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_14_devs__base_readonly" {
  group      = aws_iam_group.fraud_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_14_devs__self_service" {
  group      = aws_iam_group.fraud_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_15_analysts" {
  name = "solor-1njchy-fraud-15-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_15_analysts__fraud_15_read" {
  group      = aws_iam_group.fraud_15_analysts.name
  policy_arn = aws_iam_policy.fraud_15_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_15_analysts__base_readonly" {
  group      = aws_iam_group.fraud_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_15_devs" {
  name = "solor-1njchy-fraud-15-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_15_devs__fraud_15_data_rw" {
  group      = aws_iam_group.fraud_15_devs.name
  policy_arn = aws_iam_policy.fraud_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_15_devs__fraud_15_ops" {
  group      = aws_iam_group.fraud_15_devs.name
  policy_arn = aws_iam_policy.fraud_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_15_devs__base_readonly" {
  group      = aws_iam_group.fraud_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_15_devs__self_service" {
  group      = aws_iam_group.fraud_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_16_analysts" {
  name = "solor-1njchy-fraud-16-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_16_analysts__fraud_16_read" {
  group      = aws_iam_group.fraud_16_analysts.name
  policy_arn = aws_iam_policy.fraud_16_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_16_analysts__base_readonly" {
  group      = aws_iam_group.fraud_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_16_devs" {
  name = "solor-1njchy-fraud-16-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_16_devs__fraud_16_data_rw" {
  group      = aws_iam_group.fraud_16_devs.name
  policy_arn = aws_iam_policy.fraud_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_16_devs__fraud_16_ops" {
  group      = aws_iam_group.fraud_16_devs.name
  policy_arn = aws_iam_policy.fraud_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_16_devs__base_readonly" {
  group      = aws_iam_group.fraud_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_16_devs__self_service" {
  group      = aws_iam_group.fraud_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_17_analysts" {
  name = "solor-1njchy-fraud-17-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_17_analysts__fraud_17_read" {
  group      = aws_iam_group.fraud_17_analysts.name
  policy_arn = aws_iam_policy.fraud_17_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_17_analysts__base_readonly" {
  group      = aws_iam_group.fraud_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_17_devs" {
  name = "solor-1njchy-fraud-17-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_17_devs__fraud_17_data_rw" {
  group      = aws_iam_group.fraud_17_devs.name
  policy_arn = aws_iam_policy.fraud_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_17_devs__fraud_17_ops" {
  group      = aws_iam_group.fraud_17_devs.name
  policy_arn = aws_iam_policy.fraud_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_17_devs__base_readonly" {
  group      = aws_iam_group.fraud_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_17_devs__self_service" {
  group      = aws_iam_group.fraud_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_18_analysts" {
  name = "solor-1njchy-fraud-18-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_18_analysts__fraud_18_read" {
  group      = aws_iam_group.fraud_18_analysts.name
  policy_arn = aws_iam_policy.fraud_18_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_18_analysts__base_readonly" {
  group      = aws_iam_group.fraud_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_18_devs" {
  name = "solor-1njchy-fraud-18-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_18_devs__fraud_18_data_rw" {
  group      = aws_iam_group.fraud_18_devs.name
  policy_arn = aws_iam_policy.fraud_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_18_devs__fraud_18_ops" {
  group      = aws_iam_group.fraud_18_devs.name
  policy_arn = aws_iam_policy.fraud_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_18_devs__base_readonly" {
  group      = aws_iam_group.fraud_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_18_devs__self_service" {
  group      = aws_iam_group.fraud_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_19_analysts" {
  name = "solor-1njchy-fraud-19-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_19_analysts__fraud_19_read" {
  group      = aws_iam_group.fraud_19_analysts.name
  policy_arn = aws_iam_policy.fraud_19_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_19_analysts__base_readonly" {
  group      = aws_iam_group.fraud_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_19_devs" {
  name = "solor-1njchy-fraud-19-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_19_devs__fraud_19_data_rw" {
  group      = aws_iam_group.fraud_19_devs.name
  policy_arn = aws_iam_policy.fraud_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_19_devs__fraud_19_ops" {
  group      = aws_iam_group.fraud_19_devs.name
  policy_arn = aws_iam_policy.fraud_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_19_devs__base_readonly" {
  group      = aws_iam_group.fraud_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_19_devs__self_service" {
  group      = aws_iam_group.fraud_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_2_analysts" {
  name = "solor-1njchy-fraud-2-analysts"
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
  name = "solor-1njchy-fraud-2-devs"
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

resource "aws_iam_group" "fraud_20_analysts" {
  name = "solor-1njchy-fraud-20-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_20_analysts__fraud_20_read" {
  group      = aws_iam_group.fraud_20_analysts.name
  policy_arn = aws_iam_policy.fraud_20_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_20_analysts__base_readonly" {
  group      = aws_iam_group.fraud_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_20_devs" {
  name = "solor-1njchy-fraud-20-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_20_devs__fraud_20_data_rw" {
  group      = aws_iam_group.fraud_20_devs.name
  policy_arn = aws_iam_policy.fraud_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_20_devs__fraud_20_ops" {
  group      = aws_iam_group.fraud_20_devs.name
  policy_arn = aws_iam_policy.fraud_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_20_devs__base_readonly" {
  group      = aws_iam_group.fraud_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_20_devs__self_service" {
  group      = aws_iam_group.fraud_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_21_analysts" {
  name = "solor-1njchy-fraud-21-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_21_analysts__fraud_21_read" {
  group      = aws_iam_group.fraud_21_analysts.name
  policy_arn = aws_iam_policy.fraud_21_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_21_analysts__base_readonly" {
  group      = aws_iam_group.fraud_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_21_devs" {
  name = "solor-1njchy-fraud-21-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_21_devs__fraud_21_data_rw" {
  group      = aws_iam_group.fraud_21_devs.name
  policy_arn = aws_iam_policy.fraud_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_21_devs__fraud_21_ops" {
  group      = aws_iam_group.fraud_21_devs.name
  policy_arn = aws_iam_policy.fraud_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_21_devs__base_readonly" {
  group      = aws_iam_group.fraud_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_21_devs__self_service" {
  group      = aws_iam_group.fraud_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_22_analysts" {
  name = "solor-1njchy-fraud-22-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_22_analysts__fraud_22_read" {
  group      = aws_iam_group.fraud_22_analysts.name
  policy_arn = aws_iam_policy.fraud_22_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_22_analysts__base_readonly" {
  group      = aws_iam_group.fraud_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_22_devs" {
  name = "solor-1njchy-fraud-22-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_22_devs__fraud_22_data_rw" {
  group      = aws_iam_group.fraud_22_devs.name
  policy_arn = aws_iam_policy.fraud_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_22_devs__fraud_22_ops" {
  group      = aws_iam_group.fraud_22_devs.name
  policy_arn = aws_iam_policy.fraud_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_22_devs__base_readonly" {
  group      = aws_iam_group.fraud_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_22_devs__self_service" {
  group      = aws_iam_group.fraud_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_23_analysts" {
  name = "solor-1njchy-fraud-23-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_23_analysts__fraud_23_read" {
  group      = aws_iam_group.fraud_23_analysts.name
  policy_arn = aws_iam_policy.fraud_23_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_23_analysts__base_readonly" {
  group      = aws_iam_group.fraud_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_23_devs" {
  name = "solor-1njchy-fraud-23-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_23_devs__fraud_23_data_rw" {
  group      = aws_iam_group.fraud_23_devs.name
  policy_arn = aws_iam_policy.fraud_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_23_devs__fraud_23_ops" {
  group      = aws_iam_group.fraud_23_devs.name
  policy_arn = aws_iam_policy.fraud_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_23_devs__base_readonly" {
  group      = aws_iam_group.fraud_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_23_devs__self_service" {
  group      = aws_iam_group.fraud_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_24_analysts" {
  name = "solor-1njchy-fraud-24-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_24_analysts__fraud_24_read" {
  group      = aws_iam_group.fraud_24_analysts.name
  policy_arn = aws_iam_policy.fraud_24_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_24_analysts__base_readonly" {
  group      = aws_iam_group.fraud_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_24_devs" {
  name = "solor-1njchy-fraud-24-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_24_devs__fraud_24_data_rw" {
  group      = aws_iam_group.fraud_24_devs.name
  policy_arn = aws_iam_policy.fraud_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_24_devs__fraud_24_ops" {
  group      = aws_iam_group.fraud_24_devs.name
  policy_arn = aws_iam_policy.fraud_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_24_devs__base_readonly" {
  group      = aws_iam_group.fraud_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_24_devs__self_service" {
  group      = aws_iam_group.fraud_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_25_analysts" {
  name = "solor-1njchy-fraud-25-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_25_analysts__fraud_25_read" {
  group      = aws_iam_group.fraud_25_analysts.name
  policy_arn = aws_iam_policy.fraud_25_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_25_analysts__base_readonly" {
  group      = aws_iam_group.fraud_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_25_devs" {
  name = "solor-1njchy-fraud-25-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_25_devs__fraud_25_data_rw" {
  group      = aws_iam_group.fraud_25_devs.name
  policy_arn = aws_iam_policy.fraud_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_25_devs__fraud_25_ops" {
  group      = aws_iam_group.fraud_25_devs.name
  policy_arn = aws_iam_policy.fraud_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_25_devs__base_readonly" {
  group      = aws_iam_group.fraud_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_25_devs__self_service" {
  group      = aws_iam_group.fraud_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_26_analysts" {
  name = "solor-1njchy-fraud-26-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_26_analysts__fraud_26_read" {
  group      = aws_iam_group.fraud_26_analysts.name
  policy_arn = aws_iam_policy.fraud_26_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_26_analysts__base_readonly" {
  group      = aws_iam_group.fraud_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_26_devs" {
  name = "solor-1njchy-fraud-26-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_26_devs__fraud_26_data_rw" {
  group      = aws_iam_group.fraud_26_devs.name
  policy_arn = aws_iam_policy.fraud_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_26_devs__fraud_26_ops" {
  group      = aws_iam_group.fraud_26_devs.name
  policy_arn = aws_iam_policy.fraud_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_26_devs__base_readonly" {
  group      = aws_iam_group.fraud_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_26_devs__self_service" {
  group      = aws_iam_group.fraud_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_27_analysts" {
  name = "solor-1njchy-fraud-27-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_27_analysts__fraud_27_read" {
  group      = aws_iam_group.fraud_27_analysts.name
  policy_arn = aws_iam_policy.fraud_27_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_27_analysts__base_readonly" {
  group      = aws_iam_group.fraud_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_27_devs" {
  name = "solor-1njchy-fraud-27-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_27_devs__fraud_27_data_rw" {
  group      = aws_iam_group.fraud_27_devs.name
  policy_arn = aws_iam_policy.fraud_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_27_devs__fraud_27_ops" {
  group      = aws_iam_group.fraud_27_devs.name
  policy_arn = aws_iam_policy.fraud_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_27_devs__base_readonly" {
  group      = aws_iam_group.fraud_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_27_devs__self_service" {
  group      = aws_iam_group.fraud_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_28_analysts" {
  name = "solor-1njchy-fraud-28-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_28_analysts__fraud_28_read" {
  group      = aws_iam_group.fraud_28_analysts.name
  policy_arn = aws_iam_policy.fraud_28_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_28_analysts__base_readonly" {
  group      = aws_iam_group.fraud_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_28_devs" {
  name = "solor-1njchy-fraud-28-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_28_devs__fraud_28_data_rw" {
  group      = aws_iam_group.fraud_28_devs.name
  policy_arn = aws_iam_policy.fraud_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_28_devs__fraud_28_ops" {
  group      = aws_iam_group.fraud_28_devs.name
  policy_arn = aws_iam_policy.fraud_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_28_devs__base_readonly" {
  group      = aws_iam_group.fraud_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_28_devs__self_service" {
  group      = aws_iam_group.fraud_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_29_analysts" {
  name = "solor-1njchy-fraud-29-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_29_analysts__fraud_29_read" {
  group      = aws_iam_group.fraud_29_analysts.name
  policy_arn = aws_iam_policy.fraud_29_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_29_analysts__base_readonly" {
  group      = aws_iam_group.fraud_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_29_devs" {
  name = "solor-1njchy-fraud-29-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_29_devs__fraud_29_data_rw" {
  group      = aws_iam_group.fraud_29_devs.name
  policy_arn = aws_iam_policy.fraud_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_29_devs__fraud_29_ops" {
  group      = aws_iam_group.fraud_29_devs.name
  policy_arn = aws_iam_policy.fraud_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_29_devs__base_readonly" {
  group      = aws_iam_group.fraud_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_29_devs__self_service" {
  group      = aws_iam_group.fraud_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_3_analysts" {
  name = "solor-1njchy-fraud-3-analysts"
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
  name = "solor-1njchy-fraud-3-devs"
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

resource "aws_iam_group" "fraud_30_analysts" {
  name = "solor-1njchy-fraud-30-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_30_analysts__fraud_30_read" {
  group      = aws_iam_group.fraud_30_analysts.name
  policy_arn = aws_iam_policy.fraud_30_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_30_analysts__base_readonly" {
  group      = aws_iam_group.fraud_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_30_devs" {
  name = "solor-1njchy-fraud-30-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_30_devs__fraud_30_data_rw" {
  group      = aws_iam_group.fraud_30_devs.name
  policy_arn = aws_iam_policy.fraud_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_30_devs__fraud_30_ops" {
  group      = aws_iam_group.fraud_30_devs.name
  policy_arn = aws_iam_policy.fraud_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_30_devs__base_readonly" {
  group      = aws_iam_group.fraud_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_30_devs__self_service" {
  group      = aws_iam_group.fraud_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_31_analysts" {
  name = "solor-1njchy-fraud-31-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_31_analysts__fraud_31_read" {
  group      = aws_iam_group.fraud_31_analysts.name
  policy_arn = aws_iam_policy.fraud_31_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_31_analysts__base_readonly" {
  group      = aws_iam_group.fraud_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_31_devs" {
  name = "solor-1njchy-fraud-31-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_31_devs__fraud_31_data_rw" {
  group      = aws_iam_group.fraud_31_devs.name
  policy_arn = aws_iam_policy.fraud_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_31_devs__fraud_31_ops" {
  group      = aws_iam_group.fraud_31_devs.name
  policy_arn = aws_iam_policy.fraud_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_31_devs__base_readonly" {
  group      = aws_iam_group.fraud_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_31_devs__self_service" {
  group      = aws_iam_group.fraud_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_32_analysts" {
  name = "solor-1njchy-fraud-32-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_32_analysts__fraud_32_read" {
  group      = aws_iam_group.fraud_32_analysts.name
  policy_arn = aws_iam_policy.fraud_32_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_32_analysts__base_readonly" {
  group      = aws_iam_group.fraud_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_32_devs" {
  name = "solor-1njchy-fraud-32-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_32_devs__fraud_32_data_rw" {
  group      = aws_iam_group.fraud_32_devs.name
  policy_arn = aws_iam_policy.fraud_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_32_devs__fraud_32_ops" {
  group      = aws_iam_group.fraud_32_devs.name
  policy_arn = aws_iam_policy.fraud_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_32_devs__base_readonly" {
  group      = aws_iam_group.fraud_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_32_devs__self_service" {
  group      = aws_iam_group.fraud_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_33_analysts" {
  name = "solor-1njchy-fraud-33-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_33_analysts__fraud_33_read" {
  group      = aws_iam_group.fraud_33_analysts.name
  policy_arn = aws_iam_policy.fraud_33_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_33_analysts__base_readonly" {
  group      = aws_iam_group.fraud_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_33_devs" {
  name = "solor-1njchy-fraud-33-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_33_devs__fraud_33_data_rw" {
  group      = aws_iam_group.fraud_33_devs.name
  policy_arn = aws_iam_policy.fraud_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_33_devs__fraud_33_ops" {
  group      = aws_iam_group.fraud_33_devs.name
  policy_arn = aws_iam_policy.fraud_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_33_devs__base_readonly" {
  group      = aws_iam_group.fraud_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_33_devs__self_service" {
  group      = aws_iam_group.fraud_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_34_analysts" {
  name = "solor-1njchy-fraud-34-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_34_analysts__fraud_34_read" {
  group      = aws_iam_group.fraud_34_analysts.name
  policy_arn = aws_iam_policy.fraud_34_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_34_analysts__base_readonly" {
  group      = aws_iam_group.fraud_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_34_devs" {
  name = "solor-1njchy-fraud-34-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_34_devs__fraud_34_data_rw" {
  group      = aws_iam_group.fraud_34_devs.name
  policy_arn = aws_iam_policy.fraud_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_34_devs__fraud_34_ops" {
  group      = aws_iam_group.fraud_34_devs.name
  policy_arn = aws_iam_policy.fraud_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_34_devs__base_readonly" {
  group      = aws_iam_group.fraud_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_34_devs__self_service" {
  group      = aws_iam_group.fraud_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_35_analysts" {
  name = "solor-1njchy-fraud-35-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_35_analysts__fraud_35_read" {
  group      = aws_iam_group.fraud_35_analysts.name
  policy_arn = aws_iam_policy.fraud_35_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_35_analysts__base_readonly" {
  group      = aws_iam_group.fraud_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_35_devs" {
  name = "solor-1njchy-fraud-35-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_35_devs__fraud_35_data_rw" {
  group      = aws_iam_group.fraud_35_devs.name
  policy_arn = aws_iam_policy.fraud_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_35_devs__fraud_35_ops" {
  group      = aws_iam_group.fraud_35_devs.name
  policy_arn = aws_iam_policy.fraud_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_35_devs__base_readonly" {
  group      = aws_iam_group.fraud_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_35_devs__self_service" {
  group      = aws_iam_group.fraud_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_36_analysts" {
  name = "solor-1njchy-fraud-36-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_36_analysts__fraud_36_read" {
  group      = aws_iam_group.fraud_36_analysts.name
  policy_arn = aws_iam_policy.fraud_36_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_36_analysts__base_readonly" {
  group      = aws_iam_group.fraud_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_36_devs" {
  name = "solor-1njchy-fraud-36-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_36_devs__fraud_36_data_rw" {
  group      = aws_iam_group.fraud_36_devs.name
  policy_arn = aws_iam_policy.fraud_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_36_devs__fraud_36_ops" {
  group      = aws_iam_group.fraud_36_devs.name
  policy_arn = aws_iam_policy.fraud_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_36_devs__base_readonly" {
  group      = aws_iam_group.fraud_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_36_devs__self_service" {
  group      = aws_iam_group.fraud_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_37_analysts" {
  name = "solor-1njchy-fraud-37-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_37_analysts__fraud_37_read" {
  group      = aws_iam_group.fraud_37_analysts.name
  policy_arn = aws_iam_policy.fraud_37_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_37_analysts__base_readonly" {
  group      = aws_iam_group.fraud_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_37_devs" {
  name = "solor-1njchy-fraud-37-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_37_devs__fraud_37_data_rw" {
  group      = aws_iam_group.fraud_37_devs.name
  policy_arn = aws_iam_policy.fraud_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_37_devs__fraud_37_ops" {
  group      = aws_iam_group.fraud_37_devs.name
  policy_arn = aws_iam_policy.fraud_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_37_devs__base_readonly" {
  group      = aws_iam_group.fraud_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_37_devs__self_service" {
  group      = aws_iam_group.fraud_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_38_analysts" {
  name = "solor-1njchy-fraud-38-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_38_analysts__fraud_38_read" {
  group      = aws_iam_group.fraud_38_analysts.name
  policy_arn = aws_iam_policy.fraud_38_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_38_analysts__base_readonly" {
  group      = aws_iam_group.fraud_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_38_devs" {
  name = "solor-1njchy-fraud-38-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_38_devs__fraud_38_data_rw" {
  group      = aws_iam_group.fraud_38_devs.name
  policy_arn = aws_iam_policy.fraud_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_38_devs__fraud_38_ops" {
  group      = aws_iam_group.fraud_38_devs.name
  policy_arn = aws_iam_policy.fraud_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_38_devs__base_readonly" {
  group      = aws_iam_group.fraud_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_38_devs__self_service" {
  group      = aws_iam_group.fraud_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_39_analysts" {
  name = "solor-1njchy-fraud-39-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_39_analysts__fraud_39_read" {
  group      = aws_iam_group.fraud_39_analysts.name
  policy_arn = aws_iam_policy.fraud_39_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_39_analysts__base_readonly" {
  group      = aws_iam_group.fraud_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_39_devs" {
  name = "solor-1njchy-fraud-39-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_39_devs__fraud_39_data_rw" {
  group      = aws_iam_group.fraud_39_devs.name
  policy_arn = aws_iam_policy.fraud_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_39_devs__fraud_39_ops" {
  group      = aws_iam_group.fraud_39_devs.name
  policy_arn = aws_iam_policy.fraud_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_39_devs__base_readonly" {
  group      = aws_iam_group.fraud_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_39_devs__self_service" {
  group      = aws_iam_group.fraud_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_4_analysts" {
  name = "solor-1njchy-fraud-4-analysts"
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
  name = "solor-1njchy-fraud-4-devs"
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

resource "aws_iam_group" "fraud_40_analysts" {
  name = "solor-1njchy-fraud-40-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_40_analysts__fraud_40_read" {
  group      = aws_iam_group.fraud_40_analysts.name
  policy_arn = aws_iam_policy.fraud_40_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_40_analysts__base_readonly" {
  group      = aws_iam_group.fraud_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_40_devs" {
  name = "solor-1njchy-fraud-40-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_40_devs__fraud_40_data_rw" {
  group      = aws_iam_group.fraud_40_devs.name
  policy_arn = aws_iam_policy.fraud_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_40_devs__fraud_40_ops" {
  group      = aws_iam_group.fraud_40_devs.name
  policy_arn = aws_iam_policy.fraud_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_40_devs__base_readonly" {
  group      = aws_iam_group.fraud_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_40_devs__self_service" {
  group      = aws_iam_group.fraud_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_41_analysts" {
  name = "solor-1njchy-fraud-41-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_41_analysts__fraud_41_read" {
  group      = aws_iam_group.fraud_41_analysts.name
  policy_arn = aws_iam_policy.fraud_41_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_41_analysts__base_readonly" {
  group      = aws_iam_group.fraud_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_41_devs" {
  name = "solor-1njchy-fraud-41-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_41_devs__fraud_41_data_rw" {
  group      = aws_iam_group.fraud_41_devs.name
  policy_arn = aws_iam_policy.fraud_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_41_devs__fraud_41_ops" {
  group      = aws_iam_group.fraud_41_devs.name
  policy_arn = aws_iam_policy.fraud_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_41_devs__base_readonly" {
  group      = aws_iam_group.fraud_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_41_devs__self_service" {
  group      = aws_iam_group.fraud_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_42_analysts" {
  name = "solor-1njchy-fraud-42-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_42_analysts__fraud_42_read" {
  group      = aws_iam_group.fraud_42_analysts.name
  policy_arn = aws_iam_policy.fraud_42_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_42_analysts__base_readonly" {
  group      = aws_iam_group.fraud_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_42_devs" {
  name = "solor-1njchy-fraud-42-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_42_devs__fraud_42_data_rw" {
  group      = aws_iam_group.fraud_42_devs.name
  policy_arn = aws_iam_policy.fraud_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_42_devs__fraud_42_ops" {
  group      = aws_iam_group.fraud_42_devs.name
  policy_arn = aws_iam_policy.fraud_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_42_devs__base_readonly" {
  group      = aws_iam_group.fraud_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_42_devs__self_service" {
  group      = aws_iam_group.fraud_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_43_analysts" {
  name = "solor-1njchy-fraud-43-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_43_analysts__fraud_43_read" {
  group      = aws_iam_group.fraud_43_analysts.name
  policy_arn = aws_iam_policy.fraud_43_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_43_analysts__base_readonly" {
  group      = aws_iam_group.fraud_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_43_devs" {
  name = "solor-1njchy-fraud-43-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_43_devs__fraud_43_data_rw" {
  group      = aws_iam_group.fraud_43_devs.name
  policy_arn = aws_iam_policy.fraud_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_43_devs__fraud_43_ops" {
  group      = aws_iam_group.fraud_43_devs.name
  policy_arn = aws_iam_policy.fraud_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_43_devs__base_readonly" {
  group      = aws_iam_group.fraud_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_43_devs__self_service" {
  group      = aws_iam_group.fraud_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_44_analysts" {
  name = "solor-1njchy-fraud-44-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_44_analysts__fraud_44_read" {
  group      = aws_iam_group.fraud_44_analysts.name
  policy_arn = aws_iam_policy.fraud_44_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_44_analysts__base_readonly" {
  group      = aws_iam_group.fraud_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_44_devs" {
  name = "solor-1njchy-fraud-44-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_44_devs__fraud_44_data_rw" {
  group      = aws_iam_group.fraud_44_devs.name
  policy_arn = aws_iam_policy.fraud_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_44_devs__fraud_44_ops" {
  group      = aws_iam_group.fraud_44_devs.name
  policy_arn = aws_iam_policy.fraud_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_44_devs__base_readonly" {
  group      = aws_iam_group.fraud_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_44_devs__self_service" {
  group      = aws_iam_group.fraud_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_45_analysts" {
  name = "solor-1njchy-fraud-45-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_45_analysts__fraud_45_read" {
  group      = aws_iam_group.fraud_45_analysts.name
  policy_arn = aws_iam_policy.fraud_45_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_45_analysts__base_readonly" {
  group      = aws_iam_group.fraud_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_45_devs" {
  name = "solor-1njchy-fraud-45-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_45_devs__fraud_45_data_rw" {
  group      = aws_iam_group.fraud_45_devs.name
  policy_arn = aws_iam_policy.fraud_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_45_devs__fraud_45_ops" {
  group      = aws_iam_group.fraud_45_devs.name
  policy_arn = aws_iam_policy.fraud_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_45_devs__base_readonly" {
  group      = aws_iam_group.fraud_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_45_devs__self_service" {
  group      = aws_iam_group.fraud_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_46_analysts" {
  name = "solor-1njchy-fraud-46-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_46_analysts__fraud_46_read" {
  group      = aws_iam_group.fraud_46_analysts.name
  policy_arn = aws_iam_policy.fraud_46_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_46_analysts__base_readonly" {
  group      = aws_iam_group.fraud_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_46_devs" {
  name = "solor-1njchy-fraud-46-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_46_devs__fraud_46_data_rw" {
  group      = aws_iam_group.fraud_46_devs.name
  policy_arn = aws_iam_policy.fraud_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_46_devs__fraud_46_ops" {
  group      = aws_iam_group.fraud_46_devs.name
  policy_arn = aws_iam_policy.fraud_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_46_devs__base_readonly" {
  group      = aws_iam_group.fraud_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_46_devs__self_service" {
  group      = aws_iam_group.fraud_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_47_analysts" {
  name = "solor-1njchy-fraud-47-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_47_analysts__fraud_47_read" {
  group      = aws_iam_group.fraud_47_analysts.name
  policy_arn = aws_iam_policy.fraud_47_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_47_analysts__base_readonly" {
  group      = aws_iam_group.fraud_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_47_devs" {
  name = "solor-1njchy-fraud-47-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_47_devs__fraud_47_data_rw" {
  group      = aws_iam_group.fraud_47_devs.name
  policy_arn = aws_iam_policy.fraud_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_47_devs__fraud_47_ops" {
  group      = aws_iam_group.fraud_47_devs.name
  policy_arn = aws_iam_policy.fraud_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_47_devs__base_readonly" {
  group      = aws_iam_group.fraud_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_47_devs__self_service" {
  group      = aws_iam_group.fraud_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_48_analysts" {
  name = "solor-1njchy-fraud-48-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_48_analysts__fraud_48_read" {
  group      = aws_iam_group.fraud_48_analysts.name
  policy_arn = aws_iam_policy.fraud_48_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_48_analysts__base_readonly" {
  group      = aws_iam_group.fraud_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_48_devs" {
  name = "solor-1njchy-fraud-48-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_48_devs__fraud_48_data_rw" {
  group      = aws_iam_group.fraud_48_devs.name
  policy_arn = aws_iam_policy.fraud_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_48_devs__fraud_48_ops" {
  group      = aws_iam_group.fraud_48_devs.name
  policy_arn = aws_iam_policy.fraud_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_48_devs__base_readonly" {
  group      = aws_iam_group.fraud_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_48_devs__self_service" {
  group      = aws_iam_group.fraud_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_49_analysts" {
  name = "solor-1njchy-fraud-49-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_49_analysts__fraud_49_read" {
  group      = aws_iam_group.fraud_49_analysts.name
  policy_arn = aws_iam_policy.fraud_49_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_49_analysts__base_readonly" {
  group      = aws_iam_group.fraud_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_49_devs" {
  name = "solor-1njchy-fraud-49-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_49_devs__fraud_49_data_rw" {
  group      = aws_iam_group.fraud_49_devs.name
  policy_arn = aws_iam_policy.fraud_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_49_devs__fraud_49_ops" {
  group      = aws_iam_group.fraud_49_devs.name
  policy_arn = aws_iam_policy.fraud_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_49_devs__base_readonly" {
  group      = aws_iam_group.fraud_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_49_devs__self_service" {
  group      = aws_iam_group.fraud_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_5_analysts" {
  name = "solor-1njchy-fraud-5-analysts"
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
  name = "solor-1njchy-fraud-5-devs"
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

resource "aws_iam_group" "fraud_50_analysts" {
  name = "solor-1njchy-fraud-50-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_50_analysts__fraud_50_read" {
  group      = aws_iam_group.fraud_50_analysts.name
  policy_arn = aws_iam_policy.fraud_50_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_50_analysts__base_readonly" {
  group      = aws_iam_group.fraud_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_50_devs" {
  name = "solor-1njchy-fraud-50-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_50_devs__fraud_50_data_rw" {
  group      = aws_iam_group.fraud_50_devs.name
  policy_arn = aws_iam_policy.fraud_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_50_devs__fraud_50_ops" {
  group      = aws_iam_group.fraud_50_devs.name
  policy_arn = aws_iam_policy.fraud_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_50_devs__base_readonly" {
  group      = aws_iam_group.fraud_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_50_devs__self_service" {
  group      = aws_iam_group.fraud_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_6_analysts" {
  name = "solor-1njchy-fraud-6-analysts"
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
  name = "solor-1njchy-fraud-6-devs"
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
  name = "solor-1njchy-fraud-7-analysts"
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
  name = "solor-1njchy-fraud-7-devs"
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

resource "aws_iam_group" "fraud_8_analysts" {
  name = "solor-1njchy-fraud-8-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_8_analysts__fraud_8_read" {
  group      = aws_iam_group.fraud_8_analysts.name
  policy_arn = aws_iam_policy.fraud_8_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_8_analysts__base_readonly" {
  group      = aws_iam_group.fraud_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_8_devs" {
  name = "solor-1njchy-fraud-8-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_8_devs__fraud_8_data_rw" {
  group      = aws_iam_group.fraud_8_devs.name
  policy_arn = aws_iam_policy.fraud_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_8_devs__fraud_8_ops" {
  group      = aws_iam_group.fraud_8_devs.name
  policy_arn = aws_iam_policy.fraud_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_8_devs__base_readonly" {
  group      = aws_iam_group.fraud_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_8_devs__self_service" {
  group      = aws_iam_group.fraud_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_9_analysts" {
  name = "solor-1njchy-fraud-9-analysts"
}

resource "aws_iam_group_policy_attachment" "fraud_9_analysts__fraud_9_read" {
  group      = aws_iam_group.fraud_9_analysts.name
  policy_arn = aws_iam_policy.fraud_9_read.arn
}

resource "aws_iam_group_policy_attachment" "fraud_9_analysts__base_readonly" {
  group      = aws_iam_group.fraud_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "fraud_9_devs" {
  name = "solor-1njchy-fraud-9-devs"
}

resource "aws_iam_group_policy_attachment" "fraud_9_devs__fraud_9_data_rw" {
  group      = aws_iam_group.fraud_9_devs.name
  policy_arn = aws_iam_policy.fraud_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "fraud_9_devs__fraud_9_ops" {
  group      = aws_iam_group.fraud_9_devs.name
  policy_arn = aws_iam_policy.fraud_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "fraud_9_devs__base_readonly" {
  group      = aws_iam_group.fraud_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "fraud_9_devs__self_service" {
  group      = aws_iam_group.fraud_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "fraud_analysts" {
  name = "solor-1njchy-fraud-analysts"
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
  name = "solor-1njchy-fraud-devs"
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

resource "aws_iam_group" "kyc_10_analysts" {
  name = "solor-1njchy-kyc-10-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_10_analysts__kyc_10_read" {
  group      = aws_iam_group.kyc_10_analysts.name
  policy_arn = aws_iam_policy.kyc_10_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_10_analysts__base_readonly" {
  group      = aws_iam_group.kyc_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_10_devs" {
  name = "solor-1njchy-kyc-10-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_10_devs__kyc_10_data_rw" {
  group      = aws_iam_group.kyc_10_devs.name
  policy_arn = aws_iam_policy.kyc_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_10_devs__kyc_10_ops" {
  group      = aws_iam_group.kyc_10_devs.name
  policy_arn = aws_iam_policy.kyc_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_10_devs__base_readonly" {
  group      = aws_iam_group.kyc_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_10_devs__self_service" {
  group      = aws_iam_group.kyc_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_11_analysts" {
  name = "solor-1njchy-kyc-11-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_11_analysts__kyc_11_read" {
  group      = aws_iam_group.kyc_11_analysts.name
  policy_arn = aws_iam_policy.kyc_11_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_11_analysts__base_readonly" {
  group      = aws_iam_group.kyc_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_11_devs" {
  name = "solor-1njchy-kyc-11-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_11_devs__kyc_11_data_rw" {
  group      = aws_iam_group.kyc_11_devs.name
  policy_arn = aws_iam_policy.kyc_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_11_devs__kyc_11_ops" {
  group      = aws_iam_group.kyc_11_devs.name
  policy_arn = aws_iam_policy.kyc_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_11_devs__base_readonly" {
  group      = aws_iam_group.kyc_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_11_devs__self_service" {
  group      = aws_iam_group.kyc_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_12_analysts" {
  name = "solor-1njchy-kyc-12-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_12_analysts__kyc_12_read" {
  group      = aws_iam_group.kyc_12_analysts.name
  policy_arn = aws_iam_policy.kyc_12_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_12_analysts__base_readonly" {
  group      = aws_iam_group.kyc_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_12_devs" {
  name = "solor-1njchy-kyc-12-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_12_devs__kyc_12_data_rw" {
  group      = aws_iam_group.kyc_12_devs.name
  policy_arn = aws_iam_policy.kyc_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_12_devs__kyc_12_ops" {
  group      = aws_iam_group.kyc_12_devs.name
  policy_arn = aws_iam_policy.kyc_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_12_devs__base_readonly" {
  group      = aws_iam_group.kyc_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_12_devs__self_service" {
  group      = aws_iam_group.kyc_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_13_analysts" {
  name = "solor-1njchy-kyc-13-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_13_analysts__kyc_13_read" {
  group      = aws_iam_group.kyc_13_analysts.name
  policy_arn = aws_iam_policy.kyc_13_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_13_analysts__base_readonly" {
  group      = aws_iam_group.kyc_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_13_devs" {
  name = "solor-1njchy-kyc-13-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_13_devs__kyc_13_data_rw" {
  group      = aws_iam_group.kyc_13_devs.name
  policy_arn = aws_iam_policy.kyc_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_13_devs__kyc_13_ops" {
  group      = aws_iam_group.kyc_13_devs.name
  policy_arn = aws_iam_policy.kyc_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_13_devs__base_readonly" {
  group      = aws_iam_group.kyc_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_13_devs__self_service" {
  group      = aws_iam_group.kyc_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_14_analysts" {
  name = "solor-1njchy-kyc-14-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_14_analysts__kyc_14_read" {
  group      = aws_iam_group.kyc_14_analysts.name
  policy_arn = aws_iam_policy.kyc_14_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_14_analysts__base_readonly" {
  group      = aws_iam_group.kyc_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_14_devs" {
  name = "solor-1njchy-kyc-14-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_14_devs__kyc_14_data_rw" {
  group      = aws_iam_group.kyc_14_devs.name
  policy_arn = aws_iam_policy.kyc_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_14_devs__kyc_14_ops" {
  group      = aws_iam_group.kyc_14_devs.name
  policy_arn = aws_iam_policy.kyc_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_14_devs__base_readonly" {
  group      = aws_iam_group.kyc_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_14_devs__self_service" {
  group      = aws_iam_group.kyc_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_15_analysts" {
  name = "solor-1njchy-kyc-15-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_15_analysts__kyc_15_read" {
  group      = aws_iam_group.kyc_15_analysts.name
  policy_arn = aws_iam_policy.kyc_15_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_15_analysts__base_readonly" {
  group      = aws_iam_group.kyc_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_15_devs" {
  name = "solor-1njchy-kyc-15-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_15_devs__kyc_15_data_rw" {
  group      = aws_iam_group.kyc_15_devs.name
  policy_arn = aws_iam_policy.kyc_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_15_devs__kyc_15_ops" {
  group      = aws_iam_group.kyc_15_devs.name
  policy_arn = aws_iam_policy.kyc_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_15_devs__base_readonly" {
  group      = aws_iam_group.kyc_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_15_devs__self_service" {
  group      = aws_iam_group.kyc_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_16_analysts" {
  name = "solor-1njchy-kyc-16-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_16_analysts__kyc_16_read" {
  group      = aws_iam_group.kyc_16_analysts.name
  policy_arn = aws_iam_policy.kyc_16_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_16_analysts__base_readonly" {
  group      = aws_iam_group.kyc_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_16_devs" {
  name = "solor-1njchy-kyc-16-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_16_devs__kyc_16_data_rw" {
  group      = aws_iam_group.kyc_16_devs.name
  policy_arn = aws_iam_policy.kyc_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_16_devs__kyc_16_ops" {
  group      = aws_iam_group.kyc_16_devs.name
  policy_arn = aws_iam_policy.kyc_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_16_devs__base_readonly" {
  group      = aws_iam_group.kyc_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_16_devs__self_service" {
  group      = aws_iam_group.kyc_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_17_analysts" {
  name = "solor-1njchy-kyc-17-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_17_analysts__kyc_17_read" {
  group      = aws_iam_group.kyc_17_analysts.name
  policy_arn = aws_iam_policy.kyc_17_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_17_analysts__base_readonly" {
  group      = aws_iam_group.kyc_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_17_devs" {
  name = "solor-1njchy-kyc-17-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_17_devs__kyc_17_data_rw" {
  group      = aws_iam_group.kyc_17_devs.name
  policy_arn = aws_iam_policy.kyc_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_17_devs__kyc_17_ops" {
  group      = aws_iam_group.kyc_17_devs.name
  policy_arn = aws_iam_policy.kyc_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_17_devs__base_readonly" {
  group      = aws_iam_group.kyc_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_17_devs__self_service" {
  group      = aws_iam_group.kyc_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_18_analysts" {
  name = "solor-1njchy-kyc-18-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_18_analysts__kyc_18_read" {
  group      = aws_iam_group.kyc_18_analysts.name
  policy_arn = aws_iam_policy.kyc_18_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_18_analysts__base_readonly" {
  group      = aws_iam_group.kyc_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_18_devs" {
  name = "solor-1njchy-kyc-18-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_18_devs__kyc_18_data_rw" {
  group      = aws_iam_group.kyc_18_devs.name
  policy_arn = aws_iam_policy.kyc_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_18_devs__kyc_18_ops" {
  group      = aws_iam_group.kyc_18_devs.name
  policy_arn = aws_iam_policy.kyc_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_18_devs__base_readonly" {
  group      = aws_iam_group.kyc_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_18_devs__self_service" {
  group      = aws_iam_group.kyc_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_19_analysts" {
  name = "solor-1njchy-kyc-19-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_19_analysts__kyc_19_read" {
  group      = aws_iam_group.kyc_19_analysts.name
  policy_arn = aws_iam_policy.kyc_19_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_19_analysts__base_readonly" {
  group      = aws_iam_group.kyc_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_19_devs" {
  name = "solor-1njchy-kyc-19-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_19_devs__kyc_19_data_rw" {
  group      = aws_iam_group.kyc_19_devs.name
  policy_arn = aws_iam_policy.kyc_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_19_devs__kyc_19_ops" {
  group      = aws_iam_group.kyc_19_devs.name
  policy_arn = aws_iam_policy.kyc_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_19_devs__base_readonly" {
  group      = aws_iam_group.kyc_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_19_devs__self_service" {
  group      = aws_iam_group.kyc_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_2_analysts" {
  name = "solor-1njchy-kyc-2-analysts"
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
  name = "solor-1njchy-kyc-2-devs"
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

resource "aws_iam_group" "kyc_20_analysts" {
  name = "solor-1njchy-kyc-20-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_20_analysts__kyc_20_read" {
  group      = aws_iam_group.kyc_20_analysts.name
  policy_arn = aws_iam_policy.kyc_20_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_20_analysts__base_readonly" {
  group      = aws_iam_group.kyc_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_20_devs" {
  name = "solor-1njchy-kyc-20-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_20_devs__kyc_20_data_rw" {
  group      = aws_iam_group.kyc_20_devs.name
  policy_arn = aws_iam_policy.kyc_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_20_devs__kyc_20_ops" {
  group      = aws_iam_group.kyc_20_devs.name
  policy_arn = aws_iam_policy.kyc_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_20_devs__base_readonly" {
  group      = aws_iam_group.kyc_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_20_devs__self_service" {
  group      = aws_iam_group.kyc_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_21_analysts" {
  name = "solor-1njchy-kyc-21-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_21_analysts__kyc_21_read" {
  group      = aws_iam_group.kyc_21_analysts.name
  policy_arn = aws_iam_policy.kyc_21_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_21_analysts__base_readonly" {
  group      = aws_iam_group.kyc_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_21_devs" {
  name = "solor-1njchy-kyc-21-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_21_devs__kyc_21_data_rw" {
  group      = aws_iam_group.kyc_21_devs.name
  policy_arn = aws_iam_policy.kyc_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_21_devs__kyc_21_ops" {
  group      = aws_iam_group.kyc_21_devs.name
  policy_arn = aws_iam_policy.kyc_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_21_devs__base_readonly" {
  group      = aws_iam_group.kyc_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_21_devs__self_service" {
  group      = aws_iam_group.kyc_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_22_analysts" {
  name = "solor-1njchy-kyc-22-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_22_analysts__kyc_22_read" {
  group      = aws_iam_group.kyc_22_analysts.name
  policy_arn = aws_iam_policy.kyc_22_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_22_analysts__base_readonly" {
  group      = aws_iam_group.kyc_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_22_devs" {
  name = "solor-1njchy-kyc-22-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_22_devs__kyc_22_data_rw" {
  group      = aws_iam_group.kyc_22_devs.name
  policy_arn = aws_iam_policy.kyc_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_22_devs__kyc_22_ops" {
  group      = aws_iam_group.kyc_22_devs.name
  policy_arn = aws_iam_policy.kyc_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_22_devs__base_readonly" {
  group      = aws_iam_group.kyc_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_22_devs__self_service" {
  group      = aws_iam_group.kyc_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_23_analysts" {
  name = "solor-1njchy-kyc-23-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_23_analysts__kyc_23_read" {
  group      = aws_iam_group.kyc_23_analysts.name
  policy_arn = aws_iam_policy.kyc_23_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_23_analysts__base_readonly" {
  group      = aws_iam_group.kyc_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_23_devs" {
  name = "solor-1njchy-kyc-23-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_23_devs__kyc_23_data_rw" {
  group      = aws_iam_group.kyc_23_devs.name
  policy_arn = aws_iam_policy.kyc_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_23_devs__kyc_23_ops" {
  group      = aws_iam_group.kyc_23_devs.name
  policy_arn = aws_iam_policy.kyc_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_23_devs__base_readonly" {
  group      = aws_iam_group.kyc_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_23_devs__self_service" {
  group      = aws_iam_group.kyc_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_24_analysts" {
  name = "solor-1njchy-kyc-24-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_24_analysts__kyc_24_read" {
  group      = aws_iam_group.kyc_24_analysts.name
  policy_arn = aws_iam_policy.kyc_24_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_24_analysts__base_readonly" {
  group      = aws_iam_group.kyc_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_24_devs" {
  name = "solor-1njchy-kyc-24-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_24_devs__kyc_24_data_rw" {
  group      = aws_iam_group.kyc_24_devs.name
  policy_arn = aws_iam_policy.kyc_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_24_devs__kyc_24_ops" {
  group      = aws_iam_group.kyc_24_devs.name
  policy_arn = aws_iam_policy.kyc_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_24_devs__base_readonly" {
  group      = aws_iam_group.kyc_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_24_devs__self_service" {
  group      = aws_iam_group.kyc_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_25_analysts" {
  name = "solor-1njchy-kyc-25-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_25_analysts__kyc_25_read" {
  group      = aws_iam_group.kyc_25_analysts.name
  policy_arn = aws_iam_policy.kyc_25_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_25_analysts__base_readonly" {
  group      = aws_iam_group.kyc_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_25_devs" {
  name = "solor-1njchy-kyc-25-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_25_devs__kyc_25_data_rw" {
  group      = aws_iam_group.kyc_25_devs.name
  policy_arn = aws_iam_policy.kyc_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_25_devs__kyc_25_ops" {
  group      = aws_iam_group.kyc_25_devs.name
  policy_arn = aws_iam_policy.kyc_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_25_devs__base_readonly" {
  group      = aws_iam_group.kyc_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_25_devs__self_service" {
  group      = aws_iam_group.kyc_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_26_analysts" {
  name = "solor-1njchy-kyc-26-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_26_analysts__kyc_26_read" {
  group      = aws_iam_group.kyc_26_analysts.name
  policy_arn = aws_iam_policy.kyc_26_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_26_analysts__base_readonly" {
  group      = aws_iam_group.kyc_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_26_devs" {
  name = "solor-1njchy-kyc-26-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_26_devs__kyc_26_data_rw" {
  group      = aws_iam_group.kyc_26_devs.name
  policy_arn = aws_iam_policy.kyc_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_26_devs__kyc_26_ops" {
  group      = aws_iam_group.kyc_26_devs.name
  policy_arn = aws_iam_policy.kyc_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_26_devs__base_readonly" {
  group      = aws_iam_group.kyc_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_26_devs__self_service" {
  group      = aws_iam_group.kyc_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_27_analysts" {
  name = "solor-1njchy-kyc-27-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_27_analysts__kyc_27_read" {
  group      = aws_iam_group.kyc_27_analysts.name
  policy_arn = aws_iam_policy.kyc_27_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_27_analysts__base_readonly" {
  group      = aws_iam_group.kyc_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_27_devs" {
  name = "solor-1njchy-kyc-27-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_27_devs__kyc_27_data_rw" {
  group      = aws_iam_group.kyc_27_devs.name
  policy_arn = aws_iam_policy.kyc_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_27_devs__kyc_27_ops" {
  group      = aws_iam_group.kyc_27_devs.name
  policy_arn = aws_iam_policy.kyc_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_27_devs__base_readonly" {
  group      = aws_iam_group.kyc_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_27_devs__self_service" {
  group      = aws_iam_group.kyc_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_28_analysts" {
  name = "solor-1njchy-kyc-28-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_28_analysts__kyc_28_read" {
  group      = aws_iam_group.kyc_28_analysts.name
  policy_arn = aws_iam_policy.kyc_28_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_28_analysts__base_readonly" {
  group      = aws_iam_group.kyc_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_28_devs" {
  name = "solor-1njchy-kyc-28-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_28_devs__kyc_28_data_rw" {
  group      = aws_iam_group.kyc_28_devs.name
  policy_arn = aws_iam_policy.kyc_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_28_devs__kyc_28_ops" {
  group      = aws_iam_group.kyc_28_devs.name
  policy_arn = aws_iam_policy.kyc_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_28_devs__base_readonly" {
  group      = aws_iam_group.kyc_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_28_devs__self_service" {
  group      = aws_iam_group.kyc_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_29_analysts" {
  name = "solor-1njchy-kyc-29-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_29_analysts__kyc_29_read" {
  group      = aws_iam_group.kyc_29_analysts.name
  policy_arn = aws_iam_policy.kyc_29_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_29_analysts__base_readonly" {
  group      = aws_iam_group.kyc_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_29_devs" {
  name = "solor-1njchy-kyc-29-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_29_devs__kyc_29_data_rw" {
  group      = aws_iam_group.kyc_29_devs.name
  policy_arn = aws_iam_policy.kyc_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_29_devs__kyc_29_ops" {
  group      = aws_iam_group.kyc_29_devs.name
  policy_arn = aws_iam_policy.kyc_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_29_devs__base_readonly" {
  group      = aws_iam_group.kyc_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_29_devs__self_service" {
  group      = aws_iam_group.kyc_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_3_analysts" {
  name = "solor-1njchy-kyc-3-analysts"
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
  name = "solor-1njchy-kyc-3-devs"
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

resource "aws_iam_group" "kyc_30_analysts" {
  name = "solor-1njchy-kyc-30-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_30_analysts__kyc_30_read" {
  group      = aws_iam_group.kyc_30_analysts.name
  policy_arn = aws_iam_policy.kyc_30_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_30_analysts__base_readonly" {
  group      = aws_iam_group.kyc_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_30_devs" {
  name = "solor-1njchy-kyc-30-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_30_devs__kyc_30_data_rw" {
  group      = aws_iam_group.kyc_30_devs.name
  policy_arn = aws_iam_policy.kyc_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_30_devs__kyc_30_ops" {
  group      = aws_iam_group.kyc_30_devs.name
  policy_arn = aws_iam_policy.kyc_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_30_devs__base_readonly" {
  group      = aws_iam_group.kyc_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_30_devs__self_service" {
  group      = aws_iam_group.kyc_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_31_analysts" {
  name = "solor-1njchy-kyc-31-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_31_analysts__kyc_31_read" {
  group      = aws_iam_group.kyc_31_analysts.name
  policy_arn = aws_iam_policy.kyc_31_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_31_analysts__base_readonly" {
  group      = aws_iam_group.kyc_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_31_devs" {
  name = "solor-1njchy-kyc-31-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_31_devs__kyc_31_data_rw" {
  group      = aws_iam_group.kyc_31_devs.name
  policy_arn = aws_iam_policy.kyc_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_31_devs__kyc_31_ops" {
  group      = aws_iam_group.kyc_31_devs.name
  policy_arn = aws_iam_policy.kyc_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_31_devs__base_readonly" {
  group      = aws_iam_group.kyc_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_31_devs__self_service" {
  group      = aws_iam_group.kyc_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_32_analysts" {
  name = "solor-1njchy-kyc-32-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_32_analysts__kyc_32_read" {
  group      = aws_iam_group.kyc_32_analysts.name
  policy_arn = aws_iam_policy.kyc_32_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_32_analysts__base_readonly" {
  group      = aws_iam_group.kyc_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_32_devs" {
  name = "solor-1njchy-kyc-32-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_32_devs__kyc_32_data_rw" {
  group      = aws_iam_group.kyc_32_devs.name
  policy_arn = aws_iam_policy.kyc_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_32_devs__kyc_32_ops" {
  group      = aws_iam_group.kyc_32_devs.name
  policy_arn = aws_iam_policy.kyc_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_32_devs__base_readonly" {
  group      = aws_iam_group.kyc_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_32_devs__self_service" {
  group      = aws_iam_group.kyc_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_33_analysts" {
  name = "solor-1njchy-kyc-33-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_33_analysts__kyc_33_read" {
  group      = aws_iam_group.kyc_33_analysts.name
  policy_arn = aws_iam_policy.kyc_33_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_33_analysts__base_readonly" {
  group      = aws_iam_group.kyc_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_33_devs" {
  name = "solor-1njchy-kyc-33-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_33_devs__kyc_33_data_rw" {
  group      = aws_iam_group.kyc_33_devs.name
  policy_arn = aws_iam_policy.kyc_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_33_devs__kyc_33_ops" {
  group      = aws_iam_group.kyc_33_devs.name
  policy_arn = aws_iam_policy.kyc_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_33_devs__base_readonly" {
  group      = aws_iam_group.kyc_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_33_devs__self_service" {
  group      = aws_iam_group.kyc_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_34_analysts" {
  name = "solor-1njchy-kyc-34-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_34_analysts__kyc_34_read" {
  group      = aws_iam_group.kyc_34_analysts.name
  policy_arn = aws_iam_policy.kyc_34_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_34_analysts__base_readonly" {
  group      = aws_iam_group.kyc_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_34_devs" {
  name = "solor-1njchy-kyc-34-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_34_devs__kyc_34_data_rw" {
  group      = aws_iam_group.kyc_34_devs.name
  policy_arn = aws_iam_policy.kyc_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_34_devs__kyc_34_ops" {
  group      = aws_iam_group.kyc_34_devs.name
  policy_arn = aws_iam_policy.kyc_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_34_devs__base_readonly" {
  group      = aws_iam_group.kyc_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_34_devs__self_service" {
  group      = aws_iam_group.kyc_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_35_analysts" {
  name = "solor-1njchy-kyc-35-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_35_analysts__kyc_35_read" {
  group      = aws_iam_group.kyc_35_analysts.name
  policy_arn = aws_iam_policy.kyc_35_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_35_analysts__base_readonly" {
  group      = aws_iam_group.kyc_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_35_devs" {
  name = "solor-1njchy-kyc-35-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_35_devs__kyc_35_data_rw" {
  group      = aws_iam_group.kyc_35_devs.name
  policy_arn = aws_iam_policy.kyc_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_35_devs__kyc_35_ops" {
  group      = aws_iam_group.kyc_35_devs.name
  policy_arn = aws_iam_policy.kyc_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_35_devs__base_readonly" {
  group      = aws_iam_group.kyc_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_35_devs__self_service" {
  group      = aws_iam_group.kyc_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_36_analysts" {
  name = "solor-1njchy-kyc-36-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_36_analysts__kyc_36_read" {
  group      = aws_iam_group.kyc_36_analysts.name
  policy_arn = aws_iam_policy.kyc_36_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_36_analysts__base_readonly" {
  group      = aws_iam_group.kyc_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_36_devs" {
  name = "solor-1njchy-kyc-36-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_36_devs__kyc_36_data_rw" {
  group      = aws_iam_group.kyc_36_devs.name
  policy_arn = aws_iam_policy.kyc_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_36_devs__kyc_36_ops" {
  group      = aws_iam_group.kyc_36_devs.name
  policy_arn = aws_iam_policy.kyc_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_36_devs__base_readonly" {
  group      = aws_iam_group.kyc_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_36_devs__self_service" {
  group      = aws_iam_group.kyc_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_37_analysts" {
  name = "solor-1njchy-kyc-37-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_37_analysts__kyc_37_read" {
  group      = aws_iam_group.kyc_37_analysts.name
  policy_arn = aws_iam_policy.kyc_37_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_37_analysts__base_readonly" {
  group      = aws_iam_group.kyc_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_37_devs" {
  name = "solor-1njchy-kyc-37-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_37_devs__kyc_37_data_rw" {
  group      = aws_iam_group.kyc_37_devs.name
  policy_arn = aws_iam_policy.kyc_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_37_devs__kyc_37_ops" {
  group      = aws_iam_group.kyc_37_devs.name
  policy_arn = aws_iam_policy.kyc_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_37_devs__base_readonly" {
  group      = aws_iam_group.kyc_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_37_devs__self_service" {
  group      = aws_iam_group.kyc_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_38_analysts" {
  name = "solor-1njchy-kyc-38-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_38_analysts__kyc_38_read" {
  group      = aws_iam_group.kyc_38_analysts.name
  policy_arn = aws_iam_policy.kyc_38_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_38_analysts__base_readonly" {
  group      = aws_iam_group.kyc_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_38_devs" {
  name = "solor-1njchy-kyc-38-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_38_devs__kyc_38_data_rw" {
  group      = aws_iam_group.kyc_38_devs.name
  policy_arn = aws_iam_policy.kyc_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_38_devs__kyc_38_ops" {
  group      = aws_iam_group.kyc_38_devs.name
  policy_arn = aws_iam_policy.kyc_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_38_devs__base_readonly" {
  group      = aws_iam_group.kyc_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_38_devs__self_service" {
  group      = aws_iam_group.kyc_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_39_analysts" {
  name = "solor-1njchy-kyc-39-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_39_analysts__kyc_39_read" {
  group      = aws_iam_group.kyc_39_analysts.name
  policy_arn = aws_iam_policy.kyc_39_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_39_analysts__base_readonly" {
  group      = aws_iam_group.kyc_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_39_devs" {
  name = "solor-1njchy-kyc-39-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_39_devs__kyc_39_data_rw" {
  group      = aws_iam_group.kyc_39_devs.name
  policy_arn = aws_iam_policy.kyc_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_39_devs__kyc_39_ops" {
  group      = aws_iam_group.kyc_39_devs.name
  policy_arn = aws_iam_policy.kyc_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_39_devs__base_readonly" {
  group      = aws_iam_group.kyc_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_39_devs__self_service" {
  group      = aws_iam_group.kyc_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_4_analysts" {
  name = "solor-1njchy-kyc-4-analysts"
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
  name = "solor-1njchy-kyc-4-devs"
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

resource "aws_iam_group" "kyc_40_analysts" {
  name = "solor-1njchy-kyc-40-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_40_analysts__kyc_40_read" {
  group      = aws_iam_group.kyc_40_analysts.name
  policy_arn = aws_iam_policy.kyc_40_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_40_analysts__base_readonly" {
  group      = aws_iam_group.kyc_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_40_devs" {
  name = "solor-1njchy-kyc-40-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_40_devs__kyc_40_data_rw" {
  group      = aws_iam_group.kyc_40_devs.name
  policy_arn = aws_iam_policy.kyc_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_40_devs__kyc_40_ops" {
  group      = aws_iam_group.kyc_40_devs.name
  policy_arn = aws_iam_policy.kyc_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_40_devs__base_readonly" {
  group      = aws_iam_group.kyc_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_40_devs__self_service" {
  group      = aws_iam_group.kyc_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_41_analysts" {
  name = "solor-1njchy-kyc-41-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_41_analysts__kyc_41_read" {
  group      = aws_iam_group.kyc_41_analysts.name
  policy_arn = aws_iam_policy.kyc_41_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_41_analysts__base_readonly" {
  group      = aws_iam_group.kyc_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_41_devs" {
  name = "solor-1njchy-kyc-41-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_41_devs__kyc_41_data_rw" {
  group      = aws_iam_group.kyc_41_devs.name
  policy_arn = aws_iam_policy.kyc_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_41_devs__kyc_41_ops" {
  group      = aws_iam_group.kyc_41_devs.name
  policy_arn = aws_iam_policy.kyc_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_41_devs__base_readonly" {
  group      = aws_iam_group.kyc_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_41_devs__self_service" {
  group      = aws_iam_group.kyc_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_42_analysts" {
  name = "solor-1njchy-kyc-42-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_42_analysts__kyc_42_read" {
  group      = aws_iam_group.kyc_42_analysts.name
  policy_arn = aws_iam_policy.kyc_42_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_42_analysts__base_readonly" {
  group      = aws_iam_group.kyc_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_42_devs" {
  name = "solor-1njchy-kyc-42-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_42_devs__kyc_42_data_rw" {
  group      = aws_iam_group.kyc_42_devs.name
  policy_arn = aws_iam_policy.kyc_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_42_devs__kyc_42_ops" {
  group      = aws_iam_group.kyc_42_devs.name
  policy_arn = aws_iam_policy.kyc_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_42_devs__base_readonly" {
  group      = aws_iam_group.kyc_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_42_devs__self_service" {
  group      = aws_iam_group.kyc_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_43_analysts" {
  name = "solor-1njchy-kyc-43-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_43_analysts__kyc_43_read" {
  group      = aws_iam_group.kyc_43_analysts.name
  policy_arn = aws_iam_policy.kyc_43_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_43_analysts__base_readonly" {
  group      = aws_iam_group.kyc_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_43_devs" {
  name = "solor-1njchy-kyc-43-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_43_devs__kyc_43_data_rw" {
  group      = aws_iam_group.kyc_43_devs.name
  policy_arn = aws_iam_policy.kyc_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_43_devs__kyc_43_ops" {
  group      = aws_iam_group.kyc_43_devs.name
  policy_arn = aws_iam_policy.kyc_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_43_devs__base_readonly" {
  group      = aws_iam_group.kyc_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_43_devs__self_service" {
  group      = aws_iam_group.kyc_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_44_analysts" {
  name = "solor-1njchy-kyc-44-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_44_analysts__kyc_44_read" {
  group      = aws_iam_group.kyc_44_analysts.name
  policy_arn = aws_iam_policy.kyc_44_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_44_analysts__base_readonly" {
  group      = aws_iam_group.kyc_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_44_devs" {
  name = "solor-1njchy-kyc-44-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_44_devs__kyc_44_data_rw" {
  group      = aws_iam_group.kyc_44_devs.name
  policy_arn = aws_iam_policy.kyc_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_44_devs__kyc_44_ops" {
  group      = aws_iam_group.kyc_44_devs.name
  policy_arn = aws_iam_policy.kyc_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_44_devs__base_readonly" {
  group      = aws_iam_group.kyc_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_44_devs__self_service" {
  group      = aws_iam_group.kyc_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_45_analysts" {
  name = "solor-1njchy-kyc-45-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_45_analysts__kyc_45_read" {
  group      = aws_iam_group.kyc_45_analysts.name
  policy_arn = aws_iam_policy.kyc_45_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_45_analysts__base_readonly" {
  group      = aws_iam_group.kyc_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_45_devs" {
  name = "solor-1njchy-kyc-45-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_45_devs__kyc_45_data_rw" {
  group      = aws_iam_group.kyc_45_devs.name
  policy_arn = aws_iam_policy.kyc_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_45_devs__kyc_45_ops" {
  group      = aws_iam_group.kyc_45_devs.name
  policy_arn = aws_iam_policy.kyc_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_45_devs__base_readonly" {
  group      = aws_iam_group.kyc_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_45_devs__self_service" {
  group      = aws_iam_group.kyc_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_46_analysts" {
  name = "solor-1njchy-kyc-46-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_46_analysts__kyc_46_read" {
  group      = aws_iam_group.kyc_46_analysts.name
  policy_arn = aws_iam_policy.kyc_46_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_46_analysts__base_readonly" {
  group      = aws_iam_group.kyc_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_46_devs" {
  name = "solor-1njchy-kyc-46-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_46_devs__kyc_46_data_rw" {
  group      = aws_iam_group.kyc_46_devs.name
  policy_arn = aws_iam_policy.kyc_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_46_devs__kyc_46_ops" {
  group      = aws_iam_group.kyc_46_devs.name
  policy_arn = aws_iam_policy.kyc_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_46_devs__base_readonly" {
  group      = aws_iam_group.kyc_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_46_devs__self_service" {
  group      = aws_iam_group.kyc_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_47_analysts" {
  name = "solor-1njchy-kyc-47-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_47_analysts__kyc_47_read" {
  group      = aws_iam_group.kyc_47_analysts.name
  policy_arn = aws_iam_policy.kyc_47_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_47_analysts__base_readonly" {
  group      = aws_iam_group.kyc_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_47_devs" {
  name = "solor-1njchy-kyc-47-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_47_devs__kyc_47_data_rw" {
  group      = aws_iam_group.kyc_47_devs.name
  policy_arn = aws_iam_policy.kyc_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_47_devs__kyc_47_ops" {
  group      = aws_iam_group.kyc_47_devs.name
  policy_arn = aws_iam_policy.kyc_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_47_devs__base_readonly" {
  group      = aws_iam_group.kyc_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_47_devs__self_service" {
  group      = aws_iam_group.kyc_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_48_analysts" {
  name = "solor-1njchy-kyc-48-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_48_analysts__kyc_48_read" {
  group      = aws_iam_group.kyc_48_analysts.name
  policy_arn = aws_iam_policy.kyc_48_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_48_analysts__base_readonly" {
  group      = aws_iam_group.kyc_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_48_devs" {
  name = "solor-1njchy-kyc-48-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_48_devs__kyc_48_data_rw" {
  group      = aws_iam_group.kyc_48_devs.name
  policy_arn = aws_iam_policy.kyc_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_48_devs__kyc_48_ops" {
  group      = aws_iam_group.kyc_48_devs.name
  policy_arn = aws_iam_policy.kyc_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_48_devs__base_readonly" {
  group      = aws_iam_group.kyc_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_48_devs__self_service" {
  group      = aws_iam_group.kyc_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_49_analysts" {
  name = "solor-1njchy-kyc-49-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_49_analysts__kyc_49_read" {
  group      = aws_iam_group.kyc_49_analysts.name
  policy_arn = aws_iam_policy.kyc_49_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_49_analysts__base_readonly" {
  group      = aws_iam_group.kyc_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_49_devs" {
  name = "solor-1njchy-kyc-49-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_49_devs__kyc_49_data_rw" {
  group      = aws_iam_group.kyc_49_devs.name
  policy_arn = aws_iam_policy.kyc_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_49_devs__kyc_49_ops" {
  group      = aws_iam_group.kyc_49_devs.name
  policy_arn = aws_iam_policy.kyc_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_49_devs__base_readonly" {
  group      = aws_iam_group.kyc_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_49_devs__self_service" {
  group      = aws_iam_group.kyc_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_5_analysts" {
  name = "solor-1njchy-kyc-5-analysts"
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
  name = "solor-1njchy-kyc-5-devs"
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

resource "aws_iam_group" "kyc_50_analysts" {
  name = "solor-1njchy-kyc-50-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_50_analysts__kyc_50_read" {
  group      = aws_iam_group.kyc_50_analysts.name
  policy_arn = aws_iam_policy.kyc_50_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_50_analysts__base_readonly" {
  group      = aws_iam_group.kyc_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_50_devs" {
  name = "solor-1njchy-kyc-50-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_50_devs__kyc_50_data_rw" {
  group      = aws_iam_group.kyc_50_devs.name
  policy_arn = aws_iam_policy.kyc_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_50_devs__kyc_50_ops" {
  group      = aws_iam_group.kyc_50_devs.name
  policy_arn = aws_iam_policy.kyc_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_50_devs__base_readonly" {
  group      = aws_iam_group.kyc_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_50_devs__self_service" {
  group      = aws_iam_group.kyc_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_6_analysts" {
  name = "solor-1njchy-kyc-6-analysts"
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
  name = "solor-1njchy-kyc-6-devs"
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
  name = "solor-1njchy-kyc-7-analysts"
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
  name = "solor-1njchy-kyc-7-devs"
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

resource "aws_iam_group" "kyc_8_analysts" {
  name = "solor-1njchy-kyc-8-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_8_analysts__kyc_8_read" {
  group      = aws_iam_group.kyc_8_analysts.name
  policy_arn = aws_iam_policy.kyc_8_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_8_analysts__base_readonly" {
  group      = aws_iam_group.kyc_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_8_devs" {
  name = "solor-1njchy-kyc-8-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_8_devs__kyc_8_data_rw" {
  group      = aws_iam_group.kyc_8_devs.name
  policy_arn = aws_iam_policy.kyc_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_8_devs__kyc_8_ops" {
  group      = aws_iam_group.kyc_8_devs.name
  policy_arn = aws_iam_policy.kyc_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_8_devs__base_readonly" {
  group      = aws_iam_group.kyc_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_8_devs__self_service" {
  group      = aws_iam_group.kyc_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_9_analysts" {
  name = "solor-1njchy-kyc-9-analysts"
}

resource "aws_iam_group_policy_attachment" "kyc_9_analysts__kyc_9_read" {
  group      = aws_iam_group.kyc_9_analysts.name
  policy_arn = aws_iam_policy.kyc_9_read.arn
}

resource "aws_iam_group_policy_attachment" "kyc_9_analysts__base_readonly" {
  group      = aws_iam_group.kyc_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "kyc_9_devs" {
  name = "solor-1njchy-kyc-9-devs"
}

resource "aws_iam_group_policy_attachment" "kyc_9_devs__kyc_9_data_rw" {
  group      = aws_iam_group.kyc_9_devs.name
  policy_arn = aws_iam_policy.kyc_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "kyc_9_devs__kyc_9_ops" {
  group      = aws_iam_group.kyc_9_devs.name
  policy_arn = aws_iam_policy.kyc_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "kyc_9_devs__base_readonly" {
  group      = aws_iam_group.kyc_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "kyc_9_devs__self_service" {
  group      = aws_iam_group.kyc_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "kyc_analysts" {
  name = "solor-1njchy-kyc-analysts"
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
  name = "solor-1njchy-kyc-devs"
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

resource "aws_iam_group" "ledger_10_analysts" {
  name = "solor-1njchy-ledger-10-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_10_analysts__ledger_10_read" {
  group      = aws_iam_group.ledger_10_analysts.name
  policy_arn = aws_iam_policy.ledger_10_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_10_analysts__base_readonly" {
  group      = aws_iam_group.ledger_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_10_devs" {
  name = "solor-1njchy-ledger-10-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_10_devs__ledger_10_data_rw" {
  group      = aws_iam_group.ledger_10_devs.name
  policy_arn = aws_iam_policy.ledger_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_10_devs__ledger_10_ops" {
  group      = aws_iam_group.ledger_10_devs.name
  policy_arn = aws_iam_policy.ledger_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_10_devs__base_readonly" {
  group      = aws_iam_group.ledger_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_10_devs__self_service" {
  group      = aws_iam_group.ledger_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_11_analysts" {
  name = "solor-1njchy-ledger-11-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_11_analysts__ledger_11_read" {
  group      = aws_iam_group.ledger_11_analysts.name
  policy_arn = aws_iam_policy.ledger_11_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_11_analysts__base_readonly" {
  group      = aws_iam_group.ledger_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_11_devs" {
  name = "solor-1njchy-ledger-11-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_11_devs__ledger_11_data_rw" {
  group      = aws_iam_group.ledger_11_devs.name
  policy_arn = aws_iam_policy.ledger_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_11_devs__ledger_11_ops" {
  group      = aws_iam_group.ledger_11_devs.name
  policy_arn = aws_iam_policy.ledger_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_11_devs__base_readonly" {
  group      = aws_iam_group.ledger_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_11_devs__self_service" {
  group      = aws_iam_group.ledger_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_12_analysts" {
  name = "solor-1njchy-ledger-12-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_12_analysts__ledger_12_read" {
  group      = aws_iam_group.ledger_12_analysts.name
  policy_arn = aws_iam_policy.ledger_12_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_12_analysts__base_readonly" {
  group      = aws_iam_group.ledger_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_12_devs" {
  name = "solor-1njchy-ledger-12-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_12_devs__ledger_12_data_rw" {
  group      = aws_iam_group.ledger_12_devs.name
  policy_arn = aws_iam_policy.ledger_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_12_devs__ledger_12_ops" {
  group      = aws_iam_group.ledger_12_devs.name
  policy_arn = aws_iam_policy.ledger_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_12_devs__base_readonly" {
  group      = aws_iam_group.ledger_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_12_devs__self_service" {
  group      = aws_iam_group.ledger_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_13_analysts" {
  name = "solor-1njchy-ledger-13-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_13_analysts__ledger_13_read" {
  group      = aws_iam_group.ledger_13_analysts.name
  policy_arn = aws_iam_policy.ledger_13_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_13_analysts__base_readonly" {
  group      = aws_iam_group.ledger_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_13_devs" {
  name = "solor-1njchy-ledger-13-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_13_devs__ledger_13_data_rw" {
  group      = aws_iam_group.ledger_13_devs.name
  policy_arn = aws_iam_policy.ledger_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_13_devs__ledger_13_ops" {
  group      = aws_iam_group.ledger_13_devs.name
  policy_arn = aws_iam_policy.ledger_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_13_devs__base_readonly" {
  group      = aws_iam_group.ledger_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_13_devs__self_service" {
  group      = aws_iam_group.ledger_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_14_analysts" {
  name = "solor-1njchy-ledger-14-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_14_analysts__ledger_14_read" {
  group      = aws_iam_group.ledger_14_analysts.name
  policy_arn = aws_iam_policy.ledger_14_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_14_analysts__base_readonly" {
  group      = aws_iam_group.ledger_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_14_devs" {
  name = "solor-1njchy-ledger-14-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_14_devs__ledger_14_data_rw" {
  group      = aws_iam_group.ledger_14_devs.name
  policy_arn = aws_iam_policy.ledger_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_14_devs__ledger_14_ops" {
  group      = aws_iam_group.ledger_14_devs.name
  policy_arn = aws_iam_policy.ledger_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_14_devs__base_readonly" {
  group      = aws_iam_group.ledger_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_14_devs__self_service" {
  group      = aws_iam_group.ledger_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_15_analysts" {
  name = "solor-1njchy-ledger-15-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_15_analysts__ledger_15_read" {
  group      = aws_iam_group.ledger_15_analysts.name
  policy_arn = aws_iam_policy.ledger_15_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_15_analysts__base_readonly" {
  group      = aws_iam_group.ledger_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_15_devs" {
  name = "solor-1njchy-ledger-15-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_15_devs__ledger_15_data_rw" {
  group      = aws_iam_group.ledger_15_devs.name
  policy_arn = aws_iam_policy.ledger_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_15_devs__ledger_15_ops" {
  group      = aws_iam_group.ledger_15_devs.name
  policy_arn = aws_iam_policy.ledger_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_15_devs__base_readonly" {
  group      = aws_iam_group.ledger_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_15_devs__self_service" {
  group      = aws_iam_group.ledger_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_16_analysts" {
  name = "solor-1njchy-ledger-16-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_16_analysts__ledger_16_read" {
  group      = aws_iam_group.ledger_16_analysts.name
  policy_arn = aws_iam_policy.ledger_16_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_16_analysts__base_readonly" {
  group      = aws_iam_group.ledger_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_16_devs" {
  name = "solor-1njchy-ledger-16-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_16_devs__ledger_16_data_rw" {
  group      = aws_iam_group.ledger_16_devs.name
  policy_arn = aws_iam_policy.ledger_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_16_devs__ledger_16_ops" {
  group      = aws_iam_group.ledger_16_devs.name
  policy_arn = aws_iam_policy.ledger_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_16_devs__base_readonly" {
  group      = aws_iam_group.ledger_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_16_devs__self_service" {
  group      = aws_iam_group.ledger_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_17_analysts" {
  name = "solor-1njchy-ledger-17-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_17_analysts__ledger_17_read" {
  group      = aws_iam_group.ledger_17_analysts.name
  policy_arn = aws_iam_policy.ledger_17_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_17_analysts__base_readonly" {
  group      = aws_iam_group.ledger_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_17_devs" {
  name = "solor-1njchy-ledger-17-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_17_devs__ledger_17_data_rw" {
  group      = aws_iam_group.ledger_17_devs.name
  policy_arn = aws_iam_policy.ledger_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_17_devs__ledger_17_ops" {
  group      = aws_iam_group.ledger_17_devs.name
  policy_arn = aws_iam_policy.ledger_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_17_devs__base_readonly" {
  group      = aws_iam_group.ledger_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_17_devs__self_service" {
  group      = aws_iam_group.ledger_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_18_analysts" {
  name = "solor-1njchy-ledger-18-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_18_analysts__ledger_18_read" {
  group      = aws_iam_group.ledger_18_analysts.name
  policy_arn = aws_iam_policy.ledger_18_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_18_analysts__base_readonly" {
  group      = aws_iam_group.ledger_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_18_devs" {
  name = "solor-1njchy-ledger-18-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_18_devs__ledger_18_data_rw" {
  group      = aws_iam_group.ledger_18_devs.name
  policy_arn = aws_iam_policy.ledger_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_18_devs__ledger_18_ops" {
  group      = aws_iam_group.ledger_18_devs.name
  policy_arn = aws_iam_policy.ledger_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_18_devs__base_readonly" {
  group      = aws_iam_group.ledger_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_18_devs__self_service" {
  group      = aws_iam_group.ledger_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_19_analysts" {
  name = "solor-1njchy-ledger-19-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_19_analysts__ledger_19_read" {
  group      = aws_iam_group.ledger_19_analysts.name
  policy_arn = aws_iam_policy.ledger_19_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_19_analysts__base_readonly" {
  group      = aws_iam_group.ledger_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_19_devs" {
  name = "solor-1njchy-ledger-19-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_19_devs__ledger_19_data_rw" {
  group      = aws_iam_group.ledger_19_devs.name
  policy_arn = aws_iam_policy.ledger_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_19_devs__ledger_19_ops" {
  group      = aws_iam_group.ledger_19_devs.name
  policy_arn = aws_iam_policy.ledger_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_19_devs__base_readonly" {
  group      = aws_iam_group.ledger_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_19_devs__self_service" {
  group      = aws_iam_group.ledger_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_2_analysts" {
  name = "solor-1njchy-ledger-2-analysts"
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
  name = "solor-1njchy-ledger-2-devs"
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

resource "aws_iam_group" "ledger_20_analysts" {
  name = "solor-1njchy-ledger-20-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_20_analysts__ledger_20_read" {
  group      = aws_iam_group.ledger_20_analysts.name
  policy_arn = aws_iam_policy.ledger_20_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_20_analysts__base_readonly" {
  group      = aws_iam_group.ledger_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_20_devs" {
  name = "solor-1njchy-ledger-20-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_20_devs__ledger_20_data_rw" {
  group      = aws_iam_group.ledger_20_devs.name
  policy_arn = aws_iam_policy.ledger_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_20_devs__ledger_20_ops" {
  group      = aws_iam_group.ledger_20_devs.name
  policy_arn = aws_iam_policy.ledger_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_20_devs__base_readonly" {
  group      = aws_iam_group.ledger_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_20_devs__self_service" {
  group      = aws_iam_group.ledger_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_21_analysts" {
  name = "solor-1njchy-ledger-21-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_21_analysts__ledger_21_read" {
  group      = aws_iam_group.ledger_21_analysts.name
  policy_arn = aws_iam_policy.ledger_21_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_21_analysts__base_readonly" {
  group      = aws_iam_group.ledger_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_21_devs" {
  name = "solor-1njchy-ledger-21-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_21_devs__ledger_21_data_rw" {
  group      = aws_iam_group.ledger_21_devs.name
  policy_arn = aws_iam_policy.ledger_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_21_devs__ledger_21_ops" {
  group      = aws_iam_group.ledger_21_devs.name
  policy_arn = aws_iam_policy.ledger_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_21_devs__base_readonly" {
  group      = aws_iam_group.ledger_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_21_devs__self_service" {
  group      = aws_iam_group.ledger_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_22_analysts" {
  name = "solor-1njchy-ledger-22-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_22_analysts__ledger_22_read" {
  group      = aws_iam_group.ledger_22_analysts.name
  policy_arn = aws_iam_policy.ledger_22_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_22_analysts__base_readonly" {
  group      = aws_iam_group.ledger_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_22_devs" {
  name = "solor-1njchy-ledger-22-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_22_devs__ledger_22_data_rw" {
  group      = aws_iam_group.ledger_22_devs.name
  policy_arn = aws_iam_policy.ledger_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_22_devs__ledger_22_ops" {
  group      = aws_iam_group.ledger_22_devs.name
  policy_arn = aws_iam_policy.ledger_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_22_devs__base_readonly" {
  group      = aws_iam_group.ledger_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_22_devs__self_service" {
  group      = aws_iam_group.ledger_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_23_analysts" {
  name = "solor-1njchy-ledger-23-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_23_analysts__ledger_23_read" {
  group      = aws_iam_group.ledger_23_analysts.name
  policy_arn = aws_iam_policy.ledger_23_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_23_analysts__base_readonly" {
  group      = aws_iam_group.ledger_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_23_devs" {
  name = "solor-1njchy-ledger-23-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_23_devs__ledger_23_data_rw" {
  group      = aws_iam_group.ledger_23_devs.name
  policy_arn = aws_iam_policy.ledger_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_23_devs__ledger_23_ops" {
  group      = aws_iam_group.ledger_23_devs.name
  policy_arn = aws_iam_policy.ledger_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_23_devs__base_readonly" {
  group      = aws_iam_group.ledger_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_23_devs__self_service" {
  group      = aws_iam_group.ledger_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_24_analysts" {
  name = "solor-1njchy-ledger-24-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_24_analysts__ledger_24_read" {
  group      = aws_iam_group.ledger_24_analysts.name
  policy_arn = aws_iam_policy.ledger_24_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_24_analysts__base_readonly" {
  group      = aws_iam_group.ledger_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_24_devs" {
  name = "solor-1njchy-ledger-24-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_24_devs__ledger_24_data_rw" {
  group      = aws_iam_group.ledger_24_devs.name
  policy_arn = aws_iam_policy.ledger_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_24_devs__ledger_24_ops" {
  group      = aws_iam_group.ledger_24_devs.name
  policy_arn = aws_iam_policy.ledger_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_24_devs__base_readonly" {
  group      = aws_iam_group.ledger_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_24_devs__self_service" {
  group      = aws_iam_group.ledger_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_25_analysts" {
  name = "solor-1njchy-ledger-25-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_25_analysts__ledger_25_read" {
  group      = aws_iam_group.ledger_25_analysts.name
  policy_arn = aws_iam_policy.ledger_25_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_25_analysts__base_readonly" {
  group      = aws_iam_group.ledger_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_25_devs" {
  name = "solor-1njchy-ledger-25-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_25_devs__ledger_25_data_rw" {
  group      = aws_iam_group.ledger_25_devs.name
  policy_arn = aws_iam_policy.ledger_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_25_devs__ledger_25_ops" {
  group      = aws_iam_group.ledger_25_devs.name
  policy_arn = aws_iam_policy.ledger_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_25_devs__base_readonly" {
  group      = aws_iam_group.ledger_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_25_devs__self_service" {
  group      = aws_iam_group.ledger_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_26_analysts" {
  name = "solor-1njchy-ledger-26-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_26_analysts__ledger_26_read" {
  group      = aws_iam_group.ledger_26_analysts.name
  policy_arn = aws_iam_policy.ledger_26_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_26_analysts__base_readonly" {
  group      = aws_iam_group.ledger_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_26_devs" {
  name = "solor-1njchy-ledger-26-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_26_devs__ledger_26_data_rw" {
  group      = aws_iam_group.ledger_26_devs.name
  policy_arn = aws_iam_policy.ledger_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_26_devs__ledger_26_ops" {
  group      = aws_iam_group.ledger_26_devs.name
  policy_arn = aws_iam_policy.ledger_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_26_devs__base_readonly" {
  group      = aws_iam_group.ledger_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_26_devs__self_service" {
  group      = aws_iam_group.ledger_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_27_analysts" {
  name = "solor-1njchy-ledger-27-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_27_analysts__ledger_27_read" {
  group      = aws_iam_group.ledger_27_analysts.name
  policy_arn = aws_iam_policy.ledger_27_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_27_analysts__base_readonly" {
  group      = aws_iam_group.ledger_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_27_devs" {
  name = "solor-1njchy-ledger-27-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_27_devs__ledger_27_data_rw" {
  group      = aws_iam_group.ledger_27_devs.name
  policy_arn = aws_iam_policy.ledger_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_27_devs__ledger_27_ops" {
  group      = aws_iam_group.ledger_27_devs.name
  policy_arn = aws_iam_policy.ledger_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_27_devs__base_readonly" {
  group      = aws_iam_group.ledger_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_27_devs__self_service" {
  group      = aws_iam_group.ledger_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_28_analysts" {
  name = "solor-1njchy-ledger-28-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_28_analysts__ledger_28_read" {
  group      = aws_iam_group.ledger_28_analysts.name
  policy_arn = aws_iam_policy.ledger_28_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_28_analysts__base_readonly" {
  group      = aws_iam_group.ledger_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_28_devs" {
  name = "solor-1njchy-ledger-28-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_28_devs__ledger_28_data_rw" {
  group      = aws_iam_group.ledger_28_devs.name
  policy_arn = aws_iam_policy.ledger_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_28_devs__ledger_28_ops" {
  group      = aws_iam_group.ledger_28_devs.name
  policy_arn = aws_iam_policy.ledger_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_28_devs__base_readonly" {
  group      = aws_iam_group.ledger_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_28_devs__self_service" {
  group      = aws_iam_group.ledger_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_29_analysts" {
  name = "solor-1njchy-ledger-29-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_29_analysts__ledger_29_read" {
  group      = aws_iam_group.ledger_29_analysts.name
  policy_arn = aws_iam_policy.ledger_29_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_29_analysts__base_readonly" {
  group      = aws_iam_group.ledger_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_29_devs" {
  name = "solor-1njchy-ledger-29-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_29_devs__ledger_29_data_rw" {
  group      = aws_iam_group.ledger_29_devs.name
  policy_arn = aws_iam_policy.ledger_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_29_devs__ledger_29_ops" {
  group      = aws_iam_group.ledger_29_devs.name
  policy_arn = aws_iam_policy.ledger_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_29_devs__base_readonly" {
  group      = aws_iam_group.ledger_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_29_devs__self_service" {
  group      = aws_iam_group.ledger_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_3_analysts" {
  name = "solor-1njchy-ledger-3-analysts"
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
  name = "solor-1njchy-ledger-3-devs"
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

resource "aws_iam_group" "ledger_30_analysts" {
  name = "solor-1njchy-ledger-30-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_30_analysts__ledger_30_read" {
  group      = aws_iam_group.ledger_30_analysts.name
  policy_arn = aws_iam_policy.ledger_30_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_30_analysts__base_readonly" {
  group      = aws_iam_group.ledger_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_30_devs" {
  name = "solor-1njchy-ledger-30-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_30_devs__ledger_30_data_rw" {
  group      = aws_iam_group.ledger_30_devs.name
  policy_arn = aws_iam_policy.ledger_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_30_devs__ledger_30_ops" {
  group      = aws_iam_group.ledger_30_devs.name
  policy_arn = aws_iam_policy.ledger_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_30_devs__base_readonly" {
  group      = aws_iam_group.ledger_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_30_devs__self_service" {
  group      = aws_iam_group.ledger_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_31_analysts" {
  name = "solor-1njchy-ledger-31-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_31_analysts__ledger_31_read" {
  group      = aws_iam_group.ledger_31_analysts.name
  policy_arn = aws_iam_policy.ledger_31_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_31_analysts__base_readonly" {
  group      = aws_iam_group.ledger_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_31_devs" {
  name = "solor-1njchy-ledger-31-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_31_devs__ledger_31_data_rw" {
  group      = aws_iam_group.ledger_31_devs.name
  policy_arn = aws_iam_policy.ledger_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_31_devs__ledger_31_ops" {
  group      = aws_iam_group.ledger_31_devs.name
  policy_arn = aws_iam_policy.ledger_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_31_devs__base_readonly" {
  group      = aws_iam_group.ledger_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_31_devs__self_service" {
  group      = aws_iam_group.ledger_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_32_analysts" {
  name = "solor-1njchy-ledger-32-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_32_analysts__ledger_32_read" {
  group      = aws_iam_group.ledger_32_analysts.name
  policy_arn = aws_iam_policy.ledger_32_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_32_analysts__base_readonly" {
  group      = aws_iam_group.ledger_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_32_devs" {
  name = "solor-1njchy-ledger-32-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_32_devs__ledger_32_data_rw" {
  group      = aws_iam_group.ledger_32_devs.name
  policy_arn = aws_iam_policy.ledger_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_32_devs__ledger_32_ops" {
  group      = aws_iam_group.ledger_32_devs.name
  policy_arn = aws_iam_policy.ledger_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_32_devs__base_readonly" {
  group      = aws_iam_group.ledger_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_32_devs__self_service" {
  group      = aws_iam_group.ledger_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_33_analysts" {
  name = "solor-1njchy-ledger-33-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_33_analysts__ledger_33_read" {
  group      = aws_iam_group.ledger_33_analysts.name
  policy_arn = aws_iam_policy.ledger_33_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_33_analysts__base_readonly" {
  group      = aws_iam_group.ledger_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_33_devs" {
  name = "solor-1njchy-ledger-33-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_33_devs__ledger_33_data_rw" {
  group      = aws_iam_group.ledger_33_devs.name
  policy_arn = aws_iam_policy.ledger_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_33_devs__ledger_33_ops" {
  group      = aws_iam_group.ledger_33_devs.name
  policy_arn = aws_iam_policy.ledger_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_33_devs__base_readonly" {
  group      = aws_iam_group.ledger_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_33_devs__self_service" {
  group      = aws_iam_group.ledger_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_34_analysts" {
  name = "solor-1njchy-ledger-34-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_34_analysts__ledger_34_read" {
  group      = aws_iam_group.ledger_34_analysts.name
  policy_arn = aws_iam_policy.ledger_34_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_34_analysts__base_readonly" {
  group      = aws_iam_group.ledger_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_34_devs" {
  name = "solor-1njchy-ledger-34-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_34_devs__ledger_34_data_rw" {
  group      = aws_iam_group.ledger_34_devs.name
  policy_arn = aws_iam_policy.ledger_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_34_devs__ledger_34_ops" {
  group      = aws_iam_group.ledger_34_devs.name
  policy_arn = aws_iam_policy.ledger_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_34_devs__base_readonly" {
  group      = aws_iam_group.ledger_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_34_devs__self_service" {
  group      = aws_iam_group.ledger_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_35_analysts" {
  name = "solor-1njchy-ledger-35-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_35_analysts__ledger_35_read" {
  group      = aws_iam_group.ledger_35_analysts.name
  policy_arn = aws_iam_policy.ledger_35_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_35_analysts__base_readonly" {
  group      = aws_iam_group.ledger_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_35_devs" {
  name = "solor-1njchy-ledger-35-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_35_devs__ledger_35_data_rw" {
  group      = aws_iam_group.ledger_35_devs.name
  policy_arn = aws_iam_policy.ledger_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_35_devs__ledger_35_ops" {
  group      = aws_iam_group.ledger_35_devs.name
  policy_arn = aws_iam_policy.ledger_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_35_devs__base_readonly" {
  group      = aws_iam_group.ledger_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_35_devs__self_service" {
  group      = aws_iam_group.ledger_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_36_analysts" {
  name = "solor-1njchy-ledger-36-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_36_analysts__ledger_36_read" {
  group      = aws_iam_group.ledger_36_analysts.name
  policy_arn = aws_iam_policy.ledger_36_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_36_analysts__base_readonly" {
  group      = aws_iam_group.ledger_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_36_devs" {
  name = "solor-1njchy-ledger-36-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_36_devs__ledger_36_data_rw" {
  group      = aws_iam_group.ledger_36_devs.name
  policy_arn = aws_iam_policy.ledger_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_36_devs__ledger_36_ops" {
  group      = aws_iam_group.ledger_36_devs.name
  policy_arn = aws_iam_policy.ledger_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_36_devs__base_readonly" {
  group      = aws_iam_group.ledger_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_36_devs__self_service" {
  group      = aws_iam_group.ledger_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_37_analysts" {
  name = "solor-1njchy-ledger-37-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_37_analysts__ledger_37_read" {
  group      = aws_iam_group.ledger_37_analysts.name
  policy_arn = aws_iam_policy.ledger_37_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_37_analysts__base_readonly" {
  group      = aws_iam_group.ledger_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_37_devs" {
  name = "solor-1njchy-ledger-37-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_37_devs__ledger_37_data_rw" {
  group      = aws_iam_group.ledger_37_devs.name
  policy_arn = aws_iam_policy.ledger_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_37_devs__ledger_37_ops" {
  group      = aws_iam_group.ledger_37_devs.name
  policy_arn = aws_iam_policy.ledger_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_37_devs__base_readonly" {
  group      = aws_iam_group.ledger_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_37_devs__self_service" {
  group      = aws_iam_group.ledger_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_38_analysts" {
  name = "solor-1njchy-ledger-38-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_38_analysts__ledger_38_read" {
  group      = aws_iam_group.ledger_38_analysts.name
  policy_arn = aws_iam_policy.ledger_38_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_38_analysts__base_readonly" {
  group      = aws_iam_group.ledger_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_38_devs" {
  name = "solor-1njchy-ledger-38-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_38_devs__ledger_38_data_rw" {
  group      = aws_iam_group.ledger_38_devs.name
  policy_arn = aws_iam_policy.ledger_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_38_devs__ledger_38_ops" {
  group      = aws_iam_group.ledger_38_devs.name
  policy_arn = aws_iam_policy.ledger_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_38_devs__base_readonly" {
  group      = aws_iam_group.ledger_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_38_devs__self_service" {
  group      = aws_iam_group.ledger_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_39_analysts" {
  name = "solor-1njchy-ledger-39-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_39_analysts__ledger_39_read" {
  group      = aws_iam_group.ledger_39_analysts.name
  policy_arn = aws_iam_policy.ledger_39_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_39_analysts__base_readonly" {
  group      = aws_iam_group.ledger_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_39_devs" {
  name = "solor-1njchy-ledger-39-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_39_devs__ledger_39_data_rw" {
  group      = aws_iam_group.ledger_39_devs.name
  policy_arn = aws_iam_policy.ledger_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_39_devs__ledger_39_ops" {
  group      = aws_iam_group.ledger_39_devs.name
  policy_arn = aws_iam_policy.ledger_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_39_devs__base_readonly" {
  group      = aws_iam_group.ledger_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_39_devs__self_service" {
  group      = aws_iam_group.ledger_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_4_analysts" {
  name = "solor-1njchy-ledger-4-analysts"
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
  name = "solor-1njchy-ledger-4-devs"
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

resource "aws_iam_group" "ledger_40_analysts" {
  name = "solor-1njchy-ledger-40-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_40_analysts__ledger_40_read" {
  group      = aws_iam_group.ledger_40_analysts.name
  policy_arn = aws_iam_policy.ledger_40_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_40_analysts__base_readonly" {
  group      = aws_iam_group.ledger_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_40_devs" {
  name = "solor-1njchy-ledger-40-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_40_devs__ledger_40_data_rw" {
  group      = aws_iam_group.ledger_40_devs.name
  policy_arn = aws_iam_policy.ledger_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_40_devs__ledger_40_ops" {
  group      = aws_iam_group.ledger_40_devs.name
  policy_arn = aws_iam_policy.ledger_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_40_devs__base_readonly" {
  group      = aws_iam_group.ledger_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_40_devs__self_service" {
  group      = aws_iam_group.ledger_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_41_analysts" {
  name = "solor-1njchy-ledger-41-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_41_analysts__ledger_41_read" {
  group      = aws_iam_group.ledger_41_analysts.name
  policy_arn = aws_iam_policy.ledger_41_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_41_analysts__base_readonly" {
  group      = aws_iam_group.ledger_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_41_devs" {
  name = "solor-1njchy-ledger-41-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_41_devs__ledger_41_data_rw" {
  group      = aws_iam_group.ledger_41_devs.name
  policy_arn = aws_iam_policy.ledger_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_41_devs__ledger_41_ops" {
  group      = aws_iam_group.ledger_41_devs.name
  policy_arn = aws_iam_policy.ledger_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_41_devs__base_readonly" {
  group      = aws_iam_group.ledger_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_41_devs__self_service" {
  group      = aws_iam_group.ledger_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_42_analysts" {
  name = "solor-1njchy-ledger-42-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_42_analysts__ledger_42_read" {
  group      = aws_iam_group.ledger_42_analysts.name
  policy_arn = aws_iam_policy.ledger_42_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_42_analysts__base_readonly" {
  group      = aws_iam_group.ledger_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_42_devs" {
  name = "solor-1njchy-ledger-42-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_42_devs__ledger_42_data_rw" {
  group      = aws_iam_group.ledger_42_devs.name
  policy_arn = aws_iam_policy.ledger_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_42_devs__ledger_42_ops" {
  group      = aws_iam_group.ledger_42_devs.name
  policy_arn = aws_iam_policy.ledger_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_42_devs__base_readonly" {
  group      = aws_iam_group.ledger_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_42_devs__self_service" {
  group      = aws_iam_group.ledger_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_43_analysts" {
  name = "solor-1njchy-ledger-43-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_43_analysts__ledger_43_read" {
  group      = aws_iam_group.ledger_43_analysts.name
  policy_arn = aws_iam_policy.ledger_43_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_43_analysts__base_readonly" {
  group      = aws_iam_group.ledger_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_43_devs" {
  name = "solor-1njchy-ledger-43-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_43_devs__ledger_43_data_rw" {
  group      = aws_iam_group.ledger_43_devs.name
  policy_arn = aws_iam_policy.ledger_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_43_devs__ledger_43_ops" {
  group      = aws_iam_group.ledger_43_devs.name
  policy_arn = aws_iam_policy.ledger_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_43_devs__base_readonly" {
  group      = aws_iam_group.ledger_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_43_devs__self_service" {
  group      = aws_iam_group.ledger_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_44_analysts" {
  name = "solor-1njchy-ledger-44-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_44_analysts__ledger_44_read" {
  group      = aws_iam_group.ledger_44_analysts.name
  policy_arn = aws_iam_policy.ledger_44_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_44_analysts__base_readonly" {
  group      = aws_iam_group.ledger_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_44_devs" {
  name = "solor-1njchy-ledger-44-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_44_devs__ledger_44_data_rw" {
  group      = aws_iam_group.ledger_44_devs.name
  policy_arn = aws_iam_policy.ledger_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_44_devs__ledger_44_ops" {
  group      = aws_iam_group.ledger_44_devs.name
  policy_arn = aws_iam_policy.ledger_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_44_devs__base_readonly" {
  group      = aws_iam_group.ledger_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_44_devs__self_service" {
  group      = aws_iam_group.ledger_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_45_analysts" {
  name = "solor-1njchy-ledger-45-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_45_analysts__ledger_45_read" {
  group      = aws_iam_group.ledger_45_analysts.name
  policy_arn = aws_iam_policy.ledger_45_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_45_analysts__base_readonly" {
  group      = aws_iam_group.ledger_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_45_devs" {
  name = "solor-1njchy-ledger-45-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_45_devs__ledger_45_data_rw" {
  group      = aws_iam_group.ledger_45_devs.name
  policy_arn = aws_iam_policy.ledger_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_45_devs__ledger_45_ops" {
  group      = aws_iam_group.ledger_45_devs.name
  policy_arn = aws_iam_policy.ledger_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_45_devs__base_readonly" {
  group      = aws_iam_group.ledger_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_45_devs__self_service" {
  group      = aws_iam_group.ledger_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_46_analysts" {
  name = "solor-1njchy-ledger-46-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_46_analysts__ledger_46_read" {
  group      = aws_iam_group.ledger_46_analysts.name
  policy_arn = aws_iam_policy.ledger_46_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_46_analysts__base_readonly" {
  group      = aws_iam_group.ledger_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_46_devs" {
  name = "solor-1njchy-ledger-46-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_46_devs__ledger_46_data_rw" {
  group      = aws_iam_group.ledger_46_devs.name
  policy_arn = aws_iam_policy.ledger_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_46_devs__ledger_46_ops" {
  group      = aws_iam_group.ledger_46_devs.name
  policy_arn = aws_iam_policy.ledger_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_46_devs__base_readonly" {
  group      = aws_iam_group.ledger_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_46_devs__self_service" {
  group      = aws_iam_group.ledger_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_47_analysts" {
  name = "solor-1njchy-ledger-47-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_47_analysts__ledger_47_read" {
  group      = aws_iam_group.ledger_47_analysts.name
  policy_arn = aws_iam_policy.ledger_47_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_47_analysts__base_readonly" {
  group      = aws_iam_group.ledger_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_47_devs" {
  name = "solor-1njchy-ledger-47-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_47_devs__ledger_47_data_rw" {
  group      = aws_iam_group.ledger_47_devs.name
  policy_arn = aws_iam_policy.ledger_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_47_devs__ledger_47_ops" {
  group      = aws_iam_group.ledger_47_devs.name
  policy_arn = aws_iam_policy.ledger_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_47_devs__base_readonly" {
  group      = aws_iam_group.ledger_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_47_devs__self_service" {
  group      = aws_iam_group.ledger_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_48_analysts" {
  name = "solor-1njchy-ledger-48-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_48_analysts__ledger_48_read" {
  group      = aws_iam_group.ledger_48_analysts.name
  policy_arn = aws_iam_policy.ledger_48_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_48_analysts__base_readonly" {
  group      = aws_iam_group.ledger_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_48_devs" {
  name = "solor-1njchy-ledger-48-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_48_devs__ledger_48_data_rw" {
  group      = aws_iam_group.ledger_48_devs.name
  policy_arn = aws_iam_policy.ledger_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_48_devs__ledger_48_ops" {
  group      = aws_iam_group.ledger_48_devs.name
  policy_arn = aws_iam_policy.ledger_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_48_devs__base_readonly" {
  group      = aws_iam_group.ledger_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_48_devs__self_service" {
  group      = aws_iam_group.ledger_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_49_analysts" {
  name = "solor-1njchy-ledger-49-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_49_analysts__ledger_49_read" {
  group      = aws_iam_group.ledger_49_analysts.name
  policy_arn = aws_iam_policy.ledger_49_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_49_analysts__base_readonly" {
  group      = aws_iam_group.ledger_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_49_devs" {
  name = "solor-1njchy-ledger-49-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_49_devs__ledger_49_data_rw" {
  group      = aws_iam_group.ledger_49_devs.name
  policy_arn = aws_iam_policy.ledger_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_49_devs__ledger_49_ops" {
  group      = aws_iam_group.ledger_49_devs.name
  policy_arn = aws_iam_policy.ledger_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_49_devs__base_readonly" {
  group      = aws_iam_group.ledger_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_49_devs__self_service" {
  group      = aws_iam_group.ledger_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_5_analysts" {
  name = "solor-1njchy-ledger-5-analysts"
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
  name = "solor-1njchy-ledger-5-devs"
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

resource "aws_iam_group" "ledger_50_analysts" {
  name = "solor-1njchy-ledger-50-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_50_analysts__ledger_50_read" {
  group      = aws_iam_group.ledger_50_analysts.name
  policy_arn = aws_iam_policy.ledger_50_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_50_analysts__base_readonly" {
  group      = aws_iam_group.ledger_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_50_devs" {
  name = "solor-1njchy-ledger-50-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_50_devs__ledger_50_data_rw" {
  group      = aws_iam_group.ledger_50_devs.name
  policy_arn = aws_iam_policy.ledger_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_50_devs__ledger_50_ops" {
  group      = aws_iam_group.ledger_50_devs.name
  policy_arn = aws_iam_policy.ledger_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_50_devs__base_readonly" {
  group      = aws_iam_group.ledger_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_50_devs__self_service" {
  group      = aws_iam_group.ledger_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_6_analysts" {
  name = "solor-1njchy-ledger-6-analysts"
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
  name = "solor-1njchy-ledger-6-devs"
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
  name = "solor-1njchy-ledger-7-analysts"
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
  name = "solor-1njchy-ledger-7-devs"
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

resource "aws_iam_group" "ledger_8_analysts" {
  name = "solor-1njchy-ledger-8-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_8_analysts__ledger_8_read" {
  group      = aws_iam_group.ledger_8_analysts.name
  policy_arn = aws_iam_policy.ledger_8_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_8_analysts__base_readonly" {
  group      = aws_iam_group.ledger_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_8_devs" {
  name = "solor-1njchy-ledger-8-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_8_devs__ledger_8_data_rw" {
  group      = aws_iam_group.ledger_8_devs.name
  policy_arn = aws_iam_policy.ledger_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_8_devs__ledger_8_ops" {
  group      = aws_iam_group.ledger_8_devs.name
  policy_arn = aws_iam_policy.ledger_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_8_devs__base_readonly" {
  group      = aws_iam_group.ledger_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_8_devs__self_service" {
  group      = aws_iam_group.ledger_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_9_analysts" {
  name = "solor-1njchy-ledger-9-analysts"
}

resource "aws_iam_group_policy_attachment" "ledger_9_analysts__ledger_9_read" {
  group      = aws_iam_group.ledger_9_analysts.name
  policy_arn = aws_iam_policy.ledger_9_read.arn
}

resource "aws_iam_group_policy_attachment" "ledger_9_analysts__base_readonly" {
  group      = aws_iam_group.ledger_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ledger_9_devs" {
  name = "solor-1njchy-ledger-9-devs"
}

resource "aws_iam_group_policy_attachment" "ledger_9_devs__ledger_9_data_rw" {
  group      = aws_iam_group.ledger_9_devs.name
  policy_arn = aws_iam_policy.ledger_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ledger_9_devs__ledger_9_ops" {
  group      = aws_iam_group.ledger_9_devs.name
  policy_arn = aws_iam_policy.ledger_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "ledger_9_devs__base_readonly" {
  group      = aws_iam_group.ledger_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ledger_9_devs__self_service" {
  group      = aws_iam_group.ledger_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ledger_analysts" {
  name = "solor-1njchy-ledger-analysts"
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
  name = "solor-1njchy-ledger-devs"
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

resource "aws_iam_group" "lending_10_analysts" {
  name = "solor-1njchy-lending-10-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_10_analysts__lending_10_read" {
  group      = aws_iam_group.lending_10_analysts.name
  policy_arn = aws_iam_policy.lending_10_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_10_analysts__base_readonly" {
  group      = aws_iam_group.lending_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_10_devs" {
  name = "solor-1njchy-lending-10-devs"
}

resource "aws_iam_group_policy_attachment" "lending_10_devs__lending_10_data_rw" {
  group      = aws_iam_group.lending_10_devs.name
  policy_arn = aws_iam_policy.lending_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_10_devs__lending_10_ops" {
  group      = aws_iam_group.lending_10_devs.name
  policy_arn = aws_iam_policy.lending_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_10_devs__base_readonly" {
  group      = aws_iam_group.lending_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_10_devs__self_service" {
  group      = aws_iam_group.lending_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_11_analysts" {
  name = "solor-1njchy-lending-11-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_11_analysts__lending_11_read" {
  group      = aws_iam_group.lending_11_analysts.name
  policy_arn = aws_iam_policy.lending_11_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_11_analysts__base_readonly" {
  group      = aws_iam_group.lending_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_11_devs" {
  name = "solor-1njchy-lending-11-devs"
}

resource "aws_iam_group_policy_attachment" "lending_11_devs__lending_11_data_rw" {
  group      = aws_iam_group.lending_11_devs.name
  policy_arn = aws_iam_policy.lending_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_11_devs__lending_11_ops" {
  group      = aws_iam_group.lending_11_devs.name
  policy_arn = aws_iam_policy.lending_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_11_devs__base_readonly" {
  group      = aws_iam_group.lending_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_11_devs__self_service" {
  group      = aws_iam_group.lending_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_12_analysts" {
  name = "solor-1njchy-lending-12-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_12_analysts__lending_12_read" {
  group      = aws_iam_group.lending_12_analysts.name
  policy_arn = aws_iam_policy.lending_12_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_12_analysts__base_readonly" {
  group      = aws_iam_group.lending_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_12_devs" {
  name = "solor-1njchy-lending-12-devs"
}

resource "aws_iam_group_policy_attachment" "lending_12_devs__lending_12_data_rw" {
  group      = aws_iam_group.lending_12_devs.name
  policy_arn = aws_iam_policy.lending_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_12_devs__lending_12_ops" {
  group      = aws_iam_group.lending_12_devs.name
  policy_arn = aws_iam_policy.lending_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_12_devs__base_readonly" {
  group      = aws_iam_group.lending_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_12_devs__self_service" {
  group      = aws_iam_group.lending_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_13_analysts" {
  name = "solor-1njchy-lending-13-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_13_analysts__lending_13_read" {
  group      = aws_iam_group.lending_13_analysts.name
  policy_arn = aws_iam_policy.lending_13_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_13_analysts__base_readonly" {
  group      = aws_iam_group.lending_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_13_devs" {
  name = "solor-1njchy-lending-13-devs"
}

resource "aws_iam_group_policy_attachment" "lending_13_devs__lending_13_data_rw" {
  group      = aws_iam_group.lending_13_devs.name
  policy_arn = aws_iam_policy.lending_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_13_devs__lending_13_ops" {
  group      = aws_iam_group.lending_13_devs.name
  policy_arn = aws_iam_policy.lending_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_13_devs__base_readonly" {
  group      = aws_iam_group.lending_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_13_devs__self_service" {
  group      = aws_iam_group.lending_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_14_analysts" {
  name = "solor-1njchy-lending-14-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_14_analysts__lending_14_read" {
  group      = aws_iam_group.lending_14_analysts.name
  policy_arn = aws_iam_policy.lending_14_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_14_analysts__base_readonly" {
  group      = aws_iam_group.lending_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_14_devs" {
  name = "solor-1njchy-lending-14-devs"
}

resource "aws_iam_group_policy_attachment" "lending_14_devs__lending_14_data_rw" {
  group      = aws_iam_group.lending_14_devs.name
  policy_arn = aws_iam_policy.lending_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_14_devs__lending_14_ops" {
  group      = aws_iam_group.lending_14_devs.name
  policy_arn = aws_iam_policy.lending_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_14_devs__base_readonly" {
  group      = aws_iam_group.lending_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_14_devs__self_service" {
  group      = aws_iam_group.lending_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_15_analysts" {
  name = "solor-1njchy-lending-15-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_15_analysts__lending_15_read" {
  group      = aws_iam_group.lending_15_analysts.name
  policy_arn = aws_iam_policy.lending_15_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_15_analysts__base_readonly" {
  group      = aws_iam_group.lending_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_15_devs" {
  name = "solor-1njchy-lending-15-devs"
}

resource "aws_iam_group_policy_attachment" "lending_15_devs__lending_15_data_rw" {
  group      = aws_iam_group.lending_15_devs.name
  policy_arn = aws_iam_policy.lending_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_15_devs__lending_15_ops" {
  group      = aws_iam_group.lending_15_devs.name
  policy_arn = aws_iam_policy.lending_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_15_devs__base_readonly" {
  group      = aws_iam_group.lending_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_15_devs__self_service" {
  group      = aws_iam_group.lending_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_16_analysts" {
  name = "solor-1njchy-lending-16-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_16_analysts__lending_16_read" {
  group      = aws_iam_group.lending_16_analysts.name
  policy_arn = aws_iam_policy.lending_16_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_16_analysts__base_readonly" {
  group      = aws_iam_group.lending_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_16_devs" {
  name = "solor-1njchy-lending-16-devs"
}

resource "aws_iam_group_policy_attachment" "lending_16_devs__lending_16_data_rw" {
  group      = aws_iam_group.lending_16_devs.name
  policy_arn = aws_iam_policy.lending_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_16_devs__lending_16_ops" {
  group      = aws_iam_group.lending_16_devs.name
  policy_arn = aws_iam_policy.lending_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_16_devs__base_readonly" {
  group      = aws_iam_group.lending_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_16_devs__self_service" {
  group      = aws_iam_group.lending_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_17_analysts" {
  name = "solor-1njchy-lending-17-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_17_analysts__lending_17_read" {
  group      = aws_iam_group.lending_17_analysts.name
  policy_arn = aws_iam_policy.lending_17_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_17_analysts__base_readonly" {
  group      = aws_iam_group.lending_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_17_devs" {
  name = "solor-1njchy-lending-17-devs"
}

resource "aws_iam_group_policy_attachment" "lending_17_devs__lending_17_data_rw" {
  group      = aws_iam_group.lending_17_devs.name
  policy_arn = aws_iam_policy.lending_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_17_devs__lending_17_ops" {
  group      = aws_iam_group.lending_17_devs.name
  policy_arn = aws_iam_policy.lending_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_17_devs__base_readonly" {
  group      = aws_iam_group.lending_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_17_devs__self_service" {
  group      = aws_iam_group.lending_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_18_analysts" {
  name = "solor-1njchy-lending-18-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_18_analysts__lending_18_read" {
  group      = aws_iam_group.lending_18_analysts.name
  policy_arn = aws_iam_policy.lending_18_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_18_analysts__base_readonly" {
  group      = aws_iam_group.lending_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_18_devs" {
  name = "solor-1njchy-lending-18-devs"
}

resource "aws_iam_group_policy_attachment" "lending_18_devs__lending_18_data_rw" {
  group      = aws_iam_group.lending_18_devs.name
  policy_arn = aws_iam_policy.lending_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_18_devs__lending_18_ops" {
  group      = aws_iam_group.lending_18_devs.name
  policy_arn = aws_iam_policy.lending_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_18_devs__base_readonly" {
  group      = aws_iam_group.lending_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_18_devs__self_service" {
  group      = aws_iam_group.lending_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_19_analysts" {
  name = "solor-1njchy-lending-19-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_19_analysts__lending_19_read" {
  group      = aws_iam_group.lending_19_analysts.name
  policy_arn = aws_iam_policy.lending_19_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_19_analysts__base_readonly" {
  group      = aws_iam_group.lending_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_19_devs" {
  name = "solor-1njchy-lending-19-devs"
}

resource "aws_iam_group_policy_attachment" "lending_19_devs__lending_19_data_rw" {
  group      = aws_iam_group.lending_19_devs.name
  policy_arn = aws_iam_policy.lending_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_19_devs__lending_19_ops" {
  group      = aws_iam_group.lending_19_devs.name
  policy_arn = aws_iam_policy.lending_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_19_devs__base_readonly" {
  group      = aws_iam_group.lending_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_19_devs__self_service" {
  group      = aws_iam_group.lending_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_2_analysts" {
  name = "solor-1njchy-lending-2-analysts"
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
  name = "solor-1njchy-lending-2-devs"
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

resource "aws_iam_group" "lending_20_analysts" {
  name = "solor-1njchy-lending-20-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_20_analysts__lending_20_read" {
  group      = aws_iam_group.lending_20_analysts.name
  policy_arn = aws_iam_policy.lending_20_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_20_analysts__base_readonly" {
  group      = aws_iam_group.lending_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_20_devs" {
  name = "solor-1njchy-lending-20-devs"
}

resource "aws_iam_group_policy_attachment" "lending_20_devs__lending_20_data_rw" {
  group      = aws_iam_group.lending_20_devs.name
  policy_arn = aws_iam_policy.lending_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_20_devs__lending_20_ops" {
  group      = aws_iam_group.lending_20_devs.name
  policy_arn = aws_iam_policy.lending_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_20_devs__base_readonly" {
  group      = aws_iam_group.lending_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_20_devs__self_service" {
  group      = aws_iam_group.lending_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_21_analysts" {
  name = "solor-1njchy-lending-21-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_21_analysts__lending_21_read" {
  group      = aws_iam_group.lending_21_analysts.name
  policy_arn = aws_iam_policy.lending_21_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_21_analysts__base_readonly" {
  group      = aws_iam_group.lending_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_21_devs" {
  name = "solor-1njchy-lending-21-devs"
}

resource "aws_iam_group_policy_attachment" "lending_21_devs__lending_21_data_rw" {
  group      = aws_iam_group.lending_21_devs.name
  policy_arn = aws_iam_policy.lending_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_21_devs__lending_21_ops" {
  group      = aws_iam_group.lending_21_devs.name
  policy_arn = aws_iam_policy.lending_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_21_devs__base_readonly" {
  group      = aws_iam_group.lending_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_21_devs__self_service" {
  group      = aws_iam_group.lending_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_22_analysts" {
  name = "solor-1njchy-lending-22-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_22_analysts__lending_22_read" {
  group      = aws_iam_group.lending_22_analysts.name
  policy_arn = aws_iam_policy.lending_22_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_22_analysts__base_readonly" {
  group      = aws_iam_group.lending_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_22_devs" {
  name = "solor-1njchy-lending-22-devs"
}

resource "aws_iam_group_policy_attachment" "lending_22_devs__lending_22_data_rw" {
  group      = aws_iam_group.lending_22_devs.name
  policy_arn = aws_iam_policy.lending_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_22_devs__lending_22_ops" {
  group      = aws_iam_group.lending_22_devs.name
  policy_arn = aws_iam_policy.lending_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_22_devs__base_readonly" {
  group      = aws_iam_group.lending_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_22_devs__self_service" {
  group      = aws_iam_group.lending_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_23_analysts" {
  name = "solor-1njchy-lending-23-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_23_analysts__lending_23_read" {
  group      = aws_iam_group.lending_23_analysts.name
  policy_arn = aws_iam_policy.lending_23_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_23_analysts__base_readonly" {
  group      = aws_iam_group.lending_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_23_devs" {
  name = "solor-1njchy-lending-23-devs"
}

resource "aws_iam_group_policy_attachment" "lending_23_devs__lending_23_data_rw" {
  group      = aws_iam_group.lending_23_devs.name
  policy_arn = aws_iam_policy.lending_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_23_devs__lending_23_ops" {
  group      = aws_iam_group.lending_23_devs.name
  policy_arn = aws_iam_policy.lending_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_23_devs__base_readonly" {
  group      = aws_iam_group.lending_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_23_devs__self_service" {
  group      = aws_iam_group.lending_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_24_analysts" {
  name = "solor-1njchy-lending-24-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_24_analysts__lending_24_read" {
  group      = aws_iam_group.lending_24_analysts.name
  policy_arn = aws_iam_policy.lending_24_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_24_analysts__base_readonly" {
  group      = aws_iam_group.lending_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_24_devs" {
  name = "solor-1njchy-lending-24-devs"
}

resource "aws_iam_group_policy_attachment" "lending_24_devs__lending_24_data_rw" {
  group      = aws_iam_group.lending_24_devs.name
  policy_arn = aws_iam_policy.lending_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_24_devs__lending_24_ops" {
  group      = aws_iam_group.lending_24_devs.name
  policy_arn = aws_iam_policy.lending_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_24_devs__base_readonly" {
  group      = aws_iam_group.lending_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_24_devs__self_service" {
  group      = aws_iam_group.lending_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_25_analysts" {
  name = "solor-1njchy-lending-25-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_25_analysts__lending_25_read" {
  group      = aws_iam_group.lending_25_analysts.name
  policy_arn = aws_iam_policy.lending_25_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_25_analysts__base_readonly" {
  group      = aws_iam_group.lending_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_25_devs" {
  name = "solor-1njchy-lending-25-devs"
}

resource "aws_iam_group_policy_attachment" "lending_25_devs__lending_25_data_rw" {
  group      = aws_iam_group.lending_25_devs.name
  policy_arn = aws_iam_policy.lending_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_25_devs__lending_25_ops" {
  group      = aws_iam_group.lending_25_devs.name
  policy_arn = aws_iam_policy.lending_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_25_devs__base_readonly" {
  group      = aws_iam_group.lending_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_25_devs__self_service" {
  group      = aws_iam_group.lending_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_26_analysts" {
  name = "solor-1njchy-lending-26-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_26_analysts__lending_26_read" {
  group      = aws_iam_group.lending_26_analysts.name
  policy_arn = aws_iam_policy.lending_26_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_26_analysts__base_readonly" {
  group      = aws_iam_group.lending_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_26_devs" {
  name = "solor-1njchy-lending-26-devs"
}

resource "aws_iam_group_policy_attachment" "lending_26_devs__lending_26_data_rw" {
  group      = aws_iam_group.lending_26_devs.name
  policy_arn = aws_iam_policy.lending_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_26_devs__lending_26_ops" {
  group      = aws_iam_group.lending_26_devs.name
  policy_arn = aws_iam_policy.lending_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_26_devs__base_readonly" {
  group      = aws_iam_group.lending_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_26_devs__self_service" {
  group      = aws_iam_group.lending_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_27_analysts" {
  name = "solor-1njchy-lending-27-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_27_analysts__lending_27_read" {
  group      = aws_iam_group.lending_27_analysts.name
  policy_arn = aws_iam_policy.lending_27_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_27_analysts__base_readonly" {
  group      = aws_iam_group.lending_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_27_devs" {
  name = "solor-1njchy-lending-27-devs"
}

resource "aws_iam_group_policy_attachment" "lending_27_devs__lending_27_data_rw" {
  group      = aws_iam_group.lending_27_devs.name
  policy_arn = aws_iam_policy.lending_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_27_devs__lending_27_ops" {
  group      = aws_iam_group.lending_27_devs.name
  policy_arn = aws_iam_policy.lending_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_27_devs__base_readonly" {
  group      = aws_iam_group.lending_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_27_devs__self_service" {
  group      = aws_iam_group.lending_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_28_analysts" {
  name = "solor-1njchy-lending-28-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_28_analysts__lending_28_read" {
  group      = aws_iam_group.lending_28_analysts.name
  policy_arn = aws_iam_policy.lending_28_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_28_analysts__base_readonly" {
  group      = aws_iam_group.lending_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_28_devs" {
  name = "solor-1njchy-lending-28-devs"
}

resource "aws_iam_group_policy_attachment" "lending_28_devs__lending_28_data_rw" {
  group      = aws_iam_group.lending_28_devs.name
  policy_arn = aws_iam_policy.lending_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_28_devs__lending_28_ops" {
  group      = aws_iam_group.lending_28_devs.name
  policy_arn = aws_iam_policy.lending_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_28_devs__base_readonly" {
  group      = aws_iam_group.lending_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_28_devs__self_service" {
  group      = aws_iam_group.lending_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_29_analysts" {
  name = "solor-1njchy-lending-29-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_29_analysts__lending_29_read" {
  group      = aws_iam_group.lending_29_analysts.name
  policy_arn = aws_iam_policy.lending_29_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_29_analysts__base_readonly" {
  group      = aws_iam_group.lending_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_29_devs" {
  name = "solor-1njchy-lending-29-devs"
}

resource "aws_iam_group_policy_attachment" "lending_29_devs__lending_29_data_rw" {
  group      = aws_iam_group.lending_29_devs.name
  policy_arn = aws_iam_policy.lending_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_29_devs__lending_29_ops" {
  group      = aws_iam_group.lending_29_devs.name
  policy_arn = aws_iam_policy.lending_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_29_devs__base_readonly" {
  group      = aws_iam_group.lending_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_29_devs__self_service" {
  group      = aws_iam_group.lending_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_3_analysts" {
  name = "solor-1njchy-lending-3-analysts"
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
  name = "solor-1njchy-lending-3-devs"
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

resource "aws_iam_group" "lending_30_analysts" {
  name = "solor-1njchy-lending-30-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_30_analysts__lending_30_read" {
  group      = aws_iam_group.lending_30_analysts.name
  policy_arn = aws_iam_policy.lending_30_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_30_analysts__base_readonly" {
  group      = aws_iam_group.lending_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_30_devs" {
  name = "solor-1njchy-lending-30-devs"
}

resource "aws_iam_group_policy_attachment" "lending_30_devs__lending_30_data_rw" {
  group      = aws_iam_group.lending_30_devs.name
  policy_arn = aws_iam_policy.lending_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_30_devs__lending_30_ops" {
  group      = aws_iam_group.lending_30_devs.name
  policy_arn = aws_iam_policy.lending_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_30_devs__base_readonly" {
  group      = aws_iam_group.lending_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_30_devs__self_service" {
  group      = aws_iam_group.lending_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_31_analysts" {
  name = "solor-1njchy-lending-31-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_31_analysts__lending_31_read" {
  group      = aws_iam_group.lending_31_analysts.name
  policy_arn = aws_iam_policy.lending_31_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_31_analysts__base_readonly" {
  group      = aws_iam_group.lending_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_31_devs" {
  name = "solor-1njchy-lending-31-devs"
}

resource "aws_iam_group_policy_attachment" "lending_31_devs__lending_31_data_rw" {
  group      = aws_iam_group.lending_31_devs.name
  policy_arn = aws_iam_policy.lending_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_31_devs__lending_31_ops" {
  group      = aws_iam_group.lending_31_devs.name
  policy_arn = aws_iam_policy.lending_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_31_devs__base_readonly" {
  group      = aws_iam_group.lending_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_31_devs__self_service" {
  group      = aws_iam_group.lending_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_32_analysts" {
  name = "solor-1njchy-lending-32-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_32_analysts__lending_32_read" {
  group      = aws_iam_group.lending_32_analysts.name
  policy_arn = aws_iam_policy.lending_32_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_32_analysts__base_readonly" {
  group      = aws_iam_group.lending_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_32_devs" {
  name = "solor-1njchy-lending-32-devs"
}

resource "aws_iam_group_policy_attachment" "lending_32_devs__lending_32_data_rw" {
  group      = aws_iam_group.lending_32_devs.name
  policy_arn = aws_iam_policy.lending_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_32_devs__lending_32_ops" {
  group      = aws_iam_group.lending_32_devs.name
  policy_arn = aws_iam_policy.lending_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_32_devs__base_readonly" {
  group      = aws_iam_group.lending_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_32_devs__self_service" {
  group      = aws_iam_group.lending_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_33_analysts" {
  name = "solor-1njchy-lending-33-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_33_analysts__lending_33_read" {
  group      = aws_iam_group.lending_33_analysts.name
  policy_arn = aws_iam_policy.lending_33_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_33_analysts__base_readonly" {
  group      = aws_iam_group.lending_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_33_devs" {
  name = "solor-1njchy-lending-33-devs"
}

resource "aws_iam_group_policy_attachment" "lending_33_devs__lending_33_data_rw" {
  group      = aws_iam_group.lending_33_devs.name
  policy_arn = aws_iam_policy.lending_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_33_devs__lending_33_ops" {
  group      = aws_iam_group.lending_33_devs.name
  policy_arn = aws_iam_policy.lending_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_33_devs__base_readonly" {
  group      = aws_iam_group.lending_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_33_devs__self_service" {
  group      = aws_iam_group.lending_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_34_analysts" {
  name = "solor-1njchy-lending-34-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_34_analysts__lending_34_read" {
  group      = aws_iam_group.lending_34_analysts.name
  policy_arn = aws_iam_policy.lending_34_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_34_analysts__base_readonly" {
  group      = aws_iam_group.lending_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_34_devs" {
  name = "solor-1njchy-lending-34-devs"
}

resource "aws_iam_group_policy_attachment" "lending_34_devs__lending_34_data_rw" {
  group      = aws_iam_group.lending_34_devs.name
  policy_arn = aws_iam_policy.lending_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_34_devs__lending_34_ops" {
  group      = aws_iam_group.lending_34_devs.name
  policy_arn = aws_iam_policy.lending_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_34_devs__base_readonly" {
  group      = aws_iam_group.lending_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_34_devs__self_service" {
  group      = aws_iam_group.lending_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_35_analysts" {
  name = "solor-1njchy-lending-35-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_35_analysts__lending_35_read" {
  group      = aws_iam_group.lending_35_analysts.name
  policy_arn = aws_iam_policy.lending_35_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_35_analysts__base_readonly" {
  group      = aws_iam_group.lending_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_35_devs" {
  name = "solor-1njchy-lending-35-devs"
}

resource "aws_iam_group_policy_attachment" "lending_35_devs__lending_35_data_rw" {
  group      = aws_iam_group.lending_35_devs.name
  policy_arn = aws_iam_policy.lending_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_35_devs__lending_35_ops" {
  group      = aws_iam_group.lending_35_devs.name
  policy_arn = aws_iam_policy.lending_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_35_devs__base_readonly" {
  group      = aws_iam_group.lending_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_35_devs__self_service" {
  group      = aws_iam_group.lending_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_36_analysts" {
  name = "solor-1njchy-lending-36-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_36_analysts__lending_36_read" {
  group      = aws_iam_group.lending_36_analysts.name
  policy_arn = aws_iam_policy.lending_36_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_36_analysts__base_readonly" {
  group      = aws_iam_group.lending_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_36_devs" {
  name = "solor-1njchy-lending-36-devs"
}

resource "aws_iam_group_policy_attachment" "lending_36_devs__lending_36_data_rw" {
  group      = aws_iam_group.lending_36_devs.name
  policy_arn = aws_iam_policy.lending_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_36_devs__lending_36_ops" {
  group      = aws_iam_group.lending_36_devs.name
  policy_arn = aws_iam_policy.lending_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_36_devs__base_readonly" {
  group      = aws_iam_group.lending_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_36_devs__self_service" {
  group      = aws_iam_group.lending_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_37_analysts" {
  name = "solor-1njchy-lending-37-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_37_analysts__lending_37_read" {
  group      = aws_iam_group.lending_37_analysts.name
  policy_arn = aws_iam_policy.lending_37_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_37_analysts__base_readonly" {
  group      = aws_iam_group.lending_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_37_devs" {
  name = "solor-1njchy-lending-37-devs"
}

resource "aws_iam_group_policy_attachment" "lending_37_devs__lending_37_data_rw" {
  group      = aws_iam_group.lending_37_devs.name
  policy_arn = aws_iam_policy.lending_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_37_devs__lending_37_ops" {
  group      = aws_iam_group.lending_37_devs.name
  policy_arn = aws_iam_policy.lending_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_37_devs__base_readonly" {
  group      = aws_iam_group.lending_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_37_devs__self_service" {
  group      = aws_iam_group.lending_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_38_analysts" {
  name = "solor-1njchy-lending-38-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_38_analysts__lending_38_read" {
  group      = aws_iam_group.lending_38_analysts.name
  policy_arn = aws_iam_policy.lending_38_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_38_analysts__base_readonly" {
  group      = aws_iam_group.lending_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_38_devs" {
  name = "solor-1njchy-lending-38-devs"
}

resource "aws_iam_group_policy_attachment" "lending_38_devs__lending_38_data_rw" {
  group      = aws_iam_group.lending_38_devs.name
  policy_arn = aws_iam_policy.lending_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_38_devs__lending_38_ops" {
  group      = aws_iam_group.lending_38_devs.name
  policy_arn = aws_iam_policy.lending_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_38_devs__base_readonly" {
  group      = aws_iam_group.lending_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_38_devs__self_service" {
  group      = aws_iam_group.lending_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_39_analysts" {
  name = "solor-1njchy-lending-39-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_39_analysts__lending_39_read" {
  group      = aws_iam_group.lending_39_analysts.name
  policy_arn = aws_iam_policy.lending_39_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_39_analysts__base_readonly" {
  group      = aws_iam_group.lending_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_39_devs" {
  name = "solor-1njchy-lending-39-devs"
}

resource "aws_iam_group_policy_attachment" "lending_39_devs__lending_39_data_rw" {
  group      = aws_iam_group.lending_39_devs.name
  policy_arn = aws_iam_policy.lending_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_39_devs__lending_39_ops" {
  group      = aws_iam_group.lending_39_devs.name
  policy_arn = aws_iam_policy.lending_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_39_devs__base_readonly" {
  group      = aws_iam_group.lending_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_39_devs__self_service" {
  group      = aws_iam_group.lending_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_4_analysts" {
  name = "solor-1njchy-lending-4-analysts"
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
  name = "solor-1njchy-lending-4-devs"
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

resource "aws_iam_group" "lending_40_analysts" {
  name = "solor-1njchy-lending-40-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_40_analysts__lending_40_read" {
  group      = aws_iam_group.lending_40_analysts.name
  policy_arn = aws_iam_policy.lending_40_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_40_analysts__base_readonly" {
  group      = aws_iam_group.lending_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_40_devs" {
  name = "solor-1njchy-lending-40-devs"
}

resource "aws_iam_group_policy_attachment" "lending_40_devs__lending_40_data_rw" {
  group      = aws_iam_group.lending_40_devs.name
  policy_arn = aws_iam_policy.lending_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_40_devs__lending_40_ops" {
  group      = aws_iam_group.lending_40_devs.name
  policy_arn = aws_iam_policy.lending_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_40_devs__base_readonly" {
  group      = aws_iam_group.lending_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_40_devs__self_service" {
  group      = aws_iam_group.lending_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_41_analysts" {
  name = "solor-1njchy-lending-41-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_41_analysts__lending_41_read" {
  group      = aws_iam_group.lending_41_analysts.name
  policy_arn = aws_iam_policy.lending_41_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_41_analysts__base_readonly" {
  group      = aws_iam_group.lending_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_41_devs" {
  name = "solor-1njchy-lending-41-devs"
}

resource "aws_iam_group_policy_attachment" "lending_41_devs__lending_41_data_rw" {
  group      = aws_iam_group.lending_41_devs.name
  policy_arn = aws_iam_policy.lending_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_41_devs__lending_41_ops" {
  group      = aws_iam_group.lending_41_devs.name
  policy_arn = aws_iam_policy.lending_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_41_devs__base_readonly" {
  group      = aws_iam_group.lending_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_41_devs__self_service" {
  group      = aws_iam_group.lending_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_42_analysts" {
  name = "solor-1njchy-lending-42-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_42_analysts__lending_42_read" {
  group      = aws_iam_group.lending_42_analysts.name
  policy_arn = aws_iam_policy.lending_42_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_42_analysts__base_readonly" {
  group      = aws_iam_group.lending_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_42_devs" {
  name = "solor-1njchy-lending-42-devs"
}

resource "aws_iam_group_policy_attachment" "lending_42_devs__lending_42_data_rw" {
  group      = aws_iam_group.lending_42_devs.name
  policy_arn = aws_iam_policy.lending_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_42_devs__lending_42_ops" {
  group      = aws_iam_group.lending_42_devs.name
  policy_arn = aws_iam_policy.lending_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_42_devs__base_readonly" {
  group      = aws_iam_group.lending_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_42_devs__self_service" {
  group      = aws_iam_group.lending_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_43_analysts" {
  name = "solor-1njchy-lending-43-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_43_analysts__lending_43_read" {
  group      = aws_iam_group.lending_43_analysts.name
  policy_arn = aws_iam_policy.lending_43_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_43_analysts__base_readonly" {
  group      = aws_iam_group.lending_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_43_devs" {
  name = "solor-1njchy-lending-43-devs"
}

resource "aws_iam_group_policy_attachment" "lending_43_devs__lending_43_data_rw" {
  group      = aws_iam_group.lending_43_devs.name
  policy_arn = aws_iam_policy.lending_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_43_devs__lending_43_ops" {
  group      = aws_iam_group.lending_43_devs.name
  policy_arn = aws_iam_policy.lending_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_43_devs__base_readonly" {
  group      = aws_iam_group.lending_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_43_devs__self_service" {
  group      = aws_iam_group.lending_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_44_analysts" {
  name = "solor-1njchy-lending-44-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_44_analysts__lending_44_read" {
  group      = aws_iam_group.lending_44_analysts.name
  policy_arn = aws_iam_policy.lending_44_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_44_analysts__base_readonly" {
  group      = aws_iam_group.lending_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_44_devs" {
  name = "solor-1njchy-lending-44-devs"
}

resource "aws_iam_group_policy_attachment" "lending_44_devs__lending_44_data_rw" {
  group      = aws_iam_group.lending_44_devs.name
  policy_arn = aws_iam_policy.lending_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_44_devs__lending_44_ops" {
  group      = aws_iam_group.lending_44_devs.name
  policy_arn = aws_iam_policy.lending_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_44_devs__base_readonly" {
  group      = aws_iam_group.lending_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_44_devs__self_service" {
  group      = aws_iam_group.lending_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_45_analysts" {
  name = "solor-1njchy-lending-45-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_45_analysts__lending_45_read" {
  group      = aws_iam_group.lending_45_analysts.name
  policy_arn = aws_iam_policy.lending_45_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_45_analysts__base_readonly" {
  group      = aws_iam_group.lending_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_45_devs" {
  name = "solor-1njchy-lending-45-devs"
}

resource "aws_iam_group_policy_attachment" "lending_45_devs__lending_45_data_rw" {
  group      = aws_iam_group.lending_45_devs.name
  policy_arn = aws_iam_policy.lending_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_45_devs__lending_45_ops" {
  group      = aws_iam_group.lending_45_devs.name
  policy_arn = aws_iam_policy.lending_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_45_devs__base_readonly" {
  group      = aws_iam_group.lending_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_45_devs__self_service" {
  group      = aws_iam_group.lending_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_46_analysts" {
  name = "solor-1njchy-lending-46-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_46_analysts__lending_46_read" {
  group      = aws_iam_group.lending_46_analysts.name
  policy_arn = aws_iam_policy.lending_46_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_46_analysts__base_readonly" {
  group      = aws_iam_group.lending_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_46_devs" {
  name = "solor-1njchy-lending-46-devs"
}

resource "aws_iam_group_policy_attachment" "lending_46_devs__lending_46_data_rw" {
  group      = aws_iam_group.lending_46_devs.name
  policy_arn = aws_iam_policy.lending_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_46_devs__lending_46_ops" {
  group      = aws_iam_group.lending_46_devs.name
  policy_arn = aws_iam_policy.lending_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_46_devs__base_readonly" {
  group      = aws_iam_group.lending_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_46_devs__self_service" {
  group      = aws_iam_group.lending_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_47_analysts" {
  name = "solor-1njchy-lending-47-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_47_analysts__lending_47_read" {
  group      = aws_iam_group.lending_47_analysts.name
  policy_arn = aws_iam_policy.lending_47_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_47_analysts__base_readonly" {
  group      = aws_iam_group.lending_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_47_devs" {
  name = "solor-1njchy-lending-47-devs"
}

resource "aws_iam_group_policy_attachment" "lending_47_devs__lending_47_data_rw" {
  group      = aws_iam_group.lending_47_devs.name
  policy_arn = aws_iam_policy.lending_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_47_devs__lending_47_ops" {
  group      = aws_iam_group.lending_47_devs.name
  policy_arn = aws_iam_policy.lending_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_47_devs__base_readonly" {
  group      = aws_iam_group.lending_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_47_devs__self_service" {
  group      = aws_iam_group.lending_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_48_analysts" {
  name = "solor-1njchy-lending-48-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_48_analysts__lending_48_read" {
  group      = aws_iam_group.lending_48_analysts.name
  policy_arn = aws_iam_policy.lending_48_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_48_analysts__base_readonly" {
  group      = aws_iam_group.lending_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_48_devs" {
  name = "solor-1njchy-lending-48-devs"
}

resource "aws_iam_group_policy_attachment" "lending_48_devs__lending_48_data_rw" {
  group      = aws_iam_group.lending_48_devs.name
  policy_arn = aws_iam_policy.lending_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_48_devs__lending_48_ops" {
  group      = aws_iam_group.lending_48_devs.name
  policy_arn = aws_iam_policy.lending_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_48_devs__base_readonly" {
  group      = aws_iam_group.lending_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_48_devs__self_service" {
  group      = aws_iam_group.lending_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_49_analysts" {
  name = "solor-1njchy-lending-49-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_49_analysts__lending_49_read" {
  group      = aws_iam_group.lending_49_analysts.name
  policy_arn = aws_iam_policy.lending_49_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_49_analysts__base_readonly" {
  group      = aws_iam_group.lending_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_49_devs" {
  name = "solor-1njchy-lending-49-devs"
}

resource "aws_iam_group_policy_attachment" "lending_49_devs__lending_49_data_rw" {
  group      = aws_iam_group.lending_49_devs.name
  policy_arn = aws_iam_policy.lending_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_49_devs__lending_49_ops" {
  group      = aws_iam_group.lending_49_devs.name
  policy_arn = aws_iam_policy.lending_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_49_devs__base_readonly" {
  group      = aws_iam_group.lending_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_49_devs__self_service" {
  group      = aws_iam_group.lending_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_5_analysts" {
  name = "solor-1njchy-lending-5-analysts"
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
  name = "solor-1njchy-lending-5-devs"
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

resource "aws_iam_group" "lending_50_analysts" {
  name = "solor-1njchy-lending-50-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_50_analysts__lending_50_read" {
  group      = aws_iam_group.lending_50_analysts.name
  policy_arn = aws_iam_policy.lending_50_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_50_analysts__base_readonly" {
  group      = aws_iam_group.lending_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_50_devs" {
  name = "solor-1njchy-lending-50-devs"
}

resource "aws_iam_group_policy_attachment" "lending_50_devs__lending_50_data_rw" {
  group      = aws_iam_group.lending_50_devs.name
  policy_arn = aws_iam_policy.lending_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_50_devs__lending_50_ops" {
  group      = aws_iam_group.lending_50_devs.name
  policy_arn = aws_iam_policy.lending_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_50_devs__base_readonly" {
  group      = aws_iam_group.lending_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_50_devs__self_service" {
  group      = aws_iam_group.lending_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_6_analysts" {
  name = "solor-1njchy-lending-6-analysts"
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
  name = "solor-1njchy-lending-6-devs"
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
  name = "solor-1njchy-lending-7-analysts"
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
  name = "solor-1njchy-lending-7-devs"
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

resource "aws_iam_group" "lending_8_analysts" {
  name = "solor-1njchy-lending-8-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_8_analysts__lending_8_read" {
  group      = aws_iam_group.lending_8_analysts.name
  policy_arn = aws_iam_policy.lending_8_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_8_analysts__base_readonly" {
  group      = aws_iam_group.lending_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_8_devs" {
  name = "solor-1njchy-lending-8-devs"
}

resource "aws_iam_group_policy_attachment" "lending_8_devs__lending_8_data_rw" {
  group      = aws_iam_group.lending_8_devs.name
  policy_arn = aws_iam_policy.lending_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_8_devs__lending_8_ops" {
  group      = aws_iam_group.lending_8_devs.name
  policy_arn = aws_iam_policy.lending_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_8_devs__base_readonly" {
  group      = aws_iam_group.lending_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_8_devs__self_service" {
  group      = aws_iam_group.lending_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_9_analysts" {
  name = "solor-1njchy-lending-9-analysts"
}

resource "aws_iam_group_policy_attachment" "lending_9_analysts__lending_9_read" {
  group      = aws_iam_group.lending_9_analysts.name
  policy_arn = aws_iam_policy.lending_9_read.arn
}

resource "aws_iam_group_policy_attachment" "lending_9_analysts__base_readonly" {
  group      = aws_iam_group.lending_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lending_9_devs" {
  name = "solor-1njchy-lending-9-devs"
}

resource "aws_iam_group_policy_attachment" "lending_9_devs__lending_9_data_rw" {
  group      = aws_iam_group.lending_9_devs.name
  policy_arn = aws_iam_policy.lending_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lending_9_devs__lending_9_ops" {
  group      = aws_iam_group.lending_9_devs.name
  policy_arn = aws_iam_policy.lending_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "lending_9_devs__base_readonly" {
  group      = aws_iam_group.lending_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lending_9_devs__self_service" {
  group      = aws_iam_group.lending_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lending_analysts" {
  name = "solor-1njchy-lending-analysts"
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
  name = "solor-1njchy-lending-devs"
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

resource "aws_iam_group" "mobile_10_analysts" {
  name = "solor-1njchy-mobile-10-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_10_analysts__mobile_10_read" {
  group      = aws_iam_group.mobile_10_analysts.name
  policy_arn = aws_iam_policy.mobile_10_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_10_analysts__base_readonly" {
  group      = aws_iam_group.mobile_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_10_devs" {
  name = "solor-1njchy-mobile-10-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_10_devs__mobile_10_data_rw" {
  group      = aws_iam_group.mobile_10_devs.name
  policy_arn = aws_iam_policy.mobile_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_10_devs__mobile_10_ops" {
  group      = aws_iam_group.mobile_10_devs.name
  policy_arn = aws_iam_policy.mobile_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_10_devs__base_readonly" {
  group      = aws_iam_group.mobile_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_10_devs__self_service" {
  group      = aws_iam_group.mobile_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_11_analysts" {
  name = "solor-1njchy-mobile-11-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_11_analysts__mobile_11_read" {
  group      = aws_iam_group.mobile_11_analysts.name
  policy_arn = aws_iam_policy.mobile_11_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_11_analysts__base_readonly" {
  group      = aws_iam_group.mobile_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_11_devs" {
  name = "solor-1njchy-mobile-11-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_11_devs__mobile_11_data_rw" {
  group      = aws_iam_group.mobile_11_devs.name
  policy_arn = aws_iam_policy.mobile_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_11_devs__mobile_11_ops" {
  group      = aws_iam_group.mobile_11_devs.name
  policy_arn = aws_iam_policy.mobile_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_11_devs__base_readonly" {
  group      = aws_iam_group.mobile_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_11_devs__self_service" {
  group      = aws_iam_group.mobile_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_12_analysts" {
  name = "solor-1njchy-mobile-12-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_12_analysts__mobile_12_read" {
  group      = aws_iam_group.mobile_12_analysts.name
  policy_arn = aws_iam_policy.mobile_12_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_12_analysts__base_readonly" {
  group      = aws_iam_group.mobile_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_12_devs" {
  name = "solor-1njchy-mobile-12-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_12_devs__mobile_12_data_rw" {
  group      = aws_iam_group.mobile_12_devs.name
  policy_arn = aws_iam_policy.mobile_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_12_devs__mobile_12_ops" {
  group      = aws_iam_group.mobile_12_devs.name
  policy_arn = aws_iam_policy.mobile_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_12_devs__base_readonly" {
  group      = aws_iam_group.mobile_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_12_devs__self_service" {
  group      = aws_iam_group.mobile_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_13_analysts" {
  name = "solor-1njchy-mobile-13-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_13_analysts__mobile_13_read" {
  group      = aws_iam_group.mobile_13_analysts.name
  policy_arn = aws_iam_policy.mobile_13_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_13_analysts__base_readonly" {
  group      = aws_iam_group.mobile_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_13_devs" {
  name = "solor-1njchy-mobile-13-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_13_devs__mobile_13_data_rw" {
  group      = aws_iam_group.mobile_13_devs.name
  policy_arn = aws_iam_policy.mobile_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_13_devs__mobile_13_ops" {
  group      = aws_iam_group.mobile_13_devs.name
  policy_arn = aws_iam_policy.mobile_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_13_devs__base_readonly" {
  group      = aws_iam_group.mobile_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_13_devs__self_service" {
  group      = aws_iam_group.mobile_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_14_analysts" {
  name = "solor-1njchy-mobile-14-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_14_analysts__mobile_14_read" {
  group      = aws_iam_group.mobile_14_analysts.name
  policy_arn = aws_iam_policy.mobile_14_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_14_analysts__base_readonly" {
  group      = aws_iam_group.mobile_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_14_devs" {
  name = "solor-1njchy-mobile-14-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_14_devs__mobile_14_data_rw" {
  group      = aws_iam_group.mobile_14_devs.name
  policy_arn = aws_iam_policy.mobile_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_14_devs__mobile_14_ops" {
  group      = aws_iam_group.mobile_14_devs.name
  policy_arn = aws_iam_policy.mobile_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_14_devs__base_readonly" {
  group      = aws_iam_group.mobile_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_14_devs__self_service" {
  group      = aws_iam_group.mobile_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_15_analysts" {
  name = "solor-1njchy-mobile-15-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_15_analysts__mobile_15_read" {
  group      = aws_iam_group.mobile_15_analysts.name
  policy_arn = aws_iam_policy.mobile_15_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_15_analysts__base_readonly" {
  group      = aws_iam_group.mobile_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_15_devs" {
  name = "solor-1njchy-mobile-15-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_15_devs__mobile_15_data_rw" {
  group      = aws_iam_group.mobile_15_devs.name
  policy_arn = aws_iam_policy.mobile_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_15_devs__mobile_15_ops" {
  group      = aws_iam_group.mobile_15_devs.name
  policy_arn = aws_iam_policy.mobile_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_15_devs__base_readonly" {
  group      = aws_iam_group.mobile_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_15_devs__self_service" {
  group      = aws_iam_group.mobile_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_16_analysts" {
  name = "solor-1njchy-mobile-16-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_16_analysts__mobile_16_read" {
  group      = aws_iam_group.mobile_16_analysts.name
  policy_arn = aws_iam_policy.mobile_16_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_16_analysts__base_readonly" {
  group      = aws_iam_group.mobile_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_16_devs" {
  name = "solor-1njchy-mobile-16-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_16_devs__mobile_16_data_rw" {
  group      = aws_iam_group.mobile_16_devs.name
  policy_arn = aws_iam_policy.mobile_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_16_devs__mobile_16_ops" {
  group      = aws_iam_group.mobile_16_devs.name
  policy_arn = aws_iam_policy.mobile_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_16_devs__base_readonly" {
  group      = aws_iam_group.mobile_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_16_devs__self_service" {
  group      = aws_iam_group.mobile_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_17_analysts" {
  name = "solor-1njchy-mobile-17-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_17_analysts__mobile_17_read" {
  group      = aws_iam_group.mobile_17_analysts.name
  policy_arn = aws_iam_policy.mobile_17_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_17_analysts__base_readonly" {
  group      = aws_iam_group.mobile_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_17_devs" {
  name = "solor-1njchy-mobile-17-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_17_devs__mobile_17_data_rw" {
  group      = aws_iam_group.mobile_17_devs.name
  policy_arn = aws_iam_policy.mobile_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_17_devs__mobile_17_ops" {
  group      = aws_iam_group.mobile_17_devs.name
  policy_arn = aws_iam_policy.mobile_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_17_devs__base_readonly" {
  group      = aws_iam_group.mobile_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_17_devs__self_service" {
  group      = aws_iam_group.mobile_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_18_analysts" {
  name = "solor-1njchy-mobile-18-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_18_analysts__mobile_18_read" {
  group      = aws_iam_group.mobile_18_analysts.name
  policy_arn = aws_iam_policy.mobile_18_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_18_analysts__base_readonly" {
  group      = aws_iam_group.mobile_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_18_devs" {
  name = "solor-1njchy-mobile-18-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_18_devs__mobile_18_data_rw" {
  group      = aws_iam_group.mobile_18_devs.name
  policy_arn = aws_iam_policy.mobile_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_18_devs__mobile_18_ops" {
  group      = aws_iam_group.mobile_18_devs.name
  policy_arn = aws_iam_policy.mobile_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_18_devs__base_readonly" {
  group      = aws_iam_group.mobile_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_18_devs__self_service" {
  group      = aws_iam_group.mobile_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_19_analysts" {
  name = "solor-1njchy-mobile-19-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_19_analysts__mobile_19_read" {
  group      = aws_iam_group.mobile_19_analysts.name
  policy_arn = aws_iam_policy.mobile_19_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_19_analysts__base_readonly" {
  group      = aws_iam_group.mobile_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_19_devs" {
  name = "solor-1njchy-mobile-19-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_19_devs__mobile_19_data_rw" {
  group      = aws_iam_group.mobile_19_devs.name
  policy_arn = aws_iam_policy.mobile_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_19_devs__mobile_19_ops" {
  group      = aws_iam_group.mobile_19_devs.name
  policy_arn = aws_iam_policy.mobile_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_19_devs__base_readonly" {
  group      = aws_iam_group.mobile_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_19_devs__self_service" {
  group      = aws_iam_group.mobile_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_2_analysts" {
  name = "solor-1njchy-mobile-2-analysts"
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
  name = "solor-1njchy-mobile-2-devs"
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

resource "aws_iam_group" "mobile_20_analysts" {
  name = "solor-1njchy-mobile-20-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_20_analysts__mobile_20_read" {
  group      = aws_iam_group.mobile_20_analysts.name
  policy_arn = aws_iam_policy.mobile_20_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_20_analysts__base_readonly" {
  group      = aws_iam_group.mobile_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_20_devs" {
  name = "solor-1njchy-mobile-20-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_20_devs__mobile_20_data_rw" {
  group      = aws_iam_group.mobile_20_devs.name
  policy_arn = aws_iam_policy.mobile_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_20_devs__mobile_20_ops" {
  group      = aws_iam_group.mobile_20_devs.name
  policy_arn = aws_iam_policy.mobile_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_20_devs__base_readonly" {
  group      = aws_iam_group.mobile_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_20_devs__self_service" {
  group      = aws_iam_group.mobile_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_21_analysts" {
  name = "solor-1njchy-mobile-21-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_21_analysts__mobile_21_read" {
  group      = aws_iam_group.mobile_21_analysts.name
  policy_arn = aws_iam_policy.mobile_21_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_21_analysts__base_readonly" {
  group      = aws_iam_group.mobile_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_21_devs" {
  name = "solor-1njchy-mobile-21-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_21_devs__mobile_21_data_rw" {
  group      = aws_iam_group.mobile_21_devs.name
  policy_arn = aws_iam_policy.mobile_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_21_devs__mobile_21_ops" {
  group      = aws_iam_group.mobile_21_devs.name
  policy_arn = aws_iam_policy.mobile_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_21_devs__base_readonly" {
  group      = aws_iam_group.mobile_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_21_devs__self_service" {
  group      = aws_iam_group.mobile_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_22_analysts" {
  name = "solor-1njchy-mobile-22-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_22_analysts__mobile_22_read" {
  group      = aws_iam_group.mobile_22_analysts.name
  policy_arn = aws_iam_policy.mobile_22_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_22_analysts__base_readonly" {
  group      = aws_iam_group.mobile_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_22_devs" {
  name = "solor-1njchy-mobile-22-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_22_devs__mobile_22_data_rw" {
  group      = aws_iam_group.mobile_22_devs.name
  policy_arn = aws_iam_policy.mobile_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_22_devs__mobile_22_ops" {
  group      = aws_iam_group.mobile_22_devs.name
  policy_arn = aws_iam_policy.mobile_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_22_devs__base_readonly" {
  group      = aws_iam_group.mobile_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_22_devs__self_service" {
  group      = aws_iam_group.mobile_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_23_analysts" {
  name = "solor-1njchy-mobile-23-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_23_analysts__mobile_23_read" {
  group      = aws_iam_group.mobile_23_analysts.name
  policy_arn = aws_iam_policy.mobile_23_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_23_analysts__base_readonly" {
  group      = aws_iam_group.mobile_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_23_devs" {
  name = "solor-1njchy-mobile-23-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_23_devs__mobile_23_data_rw" {
  group      = aws_iam_group.mobile_23_devs.name
  policy_arn = aws_iam_policy.mobile_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_23_devs__mobile_23_ops" {
  group      = aws_iam_group.mobile_23_devs.name
  policy_arn = aws_iam_policy.mobile_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_23_devs__base_readonly" {
  group      = aws_iam_group.mobile_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_23_devs__self_service" {
  group      = aws_iam_group.mobile_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_24_analysts" {
  name = "solor-1njchy-mobile-24-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_24_analysts__mobile_24_read" {
  group      = aws_iam_group.mobile_24_analysts.name
  policy_arn = aws_iam_policy.mobile_24_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_24_analysts__base_readonly" {
  group      = aws_iam_group.mobile_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_24_devs" {
  name = "solor-1njchy-mobile-24-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_24_devs__mobile_24_data_rw" {
  group      = aws_iam_group.mobile_24_devs.name
  policy_arn = aws_iam_policy.mobile_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_24_devs__mobile_24_ops" {
  group      = aws_iam_group.mobile_24_devs.name
  policy_arn = aws_iam_policy.mobile_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_24_devs__base_readonly" {
  group      = aws_iam_group.mobile_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_24_devs__self_service" {
  group      = aws_iam_group.mobile_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_25_analysts" {
  name = "solor-1njchy-mobile-25-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_25_analysts__mobile_25_read" {
  group      = aws_iam_group.mobile_25_analysts.name
  policy_arn = aws_iam_policy.mobile_25_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_25_analysts__base_readonly" {
  group      = aws_iam_group.mobile_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_25_devs" {
  name = "solor-1njchy-mobile-25-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_25_devs__mobile_25_data_rw" {
  group      = aws_iam_group.mobile_25_devs.name
  policy_arn = aws_iam_policy.mobile_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_25_devs__mobile_25_ops" {
  group      = aws_iam_group.mobile_25_devs.name
  policy_arn = aws_iam_policy.mobile_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_25_devs__base_readonly" {
  group      = aws_iam_group.mobile_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_25_devs__self_service" {
  group      = aws_iam_group.mobile_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_26_analysts" {
  name = "solor-1njchy-mobile-26-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_26_analysts__mobile_26_read" {
  group      = aws_iam_group.mobile_26_analysts.name
  policy_arn = aws_iam_policy.mobile_26_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_26_analysts__base_readonly" {
  group      = aws_iam_group.mobile_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_26_devs" {
  name = "solor-1njchy-mobile-26-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_26_devs__mobile_26_data_rw" {
  group      = aws_iam_group.mobile_26_devs.name
  policy_arn = aws_iam_policy.mobile_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_26_devs__mobile_26_ops" {
  group      = aws_iam_group.mobile_26_devs.name
  policy_arn = aws_iam_policy.mobile_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_26_devs__base_readonly" {
  group      = aws_iam_group.mobile_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_26_devs__self_service" {
  group      = aws_iam_group.mobile_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_27_analysts" {
  name = "solor-1njchy-mobile-27-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_27_analysts__mobile_27_read" {
  group      = aws_iam_group.mobile_27_analysts.name
  policy_arn = aws_iam_policy.mobile_27_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_27_analysts__base_readonly" {
  group      = aws_iam_group.mobile_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_27_devs" {
  name = "solor-1njchy-mobile-27-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_27_devs__mobile_27_data_rw" {
  group      = aws_iam_group.mobile_27_devs.name
  policy_arn = aws_iam_policy.mobile_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_27_devs__mobile_27_ops" {
  group      = aws_iam_group.mobile_27_devs.name
  policy_arn = aws_iam_policy.mobile_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_27_devs__base_readonly" {
  group      = aws_iam_group.mobile_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_27_devs__self_service" {
  group      = aws_iam_group.mobile_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_28_analysts" {
  name = "solor-1njchy-mobile-28-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_28_analysts__mobile_28_read" {
  group      = aws_iam_group.mobile_28_analysts.name
  policy_arn = aws_iam_policy.mobile_28_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_28_analysts__base_readonly" {
  group      = aws_iam_group.mobile_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_28_devs" {
  name = "solor-1njchy-mobile-28-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_28_devs__mobile_28_data_rw" {
  group      = aws_iam_group.mobile_28_devs.name
  policy_arn = aws_iam_policy.mobile_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_28_devs__mobile_28_ops" {
  group      = aws_iam_group.mobile_28_devs.name
  policy_arn = aws_iam_policy.mobile_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_28_devs__base_readonly" {
  group      = aws_iam_group.mobile_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_28_devs__self_service" {
  group      = aws_iam_group.mobile_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_29_analysts" {
  name = "solor-1njchy-mobile-29-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_29_analysts__mobile_29_read" {
  group      = aws_iam_group.mobile_29_analysts.name
  policy_arn = aws_iam_policy.mobile_29_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_29_analysts__base_readonly" {
  group      = aws_iam_group.mobile_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_29_devs" {
  name = "solor-1njchy-mobile-29-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_29_devs__mobile_29_data_rw" {
  group      = aws_iam_group.mobile_29_devs.name
  policy_arn = aws_iam_policy.mobile_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_29_devs__mobile_29_ops" {
  group      = aws_iam_group.mobile_29_devs.name
  policy_arn = aws_iam_policy.mobile_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_29_devs__base_readonly" {
  group      = aws_iam_group.mobile_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_29_devs__self_service" {
  group      = aws_iam_group.mobile_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_3_analysts" {
  name = "solor-1njchy-mobile-3-analysts"
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
  name = "solor-1njchy-mobile-3-devs"
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

resource "aws_iam_group" "mobile_30_analysts" {
  name = "solor-1njchy-mobile-30-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_30_analysts__mobile_30_read" {
  group      = aws_iam_group.mobile_30_analysts.name
  policy_arn = aws_iam_policy.mobile_30_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_30_analysts__base_readonly" {
  group      = aws_iam_group.mobile_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_30_devs" {
  name = "solor-1njchy-mobile-30-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_30_devs__mobile_30_data_rw" {
  group      = aws_iam_group.mobile_30_devs.name
  policy_arn = aws_iam_policy.mobile_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_30_devs__mobile_30_ops" {
  group      = aws_iam_group.mobile_30_devs.name
  policy_arn = aws_iam_policy.mobile_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_30_devs__base_readonly" {
  group      = aws_iam_group.mobile_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_30_devs__self_service" {
  group      = aws_iam_group.mobile_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_31_analysts" {
  name = "solor-1njchy-mobile-31-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_31_analysts__mobile_31_read" {
  group      = aws_iam_group.mobile_31_analysts.name
  policy_arn = aws_iam_policy.mobile_31_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_31_analysts__base_readonly" {
  group      = aws_iam_group.mobile_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_31_devs" {
  name = "solor-1njchy-mobile-31-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_31_devs__mobile_31_data_rw" {
  group      = aws_iam_group.mobile_31_devs.name
  policy_arn = aws_iam_policy.mobile_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_31_devs__mobile_31_ops" {
  group      = aws_iam_group.mobile_31_devs.name
  policy_arn = aws_iam_policy.mobile_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_31_devs__base_readonly" {
  group      = aws_iam_group.mobile_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_31_devs__self_service" {
  group      = aws_iam_group.mobile_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_32_analysts" {
  name = "solor-1njchy-mobile-32-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_32_analysts__mobile_32_read" {
  group      = aws_iam_group.mobile_32_analysts.name
  policy_arn = aws_iam_policy.mobile_32_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_32_analysts__base_readonly" {
  group      = aws_iam_group.mobile_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_32_devs" {
  name = "solor-1njchy-mobile-32-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_32_devs__mobile_32_data_rw" {
  group      = aws_iam_group.mobile_32_devs.name
  policy_arn = aws_iam_policy.mobile_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_32_devs__mobile_32_ops" {
  group      = aws_iam_group.mobile_32_devs.name
  policy_arn = aws_iam_policy.mobile_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_32_devs__base_readonly" {
  group      = aws_iam_group.mobile_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_32_devs__self_service" {
  group      = aws_iam_group.mobile_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_33_analysts" {
  name = "solor-1njchy-mobile-33-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_33_analysts__mobile_33_read" {
  group      = aws_iam_group.mobile_33_analysts.name
  policy_arn = aws_iam_policy.mobile_33_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_33_analysts__base_readonly" {
  group      = aws_iam_group.mobile_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_33_devs" {
  name = "solor-1njchy-mobile-33-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_33_devs__mobile_33_data_rw" {
  group      = aws_iam_group.mobile_33_devs.name
  policy_arn = aws_iam_policy.mobile_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_33_devs__mobile_33_ops" {
  group      = aws_iam_group.mobile_33_devs.name
  policy_arn = aws_iam_policy.mobile_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_33_devs__base_readonly" {
  group      = aws_iam_group.mobile_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_33_devs__self_service" {
  group      = aws_iam_group.mobile_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_34_analysts" {
  name = "solor-1njchy-mobile-34-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_34_analysts__mobile_34_read" {
  group      = aws_iam_group.mobile_34_analysts.name
  policy_arn = aws_iam_policy.mobile_34_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_34_analysts__base_readonly" {
  group      = aws_iam_group.mobile_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_34_devs" {
  name = "solor-1njchy-mobile-34-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_34_devs__mobile_34_data_rw" {
  group      = aws_iam_group.mobile_34_devs.name
  policy_arn = aws_iam_policy.mobile_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_34_devs__mobile_34_ops" {
  group      = aws_iam_group.mobile_34_devs.name
  policy_arn = aws_iam_policy.mobile_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_34_devs__base_readonly" {
  group      = aws_iam_group.mobile_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_34_devs__self_service" {
  group      = aws_iam_group.mobile_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_35_analysts" {
  name = "solor-1njchy-mobile-35-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_35_analysts__mobile_35_read" {
  group      = aws_iam_group.mobile_35_analysts.name
  policy_arn = aws_iam_policy.mobile_35_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_35_analysts__base_readonly" {
  group      = aws_iam_group.mobile_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_35_devs" {
  name = "solor-1njchy-mobile-35-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_35_devs__mobile_35_data_rw" {
  group      = aws_iam_group.mobile_35_devs.name
  policy_arn = aws_iam_policy.mobile_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_35_devs__mobile_35_ops" {
  group      = aws_iam_group.mobile_35_devs.name
  policy_arn = aws_iam_policy.mobile_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_35_devs__base_readonly" {
  group      = aws_iam_group.mobile_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_35_devs__self_service" {
  group      = aws_iam_group.mobile_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_36_analysts" {
  name = "solor-1njchy-mobile-36-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_36_analysts__mobile_36_read" {
  group      = aws_iam_group.mobile_36_analysts.name
  policy_arn = aws_iam_policy.mobile_36_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_36_analysts__base_readonly" {
  group      = aws_iam_group.mobile_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_36_devs" {
  name = "solor-1njchy-mobile-36-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_36_devs__mobile_36_data_rw" {
  group      = aws_iam_group.mobile_36_devs.name
  policy_arn = aws_iam_policy.mobile_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_36_devs__mobile_36_ops" {
  group      = aws_iam_group.mobile_36_devs.name
  policy_arn = aws_iam_policy.mobile_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_36_devs__base_readonly" {
  group      = aws_iam_group.mobile_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_36_devs__self_service" {
  group      = aws_iam_group.mobile_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_37_analysts" {
  name = "solor-1njchy-mobile-37-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_37_analysts__mobile_37_read" {
  group      = aws_iam_group.mobile_37_analysts.name
  policy_arn = aws_iam_policy.mobile_37_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_37_analysts__base_readonly" {
  group      = aws_iam_group.mobile_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_37_devs" {
  name = "solor-1njchy-mobile-37-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_37_devs__mobile_37_data_rw" {
  group      = aws_iam_group.mobile_37_devs.name
  policy_arn = aws_iam_policy.mobile_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_37_devs__mobile_37_ops" {
  group      = aws_iam_group.mobile_37_devs.name
  policy_arn = aws_iam_policy.mobile_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_37_devs__base_readonly" {
  group      = aws_iam_group.mobile_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_37_devs__self_service" {
  group      = aws_iam_group.mobile_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_38_analysts" {
  name = "solor-1njchy-mobile-38-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_38_analysts__mobile_38_read" {
  group      = aws_iam_group.mobile_38_analysts.name
  policy_arn = aws_iam_policy.mobile_38_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_38_analysts__base_readonly" {
  group      = aws_iam_group.mobile_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_38_devs" {
  name = "solor-1njchy-mobile-38-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_38_devs__mobile_38_data_rw" {
  group      = aws_iam_group.mobile_38_devs.name
  policy_arn = aws_iam_policy.mobile_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_38_devs__mobile_38_ops" {
  group      = aws_iam_group.mobile_38_devs.name
  policy_arn = aws_iam_policy.mobile_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_38_devs__base_readonly" {
  group      = aws_iam_group.mobile_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_38_devs__self_service" {
  group      = aws_iam_group.mobile_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_39_analysts" {
  name = "solor-1njchy-mobile-39-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_39_analysts__mobile_39_read" {
  group      = aws_iam_group.mobile_39_analysts.name
  policy_arn = aws_iam_policy.mobile_39_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_39_analysts__base_readonly" {
  group      = aws_iam_group.mobile_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_39_devs" {
  name = "solor-1njchy-mobile-39-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_39_devs__mobile_39_data_rw" {
  group      = aws_iam_group.mobile_39_devs.name
  policy_arn = aws_iam_policy.mobile_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_39_devs__mobile_39_ops" {
  group      = aws_iam_group.mobile_39_devs.name
  policy_arn = aws_iam_policy.mobile_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_39_devs__base_readonly" {
  group      = aws_iam_group.mobile_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_39_devs__self_service" {
  group      = aws_iam_group.mobile_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_4_analysts" {
  name = "solor-1njchy-mobile-4-analysts"
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
  name = "solor-1njchy-mobile-4-devs"
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

resource "aws_iam_group" "mobile_40_analysts" {
  name = "solor-1njchy-mobile-40-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_40_analysts__mobile_40_read" {
  group      = aws_iam_group.mobile_40_analysts.name
  policy_arn = aws_iam_policy.mobile_40_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_40_analysts__base_readonly" {
  group      = aws_iam_group.mobile_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_40_devs" {
  name = "solor-1njchy-mobile-40-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_40_devs__mobile_40_data_rw" {
  group      = aws_iam_group.mobile_40_devs.name
  policy_arn = aws_iam_policy.mobile_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_40_devs__mobile_40_ops" {
  group      = aws_iam_group.mobile_40_devs.name
  policy_arn = aws_iam_policy.mobile_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_40_devs__base_readonly" {
  group      = aws_iam_group.mobile_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_40_devs__self_service" {
  group      = aws_iam_group.mobile_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_41_analysts" {
  name = "solor-1njchy-mobile-41-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_41_analysts__mobile_41_read" {
  group      = aws_iam_group.mobile_41_analysts.name
  policy_arn = aws_iam_policy.mobile_41_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_41_analysts__base_readonly" {
  group      = aws_iam_group.mobile_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_41_devs" {
  name = "solor-1njchy-mobile-41-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_41_devs__mobile_41_data_rw" {
  group      = aws_iam_group.mobile_41_devs.name
  policy_arn = aws_iam_policy.mobile_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_41_devs__mobile_41_ops" {
  group      = aws_iam_group.mobile_41_devs.name
  policy_arn = aws_iam_policy.mobile_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_41_devs__base_readonly" {
  group      = aws_iam_group.mobile_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_41_devs__self_service" {
  group      = aws_iam_group.mobile_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_42_analysts" {
  name = "solor-1njchy-mobile-42-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_42_analysts__mobile_42_read" {
  group      = aws_iam_group.mobile_42_analysts.name
  policy_arn = aws_iam_policy.mobile_42_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_42_analysts__base_readonly" {
  group      = aws_iam_group.mobile_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_42_devs" {
  name = "solor-1njchy-mobile-42-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_42_devs__mobile_42_data_rw" {
  group      = aws_iam_group.mobile_42_devs.name
  policy_arn = aws_iam_policy.mobile_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_42_devs__mobile_42_ops" {
  group      = aws_iam_group.mobile_42_devs.name
  policy_arn = aws_iam_policy.mobile_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_42_devs__base_readonly" {
  group      = aws_iam_group.mobile_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_42_devs__self_service" {
  group      = aws_iam_group.mobile_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_43_analysts" {
  name = "solor-1njchy-mobile-43-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_43_analysts__mobile_43_read" {
  group      = aws_iam_group.mobile_43_analysts.name
  policy_arn = aws_iam_policy.mobile_43_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_43_analysts__base_readonly" {
  group      = aws_iam_group.mobile_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_43_devs" {
  name = "solor-1njchy-mobile-43-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_43_devs__mobile_43_data_rw" {
  group      = aws_iam_group.mobile_43_devs.name
  policy_arn = aws_iam_policy.mobile_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_43_devs__mobile_43_ops" {
  group      = aws_iam_group.mobile_43_devs.name
  policy_arn = aws_iam_policy.mobile_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_43_devs__base_readonly" {
  group      = aws_iam_group.mobile_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_43_devs__self_service" {
  group      = aws_iam_group.mobile_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_44_analysts" {
  name = "solor-1njchy-mobile-44-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_44_analysts__mobile_44_read" {
  group      = aws_iam_group.mobile_44_analysts.name
  policy_arn = aws_iam_policy.mobile_44_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_44_analysts__base_readonly" {
  group      = aws_iam_group.mobile_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_44_devs" {
  name = "solor-1njchy-mobile-44-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_44_devs__mobile_44_data_rw" {
  group      = aws_iam_group.mobile_44_devs.name
  policy_arn = aws_iam_policy.mobile_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_44_devs__mobile_44_ops" {
  group      = aws_iam_group.mobile_44_devs.name
  policy_arn = aws_iam_policy.mobile_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_44_devs__base_readonly" {
  group      = aws_iam_group.mobile_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_44_devs__self_service" {
  group      = aws_iam_group.mobile_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_45_analysts" {
  name = "solor-1njchy-mobile-45-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_45_analysts__mobile_45_read" {
  group      = aws_iam_group.mobile_45_analysts.name
  policy_arn = aws_iam_policy.mobile_45_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_45_analysts__base_readonly" {
  group      = aws_iam_group.mobile_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_45_devs" {
  name = "solor-1njchy-mobile-45-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_45_devs__mobile_45_data_rw" {
  group      = aws_iam_group.mobile_45_devs.name
  policy_arn = aws_iam_policy.mobile_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_45_devs__mobile_45_ops" {
  group      = aws_iam_group.mobile_45_devs.name
  policy_arn = aws_iam_policy.mobile_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_45_devs__base_readonly" {
  group      = aws_iam_group.mobile_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_45_devs__self_service" {
  group      = aws_iam_group.mobile_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_46_analysts" {
  name = "solor-1njchy-mobile-46-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_46_analysts__mobile_46_read" {
  group      = aws_iam_group.mobile_46_analysts.name
  policy_arn = aws_iam_policy.mobile_46_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_46_analysts__base_readonly" {
  group      = aws_iam_group.mobile_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_46_devs" {
  name = "solor-1njchy-mobile-46-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_46_devs__mobile_46_data_rw" {
  group      = aws_iam_group.mobile_46_devs.name
  policy_arn = aws_iam_policy.mobile_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_46_devs__mobile_46_ops" {
  group      = aws_iam_group.mobile_46_devs.name
  policy_arn = aws_iam_policy.mobile_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_46_devs__base_readonly" {
  group      = aws_iam_group.mobile_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_46_devs__self_service" {
  group      = aws_iam_group.mobile_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_47_analysts" {
  name = "solor-1njchy-mobile-47-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_47_analysts__mobile_47_read" {
  group      = aws_iam_group.mobile_47_analysts.name
  policy_arn = aws_iam_policy.mobile_47_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_47_analysts__base_readonly" {
  group      = aws_iam_group.mobile_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_47_devs" {
  name = "solor-1njchy-mobile-47-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_47_devs__mobile_47_data_rw" {
  group      = aws_iam_group.mobile_47_devs.name
  policy_arn = aws_iam_policy.mobile_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_47_devs__mobile_47_ops" {
  group      = aws_iam_group.mobile_47_devs.name
  policy_arn = aws_iam_policy.mobile_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_47_devs__base_readonly" {
  group      = aws_iam_group.mobile_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_47_devs__self_service" {
  group      = aws_iam_group.mobile_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_48_analysts" {
  name = "solor-1njchy-mobile-48-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_48_analysts__mobile_48_read" {
  group      = aws_iam_group.mobile_48_analysts.name
  policy_arn = aws_iam_policy.mobile_48_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_48_analysts__base_readonly" {
  group      = aws_iam_group.mobile_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_48_devs" {
  name = "solor-1njchy-mobile-48-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_48_devs__mobile_48_data_rw" {
  group      = aws_iam_group.mobile_48_devs.name
  policy_arn = aws_iam_policy.mobile_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_48_devs__mobile_48_ops" {
  group      = aws_iam_group.mobile_48_devs.name
  policy_arn = aws_iam_policy.mobile_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_48_devs__base_readonly" {
  group      = aws_iam_group.mobile_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_48_devs__self_service" {
  group      = aws_iam_group.mobile_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_49_analysts" {
  name = "solor-1njchy-mobile-49-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_49_analysts__mobile_49_read" {
  group      = aws_iam_group.mobile_49_analysts.name
  policy_arn = aws_iam_policy.mobile_49_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_49_analysts__base_readonly" {
  group      = aws_iam_group.mobile_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_49_devs" {
  name = "solor-1njchy-mobile-49-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_49_devs__mobile_49_data_rw" {
  group      = aws_iam_group.mobile_49_devs.name
  policy_arn = aws_iam_policy.mobile_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_49_devs__mobile_49_ops" {
  group      = aws_iam_group.mobile_49_devs.name
  policy_arn = aws_iam_policy.mobile_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_49_devs__base_readonly" {
  group      = aws_iam_group.mobile_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_49_devs__self_service" {
  group      = aws_iam_group.mobile_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_5_analysts" {
  name = "solor-1njchy-mobile-5-analysts"
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
  name = "solor-1njchy-mobile-5-devs"
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

resource "aws_iam_group" "mobile_50_analysts" {
  name = "solor-1njchy-mobile-50-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_50_analysts__mobile_50_read" {
  group      = aws_iam_group.mobile_50_analysts.name
  policy_arn = aws_iam_policy.mobile_50_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_50_analysts__base_readonly" {
  group      = aws_iam_group.mobile_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_50_devs" {
  name = "solor-1njchy-mobile-50-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_50_devs__mobile_50_data_rw" {
  group      = aws_iam_group.mobile_50_devs.name
  policy_arn = aws_iam_policy.mobile_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_50_devs__mobile_50_ops" {
  group      = aws_iam_group.mobile_50_devs.name
  policy_arn = aws_iam_policy.mobile_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_50_devs__base_readonly" {
  group      = aws_iam_group.mobile_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_50_devs__self_service" {
  group      = aws_iam_group.mobile_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_6_analysts" {
  name = "solor-1njchy-mobile-6-analysts"
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
  name = "solor-1njchy-mobile-6-devs"
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

resource "aws_iam_group" "mobile_7_analysts" {
  name = "solor-1njchy-mobile-7-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_7_analysts__mobile_7_read" {
  group      = aws_iam_group.mobile_7_analysts.name
  policy_arn = aws_iam_policy.mobile_7_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_7_analysts__base_readonly" {
  group      = aws_iam_group.mobile_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_7_devs" {
  name = "solor-1njchy-mobile-7-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_7_devs__mobile_7_data_rw" {
  group      = aws_iam_group.mobile_7_devs.name
  policy_arn = aws_iam_policy.mobile_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_7_devs__mobile_7_ops" {
  group      = aws_iam_group.mobile_7_devs.name
  policy_arn = aws_iam_policy.mobile_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_7_devs__base_readonly" {
  group      = aws_iam_group.mobile_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_7_devs__self_service" {
  group      = aws_iam_group.mobile_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_8_analysts" {
  name = "solor-1njchy-mobile-8-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_8_analysts__mobile_8_read" {
  group      = aws_iam_group.mobile_8_analysts.name
  policy_arn = aws_iam_policy.mobile_8_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_8_analysts__base_readonly" {
  group      = aws_iam_group.mobile_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_8_devs" {
  name = "solor-1njchy-mobile-8-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_8_devs__mobile_8_data_rw" {
  group      = aws_iam_group.mobile_8_devs.name
  policy_arn = aws_iam_policy.mobile_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_8_devs__mobile_8_ops" {
  group      = aws_iam_group.mobile_8_devs.name
  policy_arn = aws_iam_policy.mobile_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_8_devs__base_readonly" {
  group      = aws_iam_group.mobile_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_8_devs__self_service" {
  group      = aws_iam_group.mobile_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_9_analysts" {
  name = "solor-1njchy-mobile-9-analysts"
}

resource "aws_iam_group_policy_attachment" "mobile_9_analysts__mobile_9_read" {
  group      = aws_iam_group.mobile_9_analysts.name
  policy_arn = aws_iam_policy.mobile_9_read.arn
}

resource "aws_iam_group_policy_attachment" "mobile_9_analysts__base_readonly" {
  group      = aws_iam_group.mobile_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "mobile_9_devs" {
  name = "solor-1njchy-mobile-9-devs"
}

resource "aws_iam_group_policy_attachment" "mobile_9_devs__mobile_9_data_rw" {
  group      = aws_iam_group.mobile_9_devs.name
  policy_arn = aws_iam_policy.mobile_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "mobile_9_devs__mobile_9_ops" {
  group      = aws_iam_group.mobile_9_devs.name
  policy_arn = aws_iam_policy.mobile_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "mobile_9_devs__base_readonly" {
  group      = aws_iam_group.mobile_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "mobile_9_devs__self_service" {
  group      = aws_iam_group.mobile_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_analysts" {
  name = "solor-1njchy-mobile-analysts"
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
  name = "solor-1njchy-mobile-devs"
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

resource "aws_iam_group" "payments_10_analysts" {
  name = "solor-1njchy-payments-10-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_10_analysts__payments_10_read" {
  group      = aws_iam_group.payments_10_analysts.name
  policy_arn = aws_iam_policy.payments_10_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_10_analysts__base_readonly" {
  group      = aws_iam_group.payments_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_10_devs" {
  name = "solor-1njchy-payments-10-devs"
}

resource "aws_iam_group_policy_attachment" "payments_10_devs__payments_10_data_rw" {
  group      = aws_iam_group.payments_10_devs.name
  policy_arn = aws_iam_policy.payments_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_10_devs__payments_10_ops" {
  group      = aws_iam_group.payments_10_devs.name
  policy_arn = aws_iam_policy.payments_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_10_devs__base_readonly" {
  group      = aws_iam_group.payments_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_10_devs__self_service" {
  group      = aws_iam_group.payments_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_11_analysts" {
  name = "solor-1njchy-payments-11-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_11_analysts__payments_11_read" {
  group      = aws_iam_group.payments_11_analysts.name
  policy_arn = aws_iam_policy.payments_11_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_11_analysts__base_readonly" {
  group      = aws_iam_group.payments_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_11_devs" {
  name = "solor-1njchy-payments-11-devs"
}

resource "aws_iam_group_policy_attachment" "payments_11_devs__payments_11_data_rw" {
  group      = aws_iam_group.payments_11_devs.name
  policy_arn = aws_iam_policy.payments_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_11_devs__payments_11_ops" {
  group      = aws_iam_group.payments_11_devs.name
  policy_arn = aws_iam_policy.payments_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_11_devs__base_readonly" {
  group      = aws_iam_group.payments_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_11_devs__self_service" {
  group      = aws_iam_group.payments_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_12_analysts" {
  name = "solor-1njchy-payments-12-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_12_analysts__payments_12_read" {
  group      = aws_iam_group.payments_12_analysts.name
  policy_arn = aws_iam_policy.payments_12_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_12_analysts__base_readonly" {
  group      = aws_iam_group.payments_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_12_devs" {
  name = "solor-1njchy-payments-12-devs"
}

resource "aws_iam_group_policy_attachment" "payments_12_devs__payments_12_data_rw" {
  group      = aws_iam_group.payments_12_devs.name
  policy_arn = aws_iam_policy.payments_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_12_devs__payments_12_ops" {
  group      = aws_iam_group.payments_12_devs.name
  policy_arn = aws_iam_policy.payments_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_12_devs__base_readonly" {
  group      = aws_iam_group.payments_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_12_devs__self_service" {
  group      = aws_iam_group.payments_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_13_analysts" {
  name = "solor-1njchy-payments-13-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_13_analysts__payments_13_read" {
  group      = aws_iam_group.payments_13_analysts.name
  policy_arn = aws_iam_policy.payments_13_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_13_analysts__base_readonly" {
  group      = aws_iam_group.payments_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_13_devs" {
  name = "solor-1njchy-payments-13-devs"
}

resource "aws_iam_group_policy_attachment" "payments_13_devs__payments_13_data_rw" {
  group      = aws_iam_group.payments_13_devs.name
  policy_arn = aws_iam_policy.payments_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_13_devs__payments_13_ops" {
  group      = aws_iam_group.payments_13_devs.name
  policy_arn = aws_iam_policy.payments_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_13_devs__base_readonly" {
  group      = aws_iam_group.payments_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_13_devs__self_service" {
  group      = aws_iam_group.payments_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_14_analysts" {
  name = "solor-1njchy-payments-14-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_14_analysts__payments_14_read" {
  group      = aws_iam_group.payments_14_analysts.name
  policy_arn = aws_iam_policy.payments_14_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_14_analysts__base_readonly" {
  group      = aws_iam_group.payments_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_14_devs" {
  name = "solor-1njchy-payments-14-devs"
}

resource "aws_iam_group_policy_attachment" "payments_14_devs__payments_14_data_rw" {
  group      = aws_iam_group.payments_14_devs.name
  policy_arn = aws_iam_policy.payments_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_14_devs__payments_14_ops" {
  group      = aws_iam_group.payments_14_devs.name
  policy_arn = aws_iam_policy.payments_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_14_devs__base_readonly" {
  group      = aws_iam_group.payments_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_14_devs__self_service" {
  group      = aws_iam_group.payments_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_15_analysts" {
  name = "solor-1njchy-payments-15-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_15_analysts__payments_15_read" {
  group      = aws_iam_group.payments_15_analysts.name
  policy_arn = aws_iam_policy.payments_15_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_15_analysts__base_readonly" {
  group      = aws_iam_group.payments_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_15_devs" {
  name = "solor-1njchy-payments-15-devs"
}

resource "aws_iam_group_policy_attachment" "payments_15_devs__payments_15_data_rw" {
  group      = aws_iam_group.payments_15_devs.name
  policy_arn = aws_iam_policy.payments_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_15_devs__payments_15_ops" {
  group      = aws_iam_group.payments_15_devs.name
  policy_arn = aws_iam_policy.payments_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_15_devs__base_readonly" {
  group      = aws_iam_group.payments_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_15_devs__self_service" {
  group      = aws_iam_group.payments_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_16_analysts" {
  name = "solor-1njchy-payments-16-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_16_analysts__payments_16_read" {
  group      = aws_iam_group.payments_16_analysts.name
  policy_arn = aws_iam_policy.payments_16_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_16_analysts__base_readonly" {
  group      = aws_iam_group.payments_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_16_devs" {
  name = "solor-1njchy-payments-16-devs"
}

resource "aws_iam_group_policy_attachment" "payments_16_devs__payments_16_data_rw" {
  group      = aws_iam_group.payments_16_devs.name
  policy_arn = aws_iam_policy.payments_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_16_devs__payments_16_ops" {
  group      = aws_iam_group.payments_16_devs.name
  policy_arn = aws_iam_policy.payments_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_16_devs__base_readonly" {
  group      = aws_iam_group.payments_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_16_devs__self_service" {
  group      = aws_iam_group.payments_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_17_analysts" {
  name = "solor-1njchy-payments-17-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_17_analysts__payments_17_read" {
  group      = aws_iam_group.payments_17_analysts.name
  policy_arn = aws_iam_policy.payments_17_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_17_analysts__base_readonly" {
  group      = aws_iam_group.payments_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_17_devs" {
  name = "solor-1njchy-payments-17-devs"
}

resource "aws_iam_group_policy_attachment" "payments_17_devs__payments_17_data_rw" {
  group      = aws_iam_group.payments_17_devs.name
  policy_arn = aws_iam_policy.payments_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_17_devs__payments_17_ops" {
  group      = aws_iam_group.payments_17_devs.name
  policy_arn = aws_iam_policy.payments_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_17_devs__base_readonly" {
  group      = aws_iam_group.payments_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_17_devs__self_service" {
  group      = aws_iam_group.payments_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_18_analysts" {
  name = "solor-1njchy-payments-18-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_18_analysts__payments_18_read" {
  group      = aws_iam_group.payments_18_analysts.name
  policy_arn = aws_iam_policy.payments_18_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_18_analysts__base_readonly" {
  group      = aws_iam_group.payments_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_18_devs" {
  name = "solor-1njchy-payments-18-devs"
}

resource "aws_iam_group_policy_attachment" "payments_18_devs__payments_18_data_rw" {
  group      = aws_iam_group.payments_18_devs.name
  policy_arn = aws_iam_policy.payments_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_18_devs__payments_18_ops" {
  group      = aws_iam_group.payments_18_devs.name
  policy_arn = aws_iam_policy.payments_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_18_devs__base_readonly" {
  group      = aws_iam_group.payments_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_18_devs__self_service" {
  group      = aws_iam_group.payments_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_19_analysts" {
  name = "solor-1njchy-payments-19-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_19_analysts__payments_19_read" {
  group      = aws_iam_group.payments_19_analysts.name
  policy_arn = aws_iam_policy.payments_19_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_19_analysts__base_readonly" {
  group      = aws_iam_group.payments_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_19_devs" {
  name = "solor-1njchy-payments-19-devs"
}

resource "aws_iam_group_policy_attachment" "payments_19_devs__payments_19_data_rw" {
  group      = aws_iam_group.payments_19_devs.name
  policy_arn = aws_iam_policy.payments_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_19_devs__payments_19_ops" {
  group      = aws_iam_group.payments_19_devs.name
  policy_arn = aws_iam_policy.payments_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_19_devs__base_readonly" {
  group      = aws_iam_group.payments_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_19_devs__self_service" {
  group      = aws_iam_group.payments_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_2_analysts" {
  name = "solor-1njchy-payments-2-analysts"
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
  name = "solor-1njchy-payments-2-devs"
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

resource "aws_iam_group" "payments_20_analysts" {
  name = "solor-1njchy-payments-20-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_20_analysts__payments_20_read" {
  group      = aws_iam_group.payments_20_analysts.name
  policy_arn = aws_iam_policy.payments_20_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_20_analysts__base_readonly" {
  group      = aws_iam_group.payments_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_20_devs" {
  name = "solor-1njchy-payments-20-devs"
}

resource "aws_iam_group_policy_attachment" "payments_20_devs__payments_20_data_rw" {
  group      = aws_iam_group.payments_20_devs.name
  policy_arn = aws_iam_policy.payments_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_20_devs__payments_20_ops" {
  group      = aws_iam_group.payments_20_devs.name
  policy_arn = aws_iam_policy.payments_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_20_devs__base_readonly" {
  group      = aws_iam_group.payments_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_20_devs__self_service" {
  group      = aws_iam_group.payments_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_21_analysts" {
  name = "solor-1njchy-payments-21-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_21_analysts__payments_21_read" {
  group      = aws_iam_group.payments_21_analysts.name
  policy_arn = aws_iam_policy.payments_21_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_21_analysts__base_readonly" {
  group      = aws_iam_group.payments_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_21_devs" {
  name = "solor-1njchy-payments-21-devs"
}

resource "aws_iam_group_policy_attachment" "payments_21_devs__payments_21_data_rw" {
  group      = aws_iam_group.payments_21_devs.name
  policy_arn = aws_iam_policy.payments_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_21_devs__payments_21_ops" {
  group      = aws_iam_group.payments_21_devs.name
  policy_arn = aws_iam_policy.payments_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_21_devs__base_readonly" {
  group      = aws_iam_group.payments_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_21_devs__self_service" {
  group      = aws_iam_group.payments_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_22_analysts" {
  name = "solor-1njchy-payments-22-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_22_analysts__payments_22_read" {
  group      = aws_iam_group.payments_22_analysts.name
  policy_arn = aws_iam_policy.payments_22_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_22_analysts__base_readonly" {
  group      = aws_iam_group.payments_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_22_devs" {
  name = "solor-1njchy-payments-22-devs"
}

resource "aws_iam_group_policy_attachment" "payments_22_devs__payments_22_data_rw" {
  group      = aws_iam_group.payments_22_devs.name
  policy_arn = aws_iam_policy.payments_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_22_devs__payments_22_ops" {
  group      = aws_iam_group.payments_22_devs.name
  policy_arn = aws_iam_policy.payments_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_22_devs__base_readonly" {
  group      = aws_iam_group.payments_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_22_devs__self_service" {
  group      = aws_iam_group.payments_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_23_analysts" {
  name = "solor-1njchy-payments-23-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_23_analysts__payments_23_read" {
  group      = aws_iam_group.payments_23_analysts.name
  policy_arn = aws_iam_policy.payments_23_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_23_analysts__base_readonly" {
  group      = aws_iam_group.payments_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_23_devs" {
  name = "solor-1njchy-payments-23-devs"
}

resource "aws_iam_group_policy_attachment" "payments_23_devs__payments_23_data_rw" {
  group      = aws_iam_group.payments_23_devs.name
  policy_arn = aws_iam_policy.payments_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_23_devs__payments_23_ops" {
  group      = aws_iam_group.payments_23_devs.name
  policy_arn = aws_iam_policy.payments_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_23_devs__base_readonly" {
  group      = aws_iam_group.payments_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_23_devs__self_service" {
  group      = aws_iam_group.payments_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_24_analysts" {
  name = "solor-1njchy-payments-24-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_24_analysts__payments_24_read" {
  group      = aws_iam_group.payments_24_analysts.name
  policy_arn = aws_iam_policy.payments_24_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_24_analysts__base_readonly" {
  group      = aws_iam_group.payments_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_24_devs" {
  name = "solor-1njchy-payments-24-devs"
}

resource "aws_iam_group_policy_attachment" "payments_24_devs__payments_24_data_rw" {
  group      = aws_iam_group.payments_24_devs.name
  policy_arn = aws_iam_policy.payments_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_24_devs__payments_24_ops" {
  group      = aws_iam_group.payments_24_devs.name
  policy_arn = aws_iam_policy.payments_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_24_devs__base_readonly" {
  group      = aws_iam_group.payments_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_24_devs__self_service" {
  group      = aws_iam_group.payments_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_25_analysts" {
  name = "solor-1njchy-payments-25-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_25_analysts__payments_25_read" {
  group      = aws_iam_group.payments_25_analysts.name
  policy_arn = aws_iam_policy.payments_25_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_25_analysts__base_readonly" {
  group      = aws_iam_group.payments_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_25_devs" {
  name = "solor-1njchy-payments-25-devs"
}

resource "aws_iam_group_policy_attachment" "payments_25_devs__payments_25_data_rw" {
  group      = aws_iam_group.payments_25_devs.name
  policy_arn = aws_iam_policy.payments_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_25_devs__payments_25_ops" {
  group      = aws_iam_group.payments_25_devs.name
  policy_arn = aws_iam_policy.payments_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_25_devs__base_readonly" {
  group      = aws_iam_group.payments_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_25_devs__self_service" {
  group      = aws_iam_group.payments_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_26_analysts" {
  name = "solor-1njchy-payments-26-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_26_analysts__payments_26_read" {
  group      = aws_iam_group.payments_26_analysts.name
  policy_arn = aws_iam_policy.payments_26_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_26_analysts__base_readonly" {
  group      = aws_iam_group.payments_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_26_devs" {
  name = "solor-1njchy-payments-26-devs"
}

resource "aws_iam_group_policy_attachment" "payments_26_devs__payments_26_data_rw" {
  group      = aws_iam_group.payments_26_devs.name
  policy_arn = aws_iam_policy.payments_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_26_devs__payments_26_ops" {
  group      = aws_iam_group.payments_26_devs.name
  policy_arn = aws_iam_policy.payments_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_26_devs__base_readonly" {
  group      = aws_iam_group.payments_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_26_devs__self_service" {
  group      = aws_iam_group.payments_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_27_analysts" {
  name = "solor-1njchy-payments-27-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_27_analysts__payments_27_read" {
  group      = aws_iam_group.payments_27_analysts.name
  policy_arn = aws_iam_policy.payments_27_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_27_analysts__base_readonly" {
  group      = aws_iam_group.payments_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_27_devs" {
  name = "solor-1njchy-payments-27-devs"
}

resource "aws_iam_group_policy_attachment" "payments_27_devs__payments_27_data_rw" {
  group      = aws_iam_group.payments_27_devs.name
  policy_arn = aws_iam_policy.payments_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_27_devs__payments_27_ops" {
  group      = aws_iam_group.payments_27_devs.name
  policy_arn = aws_iam_policy.payments_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_27_devs__base_readonly" {
  group      = aws_iam_group.payments_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_27_devs__self_service" {
  group      = aws_iam_group.payments_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_28_analysts" {
  name = "solor-1njchy-payments-28-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_28_analysts__payments_28_read" {
  group      = aws_iam_group.payments_28_analysts.name
  policy_arn = aws_iam_policy.payments_28_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_28_analysts__base_readonly" {
  group      = aws_iam_group.payments_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_28_devs" {
  name = "solor-1njchy-payments-28-devs"
}

resource "aws_iam_group_policy_attachment" "payments_28_devs__payments_28_data_rw" {
  group      = aws_iam_group.payments_28_devs.name
  policy_arn = aws_iam_policy.payments_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_28_devs__payments_28_ops" {
  group      = aws_iam_group.payments_28_devs.name
  policy_arn = aws_iam_policy.payments_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_28_devs__base_readonly" {
  group      = aws_iam_group.payments_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_28_devs__self_service" {
  group      = aws_iam_group.payments_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_29_analysts" {
  name = "solor-1njchy-payments-29-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_29_analysts__payments_29_read" {
  group      = aws_iam_group.payments_29_analysts.name
  policy_arn = aws_iam_policy.payments_29_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_29_analysts__base_readonly" {
  group      = aws_iam_group.payments_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_29_devs" {
  name = "solor-1njchy-payments-29-devs"
}

resource "aws_iam_group_policy_attachment" "payments_29_devs__payments_29_data_rw" {
  group      = aws_iam_group.payments_29_devs.name
  policy_arn = aws_iam_policy.payments_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_29_devs__payments_29_ops" {
  group      = aws_iam_group.payments_29_devs.name
  policy_arn = aws_iam_policy.payments_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_29_devs__base_readonly" {
  group      = aws_iam_group.payments_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_29_devs__self_service" {
  group      = aws_iam_group.payments_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_3_analysts" {
  name = "solor-1njchy-payments-3-analysts"
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
  name = "solor-1njchy-payments-3-devs"
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

resource "aws_iam_group" "payments_30_analysts" {
  name = "solor-1njchy-payments-30-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_30_analysts__payments_30_read" {
  group      = aws_iam_group.payments_30_analysts.name
  policy_arn = aws_iam_policy.payments_30_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_30_analysts__base_readonly" {
  group      = aws_iam_group.payments_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_30_devs" {
  name = "solor-1njchy-payments-30-devs"
}

resource "aws_iam_group_policy_attachment" "payments_30_devs__payments_30_data_rw" {
  group      = aws_iam_group.payments_30_devs.name
  policy_arn = aws_iam_policy.payments_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_30_devs__payments_30_ops" {
  group      = aws_iam_group.payments_30_devs.name
  policy_arn = aws_iam_policy.payments_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_30_devs__base_readonly" {
  group      = aws_iam_group.payments_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_30_devs__self_service" {
  group      = aws_iam_group.payments_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_31_analysts" {
  name = "solor-1njchy-payments-31-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_31_analysts__payments_31_read" {
  group      = aws_iam_group.payments_31_analysts.name
  policy_arn = aws_iam_policy.payments_31_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_31_analysts__base_readonly" {
  group      = aws_iam_group.payments_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_31_devs" {
  name = "solor-1njchy-payments-31-devs"
}

resource "aws_iam_group_policy_attachment" "payments_31_devs__payments_31_data_rw" {
  group      = aws_iam_group.payments_31_devs.name
  policy_arn = aws_iam_policy.payments_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_31_devs__payments_31_ops" {
  group      = aws_iam_group.payments_31_devs.name
  policy_arn = aws_iam_policy.payments_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_31_devs__base_readonly" {
  group      = aws_iam_group.payments_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_31_devs__self_service" {
  group      = aws_iam_group.payments_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_32_analysts" {
  name = "solor-1njchy-payments-32-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_32_analysts__payments_32_read" {
  group      = aws_iam_group.payments_32_analysts.name
  policy_arn = aws_iam_policy.payments_32_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_32_analysts__base_readonly" {
  group      = aws_iam_group.payments_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_32_devs" {
  name = "solor-1njchy-payments-32-devs"
}

resource "aws_iam_group_policy_attachment" "payments_32_devs__payments_32_data_rw" {
  group      = aws_iam_group.payments_32_devs.name
  policy_arn = aws_iam_policy.payments_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_32_devs__payments_32_ops" {
  group      = aws_iam_group.payments_32_devs.name
  policy_arn = aws_iam_policy.payments_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_32_devs__base_readonly" {
  group      = aws_iam_group.payments_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_32_devs__self_service" {
  group      = aws_iam_group.payments_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_33_analysts" {
  name = "solor-1njchy-payments-33-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_33_analysts__payments_33_read" {
  group      = aws_iam_group.payments_33_analysts.name
  policy_arn = aws_iam_policy.payments_33_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_33_analysts__base_readonly" {
  group      = aws_iam_group.payments_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_33_devs" {
  name = "solor-1njchy-payments-33-devs"
}

resource "aws_iam_group_policy_attachment" "payments_33_devs__payments_33_data_rw" {
  group      = aws_iam_group.payments_33_devs.name
  policy_arn = aws_iam_policy.payments_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_33_devs__payments_33_ops" {
  group      = aws_iam_group.payments_33_devs.name
  policy_arn = aws_iam_policy.payments_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_33_devs__base_readonly" {
  group      = aws_iam_group.payments_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_33_devs__self_service" {
  group      = aws_iam_group.payments_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_34_analysts" {
  name = "solor-1njchy-payments-34-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_34_analysts__payments_34_read" {
  group      = aws_iam_group.payments_34_analysts.name
  policy_arn = aws_iam_policy.payments_34_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_34_analysts__base_readonly" {
  group      = aws_iam_group.payments_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_34_devs" {
  name = "solor-1njchy-payments-34-devs"
}

resource "aws_iam_group_policy_attachment" "payments_34_devs__payments_34_data_rw" {
  group      = aws_iam_group.payments_34_devs.name
  policy_arn = aws_iam_policy.payments_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_34_devs__payments_34_ops" {
  group      = aws_iam_group.payments_34_devs.name
  policy_arn = aws_iam_policy.payments_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_34_devs__base_readonly" {
  group      = aws_iam_group.payments_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_34_devs__self_service" {
  group      = aws_iam_group.payments_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_35_analysts" {
  name = "solor-1njchy-payments-35-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_35_analysts__payments_35_read" {
  group      = aws_iam_group.payments_35_analysts.name
  policy_arn = aws_iam_policy.payments_35_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_35_analysts__base_readonly" {
  group      = aws_iam_group.payments_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_35_devs" {
  name = "solor-1njchy-payments-35-devs"
}

resource "aws_iam_group_policy_attachment" "payments_35_devs__payments_35_data_rw" {
  group      = aws_iam_group.payments_35_devs.name
  policy_arn = aws_iam_policy.payments_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_35_devs__payments_35_ops" {
  group      = aws_iam_group.payments_35_devs.name
  policy_arn = aws_iam_policy.payments_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_35_devs__base_readonly" {
  group      = aws_iam_group.payments_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_35_devs__self_service" {
  group      = aws_iam_group.payments_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_36_analysts" {
  name = "solor-1njchy-payments-36-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_36_analysts__payments_36_read" {
  group      = aws_iam_group.payments_36_analysts.name
  policy_arn = aws_iam_policy.payments_36_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_36_analysts__base_readonly" {
  group      = aws_iam_group.payments_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_36_devs" {
  name = "solor-1njchy-payments-36-devs"
}

resource "aws_iam_group_policy_attachment" "payments_36_devs__payments_36_data_rw" {
  group      = aws_iam_group.payments_36_devs.name
  policy_arn = aws_iam_policy.payments_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_36_devs__payments_36_ops" {
  group      = aws_iam_group.payments_36_devs.name
  policy_arn = aws_iam_policy.payments_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_36_devs__base_readonly" {
  group      = aws_iam_group.payments_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_36_devs__self_service" {
  group      = aws_iam_group.payments_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_37_analysts" {
  name = "solor-1njchy-payments-37-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_37_analysts__payments_37_read" {
  group      = aws_iam_group.payments_37_analysts.name
  policy_arn = aws_iam_policy.payments_37_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_37_analysts__base_readonly" {
  group      = aws_iam_group.payments_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_37_devs" {
  name = "solor-1njchy-payments-37-devs"
}

resource "aws_iam_group_policy_attachment" "payments_37_devs__payments_37_data_rw" {
  group      = aws_iam_group.payments_37_devs.name
  policy_arn = aws_iam_policy.payments_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_37_devs__payments_37_ops" {
  group      = aws_iam_group.payments_37_devs.name
  policy_arn = aws_iam_policy.payments_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_37_devs__base_readonly" {
  group      = aws_iam_group.payments_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_37_devs__self_service" {
  group      = aws_iam_group.payments_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_38_analysts" {
  name = "solor-1njchy-payments-38-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_38_analysts__payments_38_read" {
  group      = aws_iam_group.payments_38_analysts.name
  policy_arn = aws_iam_policy.payments_38_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_38_analysts__base_readonly" {
  group      = aws_iam_group.payments_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_38_devs" {
  name = "solor-1njchy-payments-38-devs"
}

resource "aws_iam_group_policy_attachment" "payments_38_devs__payments_38_data_rw" {
  group      = aws_iam_group.payments_38_devs.name
  policy_arn = aws_iam_policy.payments_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_38_devs__payments_38_ops" {
  group      = aws_iam_group.payments_38_devs.name
  policy_arn = aws_iam_policy.payments_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_38_devs__base_readonly" {
  group      = aws_iam_group.payments_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_38_devs__self_service" {
  group      = aws_iam_group.payments_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_39_analysts" {
  name = "solor-1njchy-payments-39-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_39_analysts__payments_39_read" {
  group      = aws_iam_group.payments_39_analysts.name
  policy_arn = aws_iam_policy.payments_39_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_39_analysts__base_readonly" {
  group      = aws_iam_group.payments_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_39_devs" {
  name = "solor-1njchy-payments-39-devs"
}

resource "aws_iam_group_policy_attachment" "payments_39_devs__payments_39_data_rw" {
  group      = aws_iam_group.payments_39_devs.name
  policy_arn = aws_iam_policy.payments_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_39_devs__payments_39_ops" {
  group      = aws_iam_group.payments_39_devs.name
  policy_arn = aws_iam_policy.payments_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_39_devs__base_readonly" {
  group      = aws_iam_group.payments_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_39_devs__self_service" {
  group      = aws_iam_group.payments_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_4_analysts" {
  name = "solor-1njchy-payments-4-analysts"
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
  name = "solor-1njchy-payments-4-devs"
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

resource "aws_iam_group" "payments_40_analysts" {
  name = "solor-1njchy-payments-40-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_40_analysts__payments_40_read" {
  group      = aws_iam_group.payments_40_analysts.name
  policy_arn = aws_iam_policy.payments_40_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_40_analysts__base_readonly" {
  group      = aws_iam_group.payments_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_40_devs" {
  name = "solor-1njchy-payments-40-devs"
}

resource "aws_iam_group_policy_attachment" "payments_40_devs__payments_40_data_rw" {
  group      = aws_iam_group.payments_40_devs.name
  policy_arn = aws_iam_policy.payments_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_40_devs__payments_40_ops" {
  group      = aws_iam_group.payments_40_devs.name
  policy_arn = aws_iam_policy.payments_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_40_devs__base_readonly" {
  group      = aws_iam_group.payments_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_40_devs__self_service" {
  group      = aws_iam_group.payments_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_41_analysts" {
  name = "solor-1njchy-payments-41-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_41_analysts__payments_41_read" {
  group      = aws_iam_group.payments_41_analysts.name
  policy_arn = aws_iam_policy.payments_41_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_41_analysts__base_readonly" {
  group      = aws_iam_group.payments_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_41_devs" {
  name = "solor-1njchy-payments-41-devs"
}

resource "aws_iam_group_policy_attachment" "payments_41_devs__payments_41_data_rw" {
  group      = aws_iam_group.payments_41_devs.name
  policy_arn = aws_iam_policy.payments_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_41_devs__payments_41_ops" {
  group      = aws_iam_group.payments_41_devs.name
  policy_arn = aws_iam_policy.payments_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_41_devs__base_readonly" {
  group      = aws_iam_group.payments_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_41_devs__self_service" {
  group      = aws_iam_group.payments_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_42_analysts" {
  name = "solor-1njchy-payments-42-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_42_analysts__payments_42_read" {
  group      = aws_iam_group.payments_42_analysts.name
  policy_arn = aws_iam_policy.payments_42_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_42_analysts__base_readonly" {
  group      = aws_iam_group.payments_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_42_devs" {
  name = "solor-1njchy-payments-42-devs"
}

resource "aws_iam_group_policy_attachment" "payments_42_devs__payments_42_data_rw" {
  group      = aws_iam_group.payments_42_devs.name
  policy_arn = aws_iam_policy.payments_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_42_devs__payments_42_ops" {
  group      = aws_iam_group.payments_42_devs.name
  policy_arn = aws_iam_policy.payments_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_42_devs__base_readonly" {
  group      = aws_iam_group.payments_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_42_devs__self_service" {
  group      = aws_iam_group.payments_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_43_analysts" {
  name = "solor-1njchy-payments-43-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_43_analysts__payments_43_read" {
  group      = aws_iam_group.payments_43_analysts.name
  policy_arn = aws_iam_policy.payments_43_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_43_analysts__base_readonly" {
  group      = aws_iam_group.payments_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_43_devs" {
  name = "solor-1njchy-payments-43-devs"
}

resource "aws_iam_group_policy_attachment" "payments_43_devs__payments_43_data_rw" {
  group      = aws_iam_group.payments_43_devs.name
  policy_arn = aws_iam_policy.payments_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_43_devs__payments_43_ops" {
  group      = aws_iam_group.payments_43_devs.name
  policy_arn = aws_iam_policy.payments_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_43_devs__base_readonly" {
  group      = aws_iam_group.payments_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_43_devs__self_service" {
  group      = aws_iam_group.payments_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_44_analysts" {
  name = "solor-1njchy-payments-44-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_44_analysts__payments_44_read" {
  group      = aws_iam_group.payments_44_analysts.name
  policy_arn = aws_iam_policy.payments_44_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_44_analysts__base_readonly" {
  group      = aws_iam_group.payments_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_44_devs" {
  name = "solor-1njchy-payments-44-devs"
}

resource "aws_iam_group_policy_attachment" "payments_44_devs__payments_44_data_rw" {
  group      = aws_iam_group.payments_44_devs.name
  policy_arn = aws_iam_policy.payments_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_44_devs__payments_44_ops" {
  group      = aws_iam_group.payments_44_devs.name
  policy_arn = aws_iam_policy.payments_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_44_devs__base_readonly" {
  group      = aws_iam_group.payments_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_44_devs__self_service" {
  group      = aws_iam_group.payments_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_45_analysts" {
  name = "solor-1njchy-payments-45-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_45_analysts__payments_45_read" {
  group      = aws_iam_group.payments_45_analysts.name
  policy_arn = aws_iam_policy.payments_45_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_45_analysts__base_readonly" {
  group      = aws_iam_group.payments_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_45_devs" {
  name = "solor-1njchy-payments-45-devs"
}

resource "aws_iam_group_policy_attachment" "payments_45_devs__payments_45_data_rw" {
  group      = aws_iam_group.payments_45_devs.name
  policy_arn = aws_iam_policy.payments_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_45_devs__payments_45_ops" {
  group      = aws_iam_group.payments_45_devs.name
  policy_arn = aws_iam_policy.payments_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_45_devs__base_readonly" {
  group      = aws_iam_group.payments_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_45_devs__self_service" {
  group      = aws_iam_group.payments_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_46_analysts" {
  name = "solor-1njchy-payments-46-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_46_analysts__payments_46_read" {
  group      = aws_iam_group.payments_46_analysts.name
  policy_arn = aws_iam_policy.payments_46_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_46_analysts__base_readonly" {
  group      = aws_iam_group.payments_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_46_devs" {
  name = "solor-1njchy-payments-46-devs"
}

resource "aws_iam_group_policy_attachment" "payments_46_devs__payments_46_data_rw" {
  group      = aws_iam_group.payments_46_devs.name
  policy_arn = aws_iam_policy.payments_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_46_devs__payments_46_ops" {
  group      = aws_iam_group.payments_46_devs.name
  policy_arn = aws_iam_policy.payments_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_46_devs__base_readonly" {
  group      = aws_iam_group.payments_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_46_devs__self_service" {
  group      = aws_iam_group.payments_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_47_analysts" {
  name = "solor-1njchy-payments-47-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_47_analysts__payments_47_read" {
  group      = aws_iam_group.payments_47_analysts.name
  policy_arn = aws_iam_policy.payments_47_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_47_analysts__base_readonly" {
  group      = aws_iam_group.payments_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_47_devs" {
  name = "solor-1njchy-payments-47-devs"
}

resource "aws_iam_group_policy_attachment" "payments_47_devs__payments_47_data_rw" {
  group      = aws_iam_group.payments_47_devs.name
  policy_arn = aws_iam_policy.payments_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_47_devs__payments_47_ops" {
  group      = aws_iam_group.payments_47_devs.name
  policy_arn = aws_iam_policy.payments_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_47_devs__base_readonly" {
  group      = aws_iam_group.payments_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_47_devs__self_service" {
  group      = aws_iam_group.payments_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_48_analysts" {
  name = "solor-1njchy-payments-48-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_48_analysts__payments_48_read" {
  group      = aws_iam_group.payments_48_analysts.name
  policy_arn = aws_iam_policy.payments_48_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_48_analysts__base_readonly" {
  group      = aws_iam_group.payments_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_48_devs" {
  name = "solor-1njchy-payments-48-devs"
}

resource "aws_iam_group_policy_attachment" "payments_48_devs__payments_48_data_rw" {
  group      = aws_iam_group.payments_48_devs.name
  policy_arn = aws_iam_policy.payments_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_48_devs__payments_48_ops" {
  group      = aws_iam_group.payments_48_devs.name
  policy_arn = aws_iam_policy.payments_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_48_devs__base_readonly" {
  group      = aws_iam_group.payments_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_48_devs__self_service" {
  group      = aws_iam_group.payments_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_49_analysts" {
  name = "solor-1njchy-payments-49-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_49_analysts__payments_49_read" {
  group      = aws_iam_group.payments_49_analysts.name
  policy_arn = aws_iam_policy.payments_49_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_49_analysts__base_readonly" {
  group      = aws_iam_group.payments_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_49_devs" {
  name = "solor-1njchy-payments-49-devs"
}

resource "aws_iam_group_policy_attachment" "payments_49_devs__payments_49_data_rw" {
  group      = aws_iam_group.payments_49_devs.name
  policy_arn = aws_iam_policy.payments_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_49_devs__payments_49_ops" {
  group      = aws_iam_group.payments_49_devs.name
  policy_arn = aws_iam_policy.payments_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_49_devs__base_readonly" {
  group      = aws_iam_group.payments_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_49_devs__self_service" {
  group      = aws_iam_group.payments_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_5_analysts" {
  name = "solor-1njchy-payments-5-analysts"
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
  name = "solor-1njchy-payments-5-devs"
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

resource "aws_iam_group" "payments_50_analysts" {
  name = "solor-1njchy-payments-50-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_50_analysts__payments_50_read" {
  group      = aws_iam_group.payments_50_analysts.name
  policy_arn = aws_iam_policy.payments_50_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_50_analysts__base_readonly" {
  group      = aws_iam_group.payments_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_50_devs" {
  name = "solor-1njchy-payments-50-devs"
}

resource "aws_iam_group_policy_attachment" "payments_50_devs__payments_50_data_rw" {
  group      = aws_iam_group.payments_50_devs.name
  policy_arn = aws_iam_policy.payments_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_50_devs__payments_50_ops" {
  group      = aws_iam_group.payments_50_devs.name
  policy_arn = aws_iam_policy.payments_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_50_devs__base_readonly" {
  group      = aws_iam_group.payments_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_50_devs__self_service" {
  group      = aws_iam_group.payments_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_6_analysts" {
  name = "solor-1njchy-payments-6-analysts"
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
  name = "solor-1njchy-payments-6-devs"
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
  name = "solor-1njchy-payments-7-analysts"
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
  name = "solor-1njchy-payments-7-devs"
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

resource "aws_iam_group" "payments_8_analysts" {
  name = "solor-1njchy-payments-8-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_8_analysts__payments_8_read" {
  group      = aws_iam_group.payments_8_analysts.name
  policy_arn = aws_iam_policy.payments_8_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_8_analysts__base_readonly" {
  group      = aws_iam_group.payments_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_8_devs" {
  name = "solor-1njchy-payments-8-devs"
}

resource "aws_iam_group_policy_attachment" "payments_8_devs__payments_8_data_rw" {
  group      = aws_iam_group.payments_8_devs.name
  policy_arn = aws_iam_policy.payments_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_8_devs__payments_8_ops" {
  group      = aws_iam_group.payments_8_devs.name
  policy_arn = aws_iam_policy.payments_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_8_devs__base_readonly" {
  group      = aws_iam_group.payments_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_8_devs__self_service" {
  group      = aws_iam_group.payments_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_9_analysts" {
  name = "solor-1njchy-payments-9-analysts"
}

resource "aws_iam_group_policy_attachment" "payments_9_analysts__payments_9_read" {
  group      = aws_iam_group.payments_9_analysts.name
  policy_arn = aws_iam_policy.payments_9_read.arn
}

resource "aws_iam_group_policy_attachment" "payments_9_analysts__base_readonly" {
  group      = aws_iam_group.payments_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "payments_9_devs" {
  name = "solor-1njchy-payments-9-devs"
}

resource "aws_iam_group_policy_attachment" "payments_9_devs__payments_9_data_rw" {
  group      = aws_iam_group.payments_9_devs.name
  policy_arn = aws_iam_policy.payments_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "payments_9_devs__payments_9_ops" {
  group      = aws_iam_group.payments_9_devs.name
  policy_arn = aws_iam_policy.payments_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "payments_9_devs__base_readonly" {
  group      = aws_iam_group.payments_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "payments_9_devs__self_service" {
  group      = aws_iam_group.payments_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "payments_analysts" {
  name = "solor-1njchy-payments-analysts"
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
  name = "solor-1njchy-payments-devs"
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

resource "aws_iam_group" "platform_10_analysts" {
  name = "solor-1njchy-platform-10-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_10_analysts__platform_10_read" {
  group      = aws_iam_group.platform_10_analysts.name
  policy_arn = aws_iam_policy.platform_10_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_10_analysts__base_readonly" {
  group      = aws_iam_group.platform_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_10_devs" {
  name = "solor-1njchy-platform-10-devs"
}

resource "aws_iam_group_policy_attachment" "platform_10_devs__platform_10_data_rw" {
  group      = aws_iam_group.platform_10_devs.name
  policy_arn = aws_iam_policy.platform_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_10_devs__platform_10_ops" {
  group      = aws_iam_group.platform_10_devs.name
  policy_arn = aws_iam_policy.platform_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_10_devs__base_readonly" {
  group      = aws_iam_group.platform_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_10_devs__self_service" {
  group      = aws_iam_group.platform_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_11_analysts" {
  name = "solor-1njchy-platform-11-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_11_analysts__platform_11_read" {
  group      = aws_iam_group.platform_11_analysts.name
  policy_arn = aws_iam_policy.platform_11_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_11_analysts__base_readonly" {
  group      = aws_iam_group.platform_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_11_devs" {
  name = "solor-1njchy-platform-11-devs"
}

resource "aws_iam_group_policy_attachment" "platform_11_devs__platform_11_data_rw" {
  group      = aws_iam_group.platform_11_devs.name
  policy_arn = aws_iam_policy.platform_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_11_devs__platform_11_ops" {
  group      = aws_iam_group.platform_11_devs.name
  policy_arn = aws_iam_policy.platform_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_11_devs__base_readonly" {
  group      = aws_iam_group.platform_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_11_devs__self_service" {
  group      = aws_iam_group.platform_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_12_analysts" {
  name = "solor-1njchy-platform-12-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_12_analysts__platform_12_read" {
  group      = aws_iam_group.platform_12_analysts.name
  policy_arn = aws_iam_policy.platform_12_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_12_analysts__base_readonly" {
  group      = aws_iam_group.platform_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_12_devs" {
  name = "solor-1njchy-platform-12-devs"
}

resource "aws_iam_group_policy_attachment" "platform_12_devs__platform_12_data_rw" {
  group      = aws_iam_group.platform_12_devs.name
  policy_arn = aws_iam_policy.platform_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_12_devs__platform_12_ops" {
  group      = aws_iam_group.platform_12_devs.name
  policy_arn = aws_iam_policy.platform_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_12_devs__base_readonly" {
  group      = aws_iam_group.platform_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_12_devs__self_service" {
  group      = aws_iam_group.platform_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_13_analysts" {
  name = "solor-1njchy-platform-13-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_13_analysts__platform_13_read" {
  group      = aws_iam_group.platform_13_analysts.name
  policy_arn = aws_iam_policy.platform_13_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_13_analysts__base_readonly" {
  group      = aws_iam_group.platform_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_13_devs" {
  name = "solor-1njchy-platform-13-devs"
}

resource "aws_iam_group_policy_attachment" "platform_13_devs__platform_13_data_rw" {
  group      = aws_iam_group.platform_13_devs.name
  policy_arn = aws_iam_policy.platform_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_13_devs__platform_13_ops" {
  group      = aws_iam_group.platform_13_devs.name
  policy_arn = aws_iam_policy.platform_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_13_devs__base_readonly" {
  group      = aws_iam_group.platform_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_13_devs__self_service" {
  group      = aws_iam_group.platform_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_14_analysts" {
  name = "solor-1njchy-platform-14-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_14_analysts__platform_14_read" {
  group      = aws_iam_group.platform_14_analysts.name
  policy_arn = aws_iam_policy.platform_14_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_14_analysts__base_readonly" {
  group      = aws_iam_group.platform_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_14_devs" {
  name = "solor-1njchy-platform-14-devs"
}

resource "aws_iam_group_policy_attachment" "platform_14_devs__platform_14_data_rw" {
  group      = aws_iam_group.platform_14_devs.name
  policy_arn = aws_iam_policy.platform_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_14_devs__platform_14_ops" {
  group      = aws_iam_group.platform_14_devs.name
  policy_arn = aws_iam_policy.platform_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_14_devs__base_readonly" {
  group      = aws_iam_group.platform_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_14_devs__self_service" {
  group      = aws_iam_group.platform_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_15_analysts" {
  name = "solor-1njchy-platform-15-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_15_analysts__platform_15_read" {
  group      = aws_iam_group.platform_15_analysts.name
  policy_arn = aws_iam_policy.platform_15_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_15_analysts__base_readonly" {
  group      = aws_iam_group.platform_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_15_devs" {
  name = "solor-1njchy-platform-15-devs"
}

resource "aws_iam_group_policy_attachment" "platform_15_devs__platform_15_data_rw" {
  group      = aws_iam_group.platform_15_devs.name
  policy_arn = aws_iam_policy.platform_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_15_devs__platform_15_ops" {
  group      = aws_iam_group.platform_15_devs.name
  policy_arn = aws_iam_policy.platform_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_15_devs__base_readonly" {
  group      = aws_iam_group.platform_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_15_devs__self_service" {
  group      = aws_iam_group.platform_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_16_analysts" {
  name = "solor-1njchy-platform-16-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_16_analysts__platform_16_read" {
  group      = aws_iam_group.platform_16_analysts.name
  policy_arn = aws_iam_policy.platform_16_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_16_analysts__base_readonly" {
  group      = aws_iam_group.platform_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_16_devs" {
  name = "solor-1njchy-platform-16-devs"
}

resource "aws_iam_group_policy_attachment" "platform_16_devs__platform_16_data_rw" {
  group      = aws_iam_group.platform_16_devs.name
  policy_arn = aws_iam_policy.platform_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_16_devs__platform_16_ops" {
  group      = aws_iam_group.platform_16_devs.name
  policy_arn = aws_iam_policy.platform_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_16_devs__base_readonly" {
  group      = aws_iam_group.platform_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_16_devs__self_service" {
  group      = aws_iam_group.platform_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_17_analysts" {
  name = "solor-1njchy-platform-17-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_17_analysts__platform_17_read" {
  group      = aws_iam_group.platform_17_analysts.name
  policy_arn = aws_iam_policy.platform_17_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_17_analysts__base_readonly" {
  group      = aws_iam_group.platform_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_17_devs" {
  name = "solor-1njchy-platform-17-devs"
}

resource "aws_iam_group_policy_attachment" "platform_17_devs__platform_17_data_rw" {
  group      = aws_iam_group.platform_17_devs.name
  policy_arn = aws_iam_policy.platform_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_17_devs__platform_17_ops" {
  group      = aws_iam_group.platform_17_devs.name
  policy_arn = aws_iam_policy.platform_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_17_devs__base_readonly" {
  group      = aws_iam_group.platform_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_17_devs__self_service" {
  group      = aws_iam_group.platform_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_18_analysts" {
  name = "solor-1njchy-platform-18-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_18_analysts__platform_18_read" {
  group      = aws_iam_group.platform_18_analysts.name
  policy_arn = aws_iam_policy.platform_18_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_18_analysts__base_readonly" {
  group      = aws_iam_group.platform_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_18_devs" {
  name = "solor-1njchy-platform-18-devs"
}

resource "aws_iam_group_policy_attachment" "platform_18_devs__platform_18_data_rw" {
  group      = aws_iam_group.platform_18_devs.name
  policy_arn = aws_iam_policy.platform_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_18_devs__platform_18_ops" {
  group      = aws_iam_group.platform_18_devs.name
  policy_arn = aws_iam_policy.platform_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_18_devs__base_readonly" {
  group      = aws_iam_group.platform_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_18_devs__self_service" {
  group      = aws_iam_group.platform_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_19_analysts" {
  name = "solor-1njchy-platform-19-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_19_analysts__platform_19_read" {
  group      = aws_iam_group.platform_19_analysts.name
  policy_arn = aws_iam_policy.platform_19_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_19_analysts__base_readonly" {
  group      = aws_iam_group.platform_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_19_devs" {
  name = "solor-1njchy-platform-19-devs"
}

resource "aws_iam_group_policy_attachment" "platform_19_devs__platform_19_data_rw" {
  group      = aws_iam_group.platform_19_devs.name
  policy_arn = aws_iam_policy.platform_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_19_devs__platform_19_ops" {
  group      = aws_iam_group.platform_19_devs.name
  policy_arn = aws_iam_policy.platform_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_19_devs__base_readonly" {
  group      = aws_iam_group.platform_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_19_devs__self_service" {
  group      = aws_iam_group.platform_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_2_analysts" {
  name = "solor-1njchy-platform-2-analysts"
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
  name = "solor-1njchy-platform-2-devs"
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

resource "aws_iam_group" "platform_20_analysts" {
  name = "solor-1njchy-platform-20-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_20_analysts__platform_20_read" {
  group      = aws_iam_group.platform_20_analysts.name
  policy_arn = aws_iam_policy.platform_20_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_20_analysts__base_readonly" {
  group      = aws_iam_group.platform_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_20_devs" {
  name = "solor-1njchy-platform-20-devs"
}

resource "aws_iam_group_policy_attachment" "platform_20_devs__platform_20_data_rw" {
  group      = aws_iam_group.platform_20_devs.name
  policy_arn = aws_iam_policy.platform_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_20_devs__platform_20_ops" {
  group      = aws_iam_group.platform_20_devs.name
  policy_arn = aws_iam_policy.platform_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_20_devs__base_readonly" {
  group      = aws_iam_group.platform_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_20_devs__self_service" {
  group      = aws_iam_group.platform_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_21_analysts" {
  name = "solor-1njchy-platform-21-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_21_analysts__platform_21_read" {
  group      = aws_iam_group.platform_21_analysts.name
  policy_arn = aws_iam_policy.platform_21_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_21_analysts__base_readonly" {
  group      = aws_iam_group.platform_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_21_devs" {
  name = "solor-1njchy-platform-21-devs"
}

resource "aws_iam_group_policy_attachment" "platform_21_devs__platform_21_data_rw" {
  group      = aws_iam_group.platform_21_devs.name
  policy_arn = aws_iam_policy.platform_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_21_devs__platform_21_ops" {
  group      = aws_iam_group.platform_21_devs.name
  policy_arn = aws_iam_policy.platform_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_21_devs__base_readonly" {
  group      = aws_iam_group.platform_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_21_devs__self_service" {
  group      = aws_iam_group.platform_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_22_analysts" {
  name = "solor-1njchy-platform-22-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_22_analysts__platform_22_read" {
  group      = aws_iam_group.platform_22_analysts.name
  policy_arn = aws_iam_policy.platform_22_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_22_analysts__base_readonly" {
  group      = aws_iam_group.platform_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_22_devs" {
  name = "solor-1njchy-platform-22-devs"
}

resource "aws_iam_group_policy_attachment" "platform_22_devs__platform_22_data_rw" {
  group      = aws_iam_group.platform_22_devs.name
  policy_arn = aws_iam_policy.platform_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_22_devs__platform_22_ops" {
  group      = aws_iam_group.platform_22_devs.name
  policy_arn = aws_iam_policy.platform_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_22_devs__base_readonly" {
  group      = aws_iam_group.platform_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_22_devs__self_service" {
  group      = aws_iam_group.platform_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_23_analysts" {
  name = "solor-1njchy-platform-23-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_23_analysts__platform_23_read" {
  group      = aws_iam_group.platform_23_analysts.name
  policy_arn = aws_iam_policy.platform_23_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_23_analysts__base_readonly" {
  group      = aws_iam_group.platform_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_23_devs" {
  name = "solor-1njchy-platform-23-devs"
}

resource "aws_iam_group_policy_attachment" "platform_23_devs__platform_23_data_rw" {
  group      = aws_iam_group.platform_23_devs.name
  policy_arn = aws_iam_policy.platform_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_23_devs__platform_23_ops" {
  group      = aws_iam_group.platform_23_devs.name
  policy_arn = aws_iam_policy.platform_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_23_devs__base_readonly" {
  group      = aws_iam_group.platform_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_23_devs__self_service" {
  group      = aws_iam_group.platform_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_24_analysts" {
  name = "solor-1njchy-platform-24-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_24_analysts__platform_24_read" {
  group      = aws_iam_group.platform_24_analysts.name
  policy_arn = aws_iam_policy.platform_24_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_24_analysts__base_readonly" {
  group      = aws_iam_group.platform_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_24_devs" {
  name = "solor-1njchy-platform-24-devs"
}

resource "aws_iam_group_policy_attachment" "platform_24_devs__platform_24_data_rw" {
  group      = aws_iam_group.platform_24_devs.name
  policy_arn = aws_iam_policy.platform_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_24_devs__platform_24_ops" {
  group      = aws_iam_group.platform_24_devs.name
  policy_arn = aws_iam_policy.platform_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_24_devs__base_readonly" {
  group      = aws_iam_group.platform_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_24_devs__self_service" {
  group      = aws_iam_group.platform_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_25_analysts" {
  name = "solor-1njchy-platform-25-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_25_analysts__platform_25_read" {
  group      = aws_iam_group.platform_25_analysts.name
  policy_arn = aws_iam_policy.platform_25_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_25_analysts__base_readonly" {
  group      = aws_iam_group.platform_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_25_devs" {
  name = "solor-1njchy-platform-25-devs"
}

resource "aws_iam_group_policy_attachment" "platform_25_devs__platform_25_data_rw" {
  group      = aws_iam_group.platform_25_devs.name
  policy_arn = aws_iam_policy.platform_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_25_devs__platform_25_ops" {
  group      = aws_iam_group.platform_25_devs.name
  policy_arn = aws_iam_policy.platform_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_25_devs__base_readonly" {
  group      = aws_iam_group.platform_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_25_devs__self_service" {
  group      = aws_iam_group.platform_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_26_analysts" {
  name = "solor-1njchy-platform-26-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_26_analysts__platform_26_read" {
  group      = aws_iam_group.platform_26_analysts.name
  policy_arn = aws_iam_policy.platform_26_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_26_analysts__base_readonly" {
  group      = aws_iam_group.platform_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_26_devs" {
  name = "solor-1njchy-platform-26-devs"
}

resource "aws_iam_group_policy_attachment" "platform_26_devs__platform_26_data_rw" {
  group      = aws_iam_group.platform_26_devs.name
  policy_arn = aws_iam_policy.platform_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_26_devs__platform_26_ops" {
  group      = aws_iam_group.platform_26_devs.name
  policy_arn = aws_iam_policy.platform_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_26_devs__base_readonly" {
  group      = aws_iam_group.platform_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_26_devs__self_service" {
  group      = aws_iam_group.platform_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_27_analysts" {
  name = "solor-1njchy-platform-27-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_27_analysts__platform_27_read" {
  group      = aws_iam_group.platform_27_analysts.name
  policy_arn = aws_iam_policy.platform_27_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_27_analysts__base_readonly" {
  group      = aws_iam_group.platform_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_27_devs" {
  name = "solor-1njchy-platform-27-devs"
}

resource "aws_iam_group_policy_attachment" "platform_27_devs__platform_27_data_rw" {
  group      = aws_iam_group.platform_27_devs.name
  policy_arn = aws_iam_policy.platform_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_27_devs__platform_27_ops" {
  group      = aws_iam_group.platform_27_devs.name
  policy_arn = aws_iam_policy.platform_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_27_devs__base_readonly" {
  group      = aws_iam_group.platform_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_27_devs__self_service" {
  group      = aws_iam_group.platform_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_28_analysts" {
  name = "solor-1njchy-platform-28-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_28_analysts__platform_28_read" {
  group      = aws_iam_group.platform_28_analysts.name
  policy_arn = aws_iam_policy.platform_28_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_28_analysts__base_readonly" {
  group      = aws_iam_group.platform_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_28_devs" {
  name = "solor-1njchy-platform-28-devs"
}

resource "aws_iam_group_policy_attachment" "platform_28_devs__platform_28_data_rw" {
  group      = aws_iam_group.platform_28_devs.name
  policy_arn = aws_iam_policy.platform_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_28_devs__platform_28_ops" {
  group      = aws_iam_group.platform_28_devs.name
  policy_arn = aws_iam_policy.platform_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_28_devs__base_readonly" {
  group      = aws_iam_group.platform_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_28_devs__self_service" {
  group      = aws_iam_group.platform_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_29_analysts" {
  name = "solor-1njchy-platform-29-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_29_analysts__platform_29_read" {
  group      = aws_iam_group.platform_29_analysts.name
  policy_arn = aws_iam_policy.platform_29_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_29_analysts__base_readonly" {
  group      = aws_iam_group.platform_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_29_devs" {
  name = "solor-1njchy-platform-29-devs"
}

resource "aws_iam_group_policy_attachment" "platform_29_devs__platform_29_data_rw" {
  group      = aws_iam_group.platform_29_devs.name
  policy_arn = aws_iam_policy.platform_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_29_devs__platform_29_ops" {
  group      = aws_iam_group.platform_29_devs.name
  policy_arn = aws_iam_policy.platform_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_29_devs__base_readonly" {
  group      = aws_iam_group.platform_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_29_devs__self_service" {
  group      = aws_iam_group.platform_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_3_analysts" {
  name = "solor-1njchy-platform-3-analysts"
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
  name = "solor-1njchy-platform-3-devs"
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

resource "aws_iam_group" "platform_30_analysts" {
  name = "solor-1njchy-platform-30-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_30_analysts__platform_30_read" {
  group      = aws_iam_group.platform_30_analysts.name
  policy_arn = aws_iam_policy.platform_30_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_30_analysts__base_readonly" {
  group      = aws_iam_group.platform_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_30_devs" {
  name = "solor-1njchy-platform-30-devs"
}

resource "aws_iam_group_policy_attachment" "platform_30_devs__platform_30_data_rw" {
  group      = aws_iam_group.platform_30_devs.name
  policy_arn = aws_iam_policy.platform_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_30_devs__platform_30_ops" {
  group      = aws_iam_group.platform_30_devs.name
  policy_arn = aws_iam_policy.platform_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_30_devs__base_readonly" {
  group      = aws_iam_group.platform_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_30_devs__self_service" {
  group      = aws_iam_group.platform_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_31_analysts" {
  name = "solor-1njchy-platform-31-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_31_analysts__platform_31_read" {
  group      = aws_iam_group.platform_31_analysts.name
  policy_arn = aws_iam_policy.platform_31_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_31_analysts__base_readonly" {
  group      = aws_iam_group.platform_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_31_devs" {
  name = "solor-1njchy-platform-31-devs"
}

resource "aws_iam_group_policy_attachment" "platform_31_devs__platform_31_data_rw" {
  group      = aws_iam_group.platform_31_devs.name
  policy_arn = aws_iam_policy.platform_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_31_devs__platform_31_ops" {
  group      = aws_iam_group.platform_31_devs.name
  policy_arn = aws_iam_policy.platform_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_31_devs__base_readonly" {
  group      = aws_iam_group.platform_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_31_devs__self_service" {
  group      = aws_iam_group.platform_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_32_analysts" {
  name = "solor-1njchy-platform-32-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_32_analysts__platform_32_read" {
  group      = aws_iam_group.platform_32_analysts.name
  policy_arn = aws_iam_policy.platform_32_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_32_analysts__base_readonly" {
  group      = aws_iam_group.platform_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_32_devs" {
  name = "solor-1njchy-platform-32-devs"
}

resource "aws_iam_group_policy_attachment" "platform_32_devs__platform_32_data_rw" {
  group      = aws_iam_group.platform_32_devs.name
  policy_arn = aws_iam_policy.platform_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_32_devs__platform_32_ops" {
  group      = aws_iam_group.platform_32_devs.name
  policy_arn = aws_iam_policy.platform_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_32_devs__base_readonly" {
  group      = aws_iam_group.platform_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_32_devs__self_service" {
  group      = aws_iam_group.platform_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_33_analysts" {
  name = "solor-1njchy-platform-33-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_33_analysts__platform_33_read" {
  group      = aws_iam_group.platform_33_analysts.name
  policy_arn = aws_iam_policy.platform_33_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_33_analysts__base_readonly" {
  group      = aws_iam_group.platform_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_33_devs" {
  name = "solor-1njchy-platform-33-devs"
}

resource "aws_iam_group_policy_attachment" "platform_33_devs__platform_33_data_rw" {
  group      = aws_iam_group.platform_33_devs.name
  policy_arn = aws_iam_policy.platform_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_33_devs__platform_33_ops" {
  group      = aws_iam_group.platform_33_devs.name
  policy_arn = aws_iam_policy.platform_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_33_devs__base_readonly" {
  group      = aws_iam_group.platform_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_33_devs__self_service" {
  group      = aws_iam_group.platform_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_34_analysts" {
  name = "solor-1njchy-platform-34-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_34_analysts__platform_34_read" {
  group      = aws_iam_group.platform_34_analysts.name
  policy_arn = aws_iam_policy.platform_34_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_34_analysts__base_readonly" {
  group      = aws_iam_group.platform_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_34_devs" {
  name = "solor-1njchy-platform-34-devs"
}

resource "aws_iam_group_policy_attachment" "platform_34_devs__platform_34_data_rw" {
  group      = aws_iam_group.platform_34_devs.name
  policy_arn = aws_iam_policy.platform_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_34_devs__platform_34_ops" {
  group      = aws_iam_group.platform_34_devs.name
  policy_arn = aws_iam_policy.platform_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_34_devs__base_readonly" {
  group      = aws_iam_group.platform_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_34_devs__self_service" {
  group      = aws_iam_group.platform_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_35_analysts" {
  name = "solor-1njchy-platform-35-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_35_analysts__platform_35_read" {
  group      = aws_iam_group.platform_35_analysts.name
  policy_arn = aws_iam_policy.platform_35_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_35_analysts__base_readonly" {
  group      = aws_iam_group.platform_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_35_devs" {
  name = "solor-1njchy-platform-35-devs"
}

resource "aws_iam_group_policy_attachment" "platform_35_devs__platform_35_data_rw" {
  group      = aws_iam_group.platform_35_devs.name
  policy_arn = aws_iam_policy.platform_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_35_devs__platform_35_ops" {
  group      = aws_iam_group.platform_35_devs.name
  policy_arn = aws_iam_policy.platform_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_35_devs__base_readonly" {
  group      = aws_iam_group.platform_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_35_devs__self_service" {
  group      = aws_iam_group.platform_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_36_analysts" {
  name = "solor-1njchy-platform-36-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_36_analysts__platform_36_read" {
  group      = aws_iam_group.platform_36_analysts.name
  policy_arn = aws_iam_policy.platform_36_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_36_analysts__base_readonly" {
  group      = aws_iam_group.platform_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_36_devs" {
  name = "solor-1njchy-platform-36-devs"
}

resource "aws_iam_group_policy_attachment" "platform_36_devs__platform_36_data_rw" {
  group      = aws_iam_group.platform_36_devs.name
  policy_arn = aws_iam_policy.platform_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_36_devs__platform_36_ops" {
  group      = aws_iam_group.platform_36_devs.name
  policy_arn = aws_iam_policy.platform_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_36_devs__base_readonly" {
  group      = aws_iam_group.platform_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_36_devs__self_service" {
  group      = aws_iam_group.platform_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_37_analysts" {
  name = "solor-1njchy-platform-37-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_37_analysts__platform_37_read" {
  group      = aws_iam_group.platform_37_analysts.name
  policy_arn = aws_iam_policy.platform_37_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_37_analysts__base_readonly" {
  group      = aws_iam_group.platform_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_37_devs" {
  name = "solor-1njchy-platform-37-devs"
}

resource "aws_iam_group_policy_attachment" "platform_37_devs__platform_37_data_rw" {
  group      = aws_iam_group.platform_37_devs.name
  policy_arn = aws_iam_policy.platform_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_37_devs__platform_37_ops" {
  group      = aws_iam_group.platform_37_devs.name
  policy_arn = aws_iam_policy.platform_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_37_devs__base_readonly" {
  group      = aws_iam_group.platform_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_37_devs__self_service" {
  group      = aws_iam_group.platform_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_38_analysts" {
  name = "solor-1njchy-platform-38-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_38_analysts__platform_38_read" {
  group      = aws_iam_group.platform_38_analysts.name
  policy_arn = aws_iam_policy.platform_38_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_38_analysts__base_readonly" {
  group      = aws_iam_group.platform_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_38_devs" {
  name = "solor-1njchy-platform-38-devs"
}

resource "aws_iam_group_policy_attachment" "platform_38_devs__platform_38_data_rw" {
  group      = aws_iam_group.platform_38_devs.name
  policy_arn = aws_iam_policy.platform_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_38_devs__platform_38_ops" {
  group      = aws_iam_group.platform_38_devs.name
  policy_arn = aws_iam_policy.platform_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_38_devs__base_readonly" {
  group      = aws_iam_group.platform_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_38_devs__self_service" {
  group      = aws_iam_group.platform_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_39_analysts" {
  name = "solor-1njchy-platform-39-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_39_analysts__platform_39_read" {
  group      = aws_iam_group.platform_39_analysts.name
  policy_arn = aws_iam_policy.platform_39_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_39_analysts__base_readonly" {
  group      = aws_iam_group.platform_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_39_devs" {
  name = "solor-1njchy-platform-39-devs"
}

resource "aws_iam_group_policy_attachment" "platform_39_devs__platform_39_data_rw" {
  group      = aws_iam_group.platform_39_devs.name
  policy_arn = aws_iam_policy.platform_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_39_devs__platform_39_ops" {
  group      = aws_iam_group.platform_39_devs.name
  policy_arn = aws_iam_policy.platform_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_39_devs__base_readonly" {
  group      = aws_iam_group.platform_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_39_devs__self_service" {
  group      = aws_iam_group.platform_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_4_analysts" {
  name = "solor-1njchy-platform-4-analysts"
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
  name = "solor-1njchy-platform-4-devs"
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

resource "aws_iam_group" "platform_40_analysts" {
  name = "solor-1njchy-platform-40-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_40_analysts__platform_40_read" {
  group      = aws_iam_group.platform_40_analysts.name
  policy_arn = aws_iam_policy.platform_40_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_40_analysts__base_readonly" {
  group      = aws_iam_group.platform_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_40_devs" {
  name = "solor-1njchy-platform-40-devs"
}

resource "aws_iam_group_policy_attachment" "platform_40_devs__platform_40_data_rw" {
  group      = aws_iam_group.platform_40_devs.name
  policy_arn = aws_iam_policy.platform_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_40_devs__platform_40_ops" {
  group      = aws_iam_group.platform_40_devs.name
  policy_arn = aws_iam_policy.platform_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_40_devs__base_readonly" {
  group      = aws_iam_group.platform_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_40_devs__self_service" {
  group      = aws_iam_group.platform_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_41_analysts" {
  name = "solor-1njchy-platform-41-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_41_analysts__platform_41_read" {
  group      = aws_iam_group.platform_41_analysts.name
  policy_arn = aws_iam_policy.platform_41_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_41_analysts__base_readonly" {
  group      = aws_iam_group.platform_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_41_devs" {
  name = "solor-1njchy-platform-41-devs"
}

resource "aws_iam_group_policy_attachment" "platform_41_devs__platform_41_data_rw" {
  group      = aws_iam_group.platform_41_devs.name
  policy_arn = aws_iam_policy.platform_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_41_devs__platform_41_ops" {
  group      = aws_iam_group.platform_41_devs.name
  policy_arn = aws_iam_policy.platform_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_41_devs__base_readonly" {
  group      = aws_iam_group.platform_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_41_devs__self_service" {
  group      = aws_iam_group.platform_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_42_analysts" {
  name = "solor-1njchy-platform-42-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_42_analysts__platform_42_read" {
  group      = aws_iam_group.platform_42_analysts.name
  policy_arn = aws_iam_policy.platform_42_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_42_analysts__base_readonly" {
  group      = aws_iam_group.platform_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_42_devs" {
  name = "solor-1njchy-platform-42-devs"
}

resource "aws_iam_group_policy_attachment" "platform_42_devs__platform_42_data_rw" {
  group      = aws_iam_group.platform_42_devs.name
  policy_arn = aws_iam_policy.platform_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_42_devs__platform_42_ops" {
  group      = aws_iam_group.platform_42_devs.name
  policy_arn = aws_iam_policy.platform_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_42_devs__base_readonly" {
  group      = aws_iam_group.platform_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_42_devs__self_service" {
  group      = aws_iam_group.platform_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_43_analysts" {
  name = "solor-1njchy-platform-43-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_43_analysts__platform_43_read" {
  group      = aws_iam_group.platform_43_analysts.name
  policy_arn = aws_iam_policy.platform_43_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_43_analysts__base_readonly" {
  group      = aws_iam_group.platform_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_43_devs" {
  name = "solor-1njchy-platform-43-devs"
}

resource "aws_iam_group_policy_attachment" "platform_43_devs__platform_43_data_rw" {
  group      = aws_iam_group.platform_43_devs.name
  policy_arn = aws_iam_policy.platform_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_43_devs__platform_43_ops" {
  group      = aws_iam_group.platform_43_devs.name
  policy_arn = aws_iam_policy.platform_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_43_devs__base_readonly" {
  group      = aws_iam_group.platform_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_43_devs__self_service" {
  group      = aws_iam_group.platform_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_44_analysts" {
  name = "solor-1njchy-platform-44-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_44_analysts__platform_44_read" {
  group      = aws_iam_group.platform_44_analysts.name
  policy_arn = aws_iam_policy.platform_44_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_44_analysts__base_readonly" {
  group      = aws_iam_group.platform_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_44_devs" {
  name = "solor-1njchy-platform-44-devs"
}

resource "aws_iam_group_policy_attachment" "platform_44_devs__platform_44_data_rw" {
  group      = aws_iam_group.platform_44_devs.name
  policy_arn = aws_iam_policy.platform_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_44_devs__platform_44_ops" {
  group      = aws_iam_group.platform_44_devs.name
  policy_arn = aws_iam_policy.platform_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_44_devs__base_readonly" {
  group      = aws_iam_group.platform_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_44_devs__self_service" {
  group      = aws_iam_group.platform_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_45_analysts" {
  name = "solor-1njchy-platform-45-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_45_analysts__platform_45_read" {
  group      = aws_iam_group.platform_45_analysts.name
  policy_arn = aws_iam_policy.platform_45_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_45_analysts__base_readonly" {
  group      = aws_iam_group.platform_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_45_devs" {
  name = "solor-1njchy-platform-45-devs"
}

resource "aws_iam_group_policy_attachment" "platform_45_devs__platform_45_data_rw" {
  group      = aws_iam_group.platform_45_devs.name
  policy_arn = aws_iam_policy.platform_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_45_devs__platform_45_ops" {
  group      = aws_iam_group.platform_45_devs.name
  policy_arn = aws_iam_policy.platform_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_45_devs__base_readonly" {
  group      = aws_iam_group.platform_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_45_devs__self_service" {
  group      = aws_iam_group.platform_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_46_analysts" {
  name = "solor-1njchy-platform-46-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_46_analysts__platform_46_read" {
  group      = aws_iam_group.platform_46_analysts.name
  policy_arn = aws_iam_policy.platform_46_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_46_analysts__base_readonly" {
  group      = aws_iam_group.platform_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_46_devs" {
  name = "solor-1njchy-platform-46-devs"
}

resource "aws_iam_group_policy_attachment" "platform_46_devs__platform_46_data_rw" {
  group      = aws_iam_group.platform_46_devs.name
  policy_arn = aws_iam_policy.platform_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_46_devs__platform_46_ops" {
  group      = aws_iam_group.platform_46_devs.name
  policy_arn = aws_iam_policy.platform_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_46_devs__base_readonly" {
  group      = aws_iam_group.platform_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_46_devs__self_service" {
  group      = aws_iam_group.platform_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_47_analysts" {
  name = "solor-1njchy-platform-47-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_47_analysts__platform_47_read" {
  group      = aws_iam_group.platform_47_analysts.name
  policy_arn = aws_iam_policy.platform_47_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_47_analysts__base_readonly" {
  group      = aws_iam_group.platform_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_47_devs" {
  name = "solor-1njchy-platform-47-devs"
}

resource "aws_iam_group_policy_attachment" "platform_47_devs__platform_47_data_rw" {
  group      = aws_iam_group.platform_47_devs.name
  policy_arn = aws_iam_policy.platform_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_47_devs__platform_47_ops" {
  group      = aws_iam_group.platform_47_devs.name
  policy_arn = aws_iam_policy.platform_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_47_devs__base_readonly" {
  group      = aws_iam_group.platform_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_47_devs__self_service" {
  group      = aws_iam_group.platform_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_48_analysts" {
  name = "solor-1njchy-platform-48-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_48_analysts__platform_48_read" {
  group      = aws_iam_group.platform_48_analysts.name
  policy_arn = aws_iam_policy.platform_48_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_48_analysts__base_readonly" {
  group      = aws_iam_group.platform_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_48_devs" {
  name = "solor-1njchy-platform-48-devs"
}

resource "aws_iam_group_policy_attachment" "platform_48_devs__platform_48_data_rw" {
  group      = aws_iam_group.platform_48_devs.name
  policy_arn = aws_iam_policy.platform_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_48_devs__platform_48_ops" {
  group      = aws_iam_group.platform_48_devs.name
  policy_arn = aws_iam_policy.platform_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_48_devs__base_readonly" {
  group      = aws_iam_group.platform_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_48_devs__self_service" {
  group      = aws_iam_group.platform_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_49_analysts" {
  name = "solor-1njchy-platform-49-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_49_analysts__platform_49_read" {
  group      = aws_iam_group.platform_49_analysts.name
  policy_arn = aws_iam_policy.platform_49_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_49_analysts__base_readonly" {
  group      = aws_iam_group.platform_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_49_devs" {
  name = "solor-1njchy-platform-49-devs"
}

resource "aws_iam_group_policy_attachment" "platform_49_devs__platform_49_data_rw" {
  group      = aws_iam_group.platform_49_devs.name
  policy_arn = aws_iam_policy.platform_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_49_devs__platform_49_ops" {
  group      = aws_iam_group.platform_49_devs.name
  policy_arn = aws_iam_policy.platform_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_49_devs__base_readonly" {
  group      = aws_iam_group.platform_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_49_devs__self_service" {
  group      = aws_iam_group.platform_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_5_analysts" {
  name = "solor-1njchy-platform-5-analysts"
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
  name = "solor-1njchy-platform-5-devs"
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

resource "aws_iam_group" "platform_50_analysts" {
  name = "solor-1njchy-platform-50-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_50_analysts__platform_50_read" {
  group      = aws_iam_group.platform_50_analysts.name
  policy_arn = aws_iam_policy.platform_50_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_50_analysts__base_readonly" {
  group      = aws_iam_group.platform_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_50_devs" {
  name = "solor-1njchy-platform-50-devs"
}

resource "aws_iam_group_policy_attachment" "platform_50_devs__platform_50_data_rw" {
  group      = aws_iam_group.platform_50_devs.name
  policy_arn = aws_iam_policy.platform_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_50_devs__platform_50_ops" {
  group      = aws_iam_group.platform_50_devs.name
  policy_arn = aws_iam_policy.platform_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_50_devs__base_readonly" {
  group      = aws_iam_group.platform_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_50_devs__self_service" {
  group      = aws_iam_group.platform_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_6_analysts" {
  name = "solor-1njchy-platform-6-analysts"
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
  name = "solor-1njchy-platform-6-devs"
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

resource "aws_iam_group" "platform_7_analysts" {
  name = "solor-1njchy-platform-7-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_7_analysts__platform_7_read" {
  group      = aws_iam_group.platform_7_analysts.name
  policy_arn = aws_iam_policy.platform_7_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_7_analysts__base_readonly" {
  group      = aws_iam_group.platform_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_7_devs" {
  name = "solor-1njchy-platform-7-devs"
}

resource "aws_iam_group_policy_attachment" "platform_7_devs__platform_7_data_rw" {
  group      = aws_iam_group.platform_7_devs.name
  policy_arn = aws_iam_policy.platform_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_7_devs__platform_7_ops" {
  group      = aws_iam_group.platform_7_devs.name
  policy_arn = aws_iam_policy.platform_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_7_devs__base_readonly" {
  group      = aws_iam_group.platform_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_7_devs__self_service" {
  group      = aws_iam_group.platform_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_8_analysts" {
  name = "solor-1njchy-platform-8-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_8_analysts__platform_8_read" {
  group      = aws_iam_group.platform_8_analysts.name
  policy_arn = aws_iam_policy.platform_8_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_8_analysts__base_readonly" {
  group      = aws_iam_group.platform_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_8_devs" {
  name = "solor-1njchy-platform-8-devs"
}

resource "aws_iam_group_policy_attachment" "platform_8_devs__platform_8_data_rw" {
  group      = aws_iam_group.platform_8_devs.name
  policy_arn = aws_iam_policy.platform_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_8_devs__platform_8_ops" {
  group      = aws_iam_group.platform_8_devs.name
  policy_arn = aws_iam_policy.platform_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_8_devs__base_readonly" {
  group      = aws_iam_group.platform_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_8_devs__self_service" {
  group      = aws_iam_group.platform_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_9_analysts" {
  name = "solor-1njchy-platform-9-analysts"
}

resource "aws_iam_group_policy_attachment" "platform_9_analysts__platform_9_read" {
  group      = aws_iam_group.platform_9_analysts.name
  policy_arn = aws_iam_policy.platform_9_read.arn
}

resource "aws_iam_group_policy_attachment" "platform_9_analysts__base_readonly" {
  group      = aws_iam_group.platform_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_9_devs" {
  name = "solor-1njchy-platform-9-devs"
}

resource "aws_iam_group_policy_attachment" "platform_9_devs__platform_9_data_rw" {
  group      = aws_iam_group.platform_9_devs.name
  policy_arn = aws_iam_policy.platform_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "platform_9_devs__platform_9_ops" {
  group      = aws_iam_group.platform_9_devs.name
  policy_arn = aws_iam_policy.platform_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "platform_9_devs__base_readonly" {
  group      = aws_iam_group.platform_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "platform_9_devs__self_service" {
  group      = aws_iam_group.platform_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "solor-1njchy-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "platform_analysts" {
  name = "solor-1njchy-platform-analysts"
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
  name = "solor-1njchy-platform-devs"
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

resource "aws_iam_group" "reporting_10_analysts" {
  name = "solor-1njchy-reporting-10-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_10_analysts__reporting_10_read" {
  group      = aws_iam_group.reporting_10_analysts.name
  policy_arn = aws_iam_policy.reporting_10_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_10_analysts__base_readonly" {
  group      = aws_iam_group.reporting_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_10_devs" {
  name = "solor-1njchy-reporting-10-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_10_devs__reporting_10_data_rw" {
  group      = aws_iam_group.reporting_10_devs.name
  policy_arn = aws_iam_policy.reporting_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_10_devs__reporting_10_ops" {
  group      = aws_iam_group.reporting_10_devs.name
  policy_arn = aws_iam_policy.reporting_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_10_devs__base_readonly" {
  group      = aws_iam_group.reporting_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_10_devs__self_service" {
  group      = aws_iam_group.reporting_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_11_analysts" {
  name = "solor-1njchy-reporting-11-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_11_analysts__reporting_11_read" {
  group      = aws_iam_group.reporting_11_analysts.name
  policy_arn = aws_iam_policy.reporting_11_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_11_analysts__base_readonly" {
  group      = aws_iam_group.reporting_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_11_devs" {
  name = "solor-1njchy-reporting-11-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_11_devs__reporting_11_data_rw" {
  group      = aws_iam_group.reporting_11_devs.name
  policy_arn = aws_iam_policy.reporting_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_11_devs__reporting_11_ops" {
  group      = aws_iam_group.reporting_11_devs.name
  policy_arn = aws_iam_policy.reporting_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_11_devs__base_readonly" {
  group      = aws_iam_group.reporting_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_11_devs__self_service" {
  group      = aws_iam_group.reporting_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_12_analysts" {
  name = "solor-1njchy-reporting-12-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_12_analysts__reporting_12_read" {
  group      = aws_iam_group.reporting_12_analysts.name
  policy_arn = aws_iam_policy.reporting_12_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_12_analysts__base_readonly" {
  group      = aws_iam_group.reporting_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_12_devs" {
  name = "solor-1njchy-reporting-12-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_12_devs__reporting_12_data_rw" {
  group      = aws_iam_group.reporting_12_devs.name
  policy_arn = aws_iam_policy.reporting_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_12_devs__reporting_12_ops" {
  group      = aws_iam_group.reporting_12_devs.name
  policy_arn = aws_iam_policy.reporting_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_12_devs__base_readonly" {
  group      = aws_iam_group.reporting_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_12_devs__self_service" {
  group      = aws_iam_group.reporting_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_13_analysts" {
  name = "solor-1njchy-reporting-13-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_13_analysts__reporting_13_read" {
  group      = aws_iam_group.reporting_13_analysts.name
  policy_arn = aws_iam_policy.reporting_13_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_13_analysts__base_readonly" {
  group      = aws_iam_group.reporting_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_13_devs" {
  name = "solor-1njchy-reporting-13-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_13_devs__reporting_13_data_rw" {
  group      = aws_iam_group.reporting_13_devs.name
  policy_arn = aws_iam_policy.reporting_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_13_devs__reporting_13_ops" {
  group      = aws_iam_group.reporting_13_devs.name
  policy_arn = aws_iam_policy.reporting_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_13_devs__base_readonly" {
  group      = aws_iam_group.reporting_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_13_devs__self_service" {
  group      = aws_iam_group.reporting_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_14_analysts" {
  name = "solor-1njchy-reporting-14-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_14_analysts__reporting_14_read" {
  group      = aws_iam_group.reporting_14_analysts.name
  policy_arn = aws_iam_policy.reporting_14_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_14_analysts__base_readonly" {
  group      = aws_iam_group.reporting_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_14_devs" {
  name = "solor-1njchy-reporting-14-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_14_devs__reporting_14_data_rw" {
  group      = aws_iam_group.reporting_14_devs.name
  policy_arn = aws_iam_policy.reporting_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_14_devs__reporting_14_ops" {
  group      = aws_iam_group.reporting_14_devs.name
  policy_arn = aws_iam_policy.reporting_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_14_devs__base_readonly" {
  group      = aws_iam_group.reporting_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_14_devs__self_service" {
  group      = aws_iam_group.reporting_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_15_analysts" {
  name = "solor-1njchy-reporting-15-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_15_analysts__reporting_15_read" {
  group      = aws_iam_group.reporting_15_analysts.name
  policy_arn = aws_iam_policy.reporting_15_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_15_analysts__base_readonly" {
  group      = aws_iam_group.reporting_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_15_devs" {
  name = "solor-1njchy-reporting-15-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_15_devs__reporting_15_data_rw" {
  group      = aws_iam_group.reporting_15_devs.name
  policy_arn = aws_iam_policy.reporting_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_15_devs__reporting_15_ops" {
  group      = aws_iam_group.reporting_15_devs.name
  policy_arn = aws_iam_policy.reporting_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_15_devs__base_readonly" {
  group      = aws_iam_group.reporting_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_15_devs__self_service" {
  group      = aws_iam_group.reporting_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_16_analysts" {
  name = "solor-1njchy-reporting-16-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_16_analysts__reporting_16_read" {
  group      = aws_iam_group.reporting_16_analysts.name
  policy_arn = aws_iam_policy.reporting_16_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_16_analysts__base_readonly" {
  group      = aws_iam_group.reporting_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_16_devs" {
  name = "solor-1njchy-reporting-16-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_16_devs__reporting_16_data_rw" {
  group      = aws_iam_group.reporting_16_devs.name
  policy_arn = aws_iam_policy.reporting_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_16_devs__reporting_16_ops" {
  group      = aws_iam_group.reporting_16_devs.name
  policy_arn = aws_iam_policy.reporting_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_16_devs__base_readonly" {
  group      = aws_iam_group.reporting_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_16_devs__self_service" {
  group      = aws_iam_group.reporting_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_17_analysts" {
  name = "solor-1njchy-reporting-17-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_17_analysts__reporting_17_read" {
  group      = aws_iam_group.reporting_17_analysts.name
  policy_arn = aws_iam_policy.reporting_17_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_17_analysts__base_readonly" {
  group      = aws_iam_group.reporting_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_17_devs" {
  name = "solor-1njchy-reporting-17-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_17_devs__reporting_17_data_rw" {
  group      = aws_iam_group.reporting_17_devs.name
  policy_arn = aws_iam_policy.reporting_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_17_devs__reporting_17_ops" {
  group      = aws_iam_group.reporting_17_devs.name
  policy_arn = aws_iam_policy.reporting_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_17_devs__base_readonly" {
  group      = aws_iam_group.reporting_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_17_devs__self_service" {
  group      = aws_iam_group.reporting_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_18_analysts" {
  name = "solor-1njchy-reporting-18-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_18_analysts__reporting_18_read" {
  group      = aws_iam_group.reporting_18_analysts.name
  policy_arn = aws_iam_policy.reporting_18_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_18_analysts__base_readonly" {
  group      = aws_iam_group.reporting_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_18_devs" {
  name = "solor-1njchy-reporting-18-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_18_devs__reporting_18_data_rw" {
  group      = aws_iam_group.reporting_18_devs.name
  policy_arn = aws_iam_policy.reporting_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_18_devs__reporting_18_ops" {
  group      = aws_iam_group.reporting_18_devs.name
  policy_arn = aws_iam_policy.reporting_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_18_devs__base_readonly" {
  group      = aws_iam_group.reporting_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_18_devs__self_service" {
  group      = aws_iam_group.reporting_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_19_analysts" {
  name = "solor-1njchy-reporting-19-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_19_analysts__reporting_19_read" {
  group      = aws_iam_group.reporting_19_analysts.name
  policy_arn = aws_iam_policy.reporting_19_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_19_analysts__base_readonly" {
  group      = aws_iam_group.reporting_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_19_devs" {
  name = "solor-1njchy-reporting-19-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_19_devs__reporting_19_data_rw" {
  group      = aws_iam_group.reporting_19_devs.name
  policy_arn = aws_iam_policy.reporting_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_19_devs__reporting_19_ops" {
  group      = aws_iam_group.reporting_19_devs.name
  policy_arn = aws_iam_policy.reporting_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_19_devs__base_readonly" {
  group      = aws_iam_group.reporting_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_19_devs__self_service" {
  group      = aws_iam_group.reporting_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_2_analysts" {
  name = "solor-1njchy-reporting-2-analysts"
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
  name = "solor-1njchy-reporting-2-devs"
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

resource "aws_iam_group" "reporting_20_analysts" {
  name = "solor-1njchy-reporting-20-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_20_analysts__reporting_20_read" {
  group      = aws_iam_group.reporting_20_analysts.name
  policy_arn = aws_iam_policy.reporting_20_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_20_analysts__base_readonly" {
  group      = aws_iam_group.reporting_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_20_devs" {
  name = "solor-1njchy-reporting-20-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_20_devs__reporting_20_data_rw" {
  group      = aws_iam_group.reporting_20_devs.name
  policy_arn = aws_iam_policy.reporting_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_20_devs__reporting_20_ops" {
  group      = aws_iam_group.reporting_20_devs.name
  policy_arn = aws_iam_policy.reporting_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_20_devs__base_readonly" {
  group      = aws_iam_group.reporting_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_20_devs__self_service" {
  group      = aws_iam_group.reporting_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_21_analysts" {
  name = "solor-1njchy-reporting-21-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_21_analysts__reporting_21_read" {
  group      = aws_iam_group.reporting_21_analysts.name
  policy_arn = aws_iam_policy.reporting_21_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_21_analysts__base_readonly" {
  group      = aws_iam_group.reporting_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_21_devs" {
  name = "solor-1njchy-reporting-21-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_21_devs__reporting_21_data_rw" {
  group      = aws_iam_group.reporting_21_devs.name
  policy_arn = aws_iam_policy.reporting_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_21_devs__reporting_21_ops" {
  group      = aws_iam_group.reporting_21_devs.name
  policy_arn = aws_iam_policy.reporting_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_21_devs__base_readonly" {
  group      = aws_iam_group.reporting_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_21_devs__self_service" {
  group      = aws_iam_group.reporting_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_22_analysts" {
  name = "solor-1njchy-reporting-22-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_22_analysts__reporting_22_read" {
  group      = aws_iam_group.reporting_22_analysts.name
  policy_arn = aws_iam_policy.reporting_22_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_22_analysts__base_readonly" {
  group      = aws_iam_group.reporting_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_22_devs" {
  name = "solor-1njchy-reporting-22-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_22_devs__reporting_22_data_rw" {
  group      = aws_iam_group.reporting_22_devs.name
  policy_arn = aws_iam_policy.reporting_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_22_devs__reporting_22_ops" {
  group      = aws_iam_group.reporting_22_devs.name
  policy_arn = aws_iam_policy.reporting_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_22_devs__base_readonly" {
  group      = aws_iam_group.reporting_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_22_devs__self_service" {
  group      = aws_iam_group.reporting_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_23_analysts" {
  name = "solor-1njchy-reporting-23-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_23_analysts__reporting_23_read" {
  group      = aws_iam_group.reporting_23_analysts.name
  policy_arn = aws_iam_policy.reporting_23_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_23_analysts__base_readonly" {
  group      = aws_iam_group.reporting_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_23_devs" {
  name = "solor-1njchy-reporting-23-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_23_devs__reporting_23_data_rw" {
  group      = aws_iam_group.reporting_23_devs.name
  policy_arn = aws_iam_policy.reporting_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_23_devs__reporting_23_ops" {
  group      = aws_iam_group.reporting_23_devs.name
  policy_arn = aws_iam_policy.reporting_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_23_devs__base_readonly" {
  group      = aws_iam_group.reporting_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_23_devs__self_service" {
  group      = aws_iam_group.reporting_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_24_analysts" {
  name = "solor-1njchy-reporting-24-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_24_analysts__reporting_24_read" {
  group      = aws_iam_group.reporting_24_analysts.name
  policy_arn = aws_iam_policy.reporting_24_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_24_analysts__base_readonly" {
  group      = aws_iam_group.reporting_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_24_devs" {
  name = "solor-1njchy-reporting-24-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_24_devs__reporting_24_data_rw" {
  group      = aws_iam_group.reporting_24_devs.name
  policy_arn = aws_iam_policy.reporting_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_24_devs__reporting_24_ops" {
  group      = aws_iam_group.reporting_24_devs.name
  policy_arn = aws_iam_policy.reporting_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_24_devs__base_readonly" {
  group      = aws_iam_group.reporting_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_24_devs__self_service" {
  group      = aws_iam_group.reporting_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_25_analysts" {
  name = "solor-1njchy-reporting-25-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_25_analysts__reporting_25_read" {
  group      = aws_iam_group.reporting_25_analysts.name
  policy_arn = aws_iam_policy.reporting_25_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_25_analysts__base_readonly" {
  group      = aws_iam_group.reporting_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_25_devs" {
  name = "solor-1njchy-reporting-25-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_25_devs__reporting_25_data_rw" {
  group      = aws_iam_group.reporting_25_devs.name
  policy_arn = aws_iam_policy.reporting_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_25_devs__reporting_25_ops" {
  group      = aws_iam_group.reporting_25_devs.name
  policy_arn = aws_iam_policy.reporting_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_25_devs__base_readonly" {
  group      = aws_iam_group.reporting_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_25_devs__self_service" {
  group      = aws_iam_group.reporting_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_26_analysts" {
  name = "solor-1njchy-reporting-26-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_26_analysts__reporting_26_read" {
  group      = aws_iam_group.reporting_26_analysts.name
  policy_arn = aws_iam_policy.reporting_26_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_26_analysts__base_readonly" {
  group      = aws_iam_group.reporting_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_26_devs" {
  name = "solor-1njchy-reporting-26-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_26_devs__reporting_26_data_rw" {
  group      = aws_iam_group.reporting_26_devs.name
  policy_arn = aws_iam_policy.reporting_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_26_devs__reporting_26_ops" {
  group      = aws_iam_group.reporting_26_devs.name
  policy_arn = aws_iam_policy.reporting_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_26_devs__base_readonly" {
  group      = aws_iam_group.reporting_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_26_devs__self_service" {
  group      = aws_iam_group.reporting_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_27_analysts" {
  name = "solor-1njchy-reporting-27-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_27_analysts__reporting_27_read" {
  group      = aws_iam_group.reporting_27_analysts.name
  policy_arn = aws_iam_policy.reporting_27_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_27_analysts__base_readonly" {
  group      = aws_iam_group.reporting_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_27_devs" {
  name = "solor-1njchy-reporting-27-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_27_devs__reporting_27_data_rw" {
  group      = aws_iam_group.reporting_27_devs.name
  policy_arn = aws_iam_policy.reporting_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_27_devs__reporting_27_ops" {
  group      = aws_iam_group.reporting_27_devs.name
  policy_arn = aws_iam_policy.reporting_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_27_devs__base_readonly" {
  group      = aws_iam_group.reporting_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_27_devs__self_service" {
  group      = aws_iam_group.reporting_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_28_analysts" {
  name = "solor-1njchy-reporting-28-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_28_analysts__reporting_28_read" {
  group      = aws_iam_group.reporting_28_analysts.name
  policy_arn = aws_iam_policy.reporting_28_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_28_analysts__base_readonly" {
  group      = aws_iam_group.reporting_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_28_devs" {
  name = "solor-1njchy-reporting-28-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_28_devs__reporting_28_data_rw" {
  group      = aws_iam_group.reporting_28_devs.name
  policy_arn = aws_iam_policy.reporting_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_28_devs__reporting_28_ops" {
  group      = aws_iam_group.reporting_28_devs.name
  policy_arn = aws_iam_policy.reporting_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_28_devs__base_readonly" {
  group      = aws_iam_group.reporting_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_28_devs__self_service" {
  group      = aws_iam_group.reporting_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_29_analysts" {
  name = "solor-1njchy-reporting-29-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_29_analysts__reporting_29_read" {
  group      = aws_iam_group.reporting_29_analysts.name
  policy_arn = aws_iam_policy.reporting_29_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_29_analysts__base_readonly" {
  group      = aws_iam_group.reporting_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_29_devs" {
  name = "solor-1njchy-reporting-29-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_29_devs__reporting_29_data_rw" {
  group      = aws_iam_group.reporting_29_devs.name
  policy_arn = aws_iam_policy.reporting_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_29_devs__reporting_29_ops" {
  group      = aws_iam_group.reporting_29_devs.name
  policy_arn = aws_iam_policy.reporting_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_29_devs__base_readonly" {
  group      = aws_iam_group.reporting_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_29_devs__self_service" {
  group      = aws_iam_group.reporting_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_3_analysts" {
  name = "solor-1njchy-reporting-3-analysts"
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
  name = "solor-1njchy-reporting-3-devs"
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

resource "aws_iam_group" "reporting_30_analysts" {
  name = "solor-1njchy-reporting-30-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_30_analysts__reporting_30_read" {
  group      = aws_iam_group.reporting_30_analysts.name
  policy_arn = aws_iam_policy.reporting_30_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_30_analysts__base_readonly" {
  group      = aws_iam_group.reporting_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_30_devs" {
  name = "solor-1njchy-reporting-30-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_30_devs__reporting_30_data_rw" {
  group      = aws_iam_group.reporting_30_devs.name
  policy_arn = aws_iam_policy.reporting_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_30_devs__reporting_30_ops" {
  group      = aws_iam_group.reporting_30_devs.name
  policy_arn = aws_iam_policy.reporting_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_30_devs__base_readonly" {
  group      = aws_iam_group.reporting_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_30_devs__self_service" {
  group      = aws_iam_group.reporting_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_31_analysts" {
  name = "solor-1njchy-reporting-31-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_31_analysts__reporting_31_read" {
  group      = aws_iam_group.reporting_31_analysts.name
  policy_arn = aws_iam_policy.reporting_31_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_31_analysts__base_readonly" {
  group      = aws_iam_group.reporting_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_31_devs" {
  name = "solor-1njchy-reporting-31-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_31_devs__reporting_31_data_rw" {
  group      = aws_iam_group.reporting_31_devs.name
  policy_arn = aws_iam_policy.reporting_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_31_devs__reporting_31_ops" {
  group      = aws_iam_group.reporting_31_devs.name
  policy_arn = aws_iam_policy.reporting_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_31_devs__base_readonly" {
  group      = aws_iam_group.reporting_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_31_devs__self_service" {
  group      = aws_iam_group.reporting_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_32_analysts" {
  name = "solor-1njchy-reporting-32-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_32_analysts__reporting_32_read" {
  group      = aws_iam_group.reporting_32_analysts.name
  policy_arn = aws_iam_policy.reporting_32_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_32_analysts__base_readonly" {
  group      = aws_iam_group.reporting_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_32_devs" {
  name = "solor-1njchy-reporting-32-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_32_devs__reporting_32_data_rw" {
  group      = aws_iam_group.reporting_32_devs.name
  policy_arn = aws_iam_policy.reporting_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_32_devs__reporting_32_ops" {
  group      = aws_iam_group.reporting_32_devs.name
  policy_arn = aws_iam_policy.reporting_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_32_devs__base_readonly" {
  group      = aws_iam_group.reporting_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_32_devs__self_service" {
  group      = aws_iam_group.reporting_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_33_analysts" {
  name = "solor-1njchy-reporting-33-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_33_analysts__reporting_33_read" {
  group      = aws_iam_group.reporting_33_analysts.name
  policy_arn = aws_iam_policy.reporting_33_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_33_analysts__base_readonly" {
  group      = aws_iam_group.reporting_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_33_devs" {
  name = "solor-1njchy-reporting-33-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_33_devs__reporting_33_data_rw" {
  group      = aws_iam_group.reporting_33_devs.name
  policy_arn = aws_iam_policy.reporting_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_33_devs__reporting_33_ops" {
  group      = aws_iam_group.reporting_33_devs.name
  policy_arn = aws_iam_policy.reporting_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_33_devs__base_readonly" {
  group      = aws_iam_group.reporting_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_33_devs__self_service" {
  group      = aws_iam_group.reporting_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_34_analysts" {
  name = "solor-1njchy-reporting-34-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_34_analysts__reporting_34_read" {
  group      = aws_iam_group.reporting_34_analysts.name
  policy_arn = aws_iam_policy.reporting_34_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_34_analysts__base_readonly" {
  group      = aws_iam_group.reporting_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_34_devs" {
  name = "solor-1njchy-reporting-34-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_34_devs__reporting_34_data_rw" {
  group      = aws_iam_group.reporting_34_devs.name
  policy_arn = aws_iam_policy.reporting_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_34_devs__reporting_34_ops" {
  group      = aws_iam_group.reporting_34_devs.name
  policy_arn = aws_iam_policy.reporting_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_34_devs__base_readonly" {
  group      = aws_iam_group.reporting_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_34_devs__self_service" {
  group      = aws_iam_group.reporting_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_35_analysts" {
  name = "solor-1njchy-reporting-35-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_35_analysts__reporting_35_read" {
  group      = aws_iam_group.reporting_35_analysts.name
  policy_arn = aws_iam_policy.reporting_35_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_35_analysts__base_readonly" {
  group      = aws_iam_group.reporting_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_35_devs" {
  name = "solor-1njchy-reporting-35-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_35_devs__reporting_35_data_rw" {
  group      = aws_iam_group.reporting_35_devs.name
  policy_arn = aws_iam_policy.reporting_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_35_devs__reporting_35_ops" {
  group      = aws_iam_group.reporting_35_devs.name
  policy_arn = aws_iam_policy.reporting_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_35_devs__base_readonly" {
  group      = aws_iam_group.reporting_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_35_devs__self_service" {
  group      = aws_iam_group.reporting_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_36_analysts" {
  name = "solor-1njchy-reporting-36-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_36_analysts__reporting_36_read" {
  group      = aws_iam_group.reporting_36_analysts.name
  policy_arn = aws_iam_policy.reporting_36_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_36_analysts__base_readonly" {
  group      = aws_iam_group.reporting_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_36_devs" {
  name = "solor-1njchy-reporting-36-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_36_devs__reporting_36_data_rw" {
  group      = aws_iam_group.reporting_36_devs.name
  policy_arn = aws_iam_policy.reporting_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_36_devs__reporting_36_ops" {
  group      = aws_iam_group.reporting_36_devs.name
  policy_arn = aws_iam_policy.reporting_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_36_devs__base_readonly" {
  group      = aws_iam_group.reporting_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_36_devs__self_service" {
  group      = aws_iam_group.reporting_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_37_analysts" {
  name = "solor-1njchy-reporting-37-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_37_analysts__reporting_37_read" {
  group      = aws_iam_group.reporting_37_analysts.name
  policy_arn = aws_iam_policy.reporting_37_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_37_analysts__base_readonly" {
  group      = aws_iam_group.reporting_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_37_devs" {
  name = "solor-1njchy-reporting-37-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_37_devs__reporting_37_data_rw" {
  group      = aws_iam_group.reporting_37_devs.name
  policy_arn = aws_iam_policy.reporting_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_37_devs__reporting_37_ops" {
  group      = aws_iam_group.reporting_37_devs.name
  policy_arn = aws_iam_policy.reporting_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_37_devs__base_readonly" {
  group      = aws_iam_group.reporting_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_37_devs__self_service" {
  group      = aws_iam_group.reporting_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_38_analysts" {
  name = "solor-1njchy-reporting-38-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_38_analysts__reporting_38_read" {
  group      = aws_iam_group.reporting_38_analysts.name
  policy_arn = aws_iam_policy.reporting_38_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_38_analysts__base_readonly" {
  group      = aws_iam_group.reporting_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_38_devs" {
  name = "solor-1njchy-reporting-38-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_38_devs__reporting_38_data_rw" {
  group      = aws_iam_group.reporting_38_devs.name
  policy_arn = aws_iam_policy.reporting_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_38_devs__reporting_38_ops" {
  group      = aws_iam_group.reporting_38_devs.name
  policy_arn = aws_iam_policy.reporting_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_38_devs__base_readonly" {
  group      = aws_iam_group.reporting_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_38_devs__self_service" {
  group      = aws_iam_group.reporting_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_39_analysts" {
  name = "solor-1njchy-reporting-39-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_39_analysts__reporting_39_read" {
  group      = aws_iam_group.reporting_39_analysts.name
  policy_arn = aws_iam_policy.reporting_39_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_39_analysts__base_readonly" {
  group      = aws_iam_group.reporting_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_39_devs" {
  name = "solor-1njchy-reporting-39-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_39_devs__reporting_39_data_rw" {
  group      = aws_iam_group.reporting_39_devs.name
  policy_arn = aws_iam_policy.reporting_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_39_devs__reporting_39_ops" {
  group      = aws_iam_group.reporting_39_devs.name
  policy_arn = aws_iam_policy.reporting_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_39_devs__base_readonly" {
  group      = aws_iam_group.reporting_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_39_devs__self_service" {
  group      = aws_iam_group.reporting_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_4_analysts" {
  name = "solor-1njchy-reporting-4-analysts"
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
  name = "solor-1njchy-reporting-4-devs"
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

resource "aws_iam_group" "reporting_40_analysts" {
  name = "solor-1njchy-reporting-40-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_40_analysts__reporting_40_read" {
  group      = aws_iam_group.reporting_40_analysts.name
  policy_arn = aws_iam_policy.reporting_40_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_40_analysts__base_readonly" {
  group      = aws_iam_group.reporting_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_40_devs" {
  name = "solor-1njchy-reporting-40-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_40_devs__reporting_40_data_rw" {
  group      = aws_iam_group.reporting_40_devs.name
  policy_arn = aws_iam_policy.reporting_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_40_devs__reporting_40_ops" {
  group      = aws_iam_group.reporting_40_devs.name
  policy_arn = aws_iam_policy.reporting_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_40_devs__base_readonly" {
  group      = aws_iam_group.reporting_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_40_devs__self_service" {
  group      = aws_iam_group.reporting_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_41_analysts" {
  name = "solor-1njchy-reporting-41-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_41_analysts__reporting_41_read" {
  group      = aws_iam_group.reporting_41_analysts.name
  policy_arn = aws_iam_policy.reporting_41_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_41_analysts__base_readonly" {
  group      = aws_iam_group.reporting_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_41_devs" {
  name = "solor-1njchy-reporting-41-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_41_devs__reporting_41_data_rw" {
  group      = aws_iam_group.reporting_41_devs.name
  policy_arn = aws_iam_policy.reporting_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_41_devs__reporting_41_ops" {
  group      = aws_iam_group.reporting_41_devs.name
  policy_arn = aws_iam_policy.reporting_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_41_devs__base_readonly" {
  group      = aws_iam_group.reporting_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_41_devs__self_service" {
  group      = aws_iam_group.reporting_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_42_analysts" {
  name = "solor-1njchy-reporting-42-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_42_analysts__reporting_42_read" {
  group      = aws_iam_group.reporting_42_analysts.name
  policy_arn = aws_iam_policy.reporting_42_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_42_analysts__base_readonly" {
  group      = aws_iam_group.reporting_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_42_devs" {
  name = "solor-1njchy-reporting-42-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_42_devs__reporting_42_data_rw" {
  group      = aws_iam_group.reporting_42_devs.name
  policy_arn = aws_iam_policy.reporting_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_42_devs__reporting_42_ops" {
  group      = aws_iam_group.reporting_42_devs.name
  policy_arn = aws_iam_policy.reporting_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_42_devs__base_readonly" {
  group      = aws_iam_group.reporting_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_42_devs__self_service" {
  group      = aws_iam_group.reporting_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_43_analysts" {
  name = "solor-1njchy-reporting-43-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_43_analysts__reporting_43_read" {
  group      = aws_iam_group.reporting_43_analysts.name
  policy_arn = aws_iam_policy.reporting_43_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_43_analysts__base_readonly" {
  group      = aws_iam_group.reporting_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_43_devs" {
  name = "solor-1njchy-reporting-43-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_43_devs__reporting_43_data_rw" {
  group      = aws_iam_group.reporting_43_devs.name
  policy_arn = aws_iam_policy.reporting_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_43_devs__reporting_43_ops" {
  group      = aws_iam_group.reporting_43_devs.name
  policy_arn = aws_iam_policy.reporting_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_43_devs__base_readonly" {
  group      = aws_iam_group.reporting_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_43_devs__self_service" {
  group      = aws_iam_group.reporting_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_44_analysts" {
  name = "solor-1njchy-reporting-44-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_44_analysts__reporting_44_read" {
  group      = aws_iam_group.reporting_44_analysts.name
  policy_arn = aws_iam_policy.reporting_44_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_44_analysts__base_readonly" {
  group      = aws_iam_group.reporting_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_44_devs" {
  name = "solor-1njchy-reporting-44-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_44_devs__reporting_44_data_rw" {
  group      = aws_iam_group.reporting_44_devs.name
  policy_arn = aws_iam_policy.reporting_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_44_devs__reporting_44_ops" {
  group      = aws_iam_group.reporting_44_devs.name
  policy_arn = aws_iam_policy.reporting_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_44_devs__base_readonly" {
  group      = aws_iam_group.reporting_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_44_devs__self_service" {
  group      = aws_iam_group.reporting_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_45_analysts" {
  name = "solor-1njchy-reporting-45-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_45_analysts__reporting_45_read" {
  group      = aws_iam_group.reporting_45_analysts.name
  policy_arn = aws_iam_policy.reporting_45_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_45_analysts__base_readonly" {
  group      = aws_iam_group.reporting_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_45_devs" {
  name = "solor-1njchy-reporting-45-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_45_devs__reporting_45_data_rw" {
  group      = aws_iam_group.reporting_45_devs.name
  policy_arn = aws_iam_policy.reporting_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_45_devs__reporting_45_ops" {
  group      = aws_iam_group.reporting_45_devs.name
  policy_arn = aws_iam_policy.reporting_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_45_devs__base_readonly" {
  group      = aws_iam_group.reporting_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_45_devs__self_service" {
  group      = aws_iam_group.reporting_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_46_analysts" {
  name = "solor-1njchy-reporting-46-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_46_analysts__reporting_46_read" {
  group      = aws_iam_group.reporting_46_analysts.name
  policy_arn = aws_iam_policy.reporting_46_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_46_analysts__base_readonly" {
  group      = aws_iam_group.reporting_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_46_devs" {
  name = "solor-1njchy-reporting-46-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_46_devs__reporting_46_data_rw" {
  group      = aws_iam_group.reporting_46_devs.name
  policy_arn = aws_iam_policy.reporting_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_46_devs__reporting_46_ops" {
  group      = aws_iam_group.reporting_46_devs.name
  policy_arn = aws_iam_policy.reporting_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_46_devs__base_readonly" {
  group      = aws_iam_group.reporting_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_46_devs__self_service" {
  group      = aws_iam_group.reporting_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_47_analysts" {
  name = "solor-1njchy-reporting-47-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_47_analysts__reporting_47_read" {
  group      = aws_iam_group.reporting_47_analysts.name
  policy_arn = aws_iam_policy.reporting_47_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_47_analysts__base_readonly" {
  group      = aws_iam_group.reporting_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_47_devs" {
  name = "solor-1njchy-reporting-47-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_47_devs__reporting_47_data_rw" {
  group      = aws_iam_group.reporting_47_devs.name
  policy_arn = aws_iam_policy.reporting_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_47_devs__reporting_47_ops" {
  group      = aws_iam_group.reporting_47_devs.name
  policy_arn = aws_iam_policy.reporting_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_47_devs__base_readonly" {
  group      = aws_iam_group.reporting_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_47_devs__self_service" {
  group      = aws_iam_group.reporting_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_48_analysts" {
  name = "solor-1njchy-reporting-48-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_48_analysts__reporting_48_read" {
  group      = aws_iam_group.reporting_48_analysts.name
  policy_arn = aws_iam_policy.reporting_48_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_48_analysts__base_readonly" {
  group      = aws_iam_group.reporting_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_48_devs" {
  name = "solor-1njchy-reporting-48-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_48_devs__reporting_48_data_rw" {
  group      = aws_iam_group.reporting_48_devs.name
  policy_arn = aws_iam_policy.reporting_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_48_devs__reporting_48_ops" {
  group      = aws_iam_group.reporting_48_devs.name
  policy_arn = aws_iam_policy.reporting_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_48_devs__base_readonly" {
  group      = aws_iam_group.reporting_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_48_devs__self_service" {
  group      = aws_iam_group.reporting_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_49_analysts" {
  name = "solor-1njchy-reporting-49-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_49_analysts__reporting_49_read" {
  group      = aws_iam_group.reporting_49_analysts.name
  policy_arn = aws_iam_policy.reporting_49_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_49_analysts__base_readonly" {
  group      = aws_iam_group.reporting_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_49_devs" {
  name = "solor-1njchy-reporting-49-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_49_devs__reporting_49_data_rw" {
  group      = aws_iam_group.reporting_49_devs.name
  policy_arn = aws_iam_policy.reporting_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_49_devs__reporting_49_ops" {
  group      = aws_iam_group.reporting_49_devs.name
  policy_arn = aws_iam_policy.reporting_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_49_devs__base_readonly" {
  group      = aws_iam_group.reporting_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_49_devs__self_service" {
  group      = aws_iam_group.reporting_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_5_analysts" {
  name = "solor-1njchy-reporting-5-analysts"
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
  name = "solor-1njchy-reporting-5-devs"
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

resource "aws_iam_group" "reporting_50_analysts" {
  name = "solor-1njchy-reporting-50-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_50_analysts__reporting_50_read" {
  group      = aws_iam_group.reporting_50_analysts.name
  policy_arn = aws_iam_policy.reporting_50_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_50_analysts__base_readonly" {
  group      = aws_iam_group.reporting_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_50_devs" {
  name = "solor-1njchy-reporting-50-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_50_devs__reporting_50_data_rw" {
  group      = aws_iam_group.reporting_50_devs.name
  policy_arn = aws_iam_policy.reporting_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_50_devs__reporting_50_ops" {
  group      = aws_iam_group.reporting_50_devs.name
  policy_arn = aws_iam_policy.reporting_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_50_devs__base_readonly" {
  group      = aws_iam_group.reporting_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_50_devs__self_service" {
  group      = aws_iam_group.reporting_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_6_analysts" {
  name = "solor-1njchy-reporting-6-analysts"
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
  name = "solor-1njchy-reporting-6-devs"
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

resource "aws_iam_group" "reporting_7_analysts" {
  name = "solor-1njchy-reporting-7-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_7_analysts__reporting_7_read" {
  group      = aws_iam_group.reporting_7_analysts.name
  policy_arn = aws_iam_policy.reporting_7_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_7_analysts__base_readonly" {
  group      = aws_iam_group.reporting_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_7_devs" {
  name = "solor-1njchy-reporting-7-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_7_devs__reporting_7_data_rw" {
  group      = aws_iam_group.reporting_7_devs.name
  policy_arn = aws_iam_policy.reporting_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_7_devs__reporting_7_ops" {
  group      = aws_iam_group.reporting_7_devs.name
  policy_arn = aws_iam_policy.reporting_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_7_devs__base_readonly" {
  group      = aws_iam_group.reporting_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_7_devs__self_service" {
  group      = aws_iam_group.reporting_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_8_analysts" {
  name = "solor-1njchy-reporting-8-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_8_analysts__reporting_8_read" {
  group      = aws_iam_group.reporting_8_analysts.name
  policy_arn = aws_iam_policy.reporting_8_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_8_analysts__base_readonly" {
  group      = aws_iam_group.reporting_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_8_devs" {
  name = "solor-1njchy-reporting-8-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_8_devs__reporting_8_data_rw" {
  group      = aws_iam_group.reporting_8_devs.name
  policy_arn = aws_iam_policy.reporting_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_8_devs__reporting_8_ops" {
  group      = aws_iam_group.reporting_8_devs.name
  policy_arn = aws_iam_policy.reporting_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_8_devs__base_readonly" {
  group      = aws_iam_group.reporting_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_8_devs__self_service" {
  group      = aws_iam_group.reporting_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_9_analysts" {
  name = "solor-1njchy-reporting-9-analysts"
}

resource "aws_iam_group_policy_attachment" "reporting_9_analysts__reporting_9_read" {
  group      = aws_iam_group.reporting_9_analysts.name
  policy_arn = aws_iam_policy.reporting_9_read.arn
}

resource "aws_iam_group_policy_attachment" "reporting_9_analysts__base_readonly" {
  group      = aws_iam_group.reporting_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "reporting_9_devs" {
  name = "solor-1njchy-reporting-9-devs"
}

resource "aws_iam_group_policy_attachment" "reporting_9_devs__reporting_9_data_rw" {
  group      = aws_iam_group.reporting_9_devs.name
  policy_arn = aws_iam_policy.reporting_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "reporting_9_devs__reporting_9_ops" {
  group      = aws_iam_group.reporting_9_devs.name
  policy_arn = aws_iam_policy.reporting_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "reporting_9_devs__base_readonly" {
  group      = aws_iam_group.reporting_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "reporting_9_devs__self_service" {
  group      = aws_iam_group.reporting_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "reporting_analysts" {
  name = "solor-1njchy-reporting-analysts"
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
  name = "solor-1njchy-reporting-devs"
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

resource "aws_iam_group" "risk_10_analysts" {
  name = "solor-1njchy-risk-10-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_10_analysts__risk_10_read" {
  group      = aws_iam_group.risk_10_analysts.name
  policy_arn = aws_iam_policy.risk_10_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_10_analysts__base_readonly" {
  group      = aws_iam_group.risk_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_10_devs" {
  name = "solor-1njchy-risk-10-devs"
}

resource "aws_iam_group_policy_attachment" "risk_10_devs__risk_10_data_rw" {
  group      = aws_iam_group.risk_10_devs.name
  policy_arn = aws_iam_policy.risk_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_10_devs__risk_10_ops" {
  group      = aws_iam_group.risk_10_devs.name
  policy_arn = aws_iam_policy.risk_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_10_devs__base_readonly" {
  group      = aws_iam_group.risk_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_10_devs__self_service" {
  group      = aws_iam_group.risk_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_11_analysts" {
  name = "solor-1njchy-risk-11-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_11_analysts__risk_11_read" {
  group      = aws_iam_group.risk_11_analysts.name
  policy_arn = aws_iam_policy.risk_11_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_11_analysts__base_readonly" {
  group      = aws_iam_group.risk_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_11_devs" {
  name = "solor-1njchy-risk-11-devs"
}

resource "aws_iam_group_policy_attachment" "risk_11_devs__risk_11_data_rw" {
  group      = aws_iam_group.risk_11_devs.name
  policy_arn = aws_iam_policy.risk_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_11_devs__risk_11_ops" {
  group      = aws_iam_group.risk_11_devs.name
  policy_arn = aws_iam_policy.risk_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_11_devs__base_readonly" {
  group      = aws_iam_group.risk_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_11_devs__self_service" {
  group      = aws_iam_group.risk_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_12_analysts" {
  name = "solor-1njchy-risk-12-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_12_analysts__risk_12_read" {
  group      = aws_iam_group.risk_12_analysts.name
  policy_arn = aws_iam_policy.risk_12_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_12_analysts__base_readonly" {
  group      = aws_iam_group.risk_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_12_devs" {
  name = "solor-1njchy-risk-12-devs"
}

resource "aws_iam_group_policy_attachment" "risk_12_devs__risk_12_data_rw" {
  group      = aws_iam_group.risk_12_devs.name
  policy_arn = aws_iam_policy.risk_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_12_devs__risk_12_ops" {
  group      = aws_iam_group.risk_12_devs.name
  policy_arn = aws_iam_policy.risk_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_12_devs__base_readonly" {
  group      = aws_iam_group.risk_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_12_devs__self_service" {
  group      = aws_iam_group.risk_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_13_analysts" {
  name = "solor-1njchy-risk-13-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_13_analysts__risk_13_read" {
  group      = aws_iam_group.risk_13_analysts.name
  policy_arn = aws_iam_policy.risk_13_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_13_analysts__base_readonly" {
  group      = aws_iam_group.risk_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_13_devs" {
  name = "solor-1njchy-risk-13-devs"
}

resource "aws_iam_group_policy_attachment" "risk_13_devs__risk_13_data_rw" {
  group      = aws_iam_group.risk_13_devs.name
  policy_arn = aws_iam_policy.risk_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_13_devs__risk_13_ops" {
  group      = aws_iam_group.risk_13_devs.name
  policy_arn = aws_iam_policy.risk_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_13_devs__base_readonly" {
  group      = aws_iam_group.risk_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_13_devs__self_service" {
  group      = aws_iam_group.risk_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_14_analysts" {
  name = "solor-1njchy-risk-14-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_14_analysts__risk_14_read" {
  group      = aws_iam_group.risk_14_analysts.name
  policy_arn = aws_iam_policy.risk_14_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_14_analysts__base_readonly" {
  group      = aws_iam_group.risk_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_14_devs" {
  name = "solor-1njchy-risk-14-devs"
}

resource "aws_iam_group_policy_attachment" "risk_14_devs__risk_14_data_rw" {
  group      = aws_iam_group.risk_14_devs.name
  policy_arn = aws_iam_policy.risk_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_14_devs__risk_14_ops" {
  group      = aws_iam_group.risk_14_devs.name
  policy_arn = aws_iam_policy.risk_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_14_devs__base_readonly" {
  group      = aws_iam_group.risk_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_14_devs__self_service" {
  group      = aws_iam_group.risk_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_15_analysts" {
  name = "solor-1njchy-risk-15-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_15_analysts__risk_15_read" {
  group      = aws_iam_group.risk_15_analysts.name
  policy_arn = aws_iam_policy.risk_15_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_15_analysts__base_readonly" {
  group      = aws_iam_group.risk_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_15_devs" {
  name = "solor-1njchy-risk-15-devs"
}

resource "aws_iam_group_policy_attachment" "risk_15_devs__risk_15_data_rw" {
  group      = aws_iam_group.risk_15_devs.name
  policy_arn = aws_iam_policy.risk_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_15_devs__risk_15_ops" {
  group      = aws_iam_group.risk_15_devs.name
  policy_arn = aws_iam_policy.risk_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_15_devs__base_readonly" {
  group      = aws_iam_group.risk_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_15_devs__self_service" {
  group      = aws_iam_group.risk_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_16_analysts" {
  name = "solor-1njchy-risk-16-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_16_analysts__risk_16_read" {
  group      = aws_iam_group.risk_16_analysts.name
  policy_arn = aws_iam_policy.risk_16_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_16_analysts__base_readonly" {
  group      = aws_iam_group.risk_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_16_devs" {
  name = "solor-1njchy-risk-16-devs"
}

resource "aws_iam_group_policy_attachment" "risk_16_devs__risk_16_data_rw" {
  group      = aws_iam_group.risk_16_devs.name
  policy_arn = aws_iam_policy.risk_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_16_devs__risk_16_ops" {
  group      = aws_iam_group.risk_16_devs.name
  policy_arn = aws_iam_policy.risk_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_16_devs__base_readonly" {
  group      = aws_iam_group.risk_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_16_devs__self_service" {
  group      = aws_iam_group.risk_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_17_analysts" {
  name = "solor-1njchy-risk-17-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_17_analysts__risk_17_read" {
  group      = aws_iam_group.risk_17_analysts.name
  policy_arn = aws_iam_policy.risk_17_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_17_analysts__base_readonly" {
  group      = aws_iam_group.risk_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_17_devs" {
  name = "solor-1njchy-risk-17-devs"
}

resource "aws_iam_group_policy_attachment" "risk_17_devs__risk_17_data_rw" {
  group      = aws_iam_group.risk_17_devs.name
  policy_arn = aws_iam_policy.risk_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_17_devs__risk_17_ops" {
  group      = aws_iam_group.risk_17_devs.name
  policy_arn = aws_iam_policy.risk_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_17_devs__base_readonly" {
  group      = aws_iam_group.risk_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_17_devs__self_service" {
  group      = aws_iam_group.risk_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_18_analysts" {
  name = "solor-1njchy-risk-18-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_18_analysts__risk_18_read" {
  group      = aws_iam_group.risk_18_analysts.name
  policy_arn = aws_iam_policy.risk_18_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_18_analysts__base_readonly" {
  group      = aws_iam_group.risk_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_18_devs" {
  name = "solor-1njchy-risk-18-devs"
}

resource "aws_iam_group_policy_attachment" "risk_18_devs__risk_18_data_rw" {
  group      = aws_iam_group.risk_18_devs.name
  policy_arn = aws_iam_policy.risk_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_18_devs__risk_18_ops" {
  group      = aws_iam_group.risk_18_devs.name
  policy_arn = aws_iam_policy.risk_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_18_devs__base_readonly" {
  group      = aws_iam_group.risk_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_18_devs__self_service" {
  group      = aws_iam_group.risk_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_19_analysts" {
  name = "solor-1njchy-risk-19-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_19_analysts__risk_19_read" {
  group      = aws_iam_group.risk_19_analysts.name
  policy_arn = aws_iam_policy.risk_19_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_19_analysts__base_readonly" {
  group      = aws_iam_group.risk_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_19_devs" {
  name = "solor-1njchy-risk-19-devs"
}

resource "aws_iam_group_policy_attachment" "risk_19_devs__risk_19_data_rw" {
  group      = aws_iam_group.risk_19_devs.name
  policy_arn = aws_iam_policy.risk_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_19_devs__risk_19_ops" {
  group      = aws_iam_group.risk_19_devs.name
  policy_arn = aws_iam_policy.risk_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_19_devs__base_readonly" {
  group      = aws_iam_group.risk_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_19_devs__self_service" {
  group      = aws_iam_group.risk_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_2_analysts" {
  name = "solor-1njchy-risk-2-analysts"
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
  name = "solor-1njchy-risk-2-devs"
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

resource "aws_iam_group" "risk_20_analysts" {
  name = "solor-1njchy-risk-20-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_20_analysts__risk_20_read" {
  group      = aws_iam_group.risk_20_analysts.name
  policy_arn = aws_iam_policy.risk_20_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_20_analysts__base_readonly" {
  group      = aws_iam_group.risk_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_20_devs" {
  name = "solor-1njchy-risk-20-devs"
}

resource "aws_iam_group_policy_attachment" "risk_20_devs__risk_20_data_rw" {
  group      = aws_iam_group.risk_20_devs.name
  policy_arn = aws_iam_policy.risk_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_20_devs__risk_20_ops" {
  group      = aws_iam_group.risk_20_devs.name
  policy_arn = aws_iam_policy.risk_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_20_devs__base_readonly" {
  group      = aws_iam_group.risk_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_20_devs__self_service" {
  group      = aws_iam_group.risk_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_21_analysts" {
  name = "solor-1njchy-risk-21-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_21_analysts__risk_21_read" {
  group      = aws_iam_group.risk_21_analysts.name
  policy_arn = aws_iam_policy.risk_21_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_21_analysts__base_readonly" {
  group      = aws_iam_group.risk_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_21_devs" {
  name = "solor-1njchy-risk-21-devs"
}

resource "aws_iam_group_policy_attachment" "risk_21_devs__risk_21_data_rw" {
  group      = aws_iam_group.risk_21_devs.name
  policy_arn = aws_iam_policy.risk_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_21_devs__risk_21_ops" {
  group      = aws_iam_group.risk_21_devs.name
  policy_arn = aws_iam_policy.risk_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_21_devs__base_readonly" {
  group      = aws_iam_group.risk_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_21_devs__self_service" {
  group      = aws_iam_group.risk_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_22_analysts" {
  name = "solor-1njchy-risk-22-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_22_analysts__risk_22_read" {
  group      = aws_iam_group.risk_22_analysts.name
  policy_arn = aws_iam_policy.risk_22_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_22_analysts__base_readonly" {
  group      = aws_iam_group.risk_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_22_devs" {
  name = "solor-1njchy-risk-22-devs"
}

resource "aws_iam_group_policy_attachment" "risk_22_devs__risk_22_data_rw" {
  group      = aws_iam_group.risk_22_devs.name
  policy_arn = aws_iam_policy.risk_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_22_devs__risk_22_ops" {
  group      = aws_iam_group.risk_22_devs.name
  policy_arn = aws_iam_policy.risk_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_22_devs__base_readonly" {
  group      = aws_iam_group.risk_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_22_devs__self_service" {
  group      = aws_iam_group.risk_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_23_analysts" {
  name = "solor-1njchy-risk-23-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_23_analysts__risk_23_read" {
  group      = aws_iam_group.risk_23_analysts.name
  policy_arn = aws_iam_policy.risk_23_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_23_analysts__base_readonly" {
  group      = aws_iam_group.risk_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_23_devs" {
  name = "solor-1njchy-risk-23-devs"
}

resource "aws_iam_group_policy_attachment" "risk_23_devs__risk_23_data_rw" {
  group      = aws_iam_group.risk_23_devs.name
  policy_arn = aws_iam_policy.risk_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_23_devs__risk_23_ops" {
  group      = aws_iam_group.risk_23_devs.name
  policy_arn = aws_iam_policy.risk_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_23_devs__base_readonly" {
  group      = aws_iam_group.risk_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_23_devs__self_service" {
  group      = aws_iam_group.risk_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_24_analysts" {
  name = "solor-1njchy-risk-24-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_24_analysts__risk_24_read" {
  group      = aws_iam_group.risk_24_analysts.name
  policy_arn = aws_iam_policy.risk_24_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_24_analysts__base_readonly" {
  group      = aws_iam_group.risk_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_24_devs" {
  name = "solor-1njchy-risk-24-devs"
}

resource "aws_iam_group_policy_attachment" "risk_24_devs__risk_24_data_rw" {
  group      = aws_iam_group.risk_24_devs.name
  policy_arn = aws_iam_policy.risk_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_24_devs__risk_24_ops" {
  group      = aws_iam_group.risk_24_devs.name
  policy_arn = aws_iam_policy.risk_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_24_devs__base_readonly" {
  group      = aws_iam_group.risk_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_24_devs__self_service" {
  group      = aws_iam_group.risk_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_25_analysts" {
  name = "solor-1njchy-risk-25-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_25_analysts__risk_25_read" {
  group      = aws_iam_group.risk_25_analysts.name
  policy_arn = aws_iam_policy.risk_25_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_25_analysts__base_readonly" {
  group      = aws_iam_group.risk_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_25_devs" {
  name = "solor-1njchy-risk-25-devs"
}

resource "aws_iam_group_policy_attachment" "risk_25_devs__risk_25_data_rw" {
  group      = aws_iam_group.risk_25_devs.name
  policy_arn = aws_iam_policy.risk_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_25_devs__risk_25_ops" {
  group      = aws_iam_group.risk_25_devs.name
  policy_arn = aws_iam_policy.risk_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_25_devs__base_readonly" {
  group      = aws_iam_group.risk_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_25_devs__self_service" {
  group      = aws_iam_group.risk_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_26_analysts" {
  name = "solor-1njchy-risk-26-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_26_analysts__risk_26_read" {
  group      = aws_iam_group.risk_26_analysts.name
  policy_arn = aws_iam_policy.risk_26_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_26_analysts__base_readonly" {
  group      = aws_iam_group.risk_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_26_devs" {
  name = "solor-1njchy-risk-26-devs"
}

resource "aws_iam_group_policy_attachment" "risk_26_devs__risk_26_data_rw" {
  group      = aws_iam_group.risk_26_devs.name
  policy_arn = aws_iam_policy.risk_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_26_devs__risk_26_ops" {
  group      = aws_iam_group.risk_26_devs.name
  policy_arn = aws_iam_policy.risk_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_26_devs__base_readonly" {
  group      = aws_iam_group.risk_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_26_devs__self_service" {
  group      = aws_iam_group.risk_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_27_analysts" {
  name = "solor-1njchy-risk-27-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_27_analysts__risk_27_read" {
  group      = aws_iam_group.risk_27_analysts.name
  policy_arn = aws_iam_policy.risk_27_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_27_analysts__base_readonly" {
  group      = aws_iam_group.risk_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_27_devs" {
  name = "solor-1njchy-risk-27-devs"
}

resource "aws_iam_group_policy_attachment" "risk_27_devs__risk_27_data_rw" {
  group      = aws_iam_group.risk_27_devs.name
  policy_arn = aws_iam_policy.risk_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_27_devs__risk_27_ops" {
  group      = aws_iam_group.risk_27_devs.name
  policy_arn = aws_iam_policy.risk_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_27_devs__base_readonly" {
  group      = aws_iam_group.risk_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_27_devs__self_service" {
  group      = aws_iam_group.risk_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_28_analysts" {
  name = "solor-1njchy-risk-28-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_28_analysts__risk_28_read" {
  group      = aws_iam_group.risk_28_analysts.name
  policy_arn = aws_iam_policy.risk_28_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_28_analysts__base_readonly" {
  group      = aws_iam_group.risk_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_28_devs" {
  name = "solor-1njchy-risk-28-devs"
}

resource "aws_iam_group_policy_attachment" "risk_28_devs__risk_28_data_rw" {
  group      = aws_iam_group.risk_28_devs.name
  policy_arn = aws_iam_policy.risk_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_28_devs__risk_28_ops" {
  group      = aws_iam_group.risk_28_devs.name
  policy_arn = aws_iam_policy.risk_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_28_devs__base_readonly" {
  group      = aws_iam_group.risk_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_28_devs__self_service" {
  group      = aws_iam_group.risk_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_29_analysts" {
  name = "solor-1njchy-risk-29-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_29_analysts__risk_29_read" {
  group      = aws_iam_group.risk_29_analysts.name
  policy_arn = aws_iam_policy.risk_29_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_29_analysts__base_readonly" {
  group      = aws_iam_group.risk_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_29_devs" {
  name = "solor-1njchy-risk-29-devs"
}

resource "aws_iam_group_policy_attachment" "risk_29_devs__risk_29_data_rw" {
  group      = aws_iam_group.risk_29_devs.name
  policy_arn = aws_iam_policy.risk_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_29_devs__risk_29_ops" {
  group      = aws_iam_group.risk_29_devs.name
  policy_arn = aws_iam_policy.risk_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_29_devs__base_readonly" {
  group      = aws_iam_group.risk_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_29_devs__self_service" {
  group      = aws_iam_group.risk_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_3_analysts" {
  name = "solor-1njchy-risk-3-analysts"
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
  name = "solor-1njchy-risk-3-devs"
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

resource "aws_iam_group" "risk_30_analysts" {
  name = "solor-1njchy-risk-30-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_30_analysts__risk_30_read" {
  group      = aws_iam_group.risk_30_analysts.name
  policy_arn = aws_iam_policy.risk_30_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_30_analysts__base_readonly" {
  group      = aws_iam_group.risk_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_30_devs" {
  name = "solor-1njchy-risk-30-devs"
}

resource "aws_iam_group_policy_attachment" "risk_30_devs__risk_30_data_rw" {
  group      = aws_iam_group.risk_30_devs.name
  policy_arn = aws_iam_policy.risk_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_30_devs__risk_30_ops" {
  group      = aws_iam_group.risk_30_devs.name
  policy_arn = aws_iam_policy.risk_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_30_devs__base_readonly" {
  group      = aws_iam_group.risk_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_30_devs__self_service" {
  group      = aws_iam_group.risk_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_31_analysts" {
  name = "solor-1njchy-risk-31-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_31_analysts__risk_31_read" {
  group      = aws_iam_group.risk_31_analysts.name
  policy_arn = aws_iam_policy.risk_31_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_31_analysts__base_readonly" {
  group      = aws_iam_group.risk_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_31_devs" {
  name = "solor-1njchy-risk-31-devs"
}

resource "aws_iam_group_policy_attachment" "risk_31_devs__risk_31_data_rw" {
  group      = aws_iam_group.risk_31_devs.name
  policy_arn = aws_iam_policy.risk_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_31_devs__risk_31_ops" {
  group      = aws_iam_group.risk_31_devs.name
  policy_arn = aws_iam_policy.risk_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_31_devs__base_readonly" {
  group      = aws_iam_group.risk_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_31_devs__self_service" {
  group      = aws_iam_group.risk_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_32_analysts" {
  name = "solor-1njchy-risk-32-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_32_analysts__risk_32_read" {
  group      = aws_iam_group.risk_32_analysts.name
  policy_arn = aws_iam_policy.risk_32_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_32_analysts__base_readonly" {
  group      = aws_iam_group.risk_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_32_devs" {
  name = "solor-1njchy-risk-32-devs"
}

resource "aws_iam_group_policy_attachment" "risk_32_devs__risk_32_data_rw" {
  group      = aws_iam_group.risk_32_devs.name
  policy_arn = aws_iam_policy.risk_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_32_devs__risk_32_ops" {
  group      = aws_iam_group.risk_32_devs.name
  policy_arn = aws_iam_policy.risk_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_32_devs__base_readonly" {
  group      = aws_iam_group.risk_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_32_devs__self_service" {
  group      = aws_iam_group.risk_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_33_analysts" {
  name = "solor-1njchy-risk-33-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_33_analysts__risk_33_read" {
  group      = aws_iam_group.risk_33_analysts.name
  policy_arn = aws_iam_policy.risk_33_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_33_analysts__base_readonly" {
  group      = aws_iam_group.risk_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_33_devs" {
  name = "solor-1njchy-risk-33-devs"
}

resource "aws_iam_group_policy_attachment" "risk_33_devs__risk_33_data_rw" {
  group      = aws_iam_group.risk_33_devs.name
  policy_arn = aws_iam_policy.risk_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_33_devs__risk_33_ops" {
  group      = aws_iam_group.risk_33_devs.name
  policy_arn = aws_iam_policy.risk_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_33_devs__base_readonly" {
  group      = aws_iam_group.risk_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_33_devs__self_service" {
  group      = aws_iam_group.risk_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_34_analysts" {
  name = "solor-1njchy-risk-34-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_34_analysts__risk_34_read" {
  group      = aws_iam_group.risk_34_analysts.name
  policy_arn = aws_iam_policy.risk_34_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_34_analysts__base_readonly" {
  group      = aws_iam_group.risk_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_34_devs" {
  name = "solor-1njchy-risk-34-devs"
}

resource "aws_iam_group_policy_attachment" "risk_34_devs__risk_34_data_rw" {
  group      = aws_iam_group.risk_34_devs.name
  policy_arn = aws_iam_policy.risk_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_34_devs__risk_34_ops" {
  group      = aws_iam_group.risk_34_devs.name
  policy_arn = aws_iam_policy.risk_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_34_devs__base_readonly" {
  group      = aws_iam_group.risk_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_34_devs__self_service" {
  group      = aws_iam_group.risk_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_35_analysts" {
  name = "solor-1njchy-risk-35-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_35_analysts__risk_35_read" {
  group      = aws_iam_group.risk_35_analysts.name
  policy_arn = aws_iam_policy.risk_35_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_35_analysts__base_readonly" {
  group      = aws_iam_group.risk_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_35_devs" {
  name = "solor-1njchy-risk-35-devs"
}

resource "aws_iam_group_policy_attachment" "risk_35_devs__risk_35_data_rw" {
  group      = aws_iam_group.risk_35_devs.name
  policy_arn = aws_iam_policy.risk_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_35_devs__risk_35_ops" {
  group      = aws_iam_group.risk_35_devs.name
  policy_arn = aws_iam_policy.risk_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_35_devs__base_readonly" {
  group      = aws_iam_group.risk_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_35_devs__self_service" {
  group      = aws_iam_group.risk_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_36_analysts" {
  name = "solor-1njchy-risk-36-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_36_analysts__risk_36_read" {
  group      = aws_iam_group.risk_36_analysts.name
  policy_arn = aws_iam_policy.risk_36_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_36_analysts__base_readonly" {
  group      = aws_iam_group.risk_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_36_devs" {
  name = "solor-1njchy-risk-36-devs"
}

resource "aws_iam_group_policy_attachment" "risk_36_devs__risk_36_data_rw" {
  group      = aws_iam_group.risk_36_devs.name
  policy_arn = aws_iam_policy.risk_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_36_devs__risk_36_ops" {
  group      = aws_iam_group.risk_36_devs.name
  policy_arn = aws_iam_policy.risk_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_36_devs__base_readonly" {
  group      = aws_iam_group.risk_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_36_devs__self_service" {
  group      = aws_iam_group.risk_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_37_analysts" {
  name = "solor-1njchy-risk-37-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_37_analysts__risk_37_read" {
  group      = aws_iam_group.risk_37_analysts.name
  policy_arn = aws_iam_policy.risk_37_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_37_analysts__base_readonly" {
  group      = aws_iam_group.risk_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_37_devs" {
  name = "solor-1njchy-risk-37-devs"
}

resource "aws_iam_group_policy_attachment" "risk_37_devs__risk_37_data_rw" {
  group      = aws_iam_group.risk_37_devs.name
  policy_arn = aws_iam_policy.risk_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_37_devs__risk_37_ops" {
  group      = aws_iam_group.risk_37_devs.name
  policy_arn = aws_iam_policy.risk_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_37_devs__base_readonly" {
  group      = aws_iam_group.risk_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_37_devs__self_service" {
  group      = aws_iam_group.risk_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_38_analysts" {
  name = "solor-1njchy-risk-38-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_38_analysts__risk_38_read" {
  group      = aws_iam_group.risk_38_analysts.name
  policy_arn = aws_iam_policy.risk_38_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_38_analysts__base_readonly" {
  group      = aws_iam_group.risk_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_38_devs" {
  name = "solor-1njchy-risk-38-devs"
}

resource "aws_iam_group_policy_attachment" "risk_38_devs__risk_38_data_rw" {
  group      = aws_iam_group.risk_38_devs.name
  policy_arn = aws_iam_policy.risk_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_38_devs__risk_38_ops" {
  group      = aws_iam_group.risk_38_devs.name
  policy_arn = aws_iam_policy.risk_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_38_devs__base_readonly" {
  group      = aws_iam_group.risk_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_38_devs__self_service" {
  group      = aws_iam_group.risk_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_39_analysts" {
  name = "solor-1njchy-risk-39-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_39_analysts__risk_39_read" {
  group      = aws_iam_group.risk_39_analysts.name
  policy_arn = aws_iam_policy.risk_39_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_39_analysts__base_readonly" {
  group      = aws_iam_group.risk_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_39_devs" {
  name = "solor-1njchy-risk-39-devs"
}

resource "aws_iam_group_policy_attachment" "risk_39_devs__risk_39_data_rw" {
  group      = aws_iam_group.risk_39_devs.name
  policy_arn = aws_iam_policy.risk_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_39_devs__risk_39_ops" {
  group      = aws_iam_group.risk_39_devs.name
  policy_arn = aws_iam_policy.risk_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_39_devs__base_readonly" {
  group      = aws_iam_group.risk_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_39_devs__self_service" {
  group      = aws_iam_group.risk_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_4_analysts" {
  name = "solor-1njchy-risk-4-analysts"
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
  name = "solor-1njchy-risk-4-devs"
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

resource "aws_iam_group" "risk_40_analysts" {
  name = "solor-1njchy-risk-40-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_40_analysts__risk_40_read" {
  group      = aws_iam_group.risk_40_analysts.name
  policy_arn = aws_iam_policy.risk_40_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_40_analysts__base_readonly" {
  group      = aws_iam_group.risk_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_40_devs" {
  name = "solor-1njchy-risk-40-devs"
}

resource "aws_iam_group_policy_attachment" "risk_40_devs__risk_40_data_rw" {
  group      = aws_iam_group.risk_40_devs.name
  policy_arn = aws_iam_policy.risk_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_40_devs__risk_40_ops" {
  group      = aws_iam_group.risk_40_devs.name
  policy_arn = aws_iam_policy.risk_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_40_devs__base_readonly" {
  group      = aws_iam_group.risk_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_40_devs__self_service" {
  group      = aws_iam_group.risk_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_41_analysts" {
  name = "solor-1njchy-risk-41-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_41_analysts__risk_41_read" {
  group      = aws_iam_group.risk_41_analysts.name
  policy_arn = aws_iam_policy.risk_41_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_41_analysts__base_readonly" {
  group      = aws_iam_group.risk_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_41_devs" {
  name = "solor-1njchy-risk-41-devs"
}

resource "aws_iam_group_policy_attachment" "risk_41_devs__risk_41_data_rw" {
  group      = aws_iam_group.risk_41_devs.name
  policy_arn = aws_iam_policy.risk_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_41_devs__risk_41_ops" {
  group      = aws_iam_group.risk_41_devs.name
  policy_arn = aws_iam_policy.risk_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_41_devs__base_readonly" {
  group      = aws_iam_group.risk_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_41_devs__self_service" {
  group      = aws_iam_group.risk_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_42_analysts" {
  name = "solor-1njchy-risk-42-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_42_analysts__risk_42_read" {
  group      = aws_iam_group.risk_42_analysts.name
  policy_arn = aws_iam_policy.risk_42_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_42_analysts__base_readonly" {
  group      = aws_iam_group.risk_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_42_devs" {
  name = "solor-1njchy-risk-42-devs"
}

resource "aws_iam_group_policy_attachment" "risk_42_devs__risk_42_data_rw" {
  group      = aws_iam_group.risk_42_devs.name
  policy_arn = aws_iam_policy.risk_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_42_devs__risk_42_ops" {
  group      = aws_iam_group.risk_42_devs.name
  policy_arn = aws_iam_policy.risk_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_42_devs__base_readonly" {
  group      = aws_iam_group.risk_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_42_devs__self_service" {
  group      = aws_iam_group.risk_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_43_analysts" {
  name = "solor-1njchy-risk-43-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_43_analysts__risk_43_read" {
  group      = aws_iam_group.risk_43_analysts.name
  policy_arn = aws_iam_policy.risk_43_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_43_analysts__base_readonly" {
  group      = aws_iam_group.risk_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_43_devs" {
  name = "solor-1njchy-risk-43-devs"
}

resource "aws_iam_group_policy_attachment" "risk_43_devs__risk_43_data_rw" {
  group      = aws_iam_group.risk_43_devs.name
  policy_arn = aws_iam_policy.risk_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_43_devs__risk_43_ops" {
  group      = aws_iam_group.risk_43_devs.name
  policy_arn = aws_iam_policy.risk_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_43_devs__base_readonly" {
  group      = aws_iam_group.risk_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_43_devs__self_service" {
  group      = aws_iam_group.risk_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_44_analysts" {
  name = "solor-1njchy-risk-44-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_44_analysts__risk_44_read" {
  group      = aws_iam_group.risk_44_analysts.name
  policy_arn = aws_iam_policy.risk_44_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_44_analysts__base_readonly" {
  group      = aws_iam_group.risk_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_44_devs" {
  name = "solor-1njchy-risk-44-devs"
}

resource "aws_iam_group_policy_attachment" "risk_44_devs__risk_44_data_rw" {
  group      = aws_iam_group.risk_44_devs.name
  policy_arn = aws_iam_policy.risk_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_44_devs__risk_44_ops" {
  group      = aws_iam_group.risk_44_devs.name
  policy_arn = aws_iam_policy.risk_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_44_devs__base_readonly" {
  group      = aws_iam_group.risk_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_44_devs__self_service" {
  group      = aws_iam_group.risk_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_45_analysts" {
  name = "solor-1njchy-risk-45-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_45_analysts__risk_45_read" {
  group      = aws_iam_group.risk_45_analysts.name
  policy_arn = aws_iam_policy.risk_45_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_45_analysts__base_readonly" {
  group      = aws_iam_group.risk_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_45_devs" {
  name = "solor-1njchy-risk-45-devs"
}

resource "aws_iam_group_policy_attachment" "risk_45_devs__risk_45_data_rw" {
  group      = aws_iam_group.risk_45_devs.name
  policy_arn = aws_iam_policy.risk_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_45_devs__risk_45_ops" {
  group      = aws_iam_group.risk_45_devs.name
  policy_arn = aws_iam_policy.risk_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_45_devs__base_readonly" {
  group      = aws_iam_group.risk_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_45_devs__self_service" {
  group      = aws_iam_group.risk_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_46_analysts" {
  name = "solor-1njchy-risk-46-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_46_analysts__risk_46_read" {
  group      = aws_iam_group.risk_46_analysts.name
  policy_arn = aws_iam_policy.risk_46_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_46_analysts__base_readonly" {
  group      = aws_iam_group.risk_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_46_devs" {
  name = "solor-1njchy-risk-46-devs"
}

resource "aws_iam_group_policy_attachment" "risk_46_devs__risk_46_data_rw" {
  group      = aws_iam_group.risk_46_devs.name
  policy_arn = aws_iam_policy.risk_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_46_devs__risk_46_ops" {
  group      = aws_iam_group.risk_46_devs.name
  policy_arn = aws_iam_policy.risk_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_46_devs__base_readonly" {
  group      = aws_iam_group.risk_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_46_devs__self_service" {
  group      = aws_iam_group.risk_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_47_analysts" {
  name = "solor-1njchy-risk-47-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_47_analysts__risk_47_read" {
  group      = aws_iam_group.risk_47_analysts.name
  policy_arn = aws_iam_policy.risk_47_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_47_analysts__base_readonly" {
  group      = aws_iam_group.risk_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_47_devs" {
  name = "solor-1njchy-risk-47-devs"
}

resource "aws_iam_group_policy_attachment" "risk_47_devs__risk_47_data_rw" {
  group      = aws_iam_group.risk_47_devs.name
  policy_arn = aws_iam_policy.risk_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_47_devs__risk_47_ops" {
  group      = aws_iam_group.risk_47_devs.name
  policy_arn = aws_iam_policy.risk_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_47_devs__base_readonly" {
  group      = aws_iam_group.risk_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_47_devs__self_service" {
  group      = aws_iam_group.risk_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_48_analysts" {
  name = "solor-1njchy-risk-48-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_48_analysts__risk_48_read" {
  group      = aws_iam_group.risk_48_analysts.name
  policy_arn = aws_iam_policy.risk_48_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_48_analysts__base_readonly" {
  group      = aws_iam_group.risk_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_48_devs" {
  name = "solor-1njchy-risk-48-devs"
}

resource "aws_iam_group_policy_attachment" "risk_48_devs__risk_48_data_rw" {
  group      = aws_iam_group.risk_48_devs.name
  policy_arn = aws_iam_policy.risk_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_48_devs__risk_48_ops" {
  group      = aws_iam_group.risk_48_devs.name
  policy_arn = aws_iam_policy.risk_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_48_devs__base_readonly" {
  group      = aws_iam_group.risk_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_48_devs__self_service" {
  group      = aws_iam_group.risk_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_49_analysts" {
  name = "solor-1njchy-risk-49-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_49_analysts__risk_49_read" {
  group      = aws_iam_group.risk_49_analysts.name
  policy_arn = aws_iam_policy.risk_49_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_49_analysts__base_readonly" {
  group      = aws_iam_group.risk_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_49_devs" {
  name = "solor-1njchy-risk-49-devs"
}

resource "aws_iam_group_policy_attachment" "risk_49_devs__risk_49_data_rw" {
  group      = aws_iam_group.risk_49_devs.name
  policy_arn = aws_iam_policy.risk_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_49_devs__risk_49_ops" {
  group      = aws_iam_group.risk_49_devs.name
  policy_arn = aws_iam_policy.risk_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_49_devs__base_readonly" {
  group      = aws_iam_group.risk_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_49_devs__self_service" {
  group      = aws_iam_group.risk_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_5_analysts" {
  name = "solor-1njchy-risk-5-analysts"
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
  name = "solor-1njchy-risk-5-devs"
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

resource "aws_iam_group" "risk_50_analysts" {
  name = "solor-1njchy-risk-50-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_50_analysts__risk_50_read" {
  group      = aws_iam_group.risk_50_analysts.name
  policy_arn = aws_iam_policy.risk_50_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_50_analysts__base_readonly" {
  group      = aws_iam_group.risk_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_50_devs" {
  name = "solor-1njchy-risk-50-devs"
}

resource "aws_iam_group_policy_attachment" "risk_50_devs__risk_50_data_rw" {
  group      = aws_iam_group.risk_50_devs.name
  policy_arn = aws_iam_policy.risk_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_50_devs__risk_50_ops" {
  group      = aws_iam_group.risk_50_devs.name
  policy_arn = aws_iam_policy.risk_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_50_devs__base_readonly" {
  group      = aws_iam_group.risk_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_50_devs__self_service" {
  group      = aws_iam_group.risk_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_6_analysts" {
  name = "solor-1njchy-risk-6-analysts"
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
  name = "solor-1njchy-risk-6-devs"
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
  name = "solor-1njchy-risk-7-analysts"
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
  name = "solor-1njchy-risk-7-devs"
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

resource "aws_iam_group" "risk_8_analysts" {
  name = "solor-1njchy-risk-8-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_8_analysts__risk_8_read" {
  group      = aws_iam_group.risk_8_analysts.name
  policy_arn = aws_iam_policy.risk_8_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_8_analysts__base_readonly" {
  group      = aws_iam_group.risk_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_8_devs" {
  name = "solor-1njchy-risk-8-devs"
}

resource "aws_iam_group_policy_attachment" "risk_8_devs__risk_8_data_rw" {
  group      = aws_iam_group.risk_8_devs.name
  policy_arn = aws_iam_policy.risk_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_8_devs__risk_8_ops" {
  group      = aws_iam_group.risk_8_devs.name
  policy_arn = aws_iam_policy.risk_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_8_devs__base_readonly" {
  group      = aws_iam_group.risk_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_8_devs__self_service" {
  group      = aws_iam_group.risk_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_9_analysts" {
  name = "solor-1njchy-risk-9-analysts"
}

resource "aws_iam_group_policy_attachment" "risk_9_analysts__risk_9_read" {
  group      = aws_iam_group.risk_9_analysts.name
  policy_arn = aws_iam_policy.risk_9_read.arn
}

resource "aws_iam_group_policy_attachment" "risk_9_analysts__base_readonly" {
  group      = aws_iam_group.risk_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "risk_9_devs" {
  name = "solor-1njchy-risk-9-devs"
}

resource "aws_iam_group_policy_attachment" "risk_9_devs__risk_9_data_rw" {
  group      = aws_iam_group.risk_9_devs.name
  policy_arn = aws_iam_policy.risk_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "risk_9_devs__risk_9_ops" {
  group      = aws_iam_group.risk_9_devs.name
  policy_arn = aws_iam_policy.risk_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "risk_9_devs__base_readonly" {
  group      = aws_iam_group.risk_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "risk_9_devs__self_service" {
  group      = aws_iam_group.risk_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "risk_analysts" {
  name = "solor-1njchy-risk-analysts"
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
  name = "solor-1njchy-risk-devs"
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

resource "aws_iam_group" "trading_10_analysts" {
  name = "solor-1njchy-trading-10-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_10_analysts__trading_10_read" {
  group      = aws_iam_group.trading_10_analysts.name
  policy_arn = aws_iam_policy.trading_10_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_10_analysts__base_readonly" {
  group      = aws_iam_group.trading_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_10_devs" {
  name = "solor-1njchy-trading-10-devs"
}

resource "aws_iam_group_policy_attachment" "trading_10_devs__trading_10_data_rw" {
  group      = aws_iam_group.trading_10_devs.name
  policy_arn = aws_iam_policy.trading_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_10_devs__trading_10_ops" {
  group      = aws_iam_group.trading_10_devs.name
  policy_arn = aws_iam_policy.trading_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_10_devs__base_readonly" {
  group      = aws_iam_group.trading_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_10_devs__self_service" {
  group      = aws_iam_group.trading_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_11_analysts" {
  name = "solor-1njchy-trading-11-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_11_analysts__trading_11_read" {
  group      = aws_iam_group.trading_11_analysts.name
  policy_arn = aws_iam_policy.trading_11_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_11_analysts__base_readonly" {
  group      = aws_iam_group.trading_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_11_devs" {
  name = "solor-1njchy-trading-11-devs"
}

resource "aws_iam_group_policy_attachment" "trading_11_devs__trading_11_data_rw" {
  group      = aws_iam_group.trading_11_devs.name
  policy_arn = aws_iam_policy.trading_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_11_devs__trading_11_ops" {
  group      = aws_iam_group.trading_11_devs.name
  policy_arn = aws_iam_policy.trading_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_11_devs__base_readonly" {
  group      = aws_iam_group.trading_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_11_devs__self_service" {
  group      = aws_iam_group.trading_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_12_analysts" {
  name = "solor-1njchy-trading-12-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_12_analysts__trading_12_read" {
  group      = aws_iam_group.trading_12_analysts.name
  policy_arn = aws_iam_policy.trading_12_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_12_analysts__base_readonly" {
  group      = aws_iam_group.trading_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_12_devs" {
  name = "solor-1njchy-trading-12-devs"
}

resource "aws_iam_group_policy_attachment" "trading_12_devs__trading_12_data_rw" {
  group      = aws_iam_group.trading_12_devs.name
  policy_arn = aws_iam_policy.trading_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_12_devs__trading_12_ops" {
  group      = aws_iam_group.trading_12_devs.name
  policy_arn = aws_iam_policy.trading_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_12_devs__base_readonly" {
  group      = aws_iam_group.trading_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_12_devs__self_service" {
  group      = aws_iam_group.trading_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_13_analysts" {
  name = "solor-1njchy-trading-13-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_13_analysts__trading_13_read" {
  group      = aws_iam_group.trading_13_analysts.name
  policy_arn = aws_iam_policy.trading_13_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_13_analysts__base_readonly" {
  group      = aws_iam_group.trading_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_13_devs" {
  name = "solor-1njchy-trading-13-devs"
}

resource "aws_iam_group_policy_attachment" "trading_13_devs__trading_13_data_rw" {
  group      = aws_iam_group.trading_13_devs.name
  policy_arn = aws_iam_policy.trading_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_13_devs__trading_13_ops" {
  group      = aws_iam_group.trading_13_devs.name
  policy_arn = aws_iam_policy.trading_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_13_devs__base_readonly" {
  group      = aws_iam_group.trading_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_13_devs__self_service" {
  group      = aws_iam_group.trading_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_14_analysts" {
  name = "solor-1njchy-trading-14-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_14_analysts__trading_14_read" {
  group      = aws_iam_group.trading_14_analysts.name
  policy_arn = aws_iam_policy.trading_14_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_14_analysts__base_readonly" {
  group      = aws_iam_group.trading_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_14_devs" {
  name = "solor-1njchy-trading-14-devs"
}

resource "aws_iam_group_policy_attachment" "trading_14_devs__trading_14_data_rw" {
  group      = aws_iam_group.trading_14_devs.name
  policy_arn = aws_iam_policy.trading_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_14_devs__trading_14_ops" {
  group      = aws_iam_group.trading_14_devs.name
  policy_arn = aws_iam_policy.trading_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_14_devs__base_readonly" {
  group      = aws_iam_group.trading_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_14_devs__self_service" {
  group      = aws_iam_group.trading_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_15_analysts" {
  name = "solor-1njchy-trading-15-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_15_analysts__trading_15_read" {
  group      = aws_iam_group.trading_15_analysts.name
  policy_arn = aws_iam_policy.trading_15_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_15_analysts__base_readonly" {
  group      = aws_iam_group.trading_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_15_devs" {
  name = "solor-1njchy-trading-15-devs"
}

resource "aws_iam_group_policy_attachment" "trading_15_devs__trading_15_data_rw" {
  group      = aws_iam_group.trading_15_devs.name
  policy_arn = aws_iam_policy.trading_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_15_devs__trading_15_ops" {
  group      = aws_iam_group.trading_15_devs.name
  policy_arn = aws_iam_policy.trading_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_15_devs__base_readonly" {
  group      = aws_iam_group.trading_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_15_devs__self_service" {
  group      = aws_iam_group.trading_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_16_analysts" {
  name = "solor-1njchy-trading-16-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_16_analysts__trading_16_read" {
  group      = aws_iam_group.trading_16_analysts.name
  policy_arn = aws_iam_policy.trading_16_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_16_analysts__base_readonly" {
  group      = aws_iam_group.trading_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_16_devs" {
  name = "solor-1njchy-trading-16-devs"
}

resource "aws_iam_group_policy_attachment" "trading_16_devs__trading_16_data_rw" {
  group      = aws_iam_group.trading_16_devs.name
  policy_arn = aws_iam_policy.trading_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_16_devs__trading_16_ops" {
  group      = aws_iam_group.trading_16_devs.name
  policy_arn = aws_iam_policy.trading_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_16_devs__base_readonly" {
  group      = aws_iam_group.trading_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_16_devs__self_service" {
  group      = aws_iam_group.trading_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_17_analysts" {
  name = "solor-1njchy-trading-17-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_17_analysts__trading_17_read" {
  group      = aws_iam_group.trading_17_analysts.name
  policy_arn = aws_iam_policy.trading_17_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_17_analysts__base_readonly" {
  group      = aws_iam_group.trading_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_17_devs" {
  name = "solor-1njchy-trading-17-devs"
}

resource "aws_iam_group_policy_attachment" "trading_17_devs__trading_17_data_rw" {
  group      = aws_iam_group.trading_17_devs.name
  policy_arn = aws_iam_policy.trading_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_17_devs__trading_17_ops" {
  group      = aws_iam_group.trading_17_devs.name
  policy_arn = aws_iam_policy.trading_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_17_devs__base_readonly" {
  group      = aws_iam_group.trading_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_17_devs__self_service" {
  group      = aws_iam_group.trading_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_18_analysts" {
  name = "solor-1njchy-trading-18-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_18_analysts__trading_18_read" {
  group      = aws_iam_group.trading_18_analysts.name
  policy_arn = aws_iam_policy.trading_18_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_18_analysts__base_readonly" {
  group      = aws_iam_group.trading_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_18_devs" {
  name = "solor-1njchy-trading-18-devs"
}

resource "aws_iam_group_policy_attachment" "trading_18_devs__trading_18_data_rw" {
  group      = aws_iam_group.trading_18_devs.name
  policy_arn = aws_iam_policy.trading_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_18_devs__trading_18_ops" {
  group      = aws_iam_group.trading_18_devs.name
  policy_arn = aws_iam_policy.trading_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_18_devs__base_readonly" {
  group      = aws_iam_group.trading_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_18_devs__self_service" {
  group      = aws_iam_group.trading_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_19_analysts" {
  name = "solor-1njchy-trading-19-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_19_analysts__trading_19_read" {
  group      = aws_iam_group.trading_19_analysts.name
  policy_arn = aws_iam_policy.trading_19_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_19_analysts__base_readonly" {
  group      = aws_iam_group.trading_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_19_devs" {
  name = "solor-1njchy-trading-19-devs"
}

resource "aws_iam_group_policy_attachment" "trading_19_devs__trading_19_data_rw" {
  group      = aws_iam_group.trading_19_devs.name
  policy_arn = aws_iam_policy.trading_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_19_devs__trading_19_ops" {
  group      = aws_iam_group.trading_19_devs.name
  policy_arn = aws_iam_policy.trading_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_19_devs__base_readonly" {
  group      = aws_iam_group.trading_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_19_devs__self_service" {
  group      = aws_iam_group.trading_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_2_analysts" {
  name = "solor-1njchy-trading-2-analysts"
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
  name = "solor-1njchy-trading-2-devs"
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

resource "aws_iam_group" "trading_20_analysts" {
  name = "solor-1njchy-trading-20-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_20_analysts__trading_20_read" {
  group      = aws_iam_group.trading_20_analysts.name
  policy_arn = aws_iam_policy.trading_20_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_20_analysts__base_readonly" {
  group      = aws_iam_group.trading_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_20_devs" {
  name = "solor-1njchy-trading-20-devs"
}

resource "aws_iam_group_policy_attachment" "trading_20_devs__trading_20_data_rw" {
  group      = aws_iam_group.trading_20_devs.name
  policy_arn = aws_iam_policy.trading_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_20_devs__trading_20_ops" {
  group      = aws_iam_group.trading_20_devs.name
  policy_arn = aws_iam_policy.trading_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_20_devs__base_readonly" {
  group      = aws_iam_group.trading_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_20_devs__self_service" {
  group      = aws_iam_group.trading_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_21_analysts" {
  name = "solor-1njchy-trading-21-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_21_analysts__trading_21_read" {
  group      = aws_iam_group.trading_21_analysts.name
  policy_arn = aws_iam_policy.trading_21_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_21_analysts__base_readonly" {
  group      = aws_iam_group.trading_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_21_devs" {
  name = "solor-1njchy-trading-21-devs"
}

resource "aws_iam_group_policy_attachment" "trading_21_devs__trading_21_data_rw" {
  group      = aws_iam_group.trading_21_devs.name
  policy_arn = aws_iam_policy.trading_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_21_devs__trading_21_ops" {
  group      = aws_iam_group.trading_21_devs.name
  policy_arn = aws_iam_policy.trading_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_21_devs__base_readonly" {
  group      = aws_iam_group.trading_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_21_devs__self_service" {
  group      = aws_iam_group.trading_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_22_analysts" {
  name = "solor-1njchy-trading-22-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_22_analysts__trading_22_read" {
  group      = aws_iam_group.trading_22_analysts.name
  policy_arn = aws_iam_policy.trading_22_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_22_analysts__base_readonly" {
  group      = aws_iam_group.trading_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_22_devs" {
  name = "solor-1njchy-trading-22-devs"
}

resource "aws_iam_group_policy_attachment" "trading_22_devs__trading_22_data_rw" {
  group      = aws_iam_group.trading_22_devs.name
  policy_arn = aws_iam_policy.trading_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_22_devs__trading_22_ops" {
  group      = aws_iam_group.trading_22_devs.name
  policy_arn = aws_iam_policy.trading_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_22_devs__base_readonly" {
  group      = aws_iam_group.trading_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_22_devs__self_service" {
  group      = aws_iam_group.trading_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_23_analysts" {
  name = "solor-1njchy-trading-23-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_23_analysts__trading_23_read" {
  group      = aws_iam_group.trading_23_analysts.name
  policy_arn = aws_iam_policy.trading_23_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_23_analysts__base_readonly" {
  group      = aws_iam_group.trading_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_23_devs" {
  name = "solor-1njchy-trading-23-devs"
}

resource "aws_iam_group_policy_attachment" "trading_23_devs__trading_23_data_rw" {
  group      = aws_iam_group.trading_23_devs.name
  policy_arn = aws_iam_policy.trading_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_23_devs__trading_23_ops" {
  group      = aws_iam_group.trading_23_devs.name
  policy_arn = aws_iam_policy.trading_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_23_devs__base_readonly" {
  group      = aws_iam_group.trading_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_23_devs__self_service" {
  group      = aws_iam_group.trading_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_24_analysts" {
  name = "solor-1njchy-trading-24-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_24_analysts__trading_24_read" {
  group      = aws_iam_group.trading_24_analysts.name
  policy_arn = aws_iam_policy.trading_24_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_24_analysts__base_readonly" {
  group      = aws_iam_group.trading_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_24_devs" {
  name = "solor-1njchy-trading-24-devs"
}

resource "aws_iam_group_policy_attachment" "trading_24_devs__trading_24_data_rw" {
  group      = aws_iam_group.trading_24_devs.name
  policy_arn = aws_iam_policy.trading_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_24_devs__trading_24_ops" {
  group      = aws_iam_group.trading_24_devs.name
  policy_arn = aws_iam_policy.trading_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_24_devs__base_readonly" {
  group      = aws_iam_group.trading_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_24_devs__self_service" {
  group      = aws_iam_group.trading_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_25_analysts" {
  name = "solor-1njchy-trading-25-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_25_analysts__trading_25_read" {
  group      = aws_iam_group.trading_25_analysts.name
  policy_arn = aws_iam_policy.trading_25_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_25_analysts__base_readonly" {
  group      = aws_iam_group.trading_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_25_devs" {
  name = "solor-1njchy-trading-25-devs"
}

resource "aws_iam_group_policy_attachment" "trading_25_devs__trading_25_data_rw" {
  group      = aws_iam_group.trading_25_devs.name
  policy_arn = aws_iam_policy.trading_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_25_devs__trading_25_ops" {
  group      = aws_iam_group.trading_25_devs.name
  policy_arn = aws_iam_policy.trading_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_25_devs__base_readonly" {
  group      = aws_iam_group.trading_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_25_devs__self_service" {
  group      = aws_iam_group.trading_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_26_analysts" {
  name = "solor-1njchy-trading-26-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_26_analysts__trading_26_read" {
  group      = aws_iam_group.trading_26_analysts.name
  policy_arn = aws_iam_policy.trading_26_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_26_analysts__base_readonly" {
  group      = aws_iam_group.trading_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_26_devs" {
  name = "solor-1njchy-trading-26-devs"
}

resource "aws_iam_group_policy_attachment" "trading_26_devs__trading_26_data_rw" {
  group      = aws_iam_group.trading_26_devs.name
  policy_arn = aws_iam_policy.trading_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_26_devs__trading_26_ops" {
  group      = aws_iam_group.trading_26_devs.name
  policy_arn = aws_iam_policy.trading_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_26_devs__base_readonly" {
  group      = aws_iam_group.trading_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_26_devs__self_service" {
  group      = aws_iam_group.trading_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_27_analysts" {
  name = "solor-1njchy-trading-27-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_27_analysts__trading_27_read" {
  group      = aws_iam_group.trading_27_analysts.name
  policy_arn = aws_iam_policy.trading_27_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_27_analysts__base_readonly" {
  group      = aws_iam_group.trading_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_27_devs" {
  name = "solor-1njchy-trading-27-devs"
}

resource "aws_iam_group_policy_attachment" "trading_27_devs__trading_27_data_rw" {
  group      = aws_iam_group.trading_27_devs.name
  policy_arn = aws_iam_policy.trading_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_27_devs__trading_27_ops" {
  group      = aws_iam_group.trading_27_devs.name
  policy_arn = aws_iam_policy.trading_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_27_devs__base_readonly" {
  group      = aws_iam_group.trading_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_27_devs__self_service" {
  group      = aws_iam_group.trading_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_28_analysts" {
  name = "solor-1njchy-trading-28-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_28_analysts__trading_28_read" {
  group      = aws_iam_group.trading_28_analysts.name
  policy_arn = aws_iam_policy.trading_28_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_28_analysts__base_readonly" {
  group      = aws_iam_group.trading_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_28_devs" {
  name = "solor-1njchy-trading-28-devs"
}

resource "aws_iam_group_policy_attachment" "trading_28_devs__trading_28_data_rw" {
  group      = aws_iam_group.trading_28_devs.name
  policy_arn = aws_iam_policy.trading_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_28_devs__trading_28_ops" {
  group      = aws_iam_group.trading_28_devs.name
  policy_arn = aws_iam_policy.trading_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_28_devs__base_readonly" {
  group      = aws_iam_group.trading_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_28_devs__self_service" {
  group      = aws_iam_group.trading_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_29_analysts" {
  name = "solor-1njchy-trading-29-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_29_analysts__trading_29_read" {
  group      = aws_iam_group.trading_29_analysts.name
  policy_arn = aws_iam_policy.trading_29_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_29_analysts__base_readonly" {
  group      = aws_iam_group.trading_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_29_devs" {
  name = "solor-1njchy-trading-29-devs"
}

resource "aws_iam_group_policy_attachment" "trading_29_devs__trading_29_data_rw" {
  group      = aws_iam_group.trading_29_devs.name
  policy_arn = aws_iam_policy.trading_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_29_devs__trading_29_ops" {
  group      = aws_iam_group.trading_29_devs.name
  policy_arn = aws_iam_policy.trading_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_29_devs__base_readonly" {
  group      = aws_iam_group.trading_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_29_devs__self_service" {
  group      = aws_iam_group.trading_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_3_analysts" {
  name = "solor-1njchy-trading-3-analysts"
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
  name = "solor-1njchy-trading-3-devs"
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

resource "aws_iam_group" "trading_30_analysts" {
  name = "solor-1njchy-trading-30-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_30_analysts__trading_30_read" {
  group      = aws_iam_group.trading_30_analysts.name
  policy_arn = aws_iam_policy.trading_30_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_30_analysts__base_readonly" {
  group      = aws_iam_group.trading_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_30_devs" {
  name = "solor-1njchy-trading-30-devs"
}

resource "aws_iam_group_policy_attachment" "trading_30_devs__trading_30_data_rw" {
  group      = aws_iam_group.trading_30_devs.name
  policy_arn = aws_iam_policy.trading_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_30_devs__trading_30_ops" {
  group      = aws_iam_group.trading_30_devs.name
  policy_arn = aws_iam_policy.trading_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_30_devs__base_readonly" {
  group      = aws_iam_group.trading_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_30_devs__self_service" {
  group      = aws_iam_group.trading_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_31_analysts" {
  name = "solor-1njchy-trading-31-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_31_analysts__trading_31_read" {
  group      = aws_iam_group.trading_31_analysts.name
  policy_arn = aws_iam_policy.trading_31_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_31_analysts__base_readonly" {
  group      = aws_iam_group.trading_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_31_devs" {
  name = "solor-1njchy-trading-31-devs"
}

resource "aws_iam_group_policy_attachment" "trading_31_devs__trading_31_data_rw" {
  group      = aws_iam_group.trading_31_devs.name
  policy_arn = aws_iam_policy.trading_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_31_devs__trading_31_ops" {
  group      = aws_iam_group.trading_31_devs.name
  policy_arn = aws_iam_policy.trading_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_31_devs__base_readonly" {
  group      = aws_iam_group.trading_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_31_devs__self_service" {
  group      = aws_iam_group.trading_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_32_analysts" {
  name = "solor-1njchy-trading-32-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_32_analysts__trading_32_read" {
  group      = aws_iam_group.trading_32_analysts.name
  policy_arn = aws_iam_policy.trading_32_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_32_analysts__base_readonly" {
  group      = aws_iam_group.trading_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_32_devs" {
  name = "solor-1njchy-trading-32-devs"
}

resource "aws_iam_group_policy_attachment" "trading_32_devs__trading_32_data_rw" {
  group      = aws_iam_group.trading_32_devs.name
  policy_arn = aws_iam_policy.trading_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_32_devs__trading_32_ops" {
  group      = aws_iam_group.trading_32_devs.name
  policy_arn = aws_iam_policy.trading_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_32_devs__base_readonly" {
  group      = aws_iam_group.trading_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_32_devs__self_service" {
  group      = aws_iam_group.trading_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_33_analysts" {
  name = "solor-1njchy-trading-33-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_33_analysts__trading_33_read" {
  group      = aws_iam_group.trading_33_analysts.name
  policy_arn = aws_iam_policy.trading_33_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_33_analysts__base_readonly" {
  group      = aws_iam_group.trading_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_33_devs" {
  name = "solor-1njchy-trading-33-devs"
}

resource "aws_iam_group_policy_attachment" "trading_33_devs__trading_33_data_rw" {
  group      = aws_iam_group.trading_33_devs.name
  policy_arn = aws_iam_policy.trading_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_33_devs__trading_33_ops" {
  group      = aws_iam_group.trading_33_devs.name
  policy_arn = aws_iam_policy.trading_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_33_devs__base_readonly" {
  group      = aws_iam_group.trading_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_33_devs__self_service" {
  group      = aws_iam_group.trading_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_34_analysts" {
  name = "solor-1njchy-trading-34-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_34_analysts__trading_34_read" {
  group      = aws_iam_group.trading_34_analysts.name
  policy_arn = aws_iam_policy.trading_34_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_34_analysts__base_readonly" {
  group      = aws_iam_group.trading_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_34_devs" {
  name = "solor-1njchy-trading-34-devs"
}

resource "aws_iam_group_policy_attachment" "trading_34_devs__trading_34_data_rw" {
  group      = aws_iam_group.trading_34_devs.name
  policy_arn = aws_iam_policy.trading_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_34_devs__trading_34_ops" {
  group      = aws_iam_group.trading_34_devs.name
  policy_arn = aws_iam_policy.trading_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_34_devs__base_readonly" {
  group      = aws_iam_group.trading_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_34_devs__self_service" {
  group      = aws_iam_group.trading_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_35_analysts" {
  name = "solor-1njchy-trading-35-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_35_analysts__trading_35_read" {
  group      = aws_iam_group.trading_35_analysts.name
  policy_arn = aws_iam_policy.trading_35_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_35_analysts__base_readonly" {
  group      = aws_iam_group.trading_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_35_devs" {
  name = "solor-1njchy-trading-35-devs"
}

resource "aws_iam_group_policy_attachment" "trading_35_devs__trading_35_data_rw" {
  group      = aws_iam_group.trading_35_devs.name
  policy_arn = aws_iam_policy.trading_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_35_devs__trading_35_ops" {
  group      = aws_iam_group.trading_35_devs.name
  policy_arn = aws_iam_policy.trading_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_35_devs__base_readonly" {
  group      = aws_iam_group.trading_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_35_devs__self_service" {
  group      = aws_iam_group.trading_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_36_analysts" {
  name = "solor-1njchy-trading-36-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_36_analysts__trading_36_read" {
  group      = aws_iam_group.trading_36_analysts.name
  policy_arn = aws_iam_policy.trading_36_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_36_analysts__base_readonly" {
  group      = aws_iam_group.trading_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_36_devs" {
  name = "solor-1njchy-trading-36-devs"
}

resource "aws_iam_group_policy_attachment" "trading_36_devs__trading_36_data_rw" {
  group      = aws_iam_group.trading_36_devs.name
  policy_arn = aws_iam_policy.trading_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_36_devs__trading_36_ops" {
  group      = aws_iam_group.trading_36_devs.name
  policy_arn = aws_iam_policy.trading_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_36_devs__base_readonly" {
  group      = aws_iam_group.trading_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_36_devs__self_service" {
  group      = aws_iam_group.trading_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_37_analysts" {
  name = "solor-1njchy-trading-37-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_37_analysts__trading_37_read" {
  group      = aws_iam_group.trading_37_analysts.name
  policy_arn = aws_iam_policy.trading_37_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_37_analysts__base_readonly" {
  group      = aws_iam_group.trading_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_37_devs" {
  name = "solor-1njchy-trading-37-devs"
}

resource "aws_iam_group_policy_attachment" "trading_37_devs__trading_37_data_rw" {
  group      = aws_iam_group.trading_37_devs.name
  policy_arn = aws_iam_policy.trading_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_37_devs__trading_37_ops" {
  group      = aws_iam_group.trading_37_devs.name
  policy_arn = aws_iam_policy.trading_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_37_devs__base_readonly" {
  group      = aws_iam_group.trading_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_37_devs__self_service" {
  group      = aws_iam_group.trading_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_38_analysts" {
  name = "solor-1njchy-trading-38-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_38_analysts__trading_38_read" {
  group      = aws_iam_group.trading_38_analysts.name
  policy_arn = aws_iam_policy.trading_38_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_38_analysts__base_readonly" {
  group      = aws_iam_group.trading_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_38_devs" {
  name = "solor-1njchy-trading-38-devs"
}

resource "aws_iam_group_policy_attachment" "trading_38_devs__trading_38_data_rw" {
  group      = aws_iam_group.trading_38_devs.name
  policy_arn = aws_iam_policy.trading_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_38_devs__trading_38_ops" {
  group      = aws_iam_group.trading_38_devs.name
  policy_arn = aws_iam_policy.trading_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_38_devs__base_readonly" {
  group      = aws_iam_group.trading_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_38_devs__self_service" {
  group      = aws_iam_group.trading_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_39_analysts" {
  name = "solor-1njchy-trading-39-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_39_analysts__trading_39_read" {
  group      = aws_iam_group.trading_39_analysts.name
  policy_arn = aws_iam_policy.trading_39_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_39_analysts__base_readonly" {
  group      = aws_iam_group.trading_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_39_devs" {
  name = "solor-1njchy-trading-39-devs"
}

resource "aws_iam_group_policy_attachment" "trading_39_devs__trading_39_data_rw" {
  group      = aws_iam_group.trading_39_devs.name
  policy_arn = aws_iam_policy.trading_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_39_devs__trading_39_ops" {
  group      = aws_iam_group.trading_39_devs.name
  policy_arn = aws_iam_policy.trading_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_39_devs__base_readonly" {
  group      = aws_iam_group.trading_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_39_devs__self_service" {
  group      = aws_iam_group.trading_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_4_analysts" {
  name = "solor-1njchy-trading-4-analysts"
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
  name = "solor-1njchy-trading-4-devs"
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

resource "aws_iam_group" "trading_40_analysts" {
  name = "solor-1njchy-trading-40-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_40_analysts__trading_40_read" {
  group      = aws_iam_group.trading_40_analysts.name
  policy_arn = aws_iam_policy.trading_40_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_40_analysts__base_readonly" {
  group      = aws_iam_group.trading_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_40_devs" {
  name = "solor-1njchy-trading-40-devs"
}

resource "aws_iam_group_policy_attachment" "trading_40_devs__trading_40_data_rw" {
  group      = aws_iam_group.trading_40_devs.name
  policy_arn = aws_iam_policy.trading_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_40_devs__trading_40_ops" {
  group      = aws_iam_group.trading_40_devs.name
  policy_arn = aws_iam_policy.trading_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_40_devs__base_readonly" {
  group      = aws_iam_group.trading_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_40_devs__self_service" {
  group      = aws_iam_group.trading_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_41_analysts" {
  name = "solor-1njchy-trading-41-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_41_analysts__trading_41_read" {
  group      = aws_iam_group.trading_41_analysts.name
  policy_arn = aws_iam_policy.trading_41_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_41_analysts__base_readonly" {
  group      = aws_iam_group.trading_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_41_devs" {
  name = "solor-1njchy-trading-41-devs"
}

resource "aws_iam_group_policy_attachment" "trading_41_devs__trading_41_data_rw" {
  group      = aws_iam_group.trading_41_devs.name
  policy_arn = aws_iam_policy.trading_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_41_devs__trading_41_ops" {
  group      = aws_iam_group.trading_41_devs.name
  policy_arn = aws_iam_policy.trading_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_41_devs__base_readonly" {
  group      = aws_iam_group.trading_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_41_devs__self_service" {
  group      = aws_iam_group.trading_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_42_analysts" {
  name = "solor-1njchy-trading-42-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_42_analysts__trading_42_read" {
  group      = aws_iam_group.trading_42_analysts.name
  policy_arn = aws_iam_policy.trading_42_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_42_analysts__base_readonly" {
  group      = aws_iam_group.trading_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_42_devs" {
  name = "solor-1njchy-trading-42-devs"
}

resource "aws_iam_group_policy_attachment" "trading_42_devs__trading_42_data_rw" {
  group      = aws_iam_group.trading_42_devs.name
  policy_arn = aws_iam_policy.trading_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_42_devs__trading_42_ops" {
  group      = aws_iam_group.trading_42_devs.name
  policy_arn = aws_iam_policy.trading_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_42_devs__base_readonly" {
  group      = aws_iam_group.trading_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_42_devs__self_service" {
  group      = aws_iam_group.trading_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_43_analysts" {
  name = "solor-1njchy-trading-43-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_43_analysts__trading_43_read" {
  group      = aws_iam_group.trading_43_analysts.name
  policy_arn = aws_iam_policy.trading_43_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_43_analysts__base_readonly" {
  group      = aws_iam_group.trading_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_43_devs" {
  name = "solor-1njchy-trading-43-devs"
}

resource "aws_iam_group_policy_attachment" "trading_43_devs__trading_43_data_rw" {
  group      = aws_iam_group.trading_43_devs.name
  policy_arn = aws_iam_policy.trading_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_43_devs__trading_43_ops" {
  group      = aws_iam_group.trading_43_devs.name
  policy_arn = aws_iam_policy.trading_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_43_devs__base_readonly" {
  group      = aws_iam_group.trading_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_43_devs__self_service" {
  group      = aws_iam_group.trading_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_44_analysts" {
  name = "solor-1njchy-trading-44-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_44_analysts__trading_44_read" {
  group      = aws_iam_group.trading_44_analysts.name
  policy_arn = aws_iam_policy.trading_44_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_44_analysts__base_readonly" {
  group      = aws_iam_group.trading_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_44_devs" {
  name = "solor-1njchy-trading-44-devs"
}

resource "aws_iam_group_policy_attachment" "trading_44_devs__trading_44_data_rw" {
  group      = aws_iam_group.trading_44_devs.name
  policy_arn = aws_iam_policy.trading_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_44_devs__trading_44_ops" {
  group      = aws_iam_group.trading_44_devs.name
  policy_arn = aws_iam_policy.trading_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_44_devs__base_readonly" {
  group      = aws_iam_group.trading_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_44_devs__self_service" {
  group      = aws_iam_group.trading_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_45_analysts" {
  name = "solor-1njchy-trading-45-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_45_analysts__trading_45_read" {
  group      = aws_iam_group.trading_45_analysts.name
  policy_arn = aws_iam_policy.trading_45_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_45_analysts__base_readonly" {
  group      = aws_iam_group.trading_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_45_devs" {
  name = "solor-1njchy-trading-45-devs"
}

resource "aws_iam_group_policy_attachment" "trading_45_devs__trading_45_data_rw" {
  group      = aws_iam_group.trading_45_devs.name
  policy_arn = aws_iam_policy.trading_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_45_devs__trading_45_ops" {
  group      = aws_iam_group.trading_45_devs.name
  policy_arn = aws_iam_policy.trading_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_45_devs__base_readonly" {
  group      = aws_iam_group.trading_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_45_devs__self_service" {
  group      = aws_iam_group.trading_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_46_analysts" {
  name = "solor-1njchy-trading-46-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_46_analysts__trading_46_read" {
  group      = aws_iam_group.trading_46_analysts.name
  policy_arn = aws_iam_policy.trading_46_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_46_analysts__base_readonly" {
  group      = aws_iam_group.trading_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_46_devs" {
  name = "solor-1njchy-trading-46-devs"
}

resource "aws_iam_group_policy_attachment" "trading_46_devs__trading_46_data_rw" {
  group      = aws_iam_group.trading_46_devs.name
  policy_arn = aws_iam_policy.trading_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_46_devs__trading_46_ops" {
  group      = aws_iam_group.trading_46_devs.name
  policy_arn = aws_iam_policy.trading_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_46_devs__base_readonly" {
  group      = aws_iam_group.trading_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_46_devs__self_service" {
  group      = aws_iam_group.trading_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_47_analysts" {
  name = "solor-1njchy-trading-47-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_47_analysts__trading_47_read" {
  group      = aws_iam_group.trading_47_analysts.name
  policy_arn = aws_iam_policy.trading_47_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_47_analysts__base_readonly" {
  group      = aws_iam_group.trading_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_47_devs" {
  name = "solor-1njchy-trading-47-devs"
}

resource "aws_iam_group_policy_attachment" "trading_47_devs__trading_47_data_rw" {
  group      = aws_iam_group.trading_47_devs.name
  policy_arn = aws_iam_policy.trading_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_47_devs__trading_47_ops" {
  group      = aws_iam_group.trading_47_devs.name
  policy_arn = aws_iam_policy.trading_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_47_devs__base_readonly" {
  group      = aws_iam_group.trading_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_47_devs__self_service" {
  group      = aws_iam_group.trading_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_48_analysts" {
  name = "solor-1njchy-trading-48-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_48_analysts__trading_48_read" {
  group      = aws_iam_group.trading_48_analysts.name
  policy_arn = aws_iam_policy.trading_48_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_48_analysts__base_readonly" {
  group      = aws_iam_group.trading_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_48_devs" {
  name = "solor-1njchy-trading-48-devs"
}

resource "aws_iam_group_policy_attachment" "trading_48_devs__trading_48_data_rw" {
  group      = aws_iam_group.trading_48_devs.name
  policy_arn = aws_iam_policy.trading_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_48_devs__trading_48_ops" {
  group      = aws_iam_group.trading_48_devs.name
  policy_arn = aws_iam_policy.trading_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_48_devs__base_readonly" {
  group      = aws_iam_group.trading_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_48_devs__self_service" {
  group      = aws_iam_group.trading_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_49_analysts" {
  name = "solor-1njchy-trading-49-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_49_analysts__trading_49_read" {
  group      = aws_iam_group.trading_49_analysts.name
  policy_arn = aws_iam_policy.trading_49_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_49_analysts__base_readonly" {
  group      = aws_iam_group.trading_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_49_devs" {
  name = "solor-1njchy-trading-49-devs"
}

resource "aws_iam_group_policy_attachment" "trading_49_devs__trading_49_data_rw" {
  group      = aws_iam_group.trading_49_devs.name
  policy_arn = aws_iam_policy.trading_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_49_devs__trading_49_ops" {
  group      = aws_iam_group.trading_49_devs.name
  policy_arn = aws_iam_policy.trading_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_49_devs__base_readonly" {
  group      = aws_iam_group.trading_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_49_devs__self_service" {
  group      = aws_iam_group.trading_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_5_analysts" {
  name = "solor-1njchy-trading-5-analysts"
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
  name = "solor-1njchy-trading-5-devs"
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

resource "aws_iam_group" "trading_50_analysts" {
  name = "solor-1njchy-trading-50-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_50_analysts__trading_50_read" {
  group      = aws_iam_group.trading_50_analysts.name
  policy_arn = aws_iam_policy.trading_50_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_50_analysts__base_readonly" {
  group      = aws_iam_group.trading_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_50_devs" {
  name = "solor-1njchy-trading-50-devs"
}

resource "aws_iam_group_policy_attachment" "trading_50_devs__trading_50_data_rw" {
  group      = aws_iam_group.trading_50_devs.name
  policy_arn = aws_iam_policy.trading_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_50_devs__trading_50_ops" {
  group      = aws_iam_group.trading_50_devs.name
  policy_arn = aws_iam_policy.trading_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_50_devs__base_readonly" {
  group      = aws_iam_group.trading_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_50_devs__self_service" {
  group      = aws_iam_group.trading_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_6_analysts" {
  name = "solor-1njchy-trading-6-analysts"
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
  name = "solor-1njchy-trading-6-devs"
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
  name = "solor-1njchy-trading-7-analysts"
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
  name = "solor-1njchy-trading-7-devs"
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

resource "aws_iam_group" "trading_8_analysts" {
  name = "solor-1njchy-trading-8-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_8_analysts__trading_8_read" {
  group      = aws_iam_group.trading_8_analysts.name
  policy_arn = aws_iam_policy.trading_8_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_8_analysts__base_readonly" {
  group      = aws_iam_group.trading_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_8_devs" {
  name = "solor-1njchy-trading-8-devs"
}

resource "aws_iam_group_policy_attachment" "trading_8_devs__trading_8_data_rw" {
  group      = aws_iam_group.trading_8_devs.name
  policy_arn = aws_iam_policy.trading_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_8_devs__trading_8_ops" {
  group      = aws_iam_group.trading_8_devs.name
  policy_arn = aws_iam_policy.trading_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_8_devs__base_readonly" {
  group      = aws_iam_group.trading_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_8_devs__self_service" {
  group      = aws_iam_group.trading_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_9_analysts" {
  name = "solor-1njchy-trading-9-analysts"
}

resource "aws_iam_group_policy_attachment" "trading_9_analysts__trading_9_read" {
  group      = aws_iam_group.trading_9_analysts.name
  policy_arn = aws_iam_policy.trading_9_read.arn
}

resource "aws_iam_group_policy_attachment" "trading_9_analysts__base_readonly" {
  group      = aws_iam_group.trading_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "trading_9_devs" {
  name = "solor-1njchy-trading-9-devs"
}

resource "aws_iam_group_policy_attachment" "trading_9_devs__trading_9_data_rw" {
  group      = aws_iam_group.trading_9_devs.name
  policy_arn = aws_iam_policy.trading_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "trading_9_devs__trading_9_ops" {
  group      = aws_iam_group.trading_9_devs.name
  policy_arn = aws_iam_policy.trading_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "trading_9_devs__base_readonly" {
  group      = aws_iam_group.trading_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "trading_9_devs__self_service" {
  group      = aws_iam_group.trading_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "trading_analysts" {
  name = "solor-1njchy-trading-analysts"
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
  name = "solor-1njchy-trading-devs"
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

resource "aws_iam_group" "treasury_10_analysts" {
  name = "solor-1njchy-treasury-10-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_10_analysts__treasury_10_read" {
  group      = aws_iam_group.treasury_10_analysts.name
  policy_arn = aws_iam_policy.treasury_10_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_10_analysts__base_readonly" {
  group      = aws_iam_group.treasury_10_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_10_devs" {
  name = "solor-1njchy-treasury-10-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_10_devs__treasury_10_data_rw" {
  group      = aws_iam_group.treasury_10_devs.name
  policy_arn = aws_iam_policy.treasury_10_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_10_devs__treasury_10_ops" {
  group      = aws_iam_group.treasury_10_devs.name
  policy_arn = aws_iam_policy.treasury_10_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_10_devs__base_readonly" {
  group      = aws_iam_group.treasury_10_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_10_devs__self_service" {
  group      = aws_iam_group.treasury_10_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_11_analysts" {
  name = "solor-1njchy-treasury-11-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_11_analysts__treasury_11_read" {
  group      = aws_iam_group.treasury_11_analysts.name
  policy_arn = aws_iam_policy.treasury_11_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_11_analysts__base_readonly" {
  group      = aws_iam_group.treasury_11_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_11_devs" {
  name = "solor-1njchy-treasury-11-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_11_devs__treasury_11_data_rw" {
  group      = aws_iam_group.treasury_11_devs.name
  policy_arn = aws_iam_policy.treasury_11_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_11_devs__treasury_11_ops" {
  group      = aws_iam_group.treasury_11_devs.name
  policy_arn = aws_iam_policy.treasury_11_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_11_devs__base_readonly" {
  group      = aws_iam_group.treasury_11_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_11_devs__self_service" {
  group      = aws_iam_group.treasury_11_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_12_analysts" {
  name = "solor-1njchy-treasury-12-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_12_analysts__treasury_12_read" {
  group      = aws_iam_group.treasury_12_analysts.name
  policy_arn = aws_iam_policy.treasury_12_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_12_analysts__base_readonly" {
  group      = aws_iam_group.treasury_12_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_12_devs" {
  name = "solor-1njchy-treasury-12-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_12_devs__treasury_12_data_rw" {
  group      = aws_iam_group.treasury_12_devs.name
  policy_arn = aws_iam_policy.treasury_12_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_12_devs__treasury_12_ops" {
  group      = aws_iam_group.treasury_12_devs.name
  policy_arn = aws_iam_policy.treasury_12_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_12_devs__base_readonly" {
  group      = aws_iam_group.treasury_12_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_12_devs__self_service" {
  group      = aws_iam_group.treasury_12_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_13_analysts" {
  name = "solor-1njchy-treasury-13-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_13_analysts__treasury_13_read" {
  group      = aws_iam_group.treasury_13_analysts.name
  policy_arn = aws_iam_policy.treasury_13_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_13_analysts__base_readonly" {
  group      = aws_iam_group.treasury_13_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_13_devs" {
  name = "solor-1njchy-treasury-13-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_13_devs__treasury_13_data_rw" {
  group      = aws_iam_group.treasury_13_devs.name
  policy_arn = aws_iam_policy.treasury_13_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_13_devs__treasury_13_ops" {
  group      = aws_iam_group.treasury_13_devs.name
  policy_arn = aws_iam_policy.treasury_13_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_13_devs__base_readonly" {
  group      = aws_iam_group.treasury_13_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_13_devs__self_service" {
  group      = aws_iam_group.treasury_13_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_14_analysts" {
  name = "solor-1njchy-treasury-14-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_14_analysts__treasury_14_read" {
  group      = aws_iam_group.treasury_14_analysts.name
  policy_arn = aws_iam_policy.treasury_14_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_14_analysts__base_readonly" {
  group      = aws_iam_group.treasury_14_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_14_devs" {
  name = "solor-1njchy-treasury-14-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_14_devs__treasury_14_data_rw" {
  group      = aws_iam_group.treasury_14_devs.name
  policy_arn = aws_iam_policy.treasury_14_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_14_devs__treasury_14_ops" {
  group      = aws_iam_group.treasury_14_devs.name
  policy_arn = aws_iam_policy.treasury_14_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_14_devs__base_readonly" {
  group      = aws_iam_group.treasury_14_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_14_devs__self_service" {
  group      = aws_iam_group.treasury_14_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_15_analysts" {
  name = "solor-1njchy-treasury-15-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_15_analysts__treasury_15_read" {
  group      = aws_iam_group.treasury_15_analysts.name
  policy_arn = aws_iam_policy.treasury_15_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_15_analysts__base_readonly" {
  group      = aws_iam_group.treasury_15_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_15_devs" {
  name = "solor-1njchy-treasury-15-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_15_devs__treasury_15_data_rw" {
  group      = aws_iam_group.treasury_15_devs.name
  policy_arn = aws_iam_policy.treasury_15_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_15_devs__treasury_15_ops" {
  group      = aws_iam_group.treasury_15_devs.name
  policy_arn = aws_iam_policy.treasury_15_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_15_devs__base_readonly" {
  group      = aws_iam_group.treasury_15_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_15_devs__self_service" {
  group      = aws_iam_group.treasury_15_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_16_analysts" {
  name = "solor-1njchy-treasury-16-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_16_analysts__treasury_16_read" {
  group      = aws_iam_group.treasury_16_analysts.name
  policy_arn = aws_iam_policy.treasury_16_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_16_analysts__base_readonly" {
  group      = aws_iam_group.treasury_16_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_16_devs" {
  name = "solor-1njchy-treasury-16-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_16_devs__treasury_16_data_rw" {
  group      = aws_iam_group.treasury_16_devs.name
  policy_arn = aws_iam_policy.treasury_16_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_16_devs__treasury_16_ops" {
  group      = aws_iam_group.treasury_16_devs.name
  policy_arn = aws_iam_policy.treasury_16_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_16_devs__base_readonly" {
  group      = aws_iam_group.treasury_16_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_16_devs__self_service" {
  group      = aws_iam_group.treasury_16_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_17_analysts" {
  name = "solor-1njchy-treasury-17-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_17_analysts__treasury_17_read" {
  group      = aws_iam_group.treasury_17_analysts.name
  policy_arn = aws_iam_policy.treasury_17_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_17_analysts__base_readonly" {
  group      = aws_iam_group.treasury_17_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_17_devs" {
  name = "solor-1njchy-treasury-17-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_17_devs__treasury_17_data_rw" {
  group      = aws_iam_group.treasury_17_devs.name
  policy_arn = aws_iam_policy.treasury_17_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_17_devs__treasury_17_ops" {
  group      = aws_iam_group.treasury_17_devs.name
  policy_arn = aws_iam_policy.treasury_17_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_17_devs__base_readonly" {
  group      = aws_iam_group.treasury_17_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_17_devs__self_service" {
  group      = aws_iam_group.treasury_17_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_18_analysts" {
  name = "solor-1njchy-treasury-18-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_18_analysts__treasury_18_read" {
  group      = aws_iam_group.treasury_18_analysts.name
  policy_arn = aws_iam_policy.treasury_18_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_18_analysts__base_readonly" {
  group      = aws_iam_group.treasury_18_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_18_devs" {
  name = "solor-1njchy-treasury-18-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_18_devs__treasury_18_data_rw" {
  group      = aws_iam_group.treasury_18_devs.name
  policy_arn = aws_iam_policy.treasury_18_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_18_devs__treasury_18_ops" {
  group      = aws_iam_group.treasury_18_devs.name
  policy_arn = aws_iam_policy.treasury_18_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_18_devs__base_readonly" {
  group      = aws_iam_group.treasury_18_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_18_devs__self_service" {
  group      = aws_iam_group.treasury_18_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_19_analysts" {
  name = "solor-1njchy-treasury-19-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_19_analysts__treasury_19_read" {
  group      = aws_iam_group.treasury_19_analysts.name
  policy_arn = aws_iam_policy.treasury_19_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_19_analysts__base_readonly" {
  group      = aws_iam_group.treasury_19_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_19_devs" {
  name = "solor-1njchy-treasury-19-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_19_devs__treasury_19_data_rw" {
  group      = aws_iam_group.treasury_19_devs.name
  policy_arn = aws_iam_policy.treasury_19_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_19_devs__treasury_19_ops" {
  group      = aws_iam_group.treasury_19_devs.name
  policy_arn = aws_iam_policy.treasury_19_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_19_devs__base_readonly" {
  group      = aws_iam_group.treasury_19_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_19_devs__self_service" {
  group      = aws_iam_group.treasury_19_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_2_analysts" {
  name = "solor-1njchy-treasury-2-analysts"
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
  name = "solor-1njchy-treasury-2-devs"
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

resource "aws_iam_group" "treasury_20_analysts" {
  name = "solor-1njchy-treasury-20-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_20_analysts__treasury_20_read" {
  group      = aws_iam_group.treasury_20_analysts.name
  policy_arn = aws_iam_policy.treasury_20_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_20_analysts__base_readonly" {
  group      = aws_iam_group.treasury_20_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_20_devs" {
  name = "solor-1njchy-treasury-20-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_20_devs__treasury_20_data_rw" {
  group      = aws_iam_group.treasury_20_devs.name
  policy_arn = aws_iam_policy.treasury_20_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_20_devs__treasury_20_ops" {
  group      = aws_iam_group.treasury_20_devs.name
  policy_arn = aws_iam_policy.treasury_20_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_20_devs__base_readonly" {
  group      = aws_iam_group.treasury_20_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_20_devs__self_service" {
  group      = aws_iam_group.treasury_20_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_21_analysts" {
  name = "solor-1njchy-treasury-21-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_21_analysts__treasury_21_read" {
  group      = aws_iam_group.treasury_21_analysts.name
  policy_arn = aws_iam_policy.treasury_21_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_21_analysts__base_readonly" {
  group      = aws_iam_group.treasury_21_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_21_devs" {
  name = "solor-1njchy-treasury-21-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_21_devs__treasury_21_data_rw" {
  group      = aws_iam_group.treasury_21_devs.name
  policy_arn = aws_iam_policy.treasury_21_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_21_devs__treasury_21_ops" {
  group      = aws_iam_group.treasury_21_devs.name
  policy_arn = aws_iam_policy.treasury_21_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_21_devs__base_readonly" {
  group      = aws_iam_group.treasury_21_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_21_devs__self_service" {
  group      = aws_iam_group.treasury_21_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_22_analysts" {
  name = "solor-1njchy-treasury-22-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_22_analysts__treasury_22_read" {
  group      = aws_iam_group.treasury_22_analysts.name
  policy_arn = aws_iam_policy.treasury_22_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_22_analysts__base_readonly" {
  group      = aws_iam_group.treasury_22_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_22_devs" {
  name = "solor-1njchy-treasury-22-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_22_devs__treasury_22_data_rw" {
  group      = aws_iam_group.treasury_22_devs.name
  policy_arn = aws_iam_policy.treasury_22_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_22_devs__treasury_22_ops" {
  group      = aws_iam_group.treasury_22_devs.name
  policy_arn = aws_iam_policy.treasury_22_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_22_devs__base_readonly" {
  group      = aws_iam_group.treasury_22_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_22_devs__self_service" {
  group      = aws_iam_group.treasury_22_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_23_analysts" {
  name = "solor-1njchy-treasury-23-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_23_analysts__treasury_23_read" {
  group      = aws_iam_group.treasury_23_analysts.name
  policy_arn = aws_iam_policy.treasury_23_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_23_analysts__base_readonly" {
  group      = aws_iam_group.treasury_23_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_23_devs" {
  name = "solor-1njchy-treasury-23-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_23_devs__treasury_23_data_rw" {
  group      = aws_iam_group.treasury_23_devs.name
  policy_arn = aws_iam_policy.treasury_23_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_23_devs__treasury_23_ops" {
  group      = aws_iam_group.treasury_23_devs.name
  policy_arn = aws_iam_policy.treasury_23_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_23_devs__base_readonly" {
  group      = aws_iam_group.treasury_23_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_23_devs__self_service" {
  group      = aws_iam_group.treasury_23_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_24_analysts" {
  name = "solor-1njchy-treasury-24-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_24_analysts__treasury_24_read" {
  group      = aws_iam_group.treasury_24_analysts.name
  policy_arn = aws_iam_policy.treasury_24_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_24_analysts__base_readonly" {
  group      = aws_iam_group.treasury_24_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_24_devs" {
  name = "solor-1njchy-treasury-24-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_24_devs__treasury_24_data_rw" {
  group      = aws_iam_group.treasury_24_devs.name
  policy_arn = aws_iam_policy.treasury_24_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_24_devs__treasury_24_ops" {
  group      = aws_iam_group.treasury_24_devs.name
  policy_arn = aws_iam_policy.treasury_24_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_24_devs__base_readonly" {
  group      = aws_iam_group.treasury_24_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_24_devs__self_service" {
  group      = aws_iam_group.treasury_24_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_25_analysts" {
  name = "solor-1njchy-treasury-25-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_25_analysts__treasury_25_read" {
  group      = aws_iam_group.treasury_25_analysts.name
  policy_arn = aws_iam_policy.treasury_25_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_25_analysts__base_readonly" {
  group      = aws_iam_group.treasury_25_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_25_devs" {
  name = "solor-1njchy-treasury-25-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_25_devs__treasury_25_data_rw" {
  group      = aws_iam_group.treasury_25_devs.name
  policy_arn = aws_iam_policy.treasury_25_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_25_devs__treasury_25_ops" {
  group      = aws_iam_group.treasury_25_devs.name
  policy_arn = aws_iam_policy.treasury_25_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_25_devs__base_readonly" {
  group      = aws_iam_group.treasury_25_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_25_devs__self_service" {
  group      = aws_iam_group.treasury_25_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_26_analysts" {
  name = "solor-1njchy-treasury-26-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_26_analysts__treasury_26_read" {
  group      = aws_iam_group.treasury_26_analysts.name
  policy_arn = aws_iam_policy.treasury_26_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_26_analysts__base_readonly" {
  group      = aws_iam_group.treasury_26_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_26_devs" {
  name = "solor-1njchy-treasury-26-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_26_devs__treasury_26_data_rw" {
  group      = aws_iam_group.treasury_26_devs.name
  policy_arn = aws_iam_policy.treasury_26_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_26_devs__treasury_26_ops" {
  group      = aws_iam_group.treasury_26_devs.name
  policy_arn = aws_iam_policy.treasury_26_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_26_devs__base_readonly" {
  group      = aws_iam_group.treasury_26_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_26_devs__self_service" {
  group      = aws_iam_group.treasury_26_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_27_analysts" {
  name = "solor-1njchy-treasury-27-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_27_analysts__treasury_27_read" {
  group      = aws_iam_group.treasury_27_analysts.name
  policy_arn = aws_iam_policy.treasury_27_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_27_analysts__base_readonly" {
  group      = aws_iam_group.treasury_27_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_27_devs" {
  name = "solor-1njchy-treasury-27-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_27_devs__treasury_27_data_rw" {
  group      = aws_iam_group.treasury_27_devs.name
  policy_arn = aws_iam_policy.treasury_27_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_27_devs__treasury_27_ops" {
  group      = aws_iam_group.treasury_27_devs.name
  policy_arn = aws_iam_policy.treasury_27_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_27_devs__base_readonly" {
  group      = aws_iam_group.treasury_27_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_27_devs__self_service" {
  group      = aws_iam_group.treasury_27_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_28_analysts" {
  name = "solor-1njchy-treasury-28-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_28_analysts__treasury_28_read" {
  group      = aws_iam_group.treasury_28_analysts.name
  policy_arn = aws_iam_policy.treasury_28_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_28_analysts__base_readonly" {
  group      = aws_iam_group.treasury_28_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_28_devs" {
  name = "solor-1njchy-treasury-28-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_28_devs__treasury_28_data_rw" {
  group      = aws_iam_group.treasury_28_devs.name
  policy_arn = aws_iam_policy.treasury_28_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_28_devs__treasury_28_ops" {
  group      = aws_iam_group.treasury_28_devs.name
  policy_arn = aws_iam_policy.treasury_28_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_28_devs__base_readonly" {
  group      = aws_iam_group.treasury_28_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_28_devs__self_service" {
  group      = aws_iam_group.treasury_28_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_29_analysts" {
  name = "solor-1njchy-treasury-29-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_29_analysts__treasury_29_read" {
  group      = aws_iam_group.treasury_29_analysts.name
  policy_arn = aws_iam_policy.treasury_29_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_29_analysts__base_readonly" {
  group      = aws_iam_group.treasury_29_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_29_devs" {
  name = "solor-1njchy-treasury-29-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_29_devs__treasury_29_data_rw" {
  group      = aws_iam_group.treasury_29_devs.name
  policy_arn = aws_iam_policy.treasury_29_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_29_devs__treasury_29_ops" {
  group      = aws_iam_group.treasury_29_devs.name
  policy_arn = aws_iam_policy.treasury_29_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_29_devs__base_readonly" {
  group      = aws_iam_group.treasury_29_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_29_devs__self_service" {
  group      = aws_iam_group.treasury_29_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_3_analysts" {
  name = "solor-1njchy-treasury-3-analysts"
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
  name = "solor-1njchy-treasury-3-devs"
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

resource "aws_iam_group" "treasury_30_analysts" {
  name = "solor-1njchy-treasury-30-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_30_analysts__treasury_30_read" {
  group      = aws_iam_group.treasury_30_analysts.name
  policy_arn = aws_iam_policy.treasury_30_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_30_analysts__base_readonly" {
  group      = aws_iam_group.treasury_30_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_30_devs" {
  name = "solor-1njchy-treasury-30-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_30_devs__treasury_30_data_rw" {
  group      = aws_iam_group.treasury_30_devs.name
  policy_arn = aws_iam_policy.treasury_30_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_30_devs__treasury_30_ops" {
  group      = aws_iam_group.treasury_30_devs.name
  policy_arn = aws_iam_policy.treasury_30_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_30_devs__base_readonly" {
  group      = aws_iam_group.treasury_30_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_30_devs__self_service" {
  group      = aws_iam_group.treasury_30_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_31_analysts" {
  name = "solor-1njchy-treasury-31-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_31_analysts__treasury_31_read" {
  group      = aws_iam_group.treasury_31_analysts.name
  policy_arn = aws_iam_policy.treasury_31_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_31_analysts__base_readonly" {
  group      = aws_iam_group.treasury_31_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_31_devs" {
  name = "solor-1njchy-treasury-31-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_31_devs__treasury_31_data_rw" {
  group      = aws_iam_group.treasury_31_devs.name
  policy_arn = aws_iam_policy.treasury_31_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_31_devs__treasury_31_ops" {
  group      = aws_iam_group.treasury_31_devs.name
  policy_arn = aws_iam_policy.treasury_31_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_31_devs__base_readonly" {
  group      = aws_iam_group.treasury_31_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_31_devs__self_service" {
  group      = aws_iam_group.treasury_31_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_32_analysts" {
  name = "solor-1njchy-treasury-32-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_32_analysts__treasury_32_read" {
  group      = aws_iam_group.treasury_32_analysts.name
  policy_arn = aws_iam_policy.treasury_32_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_32_analysts__base_readonly" {
  group      = aws_iam_group.treasury_32_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_32_devs" {
  name = "solor-1njchy-treasury-32-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_32_devs__treasury_32_data_rw" {
  group      = aws_iam_group.treasury_32_devs.name
  policy_arn = aws_iam_policy.treasury_32_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_32_devs__treasury_32_ops" {
  group      = aws_iam_group.treasury_32_devs.name
  policy_arn = aws_iam_policy.treasury_32_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_32_devs__base_readonly" {
  group      = aws_iam_group.treasury_32_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_32_devs__self_service" {
  group      = aws_iam_group.treasury_32_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_33_analysts" {
  name = "solor-1njchy-treasury-33-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_33_analysts__treasury_33_read" {
  group      = aws_iam_group.treasury_33_analysts.name
  policy_arn = aws_iam_policy.treasury_33_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_33_analysts__base_readonly" {
  group      = aws_iam_group.treasury_33_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_33_devs" {
  name = "solor-1njchy-treasury-33-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_33_devs__treasury_33_data_rw" {
  group      = aws_iam_group.treasury_33_devs.name
  policy_arn = aws_iam_policy.treasury_33_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_33_devs__treasury_33_ops" {
  group      = aws_iam_group.treasury_33_devs.name
  policy_arn = aws_iam_policy.treasury_33_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_33_devs__base_readonly" {
  group      = aws_iam_group.treasury_33_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_33_devs__self_service" {
  group      = aws_iam_group.treasury_33_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_34_analysts" {
  name = "solor-1njchy-treasury-34-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_34_analysts__treasury_34_read" {
  group      = aws_iam_group.treasury_34_analysts.name
  policy_arn = aws_iam_policy.treasury_34_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_34_analysts__base_readonly" {
  group      = aws_iam_group.treasury_34_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_34_devs" {
  name = "solor-1njchy-treasury-34-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_34_devs__treasury_34_data_rw" {
  group      = aws_iam_group.treasury_34_devs.name
  policy_arn = aws_iam_policy.treasury_34_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_34_devs__treasury_34_ops" {
  group      = aws_iam_group.treasury_34_devs.name
  policy_arn = aws_iam_policy.treasury_34_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_34_devs__base_readonly" {
  group      = aws_iam_group.treasury_34_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_34_devs__self_service" {
  group      = aws_iam_group.treasury_34_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_35_analysts" {
  name = "solor-1njchy-treasury-35-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_35_analysts__treasury_35_read" {
  group      = aws_iam_group.treasury_35_analysts.name
  policy_arn = aws_iam_policy.treasury_35_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_35_analysts__base_readonly" {
  group      = aws_iam_group.treasury_35_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_35_devs" {
  name = "solor-1njchy-treasury-35-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_35_devs__treasury_35_data_rw" {
  group      = aws_iam_group.treasury_35_devs.name
  policy_arn = aws_iam_policy.treasury_35_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_35_devs__treasury_35_ops" {
  group      = aws_iam_group.treasury_35_devs.name
  policy_arn = aws_iam_policy.treasury_35_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_35_devs__base_readonly" {
  group      = aws_iam_group.treasury_35_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_35_devs__self_service" {
  group      = aws_iam_group.treasury_35_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_36_analysts" {
  name = "solor-1njchy-treasury-36-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_36_analysts__treasury_36_read" {
  group      = aws_iam_group.treasury_36_analysts.name
  policy_arn = aws_iam_policy.treasury_36_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_36_analysts__base_readonly" {
  group      = aws_iam_group.treasury_36_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_36_devs" {
  name = "solor-1njchy-treasury-36-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_36_devs__treasury_36_data_rw" {
  group      = aws_iam_group.treasury_36_devs.name
  policy_arn = aws_iam_policy.treasury_36_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_36_devs__treasury_36_ops" {
  group      = aws_iam_group.treasury_36_devs.name
  policy_arn = aws_iam_policy.treasury_36_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_36_devs__base_readonly" {
  group      = aws_iam_group.treasury_36_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_36_devs__self_service" {
  group      = aws_iam_group.treasury_36_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_37_analysts" {
  name = "solor-1njchy-treasury-37-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_37_analysts__treasury_37_read" {
  group      = aws_iam_group.treasury_37_analysts.name
  policy_arn = aws_iam_policy.treasury_37_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_37_analysts__base_readonly" {
  group      = aws_iam_group.treasury_37_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_37_devs" {
  name = "solor-1njchy-treasury-37-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_37_devs__treasury_37_data_rw" {
  group      = aws_iam_group.treasury_37_devs.name
  policy_arn = aws_iam_policy.treasury_37_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_37_devs__treasury_37_ops" {
  group      = aws_iam_group.treasury_37_devs.name
  policy_arn = aws_iam_policy.treasury_37_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_37_devs__base_readonly" {
  group      = aws_iam_group.treasury_37_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_37_devs__self_service" {
  group      = aws_iam_group.treasury_37_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_38_analysts" {
  name = "solor-1njchy-treasury-38-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_38_analysts__treasury_38_read" {
  group      = aws_iam_group.treasury_38_analysts.name
  policy_arn = aws_iam_policy.treasury_38_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_38_analysts__base_readonly" {
  group      = aws_iam_group.treasury_38_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_38_devs" {
  name = "solor-1njchy-treasury-38-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_38_devs__treasury_38_data_rw" {
  group      = aws_iam_group.treasury_38_devs.name
  policy_arn = aws_iam_policy.treasury_38_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_38_devs__treasury_38_ops" {
  group      = aws_iam_group.treasury_38_devs.name
  policy_arn = aws_iam_policy.treasury_38_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_38_devs__base_readonly" {
  group      = aws_iam_group.treasury_38_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_38_devs__self_service" {
  group      = aws_iam_group.treasury_38_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_39_analysts" {
  name = "solor-1njchy-treasury-39-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_39_analysts__treasury_39_read" {
  group      = aws_iam_group.treasury_39_analysts.name
  policy_arn = aws_iam_policy.treasury_39_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_39_analysts__base_readonly" {
  group      = aws_iam_group.treasury_39_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_39_devs" {
  name = "solor-1njchy-treasury-39-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_39_devs__treasury_39_data_rw" {
  group      = aws_iam_group.treasury_39_devs.name
  policy_arn = aws_iam_policy.treasury_39_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_39_devs__treasury_39_ops" {
  group      = aws_iam_group.treasury_39_devs.name
  policy_arn = aws_iam_policy.treasury_39_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_39_devs__base_readonly" {
  group      = aws_iam_group.treasury_39_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_39_devs__self_service" {
  group      = aws_iam_group.treasury_39_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_4_analysts" {
  name = "solor-1njchy-treasury-4-analysts"
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
  name = "solor-1njchy-treasury-4-devs"
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

resource "aws_iam_group" "treasury_40_analysts" {
  name = "solor-1njchy-treasury-40-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_40_analysts__treasury_40_read" {
  group      = aws_iam_group.treasury_40_analysts.name
  policy_arn = aws_iam_policy.treasury_40_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_40_analysts__base_readonly" {
  group      = aws_iam_group.treasury_40_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_40_devs" {
  name = "solor-1njchy-treasury-40-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_40_devs__treasury_40_data_rw" {
  group      = aws_iam_group.treasury_40_devs.name
  policy_arn = aws_iam_policy.treasury_40_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_40_devs__treasury_40_ops" {
  group      = aws_iam_group.treasury_40_devs.name
  policy_arn = aws_iam_policy.treasury_40_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_40_devs__base_readonly" {
  group      = aws_iam_group.treasury_40_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_40_devs__self_service" {
  group      = aws_iam_group.treasury_40_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_41_analysts" {
  name = "solor-1njchy-treasury-41-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_41_analysts__treasury_41_read" {
  group      = aws_iam_group.treasury_41_analysts.name
  policy_arn = aws_iam_policy.treasury_41_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_41_analysts__base_readonly" {
  group      = aws_iam_group.treasury_41_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_41_devs" {
  name = "solor-1njchy-treasury-41-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_41_devs__treasury_41_data_rw" {
  group      = aws_iam_group.treasury_41_devs.name
  policy_arn = aws_iam_policy.treasury_41_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_41_devs__treasury_41_ops" {
  group      = aws_iam_group.treasury_41_devs.name
  policy_arn = aws_iam_policy.treasury_41_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_41_devs__base_readonly" {
  group      = aws_iam_group.treasury_41_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_41_devs__self_service" {
  group      = aws_iam_group.treasury_41_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_42_analysts" {
  name = "solor-1njchy-treasury-42-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_42_analysts__treasury_42_read" {
  group      = aws_iam_group.treasury_42_analysts.name
  policy_arn = aws_iam_policy.treasury_42_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_42_analysts__base_readonly" {
  group      = aws_iam_group.treasury_42_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_42_devs" {
  name = "solor-1njchy-treasury-42-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_42_devs__treasury_42_data_rw" {
  group      = aws_iam_group.treasury_42_devs.name
  policy_arn = aws_iam_policy.treasury_42_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_42_devs__treasury_42_ops" {
  group      = aws_iam_group.treasury_42_devs.name
  policy_arn = aws_iam_policy.treasury_42_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_42_devs__base_readonly" {
  group      = aws_iam_group.treasury_42_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_42_devs__self_service" {
  group      = aws_iam_group.treasury_42_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_43_analysts" {
  name = "solor-1njchy-treasury-43-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_43_analysts__treasury_43_read" {
  group      = aws_iam_group.treasury_43_analysts.name
  policy_arn = aws_iam_policy.treasury_43_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_43_analysts__base_readonly" {
  group      = aws_iam_group.treasury_43_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_43_devs" {
  name = "solor-1njchy-treasury-43-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_43_devs__treasury_43_data_rw" {
  group      = aws_iam_group.treasury_43_devs.name
  policy_arn = aws_iam_policy.treasury_43_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_43_devs__treasury_43_ops" {
  group      = aws_iam_group.treasury_43_devs.name
  policy_arn = aws_iam_policy.treasury_43_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_43_devs__base_readonly" {
  group      = aws_iam_group.treasury_43_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_43_devs__self_service" {
  group      = aws_iam_group.treasury_43_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_44_analysts" {
  name = "solor-1njchy-treasury-44-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_44_analysts__treasury_44_read" {
  group      = aws_iam_group.treasury_44_analysts.name
  policy_arn = aws_iam_policy.treasury_44_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_44_analysts__base_readonly" {
  group      = aws_iam_group.treasury_44_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_44_devs" {
  name = "solor-1njchy-treasury-44-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_44_devs__treasury_44_data_rw" {
  group      = aws_iam_group.treasury_44_devs.name
  policy_arn = aws_iam_policy.treasury_44_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_44_devs__treasury_44_ops" {
  group      = aws_iam_group.treasury_44_devs.name
  policy_arn = aws_iam_policy.treasury_44_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_44_devs__base_readonly" {
  group      = aws_iam_group.treasury_44_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_44_devs__self_service" {
  group      = aws_iam_group.treasury_44_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_45_analysts" {
  name = "solor-1njchy-treasury-45-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_45_analysts__treasury_45_read" {
  group      = aws_iam_group.treasury_45_analysts.name
  policy_arn = aws_iam_policy.treasury_45_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_45_analysts__base_readonly" {
  group      = aws_iam_group.treasury_45_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_45_devs" {
  name = "solor-1njchy-treasury-45-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_45_devs__treasury_45_data_rw" {
  group      = aws_iam_group.treasury_45_devs.name
  policy_arn = aws_iam_policy.treasury_45_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_45_devs__treasury_45_ops" {
  group      = aws_iam_group.treasury_45_devs.name
  policy_arn = aws_iam_policy.treasury_45_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_45_devs__base_readonly" {
  group      = aws_iam_group.treasury_45_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_45_devs__self_service" {
  group      = aws_iam_group.treasury_45_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_46_analysts" {
  name = "solor-1njchy-treasury-46-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_46_analysts__treasury_46_read" {
  group      = aws_iam_group.treasury_46_analysts.name
  policy_arn = aws_iam_policy.treasury_46_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_46_analysts__base_readonly" {
  group      = aws_iam_group.treasury_46_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_46_devs" {
  name = "solor-1njchy-treasury-46-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_46_devs__treasury_46_data_rw" {
  group      = aws_iam_group.treasury_46_devs.name
  policy_arn = aws_iam_policy.treasury_46_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_46_devs__treasury_46_ops" {
  group      = aws_iam_group.treasury_46_devs.name
  policy_arn = aws_iam_policy.treasury_46_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_46_devs__base_readonly" {
  group      = aws_iam_group.treasury_46_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_46_devs__self_service" {
  group      = aws_iam_group.treasury_46_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_47_analysts" {
  name = "solor-1njchy-treasury-47-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_47_analysts__treasury_47_read" {
  group      = aws_iam_group.treasury_47_analysts.name
  policy_arn = aws_iam_policy.treasury_47_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_47_analysts__base_readonly" {
  group      = aws_iam_group.treasury_47_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_47_devs" {
  name = "solor-1njchy-treasury-47-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_47_devs__treasury_47_data_rw" {
  group      = aws_iam_group.treasury_47_devs.name
  policy_arn = aws_iam_policy.treasury_47_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_47_devs__treasury_47_ops" {
  group      = aws_iam_group.treasury_47_devs.name
  policy_arn = aws_iam_policy.treasury_47_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_47_devs__base_readonly" {
  group      = aws_iam_group.treasury_47_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_47_devs__self_service" {
  group      = aws_iam_group.treasury_47_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_48_analysts" {
  name = "solor-1njchy-treasury-48-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_48_analysts__treasury_48_read" {
  group      = aws_iam_group.treasury_48_analysts.name
  policy_arn = aws_iam_policy.treasury_48_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_48_analysts__base_readonly" {
  group      = aws_iam_group.treasury_48_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_48_devs" {
  name = "solor-1njchy-treasury-48-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_48_devs__treasury_48_data_rw" {
  group      = aws_iam_group.treasury_48_devs.name
  policy_arn = aws_iam_policy.treasury_48_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_48_devs__treasury_48_ops" {
  group      = aws_iam_group.treasury_48_devs.name
  policy_arn = aws_iam_policy.treasury_48_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_48_devs__base_readonly" {
  group      = aws_iam_group.treasury_48_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_48_devs__self_service" {
  group      = aws_iam_group.treasury_48_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_49_analysts" {
  name = "solor-1njchy-treasury-49-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_49_analysts__treasury_49_read" {
  group      = aws_iam_group.treasury_49_analysts.name
  policy_arn = aws_iam_policy.treasury_49_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_49_analysts__base_readonly" {
  group      = aws_iam_group.treasury_49_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_49_devs" {
  name = "solor-1njchy-treasury-49-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_49_devs__treasury_49_data_rw" {
  group      = aws_iam_group.treasury_49_devs.name
  policy_arn = aws_iam_policy.treasury_49_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_49_devs__treasury_49_ops" {
  group      = aws_iam_group.treasury_49_devs.name
  policy_arn = aws_iam_policy.treasury_49_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_49_devs__base_readonly" {
  group      = aws_iam_group.treasury_49_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_49_devs__self_service" {
  group      = aws_iam_group.treasury_49_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_5_analysts" {
  name = "solor-1njchy-treasury-5-analysts"
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
  name = "solor-1njchy-treasury-5-devs"
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

resource "aws_iam_group" "treasury_50_analysts" {
  name = "solor-1njchy-treasury-50-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_50_analysts__treasury_50_read" {
  group      = aws_iam_group.treasury_50_analysts.name
  policy_arn = aws_iam_policy.treasury_50_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_50_analysts__base_readonly" {
  group      = aws_iam_group.treasury_50_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_50_devs" {
  name = "solor-1njchy-treasury-50-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_50_devs__treasury_50_data_rw" {
  group      = aws_iam_group.treasury_50_devs.name
  policy_arn = aws_iam_policy.treasury_50_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_50_devs__treasury_50_ops" {
  group      = aws_iam_group.treasury_50_devs.name
  policy_arn = aws_iam_policy.treasury_50_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_50_devs__base_readonly" {
  group      = aws_iam_group.treasury_50_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_50_devs__self_service" {
  group      = aws_iam_group.treasury_50_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_6_analysts" {
  name = "solor-1njchy-treasury-6-analysts"
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
  name = "solor-1njchy-treasury-6-devs"
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
  name = "solor-1njchy-treasury-7-analysts"
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
  name = "solor-1njchy-treasury-7-devs"
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

resource "aws_iam_group" "treasury_8_analysts" {
  name = "solor-1njchy-treasury-8-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_8_analysts__treasury_8_read" {
  group      = aws_iam_group.treasury_8_analysts.name
  policy_arn = aws_iam_policy.treasury_8_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_8_analysts__base_readonly" {
  group      = aws_iam_group.treasury_8_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_8_devs" {
  name = "solor-1njchy-treasury-8-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_8_devs__treasury_8_data_rw" {
  group      = aws_iam_group.treasury_8_devs.name
  policy_arn = aws_iam_policy.treasury_8_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_8_devs__treasury_8_ops" {
  group      = aws_iam_group.treasury_8_devs.name
  policy_arn = aws_iam_policy.treasury_8_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_8_devs__base_readonly" {
  group      = aws_iam_group.treasury_8_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_8_devs__self_service" {
  group      = aws_iam_group.treasury_8_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_9_analysts" {
  name = "solor-1njchy-treasury-9-analysts"
}

resource "aws_iam_group_policy_attachment" "treasury_9_analysts__treasury_9_read" {
  group      = aws_iam_group.treasury_9_analysts.name
  policy_arn = aws_iam_policy.treasury_9_read.arn
}

resource "aws_iam_group_policy_attachment" "treasury_9_analysts__base_readonly" {
  group      = aws_iam_group.treasury_9_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "treasury_9_devs" {
  name = "solor-1njchy-treasury-9-devs"
}

resource "aws_iam_group_policy_attachment" "treasury_9_devs__treasury_9_data_rw" {
  group      = aws_iam_group.treasury_9_devs.name
  policy_arn = aws_iam_policy.treasury_9_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "treasury_9_devs__treasury_9_ops" {
  group      = aws_iam_group.treasury_9_devs.name
  policy_arn = aws_iam_policy.treasury_9_ops.arn
}

resource "aws_iam_group_policy_attachment" "treasury_9_devs__base_readonly" {
  group      = aws_iam_group.treasury_9_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "treasury_9_devs__self_service" {
  group      = aws_iam_group.treasury_9_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "treasury_analysts" {
  name = "solor-1njchy-treasury-analysts"
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
  name = "solor-1njchy-treasury-devs"
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
