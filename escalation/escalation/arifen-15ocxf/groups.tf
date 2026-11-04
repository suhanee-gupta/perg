resource "aws_iam_group" "analytics_2_analysts" {
  name = "arifen-15ocxf-analytics-2-analysts"
}

resource "aws_iam_group_policy_attachment" "analytics_2_analysts__analytics_2_read" {
  group      = aws_iam_group.analytics_2_analysts.name
  policy_arn = aws_iam_policy.analytics_2_read.arn
}

resource "aws_iam_group_policy_attachment" "analytics_2_analysts__base_readonly" {
  group      = aws_iam_group.analytics_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "analytics_2_devs" {
  name = "arifen-15ocxf-analytics-2-devs"
}

resource "aws_iam_group_policy_attachment" "analytics_2_devs__analytics_2_data_rw" {
  group      = aws_iam_group.analytics_2_devs.name
  policy_arn = aws_iam_policy.analytics_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "analytics_2_devs__analytics_2_ops" {
  group      = aws_iam_group.analytics_2_devs.name
  policy_arn = aws_iam_policy.analytics_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "analytics_2_devs__base_readonly" {
  group      = aws_iam_group.analytics_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "analytics_2_devs__self_service" {
  group      = aws_iam_group.analytics_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "analytics_analysts" {
  name = "arifen-15ocxf-analytics-analysts"
}

resource "aws_iam_group_policy_attachment" "analytics_analysts__analytics_read" {
  group      = aws_iam_group.analytics_analysts.name
  policy_arn = aws_iam_policy.analytics_read.arn
}

resource "aws_iam_group_policy_attachment" "analytics_analysts__base_readonly" {
  group      = aws_iam_group.analytics_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "analytics_devs" {
  name = "arifen-15ocxf-analytics-devs"
}

resource "aws_iam_group_policy_attachment" "analytics_devs__analytics_data_rw" {
  group      = aws_iam_group.analytics_devs.name
  policy_arn = aws_iam_policy.analytics_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "analytics_devs__analytics_ops" {
  group      = aws_iam_group.analytics_devs.name
  policy_arn = aws_iam_policy.analytics_ops.arn
}

resource "aws_iam_group_policy_attachment" "analytics_devs__base_readonly" {
  group      = aws_iam_group.analytics_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "analytics_devs__self_service" {
  group      = aws_iam_group.analytics_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "billing_2_analysts" {
  name = "arifen-15ocxf-billing-2-analysts"
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
  name = "arifen-15ocxf-billing-2-devs"
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
  name = "arifen-15ocxf-billing-analysts"
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
  name = "arifen-15ocxf-billing-devs"
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

resource "aws_iam_group" "claims_2_analysts" {
  name = "arifen-15ocxf-claims-2-analysts"
}

resource "aws_iam_group_policy_attachment" "claims_2_analysts__claims_2_read" {
  group      = aws_iam_group.claims_2_analysts.name
  policy_arn = aws_iam_policy.claims_2_read.arn
}

resource "aws_iam_group_policy_attachment" "claims_2_analysts__base_readonly" {
  group      = aws_iam_group.claims_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "claims_2_devs" {
  name = "arifen-15ocxf-claims-2-devs"
}

resource "aws_iam_group_policy_attachment" "claims_2_devs__claims_2_data_rw" {
  group      = aws_iam_group.claims_2_devs.name
  policy_arn = aws_iam_policy.claims_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "claims_2_devs__claims_2_ops" {
  group      = aws_iam_group.claims_2_devs.name
  policy_arn = aws_iam_policy.claims_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "claims_2_devs__base_readonly" {
  group      = aws_iam_group.claims_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "claims_2_devs__self_service" {
  group      = aws_iam_group.claims_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "claims_analysts" {
  name = "arifen-15ocxf-claims-analysts"
}

resource "aws_iam_group_policy_attachment" "claims_analysts__claims_read" {
  group      = aws_iam_group.claims_analysts.name
  policy_arn = aws_iam_policy.claims_read.arn
}

resource "aws_iam_group_policy_attachment" "claims_analysts__base_readonly" {
  group      = aws_iam_group.claims_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "claims_devs" {
  name = "arifen-15ocxf-claims-devs"
}

resource "aws_iam_group_policy_attachment" "claims_devs__claims_data_rw" {
  group      = aws_iam_group.claims_devs.name
  policy_arn = aws_iam_policy.claims_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "claims_devs__claims_ops" {
  group      = aws_iam_group.claims_devs.name
  policy_arn = aws_iam_policy.claims_ops.arn
}

resource "aws_iam_group_policy_attachment" "claims_devs__base_readonly" {
  group      = aws_iam_group.claims_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "claims_devs__self_service" {
  group      = aws_iam_group.claims_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "clinical_data_2_analysts" {
  name = "arifen-15ocxf-clinical-data-2-analysts"
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_analysts__clinical_data_2_read" {
  group      = aws_iam_group.clinical_data_2_analysts.name
  policy_arn = aws_iam_policy.clinical_data_2_read.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_analysts__base_readonly" {
  group      = aws_iam_group.clinical_data_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "clinical_data_2_devs" {
  name = "arifen-15ocxf-clinical-data-2-devs"
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_devs__clinical_data_2_data_rw" {
  group      = aws_iam_group.clinical_data_2_devs.name
  policy_arn = aws_iam_policy.clinical_data_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_devs__clinical_data_2_ops" {
  group      = aws_iam_group.clinical_data_2_devs.name
  policy_arn = aws_iam_policy.clinical_data_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_devs__base_readonly" {
  group      = aws_iam_group.clinical_data_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "clinical_data_2_devs__self_service" {
  group      = aws_iam_group.clinical_data_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "clinical_data_analysts" {
  name = "arifen-15ocxf-clinical-data-analysts"
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
  name = "arifen-15ocxf-clinical-data-devs"
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

resource "aws_iam_group" "compliance_2_analysts" {
  name = "arifen-15ocxf-compliance-2-analysts"
}

resource "aws_iam_group_policy_attachment" "compliance_2_analysts__compliance_2_read" {
  group      = aws_iam_group.compliance_2_analysts.name
  policy_arn = aws_iam_policy.compliance_2_read.arn
}

resource "aws_iam_group_policy_attachment" "compliance_2_analysts__base_readonly" {
  group      = aws_iam_group.compliance_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "compliance_2_devs" {
  name = "arifen-15ocxf-compliance-2-devs"
}

resource "aws_iam_group_policy_attachment" "compliance_2_devs__compliance_2_data_rw" {
  group      = aws_iam_group.compliance_2_devs.name
  policy_arn = aws_iam_policy.compliance_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "compliance_2_devs__compliance_2_ops" {
  group      = aws_iam_group.compliance_2_devs.name
  policy_arn = aws_iam_policy.compliance_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "compliance_2_devs__base_readonly" {
  group      = aws_iam_group.compliance_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "compliance_2_devs__self_service" {
  group      = aws_iam_group.compliance_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "compliance_analysts" {
  name = "arifen-15ocxf-compliance-analysts"
}

resource "aws_iam_group_policy_attachment" "compliance_analysts__compliance_read" {
  group      = aws_iam_group.compliance_analysts.name
  policy_arn = aws_iam_policy.compliance_read.arn
}

resource "aws_iam_group_policy_attachment" "compliance_analysts__base_readonly" {
  group      = aws_iam_group.compliance_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "compliance_devs" {
  name = "arifen-15ocxf-compliance-devs"
}

resource "aws_iam_group_policy_attachment" "compliance_devs__compliance_data_rw" {
  group      = aws_iam_group.compliance_devs.name
  policy_arn = aws_iam_policy.compliance_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "compliance_devs__compliance_ops" {
  group      = aws_iam_group.compliance_devs.name
  policy_arn = aws_iam_policy.compliance_ops.arn
}

resource "aws_iam_group_policy_attachment" "compliance_devs__base_readonly" {
  group      = aws_iam_group.compliance_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "compliance_devs__self_service" {
  group      = aws_iam_group.compliance_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "contractors" {
  name = "arifen-15ocxf-contractors"
}

resource "aws_iam_group_policy_attachment" "contractors__base_readonly" {
  group      = aws_iam_group.contractors.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "imaging_2_analysts" {
  name = "arifen-15ocxf-imaging-2-analysts"
}

resource "aws_iam_group_policy_attachment" "imaging_2_analysts__imaging_2_read" {
  group      = aws_iam_group.imaging_2_analysts.name
  policy_arn = aws_iam_policy.imaging_2_read.arn
}

resource "aws_iam_group_policy_attachment" "imaging_2_analysts__base_readonly" {
  group      = aws_iam_group.imaging_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "imaging_2_devs" {
  name = "arifen-15ocxf-imaging-2-devs"
}

resource "aws_iam_group_policy_attachment" "imaging_2_devs__imaging_2_data_rw" {
  group      = aws_iam_group.imaging_2_devs.name
  policy_arn = aws_iam_policy.imaging_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "imaging_2_devs__imaging_2_ops" {
  group      = aws_iam_group.imaging_2_devs.name
  policy_arn = aws_iam_policy.imaging_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "imaging_2_devs__base_readonly" {
  group      = aws_iam_group.imaging_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "imaging_2_devs__self_service" {
  group      = aws_iam_group.imaging_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "imaging_analysts" {
  name = "arifen-15ocxf-imaging-analysts"
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
  name = "arifen-15ocxf-imaging-devs"
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

resource "aws_iam_group" "inj_grp_g3" {
  name = "arifen-15ocxf-inj-grp-g3"
}

resource "aws_iam_group" "lab_systems_analysts" {
  name = "arifen-15ocxf-lab-systems-analysts"
}

resource "aws_iam_group_policy_attachment" "lab_systems_analysts__lab_systems_read" {
  group      = aws_iam_group.lab_systems_analysts.name
  policy_arn = aws_iam_policy.lab_systems_read.arn
}

resource "aws_iam_group_policy_attachment" "lab_systems_analysts__base_readonly" {
  group      = aws_iam_group.lab_systems_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "lab_systems_devs" {
  name = "arifen-15ocxf-lab-systems-devs"
}

resource "aws_iam_group_policy_attachment" "lab_systems_devs__lab_systems_data_rw" {
  group      = aws_iam_group.lab_systems_devs.name
  policy_arn = aws_iam_policy.lab_systems_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "lab_systems_devs__lab_systems_ops" {
  group      = aws_iam_group.lab_systems_devs.name
  policy_arn = aws_iam_policy.lab_systems_ops.arn
}

resource "aws_iam_group_policy_attachment" "lab_systems_devs__base_readonly" {
  group      = aws_iam_group.lab_systems_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "lab_systems_devs__self_service" {
  group      = aws_iam_group.lab_systems_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "patient_portal_2_analysts" {
  name = "arifen-15ocxf-patient-portal-2-analysts"
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_analysts__patient_portal_2_read" {
  group      = aws_iam_group.patient_portal_2_analysts.name
  policy_arn = aws_iam_policy.patient_portal_2_read.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_analysts__base_readonly" {
  group      = aws_iam_group.patient_portal_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "patient_portal_2_devs" {
  name = "arifen-15ocxf-patient-portal-2-devs"
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_devs__patient_portal_2_data_rw" {
  group      = aws_iam_group.patient_portal_2_devs.name
  policy_arn = aws_iam_policy.patient_portal_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_devs__patient_portal_2_ops" {
  group      = aws_iam_group.patient_portal_2_devs.name
  policy_arn = aws_iam_policy.patient_portal_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_devs__base_readonly" {
  group      = aws_iam_group.patient_portal_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "patient_portal_2_devs__self_service" {
  group      = aws_iam_group.patient_portal_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "patient_portal_analysts" {
  name = "arifen-15ocxf-patient-portal-analysts"
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
  name = "arifen-15ocxf-patient-portal-devs"
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

resource "aws_iam_group" "pharmacy_2_analysts" {
  name = "arifen-15ocxf-pharmacy-2-analysts"
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_analysts__pharmacy_2_read" {
  group      = aws_iam_group.pharmacy_2_analysts.name
  policy_arn = aws_iam_policy.pharmacy_2_read.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_analysts__base_readonly" {
  group      = aws_iam_group.pharmacy_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "pharmacy_2_devs" {
  name = "arifen-15ocxf-pharmacy-2-devs"
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_devs__pharmacy_2_data_rw" {
  group      = aws_iam_group.pharmacy_2_devs.name
  policy_arn = aws_iam_policy.pharmacy_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_devs__pharmacy_2_ops" {
  group      = aws_iam_group.pharmacy_2_devs.name
  policy_arn = aws_iam_policy.pharmacy_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_devs__base_readonly" {
  group      = aws_iam_group.pharmacy_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_2_devs__self_service" {
  group      = aws_iam_group.pharmacy_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "pharmacy_analysts" {
  name = "arifen-15ocxf-pharmacy-analysts"
}

resource "aws_iam_group_policy_attachment" "pharmacy_analysts__pharmacy_read" {
  group      = aws_iam_group.pharmacy_analysts.name
  policy_arn = aws_iam_policy.pharmacy_read.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_analysts__base_readonly" {
  group      = aws_iam_group.pharmacy_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "pharmacy_devs" {
  name = "arifen-15ocxf-pharmacy-devs"
}

resource "aws_iam_group_policy_attachment" "pharmacy_devs__pharmacy_data_rw" {
  group      = aws_iam_group.pharmacy_devs.name
  policy_arn = aws_iam_policy.pharmacy_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_devs__pharmacy_ops" {
  group      = aws_iam_group.pharmacy_devs.name
  policy_arn = aws_iam_policy.pharmacy_ops.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_devs__base_readonly" {
  group      = aws_iam_group.pharmacy_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "pharmacy_devs__self_service" {
  group      = aws_iam_group.pharmacy_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "platform_admins" {
  name = "arifen-15ocxf-platform-admins"
}

resource "aws_iam_group_policy_attachment" "platform_admins__admin_all" {
  group      = aws_iam_group.platform_admins.name
  policy_arn = aws_iam_policy.admin_all.arn
}

resource "aws_iam_group" "research_2_analysts" {
  name = "arifen-15ocxf-research-2-analysts"
}

resource "aws_iam_group_policy_attachment" "research_2_analysts__research_2_read" {
  group      = aws_iam_group.research_2_analysts.name
  policy_arn = aws_iam_policy.research_2_read.arn
}

resource "aws_iam_group_policy_attachment" "research_2_analysts__base_readonly" {
  group      = aws_iam_group.research_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "research_2_devs" {
  name = "arifen-15ocxf-research-2-devs"
}

resource "aws_iam_group_policy_attachment" "research_2_devs__research_2_data_rw" {
  group      = aws_iam_group.research_2_devs.name
  policy_arn = aws_iam_policy.research_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "research_2_devs__research_2_ops" {
  group      = aws_iam_group.research_2_devs.name
  policy_arn = aws_iam_policy.research_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "research_2_devs__base_readonly" {
  group      = aws_iam_group.research_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "research_2_devs__self_service" {
  group      = aws_iam_group.research_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "research_analysts" {
  name = "arifen-15ocxf-research-analysts"
}

resource "aws_iam_group_policy_attachment" "research_analysts__research_read" {
  group      = aws_iam_group.research_analysts.name
  policy_arn = aws_iam_policy.research_read.arn
}

resource "aws_iam_group_policy_attachment" "research_analysts__base_readonly" {
  group      = aws_iam_group.research_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "research_devs" {
  name = "arifen-15ocxf-research-devs"
}

resource "aws_iam_group_policy_attachment" "research_devs__research_data_rw" {
  group      = aws_iam_group.research_devs.name
  policy_arn = aws_iam_policy.research_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "research_devs__research_ops" {
  group      = aws_iam_group.research_devs.name
  policy_arn = aws_iam_policy.research_ops.arn
}

resource "aws_iam_group_policy_attachment" "research_devs__base_readonly" {
  group      = aws_iam_group.research_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "research_devs__self_service" {
  group      = aws_iam_group.research_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "scheduling_2_analysts" {
  name = "arifen-15ocxf-scheduling-2-analysts"
}

resource "aws_iam_group_policy_attachment" "scheduling_2_analysts__scheduling_2_read" {
  group      = aws_iam_group.scheduling_2_analysts.name
  policy_arn = aws_iam_policy.scheduling_2_read.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_2_analysts__base_readonly" {
  group      = aws_iam_group.scheduling_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "scheduling_2_devs" {
  name = "arifen-15ocxf-scheduling-2-devs"
}

resource "aws_iam_group_policy_attachment" "scheduling_2_devs__scheduling_2_data_rw" {
  group      = aws_iam_group.scheduling_2_devs.name
  policy_arn = aws_iam_policy.scheduling_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_2_devs__scheduling_2_ops" {
  group      = aws_iam_group.scheduling_2_devs.name
  policy_arn = aws_iam_policy.scheduling_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_2_devs__base_readonly" {
  group      = aws_iam_group.scheduling_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_2_devs__self_service" {
  group      = aws_iam_group.scheduling_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "scheduling_analysts" {
  name = "arifen-15ocxf-scheduling-analysts"
}

resource "aws_iam_group_policy_attachment" "scheduling_analysts__scheduling_read" {
  group      = aws_iam_group.scheduling_analysts.name
  policy_arn = aws_iam_policy.scheduling_read.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_analysts__base_readonly" {
  group      = aws_iam_group.scheduling_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "scheduling_devs" {
  name = "arifen-15ocxf-scheduling-devs"
}

resource "aws_iam_group_policy_attachment" "scheduling_devs__scheduling_data_rw" {
  group      = aws_iam_group.scheduling_devs.name
  policy_arn = aws_iam_policy.scheduling_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_devs__scheduling_ops" {
  group      = aws_iam_group.scheduling_devs.name
  policy_arn = aws_iam_policy.scheduling_ops.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_devs__base_readonly" {
  group      = aws_iam_group.scheduling_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "scheduling_devs__self_service" {
  group      = aws_iam_group.scheduling_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "telehealth_2_analysts" {
  name = "arifen-15ocxf-telehealth-2-analysts"
}

resource "aws_iam_group_policy_attachment" "telehealth_2_analysts__telehealth_2_read" {
  group      = aws_iam_group.telehealth_2_analysts.name
  policy_arn = aws_iam_policy.telehealth_2_read.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_2_analysts__base_readonly" {
  group      = aws_iam_group.telehealth_2_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "telehealth_2_devs" {
  name = "arifen-15ocxf-telehealth-2-devs"
}

resource "aws_iam_group_policy_attachment" "telehealth_2_devs__telehealth_2_data_rw" {
  group      = aws_iam_group.telehealth_2_devs.name
  policy_arn = aws_iam_policy.telehealth_2_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_2_devs__telehealth_2_ops" {
  group      = aws_iam_group.telehealth_2_devs.name
  policy_arn = aws_iam_policy.telehealth_2_ops.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_2_devs__base_readonly" {
  group      = aws_iam_group.telehealth_2_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_2_devs__self_service" {
  group      = aws_iam_group.telehealth_2_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}

resource "aws_iam_group" "telehealth_analysts" {
  name = "arifen-15ocxf-telehealth-analysts"
}

resource "aws_iam_group_policy_attachment" "telehealth_analysts__telehealth_read" {
  group      = aws_iam_group.telehealth_analysts.name
  policy_arn = aws_iam_policy.telehealth_read.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_analysts__base_readonly" {
  group      = aws_iam_group.telehealth_analysts.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group" "telehealth_devs" {
  name = "arifen-15ocxf-telehealth-devs"
}

resource "aws_iam_group_policy_attachment" "telehealth_devs__telehealth_data_rw" {
  group      = aws_iam_group.telehealth_devs.name
  policy_arn = aws_iam_policy.telehealth_data_rw.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_devs__telehealth_ops" {
  group      = aws_iam_group.telehealth_devs.name
  policy_arn = aws_iam_policy.telehealth_ops.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_devs__base_readonly" {
  group      = aws_iam_group.telehealth_devs.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_group_policy_attachment" "telehealth_devs__self_service" {
  group      = aws_iam_group.telehealth_devs.name
  policy_arn = aws_iam_policy.self_service.arn
}
