resource "aws_iam_group" "audit_2_analysts" {
  name = "hextri-1bmol0-audit-2-analysts"
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
  name = "hextri-1bmol0-audit-2-devs"
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

resource "aws_iam_group" "audit_3_analysts" {
  name = "hextri-1bmol0-audit-3-analysts"
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
  name = "hextri-1bmol0-audit-3-devs"
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

resource "aws_iam_group" "audit_4_analysts" {
  name = "hextri-1bmol0-audit-4-analysts"
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
  name = "hextri-1bmol0-audit-4-devs"
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
  name = "hextri-1bmol0-audit-5-analysts"
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
  name = "hextri-1bmol0-audit-5-devs"
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
  name = "hextri-1bmol0-audit-6-analysts"
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
  name = "hextri-1bmol0-audit-6-devs"
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

resource "aws_iam_group" "audit_analysts" {
  name = "hextri-1bmol0-audit-analysts"
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
  name = "hextri-1bmol0-audit-devs"
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

resource "aws_iam_group" "benefits_2_analysts" {
  name = "hextri-1bmol0-benefits-2-analysts"
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
  name = "hextri-1bmol0-benefits-2-devs"
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

resource "aws_iam_group" "benefits_3_analysts" {
  name = "hextri-1bmol0-benefits-3-analysts"
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
  name = "hextri-1bmol0-benefits-3-devs"
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

resource "aws_iam_group" "benefits_4_analysts" {
  name = "hextri-1bmol0-benefits-4-analysts"
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
  name = "hextri-1bmol0-benefits-4-devs"
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
  name = "hextri-1bmol0-benefits-5-analysts"
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
  name = "hextri-1bmol0-benefits-5-devs"
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
  name = "hextri-1bmol0-benefits-6-analysts"
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
  name = "hextri-1bmol0-benefits-6-devs"
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

resource "aws_iam_group" "benefits_analysts" {
  name = "hextri-1bmol0-benefits-analysts"
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
  name = "hextri-1bmol0-benefits-devs"
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

resource "aws_iam_group" "citizen_portal_2_analysts" {
  name = "hextri-1bmol0-citizen-portal-2-analysts"
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
  name = "hextri-1bmol0-citizen-portal-2-devs"
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

resource "aws_iam_group" "citizen_portal_3_analysts" {
  name = "hextri-1bmol0-citizen-portal-3-analysts"
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
  name = "hextri-1bmol0-citizen-portal-3-devs"
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

resource "aws_iam_group" "citizen_portal_4_analysts" {
  name = "hextri-1bmol0-citizen-portal-4-analysts"
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
  name = "hextri-1bmol0-citizen-portal-4-devs"
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
  name = "hextri-1bmol0-citizen-portal-5-analysts"
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
  name = "hextri-1bmol0-citizen-portal-5-devs"
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
  name = "hextri-1bmol0-citizen-portal-6-analysts"
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
  name = "hextri-1bmol0-citizen-portal-6-devs"
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
  name = "hextri-1bmol0-citizen-portal-7-analysts"
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
  name = "hextri-1bmol0-citizen-portal-7-devs"
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

resource "aws_iam_group" "citizen_portal_analysts" {
  name = "hextri-1bmol0-citizen-portal-analysts"
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
  name = "hextri-1bmol0-citizen-portal-devs"
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
  name = "hextri-1bmol0-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_2_analysts" {
  name = "hextri-1bmol0-gis-2-analysts"
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
  name = "hextri-1bmol0-gis-2-devs"
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

resource "aws_iam_group" "gis_3_analysts" {
  name = "hextri-1bmol0-gis-3-analysts"
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
  name = "hextri-1bmol0-gis-3-devs"
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

resource "aws_iam_group" "gis_4_analysts" {
  name = "hextri-1bmol0-gis-4-analysts"
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
  name = "hextri-1bmol0-gis-4-devs"
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
  name = "hextri-1bmol0-gis-5-analysts"
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
  name = "hextri-1bmol0-gis-5-devs"
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
  name = "hextri-1bmol0-gis-6-analysts"
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
  name = "hextri-1bmol0-gis-6-devs"
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
  name = "hextri-1bmol0-gis-7-analysts"
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
  name = "hextri-1bmol0-gis-7-devs"
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

resource "aws_iam_group" "gis_analysts" {
  name = "hextri-1bmol0-gis-analysts"
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
  name = "hextri-1bmol0-gis-devs"
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

resource "aws_iam_group" "hr_2_analysts" {
  name = "hextri-1bmol0-hr-2-analysts"
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
  name = "hextri-1bmol0-hr-2-devs"
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

resource "aws_iam_group" "hr_3_analysts" {
  name = "hextri-1bmol0-hr-3-analysts"
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
  name = "hextri-1bmol0-hr-3-devs"
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

resource "aws_iam_group" "hr_4_analysts" {
  name = "hextri-1bmol0-hr-4-analysts"
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
  name = "hextri-1bmol0-hr-4-devs"
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
  name = "hextri-1bmol0-hr-5-analysts"
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
  name = "hextri-1bmol0-hr-5-devs"
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
  name = "hextri-1bmol0-hr-6-analysts"
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
  name = "hextri-1bmol0-hr-6-devs"
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

resource "aws_iam_group" "hr_analysts" {
  name = "hextri-1bmol0-hr-analysts"
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
  name = "hextri-1bmol0-hr-devs"
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

resource "aws_iam_group" "it_ops_2_analysts" {
  name = "hextri-1bmol0-it-ops-2-analysts"
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
  name = "hextri-1bmol0-it-ops-2-devs"
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

resource "aws_iam_group" "it_ops_3_analysts" {
  name = "hextri-1bmol0-it-ops-3-analysts"
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
  name = "hextri-1bmol0-it-ops-3-devs"
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

resource "aws_iam_group" "it_ops_4_analysts" {
  name = "hextri-1bmol0-it-ops-4-analysts"
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
  name = "hextri-1bmol0-it-ops-4-devs"
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
  name = "hextri-1bmol0-it-ops-5-analysts"
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
  name = "hextri-1bmol0-it-ops-5-devs"
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
  name = "hextri-1bmol0-it-ops-6-analysts"
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
  name = "hextri-1bmol0-it-ops-6-devs"
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

resource "aws_iam_group" "it_ops_analysts" {
  name = "hextri-1bmol0-it-ops-analysts"
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
  name = "hextri-1bmol0-it-ops-devs"
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

resource "aws_iam_group" "licensing_2_analysts" {
  name = "hextri-1bmol0-licensing-2-analysts"
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
  name = "hextri-1bmol0-licensing-2-devs"
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

resource "aws_iam_group" "licensing_3_analysts" {
  name = "hextri-1bmol0-licensing-3-analysts"
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
  name = "hextri-1bmol0-licensing-3-devs"
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

resource "aws_iam_group" "licensing_4_analysts" {
  name = "hextri-1bmol0-licensing-4-analysts"
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
  name = "hextri-1bmol0-licensing-4-devs"
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
  name = "hextri-1bmol0-licensing-5-analysts"
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
  name = "hextri-1bmol0-licensing-5-devs"
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
  name = "hextri-1bmol0-licensing-6-analysts"
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
  name = "hextri-1bmol0-licensing-6-devs"
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
  name = "hextri-1bmol0-licensing-7-analysts"
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
  name = "hextri-1bmol0-licensing-7-devs"
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

resource "aws_iam_group" "licensing_analysts" {
  name = "hextri-1bmol0-licensing-analysts"
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
  name = "hextri-1bmol0-licensing-devs"
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

resource "aws_iam_group" "open_data_2_analysts" {
  name = "hextri-1bmol0-open-data-2-analysts"
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
  name = "hextri-1bmol0-open-data-2-devs"
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

resource "aws_iam_group" "open_data_3_analysts" {
  name = "hextri-1bmol0-open-data-3-analysts"
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
  name = "hextri-1bmol0-open-data-3-devs"
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

resource "aws_iam_group" "open_data_4_analysts" {
  name = "hextri-1bmol0-open-data-4-analysts"
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
  name = "hextri-1bmol0-open-data-4-devs"
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
  name = "hextri-1bmol0-open-data-5-analysts"
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
  name = "hextri-1bmol0-open-data-5-devs"
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
  name = "hextri-1bmol0-open-data-6-analysts"
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
  name = "hextri-1bmol0-open-data-6-devs"
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
  name = "hextri-1bmol0-open-data-7-analysts"
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
  name = "hextri-1bmol0-open-data-7-devs"
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

resource "aws_iam_group" "open_data_analysts" {
  name = "hextri-1bmol0-open-data-analysts"
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
  name = "hextri-1bmol0-open-data-devs"
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
  name = "hextri-1bmol0-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "procurement_2_analysts" {
  name = "hextri-1bmol0-procurement-2-analysts"
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
  name = "hextri-1bmol0-procurement-2-devs"
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

resource "aws_iam_group" "procurement_3_analysts" {
  name = "hextri-1bmol0-procurement-3-analysts"
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
  name = "hextri-1bmol0-procurement-3-devs"
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

resource "aws_iam_group" "procurement_4_analysts" {
  name = "hextri-1bmol0-procurement-4-analysts"
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
  name = "hextri-1bmol0-procurement-4-devs"
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
  name = "hextri-1bmol0-procurement-5-analysts"
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
  name = "hextri-1bmol0-procurement-5-devs"
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
  name = "hextri-1bmol0-procurement-6-analysts"
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
  name = "hextri-1bmol0-procurement-6-devs"
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
  name = "hextri-1bmol0-procurement-7-analysts"
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
  name = "hextri-1bmol0-procurement-7-devs"
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

resource "aws_iam_group" "procurement_analysts" {
  name = "hextri-1bmol0-procurement-analysts"
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
  name = "hextri-1bmol0-procurement-devs"
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

resource "aws_iam_group" "public_safety_2_analysts" {
  name = "hextri-1bmol0-public-safety-2-analysts"
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
  name = "hextri-1bmol0-public-safety-2-devs"
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

resource "aws_iam_group" "public_safety_3_analysts" {
  name = "hextri-1bmol0-public-safety-3-analysts"
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
  name = "hextri-1bmol0-public-safety-3-devs"
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

resource "aws_iam_group" "public_safety_4_analysts" {
  name = "hextri-1bmol0-public-safety-4-analysts"
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
  name = "hextri-1bmol0-public-safety-4-devs"
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
  name = "hextri-1bmol0-public-safety-5-analysts"
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
  name = "hextri-1bmol0-public-safety-5-devs"
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
  name = "hextri-1bmol0-public-safety-6-analysts"
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
  name = "hextri-1bmol0-public-safety-6-devs"
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
  name = "hextri-1bmol0-public-safety-7-analysts"
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
  name = "hextri-1bmol0-public-safety-7-devs"
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

resource "aws_iam_group" "public_safety_analysts" {
  name = "hextri-1bmol0-public-safety-analysts"
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
  name = "hextri-1bmol0-public-safety-devs"
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

resource "aws_iam_group" "records_2_analysts" {
  name = "hextri-1bmol0-records-2-analysts"
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
  name = "hextri-1bmol0-records-2-devs"
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

resource "aws_iam_group" "records_3_analysts" {
  name = "hextri-1bmol0-records-3-analysts"
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
  name = "hextri-1bmol0-records-3-devs"
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

resource "aws_iam_group" "records_4_analysts" {
  name = "hextri-1bmol0-records-4-analysts"
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
  name = "hextri-1bmol0-records-4-devs"
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
  name = "hextri-1bmol0-records-5-analysts"
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
  name = "hextri-1bmol0-records-5-devs"
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
  name = "hextri-1bmol0-records-6-analysts"
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
  name = "hextri-1bmol0-records-6-devs"
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
  name = "hextri-1bmol0-records-7-analysts"
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
  name = "hextri-1bmol0-records-7-devs"
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

resource "aws_iam_group" "records_analysts" {
  name = "hextri-1bmol0-records-analysts"
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
  name = "hextri-1bmol0-records-devs"
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

resource "aws_iam_group" "tax_2_analysts" {
  name = "hextri-1bmol0-tax-2-analysts"
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
  name = "hextri-1bmol0-tax-2-devs"
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

resource "aws_iam_group" "tax_3_analysts" {
  name = "hextri-1bmol0-tax-3-analysts"
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
  name = "hextri-1bmol0-tax-3-devs"
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

resource "aws_iam_group" "tax_4_analysts" {
  name = "hextri-1bmol0-tax-4-analysts"
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
  name = "hextri-1bmol0-tax-4-devs"
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
  name = "hextri-1bmol0-tax-5-analysts"
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
  name = "hextri-1bmol0-tax-5-devs"
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
  name = "hextri-1bmol0-tax-6-analysts"
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
  name = "hextri-1bmol0-tax-6-devs"
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
  name = "hextri-1bmol0-tax-7-analysts"
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
  name = "hextri-1bmol0-tax-7-devs"
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

resource "aws_iam_group" "tax_analysts" {
  name = "hextri-1bmol0-tax-analysts"
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
  name = "hextri-1bmol0-tax-devs"
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
