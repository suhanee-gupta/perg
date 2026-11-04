resource "aws_iam_group" "api_2_analysts" {
  name = "axvel-1bmofe-api-2-analysts"
}

resource "aws_iam_group_policy_attachment" "api_2_analysts__api_2_read" {
  group      = aws_iam_group.api_2_analysts.name
  policy_arn = aws_iam_policy.api_2_read.arn
}

resource "aws_iam_group_policy_attachment" "api_2_analysts__base_readonly" {
  group      = aws_iam_group.api_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_2_devs" {
  name = "axvel-1bmofe-api-2-devs"
}

resource "aws_iam_group_policy_attachment" "api_2_devs__api_2_data_rw" {
  group      = aws_iam_group.api_2_devs.name
  policy_arn = aws_iam_policy.api_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_2_devs__api_2_ops" {
  group      = aws_iam_group.api_2_devs.name
  policy_arn = aws_iam_policy.api_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_2_devs__base_readonly" {
  group      = aws_iam_group.api_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_2_devs__self_service" {
  group      = aws_iam_group.api_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_3_analysts" {
  name = "axvel-1bmofe-api-3-analysts"
}

resource "aws_iam_group_policy_attachment" "api_3_analysts__api_3_read" {
  group      = aws_iam_group.api_3_analysts.name
  policy_arn = aws_iam_policy.api_3_read.arn
}

resource "aws_iam_group_policy_attachment" "api_3_analysts__base_readonly" {
  group      = aws_iam_group.api_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_3_devs" {
  name = "axvel-1bmofe-api-3-devs"
}

resource "aws_iam_group_policy_attachment" "api_3_devs__api_3_data_rw" {
  group      = aws_iam_group.api_3_devs.name
  policy_arn = aws_iam_policy.api_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_3_devs__api_3_ops" {
  group      = aws_iam_group.api_3_devs.name
  policy_arn = aws_iam_policy.api_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_3_devs__base_readonly" {
  group      = aws_iam_group.api_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_3_devs__self_service" {
  group      = aws_iam_group.api_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_4_analysts" {
  name = "axvel-1bmofe-api-4-analysts"
}

resource "aws_iam_group_policy_attachment" "api_4_analysts__api_4_read" {
  group      = aws_iam_group.api_4_analysts.name
  policy_arn = aws_iam_policy.api_4_read.arn
}

resource "aws_iam_group_policy_attachment" "api_4_analysts__base_readonly" {
  group      = aws_iam_group.api_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_4_devs" {
  name = "axvel-1bmofe-api-4-devs"
}

resource "aws_iam_group_policy_attachment" "api_4_devs__api_4_data_rw" {
  group      = aws_iam_group.api_4_devs.name
  policy_arn = aws_iam_policy.api_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_4_devs__api_4_ops" {
  group      = aws_iam_group.api_4_devs.name
  policy_arn = aws_iam_policy.api_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_4_devs__base_readonly" {
  group      = aws_iam_group.api_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_4_devs__self_service" {
  group      = aws_iam_group.api_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_5_analysts" {
  name = "axvel-1bmofe-api-5-analysts"
}

resource "aws_iam_group_policy_attachment" "api_5_analysts__api_5_read" {
  group      = aws_iam_group.api_5_analysts.name
  policy_arn = aws_iam_policy.api_5_read.arn
}

resource "aws_iam_group_policy_attachment" "api_5_analysts__base_readonly" {
  group      = aws_iam_group.api_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_5_devs" {
  name = "axvel-1bmofe-api-5-devs"
}

resource "aws_iam_group_policy_attachment" "api_5_devs__api_5_data_rw" {
  group      = aws_iam_group.api_5_devs.name
  policy_arn = aws_iam_policy.api_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_5_devs__api_5_ops" {
  group      = aws_iam_group.api_5_devs.name
  policy_arn = aws_iam_policy.api_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_5_devs__base_readonly" {
  group      = aws_iam_group.api_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_5_devs__self_service" {
  group      = aws_iam_group.api_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_6_analysts" {
  name = "axvel-1bmofe-api-6-analysts"
}

resource "aws_iam_group_policy_attachment" "api_6_analysts__api_6_read" {
  group      = aws_iam_group.api_6_analysts.name
  policy_arn = aws_iam_policy.api_6_read.arn
}

resource "aws_iam_group_policy_attachment" "api_6_analysts__base_readonly" {
  group      = aws_iam_group.api_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_6_devs" {
  name = "axvel-1bmofe-api-6-devs"
}

resource "aws_iam_group_policy_attachment" "api_6_devs__api_6_data_rw" {
  group      = aws_iam_group.api_6_devs.name
  policy_arn = aws_iam_policy.api_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_6_devs__api_6_ops" {
  group      = aws_iam_group.api_6_devs.name
  policy_arn = aws_iam_policy.api_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_6_devs__base_readonly" {
  group      = aws_iam_group.api_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_6_devs__self_service" {
  group      = aws_iam_group.api_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_7_analysts" {
  name = "axvel-1bmofe-api-7-analysts"
}

resource "aws_iam_group_policy_attachment" "api_7_analysts__api_7_read" {
  group      = aws_iam_group.api_7_analysts.name
  policy_arn = aws_iam_policy.api_7_read.arn
}

resource "aws_iam_group_policy_attachment" "api_7_analysts__base_readonly" {
  group      = aws_iam_group.api_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_7_devs" {
  name = "axvel-1bmofe-api-7-devs"
}

