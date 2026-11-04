resource "aws_iam_group" "api_2_analysts" {
  name = "axtri-1bmokt-api-2-analysts"
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
  name = "axtri-1bmokt-api-2-devs"
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
  name = "axtri-1bmokt-api-3-analysts"
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
  name = "axtri-1bmokt-api-3-devs"
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

resource "aws_iam_group" "api_analysts" {
  name = "axtri-1bmokt-api-analysts"
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
  name = "axtri-1bmokt-api-devs"
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
  name = "axtri-1bmokt-auth-2-analysts"
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
  name = "axtri-1bmokt-auth-2-devs"
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
  name = "axtri-1bmokt-auth-3-analysts"
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
  name = "axtri-1bmokt-auth-3-devs"
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

resource "aws_iam_group" "auth_analysts" {
  name = "axtri-1bmokt-auth-analysts"
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
  name = "axtri-1bmokt-auth-devs"
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
  name = "axtri-1bmokt-billing-2-analysts"
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
  name = "axtri-1bmokt-billing-2-devs"
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
  name = "axtri-1bmokt-billing-3-analysts"
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
  name = "axtri-1bmokt-billing-3-devs"
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

resource "aws_iam_group" "billing_analysts" {
  name = "axtri-1bmokt-billing-analysts"
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
  name = "axtri-1bmokt-billing-devs"
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
  name = "axtri-1bmokt-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_2_analysts" {
  name = "axtri-1bmokt-data-2-analysts"
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
  name = "axtri-1bmokt-data-2-devs"
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
  name = "axtri-1bmokt-data-3-analysts"
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
  name = "axtri-1bmokt-data-3-devs"
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

resource "aws_iam_group" "data_analysts" {
  name = "axtri-1bmokt-data-analysts"
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
  name = "axtri-1bmokt-data-devs"
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
  name = "axtri-1bmokt-growth-2-analysts"
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
  name = "axtri-1bmokt-growth-2-devs"
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
  name = "axtri-1bmokt-growth-3-analysts"
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
  name = "axtri-1bmokt-growth-3-devs"
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

resource "aws_iam_group" "growth_analysts" {
  name = "axtri-1bmokt-growth-analysts"
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
  name = "axtri-1bmokt-growth-devs"
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
  name = "axtri-1bmokt-infra-2-analysts"
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
  name = "axtri-1bmokt-infra-2-devs"
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
  name = "axtri-1bmokt-infra-3-analysts"
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
  name = "axtri-1bmokt-infra-3-devs"
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

resource "aws_iam_group" "infra_analysts" {
  name = "axtri-1bmokt-infra-analysts"
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
  name = "axtri-1bmokt-infra-devs"
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
  name = "axtri-1bmokt-ml-2-analysts"
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
  name = "axtri-1bmokt-ml-2-devs"
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

resource "aws_iam_group" "ml_analysts" {
  name = "axtri-1bmokt-ml-analysts"
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
  name = "axtri-1bmokt-ml-devs"
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
  name = "axtri-1bmokt-mobile-2-analysts"
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
  name = "axtri-1bmokt-mobile-2-devs"
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
  name = "axtri-1bmokt-mobile-3-analysts"
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
  name = "axtri-1bmokt-mobile-3-devs"
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

resource "aws_iam_group" "mobile_analysts" {
  name = "axtri-1bmokt-mobile-analysts"
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
  name = "axtri-1bmokt-mobile-devs"
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
  name = "axtri-1bmokt-notifications-2-analysts"
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
  name = "axtri-1bmokt-notifications-2-devs"
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

resource "aws_iam_group" "notifications_analysts" {
  name = "axtri-1bmokt-notifications-analysts"
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
  name = "axtri-1bmokt-notifications-devs"
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
  name = "axtri-1bmokt-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "search_2_analysts" {
  name = "axtri-1bmokt-search-2-analysts"
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
  name = "axtri-1bmokt-search-2-devs"
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
  name = "axtri-1bmokt-search-3-analysts"
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
  name = "axtri-1bmokt-search-3-devs"
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

resource "aws_iam_group" "search_analysts" {
  name = "axtri-1bmokt-search-analysts"
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
  name = "axtri-1bmokt-search-devs"
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
  name = "axtri-1bmokt-support-2-analysts"
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
  name = "axtri-1bmokt-support-2-devs"
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
  name = "axtri-1bmokt-support-3-analysts"
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
  name = "axtri-1bmokt-support-3-devs"
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

resource "aws_iam_group" "support_analysts" {
  name = "axtri-1bmokt-support-analysts"
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
  name = "axtri-1bmokt-support-devs"
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
  name = "axtri-1bmokt-web-2-analysts"
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
  name = "axtri-1bmokt-web-2-devs"
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
  name = "axtri-1bmokt-web-3-analysts"
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
  name = "axtri-1bmokt-web-3-devs"
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

resource "aws_iam_group" "web_analysts" {
  name = "axtri-1bmokt-web-analysts"
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
  name = "axtri-1bmokt-web-devs"
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
