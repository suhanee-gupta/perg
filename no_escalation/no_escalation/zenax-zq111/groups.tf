resource "aws_iam_group" "citizen_portal_analysts" {
  name = "zenax-zq111-citizen-portal-analysts"
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
  name = "zenax-zq111-citizen-portal-devs"
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
  name = "zenax-zq111-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "gis_analysts" {
  name = "zenax-zq111-gis-analysts"
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
  name = "zenax-zq111-gis-devs"
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

resource "aws_iam_group" "licensing_analysts" {
  name = "zenax-zq111-licensing-analysts"
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
  name = "zenax-zq111-licensing-devs"
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

resource "aws_iam_group" "platform_admins" {
  name = "zenax-zq111-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "records_analysts" {
  name = "zenax-zq111-records-analysts"
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
  name = "zenax-zq111-records-devs"
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
