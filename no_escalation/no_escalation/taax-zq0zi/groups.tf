resource "aws_iam_group" "citizen_portal_analysts" {
  name = "taax-zq0zi-citizen-portal-analysts"
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
  name = "taax-zq0zi-citizen-portal-devs"
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
  name = "taax-zq0zi-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "taax-zq0zi-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "records_analysts" {
  name = "taax-zq0zi-records-analysts"
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
  name = "taax-zq0zi-records-devs"
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
