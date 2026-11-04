resource "aws_iam_group" "billing_analysts" {
  name = "rynor-zq0uj-billing-analysts"
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
  name = "rynor-zq0uj-billing-devs"
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

resource "aws_iam_group" "clinical_data_analysts" {
  name = "rynor-zq0uj-clinical-data-analysts"
}

resource "aws_iam_group_policy_attachment" "clinical_data_analysts__clinical_data_read" {
  group      = aws_iam_group.clinical_data_analysts.name
  policy_arn = aws_iam_policy.clinical_data_read.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_analysts__base_readonly" {
  group      = aws_iam_group.clinical_data_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "clinical_data_devs" {
  name = "rynor-zq0uj-clinical-data-devs"
}

resource "aws_iam_group_policy_attachment" "clinical_data_devs__clinical_data_data_rw" {
  group      = aws_iam_group.clinical_data_devs.name
  policy_arn = aws_iam_policy.clinical_data_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_devs__clinical_data_ops" {
  group      = aws_iam_group.clinical_data_devs.name
  policy_arn = aws_iam_policy.clinical_data_ops.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_devs__base_readonly" {
  group      = aws_iam_group.clinical_data_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_devs__self_service" {
  group      = aws_iam_group.clinical_data_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "contractors" {
  name = "rynor-zq0uj-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "imaging_analysts" {
  name = "rynor-zq0uj-imaging-analysts"
}

resource "aws_iam_group_policy_attachment" "imaging_analysts__imaging_read" {
  group      = aws_iam_group.imaging_analysts.name
  policy_arn = aws_iam_policy.imaging_read.arn
}

resource "aws_iam_group_policy_attachment" "imaging_analysts__base_readonly" {
  group      = aws_iam_group.imaging_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "imaging_devs" {
  name = "rynor-zq0uj-imaging-devs"
}

resource "aws_iam_group_policy_attachment" "imaging_devs__imaging_data_rw" {
  group      = aws_iam_group.imaging_devs.name
  policy_arn = aws_iam_policy.imaging_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "imaging_devs__imaging_ops" {
  group      = aws_iam_group.imaging_devs.name
  policy_arn = aws_iam_policy.imaging_ops.arn
}

resource "aws_iam_group_policy_attachment" "imaging_devs__base_readonly" {
  group      = aws_iam_group.imaging_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "imaging_devs__self_service" {
  group      = aws_iam_group.imaging_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "inj_grp_g7" {
  name = "rynor-zq0uj-inj-grp-g7"
}

resource "aws_iam_group_policy_attachment" "inj_grp_g7__inj_pol_p10" {
  group      = aws_iam_group.inj_grp_g7.name
  policy_arn = aws_iam_policy.inj_pol_p10.arn
}

resource "aws_iam_group" "patient_portal_analysts" {
  name = "rynor-zq0uj-patient-portal-analysts"
}

resource "aws_iam_group_policy_attachment" "patient_portal_analysts__patient_portal_read" {
  group      = aws_iam_group.patient_portal_analysts.name
  policy_arn = aws_iam_policy.patient_portal_read.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_analysts__base_readonly" {
  group      = aws_iam_group.patient_portal_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "patient_portal_devs" {
  name = "rynor-zq0uj-patient-portal-devs"
}

resource "aws_iam_group_policy_attachment" "patient_portal_devs__patient_portal_data_rw" {
  group      = aws_iam_group.patient_portal_devs.name
  policy_arn = aws_iam_policy.patient_portal_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_devs__patient_portal_ops" {
  group      = aws_iam_group.patient_portal_devs.name
  policy_arn = aws_iam_policy.patient_portal_ops.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_devs__base_readonly" {
  group      = aws_iam_group.patient_portal_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_devs__self_service" {
  group      = aws_iam_group.patient_portal_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "rynor-zq0uj-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}
