resource "aws_iam_group" "admissions_analysts" {
  name = "kasol-zq0qg-admissions-analysts"
}

resource "aws_iam_group_policy_attachment" "admissions_analysts__admissions_read" {
  group      = aws_iam_group.admissions_analysts.name
  policy_arn = aws_iam_policy.admissions_read.arn
}

resource "aws_iam_group_policy_attachment" "admissions_analysts__base_readonly" {
  group      = aws_iam_group.admissions_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "admissions_devs" {
  name = "kasol-zq0qg-admissions-devs"
}

resource "aws_iam_group_policy_attachment" "admissions_devs__admissions_data_rw" {
  group      = aws_iam_group.admissions_devs.name
  policy_arn = aws_iam_policy.admissions_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "admissions_devs__admissions_ops" {
  group      = aws_iam_group.admissions_devs.name
  policy_arn = aws_iam_policy.admissions_ops.arn
}

resource "aws_iam_group_policy_attachment" "admissions_devs__base_readonly" {
  group      = aws_iam_group.admissions_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "admissions_devs__self_service" {
  group      = aws_iam_group.admissions_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "contractors" {
  name = "kasol-zq0qg-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "library_analysts" {
  name = "kasol-zq0qg-library-analysts"
}

resource "aws_iam_group_policy_attachment" "library_analysts__library_read" {
  group      = aws_iam_group.library_analysts.name
  policy_arn = aws_iam_policy.library_read.arn
}

resource "aws_iam_group_policy_attachment" "library_analysts__base_readonly" {
  group      = aws_iam_group.library_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "library_devs" {
  name = "kasol-zq0qg-library-devs"
}

resource "aws_iam_group_policy_attachment" "library_devs__library_data_rw" {
  group      = aws_iam_group.library_devs.name
  policy_arn = aws_iam_policy.library_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "library_devs__library_ops" {
  group      = aws_iam_group.library_devs.name
  policy_arn = aws_iam_policy.library_ops.arn
}

resource "aws_iam_group_policy_attachment" "library_devs__base_readonly" {
  group      = aws_iam_group.library_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "library_devs__self_service" {
  group      = aws_iam_group.library_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "lms_analysts" {
  name = "kasol-zq0qg-lms-analysts"
}

resource "aws_iam_group_policy_attachment" "lms_analysts__lms_read" {
  group      = aws_iam_group.lms_analysts.name
  policy_arn = aws_iam_policy.lms_read.arn
}

resource "aws_iam_group_policy_attachment" "lms_analysts__base_readonly" {
  group      = aws_iam_group.lms_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lms_devs" {
  name = "kasol-zq0qg-lms-devs"
}

resource "aws_iam_group_policy_attachment" "lms_devs__lms_data_rw" {
  group      = aws_iam_group.lms_devs.name
  policy_arn = aws_iam_policy.lms_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lms_devs__lms_ops" {
  group      = aws_iam_group.lms_devs.name
  policy_arn = aws_iam_policy.lms_ops.arn
}

resource "aws_iam_group_policy_attachment" "lms_devs__base_readonly" {
  group      = aws_iam_group.lms_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lms_devs__self_service" {
  group      = aws_iam_group.lms_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "kasol-zq0qg-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "research_computing_analysts" {
  name = "kasol-zq0qg-research-computing-analysts"
}

resource "aws_iam_group_policy_attachment" "research_computing_analysts__research_computing_read" {
  group      = aws_iam_group.research_computing_analysts.name
  policy_arn = aws_iam_policy.research_computing_read.arn
}

resource "aws_iam_group_policy_attachment" "research_computing_analysts__base_readonly" {
  group      = aws_iam_group.research_computing_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "research_computing_devs" {
  name = "kasol-zq0qg-research-computing-devs"
}

resource "aws_iam_group_policy_attachment" "research_computing_devs__research_computing_data_rw" {
  group      = aws_iam_group.research_computing_devs.name
  policy_arn = aws_iam_policy.research_computing_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "research_computing_devs__research_computing_ops" {
  group      = aws_iam_group.research_computing_devs.name
  policy_arn = aws_iam_policy.research_computing_ops.arn
}

resource "aws_iam_group_policy_attachment" "research_computing_devs__base_readonly" {
  group      = aws_iam_group.research_computing_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "research_computing_devs__self_service" {
  group      = aws_iam_group.research_computing_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}
