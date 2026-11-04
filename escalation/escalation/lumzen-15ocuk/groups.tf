resource "aws_iam_group" "api_2_analysts" {
  name = "lumzen-15ocuk-api-2-analysts"
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
  name = "lumzen-15ocuk-api-2-devs"
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

resource "aws_iam_group" "api_analysts" {
  name = "lumzen-15ocuk-api-analysts"
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
  name = "lumzen-15ocuk-api-devs"
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
  name = "lumzen-15ocuk-auth-2-analysts"
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
  name = "lumzen-15ocuk-auth-2-devs"
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

resource "aws_iam_group" "auth_analysts" {
  name = "lumzen-15ocuk-auth-analysts"
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
  name = "lumzen-15ocuk-auth-devs"
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
  name = "lumzen-15ocuk-billing-2-analysts"
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
  name = "lumzen-15ocuk-billing-2-devs"
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

resource "aws_iam_group" "billing_analysts" {
  name = "lumzen-15ocuk-billing-analysts"
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
  name = "lumzen-15ocuk-billing-devs"
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
  name = "lumzen-15ocuk-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "data_2_analysts" {
  name = "lumzen-15ocuk-data-2-analysts"
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
  name = "lumzen-15ocuk-data-2-devs"
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

resource "aws_iam_group" "data_analysts" {
  name = "lumzen-15ocuk-data-analysts"
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
  name = "lumzen-15ocuk-data-devs"
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
  name = "lumzen-15ocuk-growth-2-analysts"
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
  name = "lumzen-15ocuk-growth-2-devs"
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

resource "aws_iam_group" "growth_analysts" {
  name = "lumzen-15ocuk-growth-analysts"
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
  name = "lumzen-15ocuk-growth-devs"
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
  name = "lumzen-15ocuk-infra-2-analysts"
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
  name = "lumzen-15ocuk-infra-2-devs"
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

resource "aws_iam_group" "infra_analysts" {
  name = "lumzen-15ocuk-infra-analysts"
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
  name = "lumzen-15ocuk-infra-devs"
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

resource "aws_iam_group" "inj_grp_g1" {
  name = "lumzen-15ocuk-inj-grp-g1"
}

resource "aws_iam_group_policy_attachment" "inj_grp_g1__inj_pol_p3" {
  group      = aws_iam_group.inj_grp_g1.name
  policy_arn = aws_iam_policy.inj_pol_p3.arn
}

resource "aws_iam_group" "inj_grp_g4" {
  name = "lumzen-15ocuk-inj-grp-g4"
}

resource "aws_iam_group_policy_attachment" "inj_grp_g4__inj_legacy_p6" {
  group      = aws_iam_group.inj_grp_g4.name
  policy_arn = aws_iam_policy.inj_legacy_p6.arn
}

resource "aws_iam_group_policy_attachment" "inj_grp_g4__inj_pol_p7" {
  group      = aws_iam_group.inj_grp_g4.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_group" "ml_analysts" {
  name = "lumzen-15ocuk-ml-analysts"
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
  name = "lumzen-15ocuk-ml-devs"
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
  name = "lumzen-15ocuk-mobile-2-analysts"
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
  name = "lumzen-15ocuk-mobile-2-devs"
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

resource "aws_iam_group" "mobile_analysts" {
  name = "lumzen-15ocuk-mobile-analysts"
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
  name = "lumzen-15ocuk-mobile-devs"
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
  name = "lumzen-15ocuk-notifications-2-analysts"
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
  name = "lumzen-15ocuk-notifications-2-devs"
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
  name = "lumzen-15ocuk-notifications-analysts"
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
  name = "lumzen-15ocuk-notifications-devs"
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
  name = "lumzen-15ocuk-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "search_2_analysts" {
  name = "lumzen-15ocuk-search-2-analysts"
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
  name = "lumzen-15ocuk-search-2-devs"
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

resource "aws_iam_group" "search_analysts" {
  name = "lumzen-15ocuk-search-analysts"
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
  name = "lumzen-15ocuk-search-devs"
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
  name = "lumzen-15ocuk-support-2-analysts"
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
  name = "lumzen-15ocuk-support-2-devs"
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

resource "aws_iam_group" "support_analysts" {
  name = "lumzen-15ocuk-support-analysts"
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
  name = "lumzen-15ocuk-support-devs"
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
  name = "lumzen-15ocuk-web-2-analysts"
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
  name = "lumzen-15ocuk-web-2-devs"
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

resource "aws_iam_group" "web_analysts" {
  name = "lumzen-15ocuk-web-analysts"
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
  name = "lumzen-15ocuk-web-devs"
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