resource "aws_iam_group_policy_attachment" "api_7_devs__api_7_data_rw" {
  group      = aws_iam_group.api_7_devs.name
  policy_arn = aws_iam_policy.api_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_7_devs__api_7_ops" {
  group      = aws_iam_group.api_7_devs.name
  policy_arn = aws_iam_policy.api_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_7_devs__base_readonly" {
  group      = aws_iam_group.api_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_7_devs__self_service" {
  group      = aws_iam_group.api_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "api_analysts" {
  name = "axvel-1bmofe-api-analysts"
}

resource "aws_iam_group_policy_attachment" "api_analysts__api_read" {
  group      = aws_iam_group.api_analysts.name
  policy_arn = aws_iam_policy.api_read.arn
}

resource "aws_iam_group_policy_attachment" "api_analysts__base_readonly" {
  group      = aws_iam_group.api_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "api_devs" {
  name = "axvel-1bmofe-api-devs"
}

resource "aws_iam_group_policy_attachment" "api_devs__api_data_rw" {
  group      = aws_iam_group.api_devs.name
  policy_arn = aws_iam_policy.api_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "api_devs__api_ops" {
  group      = aws_iam_group.api_devs.name
  policy_arn = aws_iam_policy.api_ops.arn
}

resource "aws_iam_group_policy_attachment" "api_devs__base_readonly" {
  group      = aws_iam_group.api_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "api_devs__self_service" {
  group      = aws_iam_group.api_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_2_analysts" {
  name = "axvel-1bmofe-auth-2-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_2_analysts__auth_2_read" {
  group      = aws_iam_group.auth_2_analysts.name
  policy_arn = aws_iam_policy.auth_2_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_2_analysts__base_readonly" {
  group      = aws_iam_group.auth_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_2_devs" {
  name = "axvel-1bmofe-auth-2-devs"
}

resource "aws_iam_group_policy_attachment" "auth_2_devs__auth_2_data_rw" {
  group      = aws_iam_group.auth_2_devs.name
  policy_arn = aws_iam_policy.auth_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_2_devs__auth_2_ops" {
  group      = aws_iam_group.auth_2_devs.name
  policy_arn = aws_iam_policy.auth_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_2_devs__base_readonly" {
  group      = aws_iam_group.auth_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_2_devs__self_service" {
  group      = aws_iam_group.auth_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_3_analysts" {
  name = "axvel-1bmofe-auth-3-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_3_analysts__auth_3_read" {
  group      = aws_iam_group.auth_3_analysts.name
  policy_arn = aws_iam_policy.auth_3_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_3_analysts__base_readonly" {
  group      = aws_iam_group.auth_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_3_devs" {
  name = "axvel-1bmofe-auth-3-devs"
}

resource "aws_iam_group_policy_attachment" "auth_3_devs__auth_3_data_rw" {
  group      = aws_iam_group.auth_3_devs.name
  policy_arn = aws_iam_policy.auth_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_3_devs__auth_3_ops" {
  group      = aws_iam_group.auth_3_devs.name
  policy_arn = aws_iam_policy.auth_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_3_devs__base_readonly" {
  group      = aws_iam_group.auth_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_3_devs__self_service" {
  group      = aws_iam_group.auth_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_4_analysts" {
  name = "axvel-1bmofe-auth-4-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_4_analysts__auth_4_read" {
  group      = aws_iam_group.auth_4_analysts.name
  policy_arn = aws_iam_policy.auth_4_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_4_analysts__base_readonly" {
  group      = aws_iam_group.auth_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_4_devs" {
  name = "axvel-1bmofe-auth-4-devs"
}

resource "aws_iam_group_policy_attachment" "auth_4_devs__auth_4_data_rw" {
  group      = aws_iam_group.auth_4_devs.name
  policy_arn = aws_iam_policy.auth_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_4_devs__auth_4_ops" {
  group      = aws_iam_group.auth_4_devs.name
  policy_arn = aws_iam_policy.auth_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_4_devs__base_readonly" {
  group      = aws_iam_group.auth_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_4_devs__self_service" {
  group      = aws_iam_group.auth_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_5_analysts" {
  name = "axvel-1bmofe-auth-5-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_5_analysts__auth_5_read" {
  group      = aws_iam_group.auth_5_analysts.name
  policy_arn = aws_iam_policy.auth_5_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_5_analysts__base_readonly" {
  group      = aws_iam_group.auth_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_5_devs" {
  name = "axvel-1bmofe-auth-5-devs"
}

resource "aws_iam_group_policy_attachment" "auth_5_devs__auth_5_data_rw" {
  group      = aws_iam_group.auth_5_devs.name
  policy_arn = aws_iam_policy.auth_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_5_devs__auth_5_ops" {
  group      = aws_iam_group.auth_5_devs.name
  policy_arn = aws_iam_policy.auth_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_5_devs__base_readonly" {
  group      = aws_iam_group.auth_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_5_devs__self_service" {
  group      = aws_iam_group.auth_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_6_analysts" {
  name = "axvel-1bmofe-auth-6-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_6_analysts__auth_6_read" {
  group      = aws_iam_group.auth_6_analysts.name
  policy_arn = aws_iam_policy.auth_6_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_6_analysts__base_readonly" {
  group      = aws_iam_group.auth_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_6_devs" {
  name = "axvel-1bmofe-auth-6-devs"
}

resource "aws_iam_group_policy_attachment" "auth_6_devs__auth_6_data_rw" {
  group      = aws_iam_group.auth_6_devs.name
  policy_arn = aws_iam_policy.auth_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_6_devs__auth_6_ops" {
  group      = aws_iam_group.auth_6_devs.name
  policy_arn = aws_iam_policy.auth_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_6_devs__base_readonly" {
  group      = aws_iam_group.auth_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_6_devs__self_service" {
  group      = aws_iam_group.auth_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "auth_analysts" {
  name = "axvel-1bmofe-auth-analysts"
}

resource "aws_iam_group_policy_attachment" "auth_analysts__auth_read" {
  group      = aws_iam_group.auth_analysts.name
  policy_arn = aws_iam_policy.auth_read.arn
}

resource "aws_iam_group_policy_attachment" "auth_analysts__base_readonly" {
  group      = aws_iam_group.auth_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "auth_devs" {
  name = "axvel-1bmofe-auth-devs"
}

resource "aws_iam_group_policy_attachment" "auth_devs__auth_data_rw" {
  group      = aws_iam_group.auth_devs.name
  policy_arn = aws_iam_policy.auth_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "auth_devs__auth_ops" {
  group      = aws_iam_group.auth_devs.name
  policy_arn = aws_iam_policy.auth_ops.arn
}

resource "aws_iam_group_policy_attachment" "auth_devs__base_readonly" {
  group      = aws_iam_group.auth_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "auth_devs__self_service" {
  group      = aws_iam_group.auth_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_2_analysts" {
  name = "axvel-1bmofe-billing-2-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_2_analysts__billing_2_read" {
  group      = aws_iam_group.billing_2_analysts.name
  policy_arn = aws_iam_policy.billing_2_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_2_analysts__base_readonly" {
  group      = aws_iam_group.billing_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_2_devs" {
  name = "axvel-1bmofe-billing-2-devs"
}

resource "aws_iam_group_policy_attachment" "billing_2_devs__billing_2_data_rw" {
  group      = aws_iam_group.billing_2_devs.name
  policy_arn = aws_iam_policy.billing_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_2_devs__billing_2_ops" {
  group      = aws_iam_group.billing_2_devs.name
  policy_arn = aws_iam_policy.billing_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_2_devs__base_readonly" {
  group      = aws_iam_group.billing_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_2_devs__self_service" {
  group      = aws_iam_group.billing_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_3_analysts" {
  name = "axvel-1bmofe-billing-3-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_3_analysts__billing_3_read" {
  group      = aws_iam_group.billing_3_analysts.name
  policy_arn = aws_iam_policy.billing_3_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_3_analysts__base_readonly" {
  group      = aws_iam_group.billing_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_3_devs" {
  name = "axvel-1bmofe-billing-3-devs"
}

resource "aws_iam_group_policy_attachment" "billing_3_devs__billing_3_data_rw" {
  group      = aws_iam_group.billing_3_devs.name
  policy_arn = aws_iam_policy.billing_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_3_devs__billing_3_ops" {
  group      = aws_iam_group.billing_3_devs.name
  policy_arn = aws_iam_policy.billing_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_3_devs__base_readonly" {
  group      = aws_iam_group.billing_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_3_devs__self_service" {
  group      = aws_iam_group.billing_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_4_analysts" {
  name = "axvel-1bmofe-billing-4-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_4_analysts__billing_4_read" {
  group      = aws_iam_group.billing_4_analysts.name
  policy_arn = aws_iam_policy.billing_4_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_4_analysts__base_readonly" {
  group      = aws_iam_group.billing_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_4_devs" {
  name = "axvel-1bmofe-billing-4-devs"
}

resource "aws_iam_group_policy_attachment" "billing_4_devs__billing_4_data_rw" {
  group      = aws_iam_group.billing_4_devs.name
  policy_arn = aws_iam_policy.billing_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_4_devs__billing_4_ops" {
  group      = aws_iam_group.billing_4_devs.name
  policy_arn = aws_iam_policy.billing_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_4_devs__base_readonly" {
  group      = aws_iam_group.billing_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_4_devs__self_service" {
  group      = aws_iam_group.billing_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_5_analysts" {
  name = "axvel-1bmofe-billing-5-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_5_analysts__billing_5_read" {
  group      = aws_iam_group.billing_5_analysts.name
  policy_arn = aws_iam_policy.billing_5_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_5_analysts__base_readonly" {
  group      = aws_iam_group.billing_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_5_devs" {
  name = "axvel-1bmofe-billing-5-devs"
}

resource "aws_iam_group_policy_attachment" "billing_5_devs__billing_5_data_rw" {
  group      = aws_iam_group.billing_5_devs.name
  policy_arn = aws_iam_policy.billing_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_5_devs__billing_5_ops" {
  group      = aws_iam_group.billing_5_devs.name
  policy_arn = aws_iam_policy.billing_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_5_devs__base_readonly" {
  group      = aws_iam_group.billing_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_5_devs__self_service" {
  group      = aws_iam_group.billing_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_6_analysts" {
  name = "axvel-1bmofe-billing-6-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_6_analysts__billing_6_read" {
  group      = aws_iam_group.billing_6_analysts.name
  policy_arn = aws_iam_policy.billing_6_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_6_analysts__base_readonly" {
  group      = aws_iam_group.billing_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_6_devs" {
  name = "axvel-1bmofe-billing-6-devs"
}

resource "aws_iam_group_policy_attachment" "billing_6_devs__billing_6_data_rw" {
  group      = aws_iam_group.billing_6_devs.name
  policy_arn = aws_iam_policy.billing_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_6_devs__billing_6_ops" {
  group      = aws_iam_group.billing_6_devs.name
  policy_arn = aws_iam_policy.billing_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_6_devs__base_readonly" {
  group      = aws_iam_group.billing_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_6_devs__self_service" {
  group      = aws_iam_group.billing_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_7_analysts" {
  name = "axvel-1bmofe-billing-7-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_7_analysts__billing_7_read" {
  group      = aws_iam_group.billing_7_analysts.name
  policy_arn = aws_iam_policy.billing_7_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_7_analysts__base_readonly" {
  group      = aws_iam_group.billing_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_7_devs" {
  name = "axvel-1bmofe-billing-7-devs"
}

resource "aws_iam_group_policy_attachment" "billing_7_devs__billing_7_data_rw" {
  group      = aws_iam_group.billing_7_devs.name
  policy_arn = aws_iam_policy.billing_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_7_devs__billing_7_ops" {
  group      = aws_iam_group.billing_7_devs.name
  policy_arn = aws_iam_policy.billing_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_7_devs__base_readonly" {
  group      = aws_iam_group.billing_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_7_devs__self_service" {
  group      = aws_iam_group.billing_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_analysts" {
  name = "axvel-1bmofe-billing-analysts"
}

resource "aws_iam_group_policy_attachment" "billing_analysts__billing_read" {
  group      = aws_iam_group.billing_analysts.name
  policy_arn = aws_iam_policy.billing_read.arn
}

resource "aws_iam_group_policy_attachment" "billing_analysts__base_readonly" {
  group      = aws_iam_group.billing_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "billing_devs" {
  name = "axvel-1bmofe-billing-devs"
}

resource "aws_iam_group_policy_attachment" "billing_devs__billing_data_rw" {
  group      = aws_iam_group.billing_devs.name
  policy_arn = aws_iam_policy.billing_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "billing_devs__billing_ops" {
  group      = aws_iam_group.billing_devs.name
  policy_arn = aws_iam_policy.billing_ops.arn
}

resource "aws_iam_group_policy_attachment" "billing_devs__base_readonly" {
  group      = aws_iam_group.billing_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "billing_devs__self_service" {
  group      = aws_iam_group.billing_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "contractors" {
  name = "axvel-1bmofe-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_2_analysts" {
  name = "axvel-1bmofe-data-2-analysts"
}

resource "aws_iam_group_policy_attachment" "data_2_analysts__data_2_read" {
  group      = aws_iam_group.data_2_analysts.name
  policy_arn = aws_iam_policy.data_2_read.arn
}

resource "aws_iam_group_policy_attachment" "data_2_analysts__base_readonly" {
  group      = aws_iam_group.data_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_2_devs" {
  name = "axvel-1bmofe-data-2-devs"
}

resource "aws_iam_group_policy_attachment" "data_2_devs__data_2_data_rw" {
  group      = aws_iam_group.data_2_devs.name
  policy_arn = aws_iam_policy.data_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_2_devs__data_2_ops" {
  group      = aws_iam_group.data_2_devs.name
  policy_arn = aws_iam_policy.data_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_2_devs__base_readonly" {
  group      = aws_iam_group.data_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_2_devs__self_service" {
  group      = aws_iam_group.data_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_3_analysts" {
  name = "axvel-1bmofe-data-3-analysts"
}

resource "aws_iam_group_policy_attachment" "data_3_analysts__data_3_read" {
  group      = aws_iam_group.data_3_analysts.name
  policy_arn = aws_iam_policy.data_3_read.arn
}

resource "aws_iam_group_policy_attachment" "data_3_analysts__base_readonly" {
  group      = aws_iam_group.data_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_3_devs" {
  name = "axvel-1bmofe-data-3-devs"
}

resource "aws_iam_group_policy_attachment" "data_3_devs__data_3_data_rw" {
  group      = aws_iam_group.data_3_devs.name
  policy_arn = aws_iam_policy.data_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_3_devs__data_3_ops" {
  group      = aws_iam_group.data_3_devs.name
  policy_arn = aws_iam_policy.data_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_3_devs__base_readonly" {
  group      = aws_iam_group.data_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_3_devs__self_service" {
  group      = aws_iam_group.data_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_4_analysts" {
  name = "axvel-1bmofe-data-4-analysts"
}

resource "aws_iam_group_policy_attachment" "data_4_analysts__data_4_read" {
  group      = aws_iam_group.data_4_analysts.name
  policy_arn = aws_iam_policy.data_4_read.arn
}

resource "aws_iam_group_policy_attachment" "data_4_analysts__base_readonly" {
  group      = aws_iam_group.data_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_4_devs" {
  name = "axvel-1bmofe-data-4-devs"
}

resource "aws_iam_group_policy_attachment" "data_4_devs__data_4_data_rw" {
  group      = aws_iam_group.data_4_devs.name
  policy_arn = aws_iam_policy.data_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_4_devs__data_4_ops" {
  group      = aws_iam_group.data_4_devs.name
  policy_arn = aws_iam_policy.data_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_4_devs__base_readonly" {
  group      = aws_iam_group.data_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_4_devs__self_service" {
  group      = aws_iam_group.data_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_5_analysts" {
  name = "axvel-1bmofe-data-5-analysts"
}

resource "aws_iam_group_policy_attachment" "data_5_analysts__data_5_read" {
  group      = aws_iam_group.data_5_analysts.name
  policy_arn = aws_iam_policy.data_5_read.arn
}

resource "aws_iam_group_policy_attachment" "data_5_analysts__base_readonly" {
  group      = aws_iam_group.data_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_5_devs" {
  name = "axvel-1bmofe-data-5-devs"
}

resource "aws_iam_group_policy_attachment" "data_5_devs__data_5_data_rw" {
  group      = aws_iam_group.data_5_devs.name
  policy_arn = aws_iam_policy.data_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_5_devs__data_5_ops" {
  group      = aws_iam_group.data_5_devs.name
  policy_arn = aws_iam_policy.data_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_5_devs__base_readonly" {
  group      = aws_iam_group.data_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_5_devs__self_service" {
  group      = aws_iam_group.data_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_6_analysts" {
  name = "axvel-1bmofe-data-6-analysts"
}

resource "aws_iam_group_policy_attachment" "data_6_analysts__data_6_read" {
  group      = aws_iam_group.data_6_analysts.name
  policy_arn = aws_iam_policy.data_6_read.arn
}

resource "aws_iam_group_policy_attachment" "data_6_analysts__base_readonly" {
  group      = aws_iam_group.data_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_6_devs" {
  name = "axvel-1bmofe-data-6-devs"
}

resource "aws_iam_group_policy_attachment" "data_6_devs__data_6_data_rw" {
  group      = aws_iam_group.data_6_devs.name
  policy_arn = aws_iam_policy.data_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_6_devs__data_6_ops" {
  group      = aws_iam_group.data_6_devs.name
  policy_arn = aws_iam_policy.data_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_6_devs__base_readonly" {
  group      = aws_iam_group.data_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_6_devs__self_service" {
  group      = aws_iam_group.data_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_7_analysts" {
  name = "axvel-1bmofe-data-7-analysts"
}

resource "aws_iam_group_policy_attachment" "data_7_analysts__data_7_read" {
  group      = aws_iam_group.data_7_analysts.name
  policy_arn = aws_iam_policy.data_7_read.arn
}

resource "aws_iam_group_policy_attachment" "data_7_analysts__base_readonly" {
  group      = aws_iam_group.data_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_7_devs" {
  name = "axvel-1bmofe-data-7-devs"
}

resource "aws_iam_group_policy_attachment" "data_7_devs__data_7_data_rw" {
  group      = aws_iam_group.data_7_devs.name
  policy_arn = aws_iam_policy.data_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_7_devs__data_7_ops" {
  group      = aws_iam_group.data_7_devs.name
  policy_arn = aws_iam_policy.data_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_7_devs__base_readonly" {
  group      = aws_iam_group.data_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_7_devs__self_service" {
  group      = aws_iam_group.data_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "data_analysts" {
  name = "axvel-1bmofe-data-analysts"
}

resource "aws_iam_group_policy_attachment" "data_analysts__data_read" {
  group      = aws_iam_group.data_analysts.name
  policy_arn = aws_iam_policy.data_read.arn
}

resource "aws_iam_group_policy_attachment" "data_analysts__base_readonly" {
  group      = aws_iam_group.data_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_devs" {
  name = "axvel-1bmofe-data-devs"
}

resource "aws_iam_group_policy_attachment" "data_devs__data_data_rw" {
  group      = aws_iam_group.data_devs.name
  policy_arn = aws_iam_policy.data_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "data_devs__data_ops" {
  group      = aws_iam_group.data_devs.name
  policy_arn = aws_iam_policy.data_ops.arn
}

resource "aws_iam_group_policy_attachment" "data_devs__base_readonly" {
  group      = aws_iam_group.data_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "data_devs__self_service" {
  group      = aws_iam_group.data_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_2_analysts" {
  name = "axvel-1bmofe-growth-2-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_2_analysts__growth_2_read" {
  group      = aws_iam_group.growth_2_analysts.name
  policy_arn = aws_iam_policy.growth_2_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_2_analysts__base_readonly" {
  group      = aws_iam_group.growth_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_2_devs" {
  name = "axvel-1bmofe-growth-2-devs"
}

resource "aws_iam_group_policy_attachment" "growth_2_devs__growth_2_data_rw" {
  group      = aws_iam_group.growth_2_devs.name
  policy_arn = aws_iam_policy.growth_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_2_devs__growth_2_ops" {
  group      = aws_iam_group.growth_2_devs.name
  policy_arn = aws_iam_policy.growth_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_2_devs__base_readonly" {
  group      = aws_iam_group.growth_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_2_devs__self_service" {
  group      = aws_iam_group.growth_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_3_analysts" {
  name = "axvel-1bmofe-growth-3-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_3_analysts__growth_3_read" {
  group      = aws_iam_group.growth_3_analysts.name
  policy_arn = aws_iam_policy.growth_3_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_3_analysts__base_readonly" {
  group      = aws_iam_group.growth_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_3_devs" {
  name = "axvel-1bmofe-growth-3-devs"
}

resource "aws_iam_group_policy_attachment" "growth_3_devs__growth_3_data_rw" {
  group      = aws_iam_group.growth_3_devs.name
  policy_arn = aws_iam_policy.growth_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_3_devs__growth_3_ops" {
  group      = aws_iam_group.growth_3_devs.name
  policy_arn = aws_iam_policy.growth_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_3_devs__base_readonly" {
  group      = aws_iam_group.growth_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_3_devs__self_service" {
  group      = aws_iam_group.growth_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_4_analysts" {
  name = "axvel-1bmofe-growth-4-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_4_analysts__growth_4_read" {
  group      = aws_iam_group.growth_4_analysts.name
  policy_arn = aws_iam_policy.growth_4_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_4_analysts__base_readonly" {
  group      = aws_iam_group.growth_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_4_devs" {
  name = "axvel-1bmofe-growth-4-devs"
}

resource "aws_iam_group_policy_attachment" "growth_4_devs__growth_4_data_rw" {
  group      = aws_iam_group.growth_4_devs.name
  policy_arn = aws_iam_policy.growth_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_4_devs__growth_4_ops" {
  group      = aws_iam_group.growth_4_devs.name
  policy_arn = aws_iam_policy.growth_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_4_devs__base_readonly" {
  group      = aws_iam_group.growth_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_4_devs__self_service" {
  group      = aws_iam_group.growth_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_5_analysts" {
  name = "axvel-1bmofe-growth-5-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_5_analysts__growth_5_read" {
  group      = aws_iam_group.growth_5_analysts.name
  policy_arn = aws_iam_policy.growth_5_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_5_analysts__base_readonly" {
  group      = aws_iam_group.growth_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_5_devs" {
  name = "axvel-1bmofe-growth-5-devs"
}

resource "aws_iam_group_policy_attachment" "growth_5_devs__growth_5_data_rw" {
  group      = aws_iam_group.growth_5_devs.name
  policy_arn = aws_iam_policy.growth_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_5_devs__growth_5_ops" {
  group      = aws_iam_group.growth_5_devs.name
  policy_arn = aws_iam_policy.growth_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_5_devs__base_readonly" {
  group      = aws_iam_group.growth_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_5_devs__self_service" {
  group      = aws_iam_group.growth_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_6_analysts" {
  name = "axvel-1bmofe-growth-6-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_6_analysts__growth_6_read" {
  group      = aws_iam_group.growth_6_analysts.name
  policy_arn = aws_iam_policy.growth_6_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_6_analysts__base_readonly" {
  group      = aws_iam_group.growth_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_6_devs" {
  name = "axvel-1bmofe-growth-6-devs"
}

resource "aws_iam_group_policy_attachment" "growth_6_devs__growth_6_data_rw" {
  group      = aws_iam_group.growth_6_devs.name
  policy_arn = aws_iam_policy.growth_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_6_devs__growth_6_ops" {
  group      = aws_iam_group.growth_6_devs.name
  policy_arn = aws_iam_policy.growth_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_6_devs__base_readonly" {
  group      = aws_iam_group.growth_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_6_devs__self_service" {
  group      = aws_iam_group.growth_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_7_analysts" {
  name = "axvel-1bmofe-growth-7-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_7_analysts__growth_7_read" {
  group      = aws_iam_group.growth_7_analysts.name
  policy_arn = aws_iam_policy.growth_7_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_7_analysts__base_readonly" {
  group      = aws_iam_group.growth_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_7_devs" {
  name = "axvel-1bmofe-growth-7-devs"
}

resource "aws_iam_group_policy_attachment" "growth_7_devs__growth_7_data_rw" {
  group      = aws_iam_group.growth_7_devs.name
  policy_arn = aws_iam_policy.growth_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_7_devs__growth_7_ops" {
  group      = aws_iam_group.growth_7_devs.name
  policy_arn = aws_iam_policy.growth_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_7_devs__base_readonly" {
  group      = aws_iam_group.growth_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_7_devs__self_service" {
  group      = aws_iam_group.growth_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "growth_analysts" {
  name = "axvel-1bmofe-growth-analysts"
}

resource "aws_iam_group_policy_attachment" "growth_analysts__growth_read" {
  group      = aws_iam_group.growth_analysts.name
  policy_arn = aws_iam_policy.growth_read.arn
}

resource "aws_iam_group_policy_attachment" "growth_analysts__base_readonly" {
  group      = aws_iam_group.growth_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "growth_devs" {
  name = "axvel-1bmofe-growth-devs"
}

resource "aws_iam_group_policy_attachment" "growth_devs__growth_data_rw" {
  group      = aws_iam_group.growth_devs.name
  policy_arn = aws_iam_policy.growth_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "growth_devs__growth_ops" {
  group      = aws_iam_group.growth_devs.name
  policy_arn = aws_iam_policy.growth_ops.arn
}

resource "aws_iam_group_policy_attachment" "growth_devs__base_readonly" {
  group      = aws_iam_group.growth_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "growth_devs__self_service" {
  group      = aws_iam_group.growth_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_2_analysts" {
  name = "axvel-1bmofe-infra-2-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_2_analysts__infra_2_read" {
  group      = aws_iam_group.infra_2_analysts.name
  policy_arn = aws_iam_policy.infra_2_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_2_analysts__base_readonly" {
  group      = aws_iam_group.infra_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_2_devs" {
  name = "axvel-1bmofe-infra-2-devs"
}

resource "aws_iam_group_policy_attachment" "infra_2_devs__infra_2_data_rw" {
  group      = aws_iam_group.infra_2_devs.name
  policy_arn = aws_iam_policy.infra_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_2_devs__infra_2_ops" {
  group      = aws_iam_group.infra_2_devs.name
  policy_arn = aws_iam_policy.infra_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_2_devs__base_readonly" {
  group      = aws_iam_group.infra_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_2_devs__self_service" {
  group      = aws_iam_group.infra_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_3_analysts" {
  name = "axvel-1bmofe-infra-3-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_3_analysts__infra_3_read" {
  group      = aws_iam_group.infra_3_analysts.name
  policy_arn = aws_iam_policy.infra_3_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_3_analysts__base_readonly" {
  group      = aws_iam_group.infra_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_3_devs" {
  name = "axvel-1bmofe-infra-3-devs"
}

resource "aws_iam_group_policy_attachment" "infra_3_devs__infra_3_data_rw" {
  group      = aws_iam_group.infra_3_devs.name
  policy_arn = aws_iam_policy.infra_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_3_devs__infra_3_ops" {
  group      = aws_iam_group.infra_3_devs.name
  policy_arn = aws_iam_policy.infra_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_3_devs__base_readonly" {
  group      = aws_iam_group.infra_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_3_devs__self_service" {
  group      = aws_iam_group.infra_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_4_analysts" {
  name = "axvel-1bmofe-infra-4-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_4_analysts__infra_4_read" {
  group      = aws_iam_group.infra_4_analysts.name
  policy_arn = aws_iam_policy.infra_4_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_4_analysts__base_readonly" {
  group      = aws_iam_group.infra_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_4_devs" {
  name = "axvel-1bmofe-infra-4-devs"
}

resource "aws_iam_group_policy_attachment" "infra_4_devs__infra_4_data_rw" {
  group      = aws_iam_group.infra_4_devs.name
  policy_arn = aws_iam_policy.infra_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_4_devs__infra_4_ops" {
  group      = aws_iam_group.infra_4_devs.name
  policy_arn = aws_iam_policy.infra_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_4_devs__base_readonly" {
  group      = aws_iam_group.infra_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_4_devs__self_service" {
  group      = aws_iam_group.infra_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_5_analysts" {
  name = "axvel-1bmofe-infra-5-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_5_analysts__infra_5_read" {
  group      = aws_iam_group.infra_5_analysts.name
  policy_arn = aws_iam_policy.infra_5_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_5_analysts__base_readonly" {
  group      = aws_iam_group.infra_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_5_devs" {
  name = "axvel-1bmofe-infra-5-devs"
}

resource "aws_iam_group_policy_attachment" "infra_5_devs__infra_5_data_rw" {
  group      = aws_iam_group.infra_5_devs.name
  policy_arn = aws_iam_policy.infra_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_5_devs__infra_5_ops" {
  group      = aws_iam_group.infra_5_devs.name
  policy_arn = aws_iam_policy.infra_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_5_devs__base_readonly" {
  group      = aws_iam_group.infra_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_5_devs__self_service" {
  group      = aws_iam_group.infra_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_6_analysts" {
  name = "axvel-1bmofe-infra-6-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_6_analysts__infra_6_read" {
  group      = aws_iam_group.infra_6_analysts.name
  policy_arn = aws_iam_policy.infra_6_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_6_analysts__base_readonly" {
  group      = aws_iam_group.infra_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_6_devs" {
  name = "axvel-1bmofe-infra-6-devs"
}

resource "aws_iam_group_policy_attachment" "infra_6_devs__infra_6_data_rw" {
  group      = aws_iam_group.infra_6_devs.name
  policy_arn = aws_iam_policy.infra_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_6_devs__infra_6_ops" {
  group      = aws_iam_group.infra_6_devs.name
  policy_arn = aws_iam_policy.infra_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_6_devs__base_readonly" {
  group      = aws_iam_group.infra_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_6_devs__self_service" {
  group      = aws_iam_group.infra_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_7_analysts" {
  name = "axvel-1bmofe-infra-7-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_7_analysts__infra_7_read" {
  group      = aws_iam_group.infra_7_analysts.name
  policy_arn = aws_iam_policy.infra_7_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_7_analysts__base_readonly" {
  group      = aws_iam_group.infra_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_7_devs" {
  name = "axvel-1bmofe-infra-7-devs"
}

resource "aws_iam_group_policy_attachment" "infra_7_devs__infra_7_data_rw" {
  group      = aws_iam_group.infra_7_devs.name
  policy_arn = aws_iam_policy.infra_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_7_devs__infra_7_ops" {
  group      = aws_iam_group.infra_7_devs.name
  policy_arn = aws_iam_policy.infra_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_7_devs__base_readonly" {
  group      = aws_iam_group.infra_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_7_devs__self_service" {
  group      = aws_iam_group.infra_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "infra_analysts" {
  name = "axvel-1bmofe-infra-analysts"
}

resource "aws_iam_group_policy_attachment" "infra_analysts__infra_read" {
  group      = aws_iam_group.infra_analysts.name
  policy_arn = aws_iam_policy.infra_read.arn
}

resource "aws_iam_group_policy_attachment" "infra_analysts__base_readonly" {
  group      = aws_iam_group.infra_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "infra_devs" {
  name = "axvel-1bmofe-infra-devs"
}

resource "aws_iam_group_policy_attachment" "infra_devs__infra_data_rw" {
  group      = aws_iam_group.infra_devs.name
  policy_arn = aws_iam_policy.infra_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "infra_devs__infra_ops" {
  group      = aws_iam_group.infra_devs.name
  policy_arn = aws_iam_policy.infra_ops.arn
}

resource "aws_iam_group_policy_attachment" "infra_devs__base_readonly" {
  group      = aws_iam_group.infra_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "infra_devs__self_service" {
  group      = aws_iam_group.infra_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_2_analysts" {
  name = "axvel-1bmofe-ml-2-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_2_analysts__ml_2_read" {
  group      = aws_iam_group.ml_2_analysts.name
  policy_arn = aws_iam_policy.ml_2_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_2_analysts__base_readonly" {
  group      = aws_iam_group.ml_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_2_devs" {
  name = "axvel-1bmofe-ml-2-devs"
}

resource "aws_iam_group_policy_attachment" "ml_2_devs__ml_2_data_rw" {
  group      = aws_iam_group.ml_2_devs.name
  policy_arn = aws_iam_policy.ml_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_2_devs__ml_2_ops" {
  group      = aws_iam_group.ml_2_devs.name
  policy_arn = aws_iam_policy.ml_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_2_devs__base_readonly" {
  group      = aws_iam_group.ml_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_2_devs__self_service" {
  group      = aws_iam_group.ml_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_3_analysts" {
  name = "axvel-1bmofe-ml-3-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_3_analysts__ml_3_read" {
  group      = aws_iam_group.ml_3_analysts.name
  policy_arn = aws_iam_policy.ml_3_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_3_analysts__base_readonly" {
  group      = aws_iam_group.ml_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_3_devs" {
  name = "axvel-1bmofe-ml-3-devs"
}

resource "aws_iam_group_policy_attachment" "ml_3_devs__ml_3_data_rw" {
  group      = aws_iam_group.ml_3_devs.name
  policy_arn = aws_iam_policy.ml_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_3_devs__ml_3_ops" {
  group      = aws_iam_group.ml_3_devs.name
  policy_arn = aws_iam_policy.ml_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_3_devs__base_readonly" {
  group      = aws_iam_group.ml_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_3_devs__self_service" {
  group      = aws_iam_group.ml_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_4_analysts" {
  name = "axvel-1bmofe-ml-4-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_4_analysts__ml_4_read" {
  group      = aws_iam_group.ml_4_analysts.name
  policy_arn = aws_iam_policy.ml_4_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_4_analysts__base_readonly" {
  group      = aws_iam_group.ml_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_4_devs" {
  name = "axvel-1bmofe-ml-4-devs"
}

resource "aws_iam_group_policy_attachment" "ml_4_devs__ml_4_data_rw" {
  group      = aws_iam_group.ml_4_devs.name
  policy_arn = aws_iam_policy.ml_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_4_devs__ml_4_ops" {
  group      = aws_iam_group.ml_4_devs.name
  policy_arn = aws_iam_policy.ml_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_4_devs__base_readonly" {
  group      = aws_iam_group.ml_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_4_devs__self_service" {
  group      = aws_iam_group.ml_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_5_analysts" {
  name = "axvel-1bmofe-ml-5-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_5_analysts__ml_5_read" {
  group      = aws_iam_group.ml_5_analysts.name
  policy_arn = aws_iam_policy.ml_5_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_5_analysts__base_readonly" {
  group      = aws_iam_group.ml_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_5_devs" {
  name = "axvel-1bmofe-ml-5-devs"
}

resource "aws_iam_group_policy_attachment" "ml_5_devs__ml_5_data_rw" {
  group      = aws_iam_group.ml_5_devs.name
  policy_arn = aws_iam_policy.ml_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_5_devs__ml_5_ops" {
  group      = aws_iam_group.ml_5_devs.name
  policy_arn = aws_iam_policy.ml_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_5_devs__base_readonly" {
  group      = aws_iam_group.ml_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_5_devs__self_service" {
  group      = aws_iam_group.ml_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_6_analysts" {
  name = "axvel-1bmofe-ml-6-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_6_analysts__ml_6_read" {
  group      = aws_iam_group.ml_6_analysts.name
  policy_arn = aws_iam_policy.ml_6_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_6_analysts__base_readonly" {
  group      = aws_iam_group.ml_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_6_devs" {
  name = "axvel-1bmofe-ml-6-devs"
}

resource "aws_iam_group_policy_attachment" "ml_6_devs__ml_6_data_rw" {
  group      = aws_iam_group.ml_6_devs.name
  policy_arn = aws_iam_policy.ml_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_6_devs__ml_6_ops" {
  group      = aws_iam_group.ml_6_devs.name
  policy_arn = aws_iam_policy.ml_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_6_devs__base_readonly" {
  group      = aws_iam_group.ml_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_6_devs__self_service" {
  group      = aws_iam_group.ml_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "ml_analysts" {
  name = "axvel-1bmofe-ml-analysts"
}

resource "aws_iam_group_policy_attachment" "ml_analysts__ml_read" {
  group      = aws_iam_group.ml_analysts.name
  policy_arn = aws_iam_policy.ml_read.arn
}

resource "aws_iam_group_policy_attachment" "ml_analysts__base_readonly" {
  group      = aws_iam_group.ml_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "ml_devs" {
  name = "axvel-1bmofe-ml-devs"
}

resource "aws_iam_group_policy_attachment" "ml_devs__ml_data_rw" {
  group      = aws_iam_group.ml_devs.name
  policy_arn = aws_iam_policy.ml_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "ml_devs__ml_ops" {
  group      = aws_iam_group.ml_devs.name
  policy_arn = aws_iam_policy.ml_ops.arn
}

resource "aws_iam_group_policy_attachment" "ml_devs__base_readonly" {
  group      = aws_iam_group.ml_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "ml_devs__self_service" {
  group      = aws_iam_group.ml_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "mobile_2_analysts" {
  name = "axvel-1bmofe-mobile-2-analysts"
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
  name = "axvel-1bmofe-mobile-2-devs"
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
  name = "axvel-1bmofe-mobile-3-analysts"
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
  name = "axvel-1bmofe-mobile-3-devs"
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
  name = "axvel-1bmofe-mobile-4-analysts"
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
  name = "axvel-1bmofe-mobile-4-devs"
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
  name = "axvel-1bmofe-mobile-5-analysts"
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
  name = "axvel-1bmofe-mobile-5-devs"
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
  name = "axvel-1bmofe-mobile-6-analysts"
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
  name = "axvel-1bmofe-mobile-6-devs"
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
  name = "axvel-1bmofe-mobile-7-analysts"
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
  name = "axvel-1bmofe-mobile-7-devs"
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

resource "aws_iam_group" "mobile_analysts" {
  name = "axvel-1bmofe-mobile-analysts"
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
  name = "axvel-1bmofe-mobile-devs"
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

resource "aws_iam_group" "notifications_2_analysts" {
  name = "axvel-1bmofe-notifications-2-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_2_analysts__notifications_2_read" {
  group      = aws_iam_group.notifications_2_analysts.name
  policy_arn = aws_iam_policy.notifications_2_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_2_analysts__base_readonly" {
  group      = aws_iam_group.notifications_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_2_devs" {
  name = "axvel-1bmofe-notifications-2-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_2_devs__notifications_2_data_rw" {
  group      = aws_iam_group.notifications_2_devs.name
  policy_arn = aws_iam_policy.notifications_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_2_devs__notifications_2_ops" {
  group      = aws_iam_group.notifications_2_devs.name
  policy_arn = aws_iam_policy.notifications_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_2_devs__base_readonly" {
  group      = aws_iam_group.notifications_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_2_devs__self_service" {
  group      = aws_iam_group.notifications_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "notifications_3_analysts" {
  name = "axvel-1bmofe-notifications-3-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_3_analysts__notifications_3_read" {
  group      = aws_iam_group.notifications_3_analysts.name
  policy_arn = aws_iam_policy.notifications_3_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_3_analysts__base_readonly" {
  group      = aws_iam_group.notifications_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_3_devs" {
  name = "axvel-1bmofe-notifications-3-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_3_devs__notifications_3_data_rw" {
  group      = aws_iam_group.notifications_3_devs.name
  policy_arn = aws_iam_policy.notifications_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_3_devs__notifications_3_ops" {
  group      = aws_iam_group.notifications_3_devs.name
  policy_arn = aws_iam_policy.notifications_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_3_devs__base_readonly" {
  group      = aws_iam_group.notifications_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_3_devs__self_service" {
  group      = aws_iam_group.notifications_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "notifications_4_analysts" {
  name = "axvel-1bmofe-notifications-4-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_4_analysts__notifications_4_read" {
  group      = aws_iam_group.notifications_4_analysts.name
  policy_arn = aws_iam_policy.notifications_4_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_4_analysts__base_readonly" {
  group      = aws_iam_group.notifications_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_4_devs" {
  name = "axvel-1bmofe-notifications-4-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_4_devs__notifications_4_data_rw" {
  group      = aws_iam_group.notifications_4_devs.name
  policy_arn = aws_iam_policy.notifications_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_4_devs__notifications_4_ops" {
  group      = aws_iam_group.notifications_4_devs.name
  policy_arn = aws_iam_policy.notifications_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_4_devs__base_readonly" {
  group      = aws_iam_group.notifications_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_4_devs__self_service" {
  group      = aws_iam_group.notifications_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "notifications_5_analysts" {
  name = "axvel-1bmofe-notifications-5-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_5_analysts__notifications_5_read" {
  group      = aws_iam_group.notifications_5_analysts.name
  policy_arn = aws_iam_policy.notifications_5_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_5_analysts__base_readonly" {
  group      = aws_iam_group.notifications_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_5_devs" {
  name = "axvel-1bmofe-notifications-5-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_5_devs__notifications_5_data_rw" {
  group      = aws_iam_group.notifications_5_devs.name
  policy_arn = aws_iam_policy.notifications_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_5_devs__notifications_5_ops" {
  group      = aws_iam_group.notifications_5_devs.name
  policy_arn = aws_iam_policy.notifications_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_5_devs__base_readonly" {
  group      = aws_iam_group.notifications_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_5_devs__self_service" {
  group      = aws_iam_group.notifications_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "notifications_6_analysts" {
  name = "axvel-1bmofe-notifications-6-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_6_analysts__notifications_6_read" {
  group      = aws_iam_group.notifications_6_analysts.name
  policy_arn = aws_iam_policy.notifications_6_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_6_analysts__base_readonly" {
  group      = aws_iam_group.notifications_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_6_devs" {
  name = "axvel-1bmofe-notifications-6-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_6_devs__notifications_6_data_rw" {
  group      = aws_iam_group.notifications_6_devs.name
  policy_arn = aws_iam_policy.notifications_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_6_devs__notifications_6_ops" {
  group      = aws_iam_group.notifications_6_devs.name
  policy_arn = aws_iam_policy.notifications_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_6_devs__base_readonly" {
  group      = aws_iam_group.notifications_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_6_devs__self_service" {
  group      = aws_iam_group.notifications_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "notifications_analysts" {
  name = "axvel-1bmofe-notifications-analysts"
}

resource "aws_iam_group_policy_attachment" "notifications_analysts__notifications_read" {
  group      = aws_iam_group.notifications_analysts.name
  policy_arn = aws_iam_policy.notifications_read.arn
}

resource "aws_iam_group_policy_attachment" "notifications_analysts__base_readonly" {
  group      = aws_iam_group.notifications_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "notifications_devs" {
  name = "axvel-1bmofe-notifications-devs"
}

resource "aws_iam_group_policy_attachment" "notifications_devs__notifications_data_rw" {
  group      = aws_iam_group.notifications_devs.name
  policy_arn = aws_iam_policy.notifications_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "notifications_devs__notifications_ops" {
  group      = aws_iam_group.notifications_devs.name
  policy_arn = aws_iam_policy.notifications_ops.arn
}

resource "aws_iam_group_policy_attachment" "notifications_devs__base_readonly" {
  group      = aws_iam_group.notifications_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "notifications_devs__self_service" {
  group      = aws_iam_group.notifications_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "axvel-1bmofe-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "search_2_analysts" {
  name = "axvel-1bmofe-search-2-analysts"
}

resource "aws_iam_group_policy_attachment" "search_2_analysts__search_2_read" {
  group      = aws_iam_group.search_2_analysts.name
  policy_arn = aws_iam_policy.search_2_read.arn
}

resource "aws_iam_group_policy_attachment" "search_2_analysts__base_readonly" {
  group      = aws_iam_group.search_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_2_devs" {
  name = "axvel-1bmofe-search-2-devs"
}

resource "aws_iam_group_policy_attachment" "search_2_devs__search_2_data_rw" {
  group      = aws_iam_group.search_2_devs.name
  policy_arn = aws_iam_policy.search_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_2_devs__search_2_ops" {
  group      = aws_iam_group.search_2_devs.name
  policy_arn = aws_iam_policy.search_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_2_devs__base_readonly" {
  group      = aws_iam_group.search_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_2_devs__self_service" {
  group      = aws_iam_group.search_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_3_analysts" {
  name = "axvel-1bmofe-search-3-analysts"
}

resource "aws_iam_group_policy_attachment" "search_3_analysts__search_3_read" {
  group      = aws_iam_group.search_3_analysts.name
  policy_arn = aws_iam_policy.search_3_read.arn
}

resource "aws_iam_group_policy_attachment" "search_3_analysts__base_readonly" {
  group      = aws_iam_group.search_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_3_devs" {
  name = "axvel-1bmofe-search-3-devs"
}

resource "aws_iam_group_policy_attachment" "search_3_devs__search_3_data_rw" {
  group      = aws_iam_group.search_3_devs.name
  policy_arn = aws_iam_policy.search_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_3_devs__search_3_ops" {
  group      = aws_iam_group.search_3_devs.name
  policy_arn = aws_iam_policy.search_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_3_devs__base_readonly" {
  group      = aws_iam_group.search_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_3_devs__self_service" {
  group      = aws_iam_group.search_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_4_analysts" {
  name = "axvel-1bmofe-search-4-analysts"
}

resource "aws_iam_group_policy_attachment" "search_4_analysts__search_4_read" {
  group      = aws_iam_group.search_4_analysts.name
  policy_arn = aws_iam_policy.search_4_read.arn
}

resource "aws_iam_group_policy_attachment" "search_4_analysts__base_readonly" {
  group      = aws_iam_group.search_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_4_devs" {
  name = "axvel-1bmofe-search-4-devs"
}

resource "aws_iam_group_policy_attachment" "search_4_devs__search_4_data_rw" {
  group      = aws_iam_group.search_4_devs.name
  policy_arn = aws_iam_policy.search_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_4_devs__search_4_ops" {
  group      = aws_iam_group.search_4_devs.name
  policy_arn = aws_iam_policy.search_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_4_devs__base_readonly" {
  group      = aws_iam_group.search_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_4_devs__self_service" {
  group      = aws_iam_group.search_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_5_analysts" {
  name = "axvel-1bmofe-search-5-analysts"
}

resource "aws_iam_group_policy_attachment" "search_5_analysts__search_5_read" {
  group      = aws_iam_group.search_5_analysts.name
  policy_arn = aws_iam_policy.search_5_read.arn
}

resource "aws_iam_group_policy_attachment" "search_5_analysts__base_readonly" {
  group      = aws_iam_group.search_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_5_devs" {
  name = "axvel-1bmofe-search-5-devs"
}

resource "aws_iam_group_policy_attachment" "search_5_devs__search_5_data_rw" {
  group      = aws_iam_group.search_5_devs.name
  policy_arn = aws_iam_policy.search_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_5_devs__search_5_ops" {
  group      = aws_iam_group.search_5_devs.name
  policy_arn = aws_iam_policy.search_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_5_devs__base_readonly" {
  group      = aws_iam_group.search_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_5_devs__self_service" {
  group      = aws_iam_group.search_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_6_analysts" {
  name = "axvel-1bmofe-search-6-analysts"
}

resource "aws_iam_group_policy_attachment" "search_6_analysts__search_6_read" {
  group      = aws_iam_group.search_6_analysts.name
  policy_arn = aws_iam_policy.search_6_read.arn
}

resource "aws_iam_group_policy_attachment" "search_6_analysts__base_readonly" {
  group      = aws_iam_group.search_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_6_devs" {
  name = "axvel-1bmofe-search-6-devs"
}

resource "aws_iam_group_policy_attachment" "search_6_devs__search_6_data_rw" {
  group      = aws_iam_group.search_6_devs.name
  policy_arn = aws_iam_policy.search_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_6_devs__search_6_ops" {
  group      = aws_iam_group.search_6_devs.name
  policy_arn = aws_iam_policy.search_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_6_devs__base_readonly" {
  group      = aws_iam_group.search_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_6_devs__self_service" {
  group      = aws_iam_group.search_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_7_analysts" {
  name = "axvel-1bmofe-search-7-analysts"
}

resource "aws_iam_group_policy_attachment" "search_7_analysts__search_7_read" {
  group      = aws_iam_group.search_7_analysts.name
  policy_arn = aws_iam_policy.search_7_read.arn
}

resource "aws_iam_group_policy_attachment" "search_7_analysts__base_readonly" {
  group      = aws_iam_group.search_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_7_devs" {
  name = "axvel-1bmofe-search-7-devs"
}

resource "aws_iam_group_policy_attachment" "search_7_devs__search_7_data_rw" {
  group      = aws_iam_group.search_7_devs.name
  policy_arn = aws_iam_policy.search_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_7_devs__search_7_ops" {
  group      = aws_iam_group.search_7_devs.name
  policy_arn = aws_iam_policy.search_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_7_devs__base_readonly" {
  group      = aws_iam_group.search_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_7_devs__self_service" {
  group      = aws_iam_group.search_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "search_analysts" {
  name = "axvel-1bmofe-search-analysts"
}

resource "aws_iam_group_policy_attachment" "search_analysts__search_read" {
  group      = aws_iam_group.search_analysts.name
  policy_arn = aws_iam_policy.search_read.arn
}

resource "aws_iam_group_policy_attachment" "search_analysts__base_readonly" {
  group      = aws_iam_group.search_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "search_devs" {
  name = "axvel-1bmofe-search-devs"
}

resource "aws_iam_group_policy_attachment" "search_devs__search_data_rw" {
  group      = aws_iam_group.search_devs.name
  policy_arn = aws_iam_policy.search_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "search_devs__search_ops" {
  group      = aws_iam_group.search_devs.name
  policy_arn = aws_iam_policy.search_ops.arn
}

resource "aws_iam_group_policy_attachment" "search_devs__base_readonly" {
  group      = aws_iam_group.search_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "search_devs__self_service" {
  group      = aws_iam_group.search_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_2_analysts" {
  name = "axvel-1bmofe-support-2-analysts"
}

resource "aws_iam_group_policy_attachment" "support_2_analysts__support_2_read" {
  group      = aws_iam_group.support_2_analysts.name
  policy_arn = aws_iam_policy.support_2_read.arn
}

resource "aws_iam_group_policy_attachment" "support_2_analysts__base_readonly" {
  group      = aws_iam_group.support_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_2_devs" {
  name = "axvel-1bmofe-support-2-devs"
}

resource "aws_iam_group_policy_attachment" "support_2_devs__support_2_data_rw" {
  group      = aws_iam_group.support_2_devs.name
  policy_arn = aws_iam_policy.support_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_2_devs__support_2_ops" {
  group      = aws_iam_group.support_2_devs.name
  policy_arn = aws_iam_policy.support_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_2_devs__base_readonly" {
  group      = aws_iam_group.support_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_2_devs__self_service" {
  group      = aws_iam_group.support_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_3_analysts" {
  name = "axvel-1bmofe-support-3-analysts"
}

resource "aws_iam_group_policy_attachment" "support_3_analysts__support_3_read" {
  group      = aws_iam_group.support_3_analysts.name
  policy_arn = aws_iam_policy.support_3_read.arn
}

resource "aws_iam_group_policy_attachment" "support_3_analysts__base_readonly" {
  group      = aws_iam_group.support_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_3_devs" {
  name = "axvel-1bmofe-support-3-devs"
}

resource "aws_iam_group_policy_attachment" "support_3_devs__support_3_data_rw" {
  group      = aws_iam_group.support_3_devs.name
  policy_arn = aws_iam_policy.support_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_3_devs__support_3_ops" {
  group      = aws_iam_group.support_3_devs.name
  policy_arn = aws_iam_policy.support_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_3_devs__base_readonly" {
  group      = aws_iam_group.support_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_3_devs__self_service" {
  group      = aws_iam_group.support_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_4_analysts" {
  name = "axvel-1bmofe-support-4-analysts"
}

resource "aws_iam_group_policy_attachment" "support_4_analysts__support_4_read" {
  group      = aws_iam_group.support_4_analysts.name
  policy_arn = aws_iam_policy.support_4_read.arn
}

resource "aws_iam_group_policy_attachment" "support_4_analysts__base_readonly" {
  group      = aws_iam_group.support_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_4_devs" {
  name = "axvel-1bmofe-support-4-devs"
}

resource "aws_iam_group_policy_attachment" "support_4_devs__support_4_data_rw" {
  group      = aws_iam_group.support_4_devs.name
  policy_arn = aws_iam_policy.support_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_4_devs__support_4_ops" {
  group      = aws_iam_group.support_4_devs.name
  policy_arn = aws_iam_policy.support_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_4_devs__base_readonly" {
  group      = aws_iam_group.support_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_4_devs__self_service" {
  group      = aws_iam_group.support_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_5_analysts" {
  name = "axvel-1bmofe-support-5-analysts"
}

resource "aws_iam_group_policy_attachment" "support_5_analysts__support_5_read" {
  group      = aws_iam_group.support_5_analysts.name
  policy_arn = aws_iam_policy.support_5_read.arn
}

resource "aws_iam_group_policy_attachment" "support_5_analysts__base_readonly" {
  group      = aws_iam_group.support_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_5_devs" {
  name = "axvel-1bmofe-support-5-devs"
}

resource "aws_iam_group_policy_attachment" "support_5_devs__support_5_data_rw" {
  group      = aws_iam_group.support_5_devs.name
  policy_arn = aws_iam_policy.support_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_5_devs__support_5_ops" {
  group      = aws_iam_group.support_5_devs.name
  policy_arn = aws_iam_policy.support_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_5_devs__base_readonly" {
  group      = aws_iam_group.support_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_5_devs__self_service" {
  group      = aws_iam_group.support_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_6_analysts" {
  name = "axvel-1bmofe-support-6-analysts"
}

resource "aws_iam_group_policy_attachment" "support_6_analysts__support_6_read" {
  group      = aws_iam_group.support_6_analysts.name
  policy_arn = aws_iam_policy.support_6_read.arn
}

resource "aws_iam_group_policy_attachment" "support_6_analysts__base_readonly" {
  group      = aws_iam_group.support_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_6_devs" {
  name = "axvel-1bmofe-support-6-devs"
}

resource "aws_iam_group_policy_attachment" "support_6_devs__support_6_data_rw" {
  group      = aws_iam_group.support_6_devs.name
  policy_arn = aws_iam_policy.support_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_6_devs__support_6_ops" {
  group      = aws_iam_group.support_6_devs.name
  policy_arn = aws_iam_policy.support_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_6_devs__base_readonly" {
  group      = aws_iam_group.support_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_6_devs__self_service" {
  group      = aws_iam_group.support_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "support_analysts" {
  name = "axvel-1bmofe-support-analysts"
}

resource "aws_iam_group_policy_attachment" "support_analysts__support_read" {
  group      = aws_iam_group.support_analysts.name
  policy_arn = aws_iam_policy.support_read.arn
}

resource "aws_iam_group_policy_attachment" "support_analysts__base_readonly" {
  group      = aws_iam_group.support_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "support_devs" {
  name = "axvel-1bmofe-support-devs"
}

resource "aws_iam_group_policy_attachment" "support_devs__support_data_rw" {
  group      = aws_iam_group.support_devs.name
  policy_arn = aws_iam_policy.support_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "support_devs__support_ops" {
  group      = aws_iam_group.support_devs.name
  policy_arn = aws_iam_policy.support_ops.arn
}

resource "aws_iam_group_policy_attachment" "support_devs__base_readonly" {
  group      = aws_iam_group.support_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "support_devs__self_service" {
  group      = aws_iam_group.support_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_2_analysts" {
  name = "axvel-1bmofe-web-2-analysts"
}

resource "aws_iam_group_policy_attachment" "web_2_analysts__web_2_read" {
  group      = aws_iam_group.web_2_analysts.name
  policy_arn = aws_iam_policy.web_2_read.arn
}

resource "aws_iam_group_policy_attachment" "web_2_analysts__base_readonly" {
  group      = aws_iam_group.web_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_2_devs" {
  name = "axvel-1bmofe-web-2-devs"
}

resource "aws_iam_group_policy_attachment" "web_2_devs__web_2_data_rw" {
  group      = aws_iam_group.web_2_devs.name
  policy_arn = aws_iam_policy.web_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_2_devs__web_2_ops" {
  group      = aws_iam_group.web_2_devs.name
  policy_arn = aws_iam_policy.web_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_2_devs__base_readonly" {
  group      = aws_iam_group.web_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_2_devs__self_service" {
  group      = aws_iam_group.web_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_3_analysts" {
  name = "axvel-1bmofe-web-3-analysts"
}

resource "aws_iam_group_policy_attachment" "web_3_analysts__web_3_read" {
  group      = aws_iam_group.web_3_analysts.name
  policy_arn = aws_iam_policy.web_3_read.arn
}

resource "aws_iam_group_policy_attachment" "web_3_analysts__base_readonly" {
  group      = aws_iam_group.web_3_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_3_devs" {
  name = "axvel-1bmofe-web-3-devs"
}

resource "aws_iam_group_policy_attachment" "web_3_devs__web_3_data_rw" {
  group      = aws_iam_group.web_3_devs.name
  policy_arn = aws_iam_policy.web_3_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_3_devs__web_3_ops" {
  group      = aws_iam_group.web_3_devs.name
  policy_arn = aws_iam_policy.web_3_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_3_devs__base_readonly" {
  group      = aws_iam_group.web_3_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_3_devs__self_service" {
  group      = aws_iam_group.web_3_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_4_analysts" {
  name = "axvel-1bmofe-web-4-analysts"
}

resource "aws_iam_group_policy_attachment" "web_4_analysts__web_4_read" {
  group      = aws_iam_group.web_4_analysts.name
  policy_arn = aws_iam_policy.web_4_read.arn
}

resource "aws_iam_group_policy_attachment" "web_4_analysts__base_readonly" {
  group      = aws_iam_group.web_4_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_4_devs" {
  name = "axvel-1bmofe-web-4-devs"
}

resource "aws_iam_group_policy_attachment" "web_4_devs__web_4_data_rw" {
  group      = aws_iam_group.web_4_devs.name
  policy_arn = aws_iam_policy.web_4_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_4_devs__web_4_ops" {
  group      = aws_iam_group.web_4_devs.name
  policy_arn = aws_iam_policy.web_4_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_4_devs__base_readonly" {
  group      = aws_iam_group.web_4_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_4_devs__self_service" {
  group      = aws_iam_group.web_4_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_5_analysts" {
  name = "axvel-1bmofe-web-5-analysts"
}

resource "aws_iam_group_policy_attachment" "web_5_analysts__web_5_read" {
  group      = aws_iam_group.web_5_analysts.name
  policy_arn = aws_iam_policy.web_5_read.arn
}

resource "aws_iam_group_policy_attachment" "web_5_analysts__base_readonly" {
  group      = aws_iam_group.web_5_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_5_devs" {
  name = "axvel-1bmofe-web-5-devs"
}

resource "aws_iam_group_policy_attachment" "web_5_devs__web_5_data_rw" {
  group      = aws_iam_group.web_5_devs.name
  policy_arn = aws_iam_policy.web_5_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_5_devs__web_5_ops" {
  group      = aws_iam_group.web_5_devs.name
  policy_arn = aws_iam_policy.web_5_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_5_devs__base_readonly" {
  group      = aws_iam_group.web_5_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_5_devs__self_service" {
  group      = aws_iam_group.web_5_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_6_analysts" {
  name = "axvel-1bmofe-web-6-analysts"
}

resource "aws_iam_group_policy_attachment" "web_6_analysts__web_6_read" {
  group      = aws_iam_group.web_6_analysts.name
  policy_arn = aws_iam_policy.web_6_read.arn
}

resource "aws_iam_group_policy_attachment" "web_6_analysts__base_readonly" {
  group      = aws_iam_group.web_6_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_6_devs" {
  name = "axvel-1bmofe-web-6-devs"
}

resource "aws_iam_group_policy_attachment" "web_6_devs__web_6_data_rw" {
  group      = aws_iam_group.web_6_devs.name
  policy_arn = aws_iam_policy.web_6_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_6_devs__web_6_ops" {
  group      = aws_iam_group.web_6_devs.name
  policy_arn = aws_iam_policy.web_6_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_6_devs__base_readonly" {
  group      = aws_iam_group.web_6_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_6_devs__self_service" {
  group      = aws_iam_group.web_6_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_7_analysts" {
  name = "axvel-1bmofe-web-7-analysts"
}

resource "aws_iam_group_policy_attachment" "web_7_analysts__web_7_read" {
  group      = aws_iam_group.web_7_analysts.name
  policy_arn = aws_iam_policy.web_7_read.arn
}

resource "aws_iam_group_policy_attachment" "web_7_analysts__base_readonly" {
  group      = aws_iam_group.web_7_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_7_devs" {
  name = "axvel-1bmofe-web-7-devs"
}

resource "aws_iam_group_policy_attachment" "web_7_devs__web_7_data_rw" {
  group      = aws_iam_group.web_7_devs.name
  policy_arn = aws_iam_policy.web_7_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_7_devs__web_7_ops" {
  group      = aws_iam_group.web_7_devs.name
  policy_arn = aws_iam_policy.web_7_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_7_devs__base_readonly" {
  group      = aws_iam_group.web_7_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_7_devs__self_service" {
  group      = aws_iam_group.web_7_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "web_analysts" {
  name = "axvel-1bmofe-web-analysts"
}

resource "aws_iam_group_policy_attachment" "web_analysts__web_read" {
  group      = aws_iam_group.web_analysts.name
  policy_arn = aws_iam_policy.web_read.arn
}

resource "aws_iam_group_policy_attachment" "web_analysts__base_readonly" {
  group      = aws_iam_group.web_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "web_devs" {
  name = "axvel-1bmofe-web-devs"
}

resource "aws_iam_group_policy_attachment" "web_devs__web_data_rw" {
  group      = aws_iam_group.web_devs.name
  policy_arn = aws_iam_policy.web_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "web_devs__web_ops" {
  group      = aws_iam_group.web_devs.name
  policy_arn = aws_iam_policy.web_ops.arn
}

resource "aws_iam_group_policy_attachment" "web_devs__base_readonly" {
  group      = aws_iam_group.web_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "web_devs__self_service" {
  group      = aws_iam_group.web_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}
