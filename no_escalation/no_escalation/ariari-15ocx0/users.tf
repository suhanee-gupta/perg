resource "aws_iam_user" "adm_judy_silva" {
  name = "ariari-15ocx0-adm-judy.silva"
}

resource "aws_iam_user_login_profile" "adm_judy_silva" {
  user                    = aws_iam_user.adm_judy_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_judy_silva__platform_admins" {
  user   = aws_iam_user.adm_judy_silva.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_noor_muller" {
  name = "ariari-15ocx0-adm-noor.muller"
}

resource "aws_iam_user_login_profile" "adm_noor_muller" {
  user                    = aws_iam_user.adm_noor_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_noor_muller__platform_admins" {
  user   = aws_iam_user.adm_noor_muller.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_uma_okafor" {
  name = "ariari-15ocx0-adm-uma.okafor"
}

resource "aws_iam_user_login_profile" "adm_uma_okafor" {
  user                    = aws_iam_user.adm_uma_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_uma_okafor__platform_admins" {
  user   = aws_iam_user.adm_uma_okafor.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_ivanov" {
  name = "ariari-15ocx0-alice.ivanov"
}

resource "aws_iam_user_login_profile" "alice_ivanov" {
  user                    = aws_iam_user.alice_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_ivanov__patient_portal_2_analysts" {
  user   = aws_iam_user.alice_ivanov.name
  groups = [aws_iam_group.patient_portal_2_analysts.name]
}

resource "aws_iam_user" "alice_larsen" {
  name = "ariari-15ocx0-alice.larsen"
}

resource "aws_iam_user_login_profile" "alice_larsen" {
  user                    = aws_iam_user.alice_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_larsen__patient_portal_2_devs" {
  user   = aws_iam_user.alice_larsen.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user_group_membership" "alice_larsen__billing_analysts" {
  user   = aws_iam_user.alice_larsen.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user_policy_attachment" "alice_larsen__base_readonly" {
  user       = aws_iam_user.alice_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_lopez" {
  name = "ariari-15ocx0-alice.lopez"
}

resource "aws_iam_user_login_profile" "alice_lopez" {
  user                    = aws_iam_user.alice_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_lopez__imaging_analysts" {
  user   = aws_iam_user.alice_lopez.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "amit_larsen" {
  name = "ariari-15ocx0-amit.larsen"
}

resource "aws_iam_user_login_profile" "amit_larsen" {
  user                    = aws_iam_user.amit_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_larsen__imaging_devs" {
  user   = aws_iam_user.amit_larsen.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "amit_silva" {
  name = "ariari-15ocx0-amit.silva"
}

resource "aws_iam_user_login_profile" "amit_silva" {
  user                    = aws_iam_user.amit_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_silva__compliance_analysts" {
  user   = aws_iam_user.amit_silva.name
  groups = [aws_iam_group.compliance_analysts.name]
}

resource "aws_iam_user_group_membership" "amit_silva__analytics_analysts" {
  user   = aws_iam_user.amit_silva.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "bela_larsen" {
  name = "ariari-15ocx0-bela.larsen"
}

resource "aws_iam_user_login_profile" "bela_larsen" {
  user                    = aws_iam_user.bela_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_larsen__lab_systems_devs" {
  user   = aws_iam_user.bela_larsen.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user_group_membership" "bela_larsen__claims_analysts" {
  user   = aws_iam_user.bela_larsen.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "bela_muller" {
  name = "ariari-15ocx0-bela.muller"
}

resource "aws_iam_user_login_profile" "bela_muller" {
  user                    = aws_iam_user.bela_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_muller__clinical_data_devs" {
  user   = aws_iam_user.bela_muller.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "bela_nguyen" {
  name = "ariari-15ocx0-bela.nguyen"
}

resource "aws_iam_user_group_membership" "bela_nguyen__imaging_2_devs" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.imaging_2_devs.name]
}

resource "aws_iam_user_group_membership" "bela_nguyen__research_analysts" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user" "bela_okafor" {
  name = "ariari-15ocx0-bela.okafor"
}

resource "aws_iam_user_login_profile" "bela_okafor" {
  user                    = aws_iam_user.bela_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_okafor__patient_portal_devs" {
  user   = aws_iam_user.bela_okafor.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "bela_patel" {
  name = "ariari-15ocx0-bela.patel"
}

resource "aws_iam_user_login_profile" "bela_patel" {
  user                    = aws_iam_user.bela_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_patel__pharmacy_analysts" {
  user   = aws_iam_user.bela_patel.name
  groups = [aws_iam_group.pharmacy_analysts.name]
}

resource "aws_iam_user" "bela_sato" {
  name = "ariari-15ocx0-bela.sato"
}

resource "aws_iam_user_login_profile" "bela_sato" {
  user                    = aws_iam_user.bela_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_sato__billing_2_devs" {
  user   = aws_iam_user.bela_sato.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "bela_singh" {
  name = "ariari-15ocx0-bela.singh"
}

resource "aws_iam_user_login_profile" "bela_singh" {
  user                    = aws_iam_user.bela_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh__clinical_data_devs" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user_policy_attachment" "bela_singh__base_readonly" {
  user       = aws_iam_user.bela_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bob_silva" {
  name = "ariari-15ocx0-bob.silva"
}

resource "aws_iam_user_login_profile" "bob_silva" {
  user                    = aws_iam_user.bob_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_silva__pharmacy_2_devs" {
  user   = aws_iam_user.bob_silva.name
  groups = [aws_iam_group.pharmacy_2_devs.name]
}

resource "aws_iam_user" "dara_brown" {
  name = "ariari-15ocx0-dara.brown"
}

resource "aws_iam_user_group_membership" "dara_brown__compliance_devs" {
  user   = aws_iam_user.dara_brown.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_brown__inj_pol_p10" {
  user       = aws_iam_user.dara_brown.name
  policy_arn = aws_iam_policy.inj_pol_p10.arn
}

resource "aws_iam_user" "dara_davis" {
  name = "ariari-15ocx0-dara.davis"
}

resource "aws_iam_user_login_profile" "dara_davis" {
  user                    = aws_iam_user.dara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_davis__billing_2_devs" {
  user   = aws_iam_user.dara_davis.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "dara_larsen" {
  name = "ariari-15ocx0-dara.larsen"
}

resource "aws_iam_user_login_profile" "dara_larsen" {
  user                    = aws_iam_user.dara_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_larsen__compliance_devs" {
  user   = aws_iam_user.dara_larsen.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user" "dave_jones" {
  name = "ariari-15ocx0-dave.jones"
}

resource "aws_iam_user_login_profile" "dave_jones" {
  user                    = aws_iam_user.dave_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_jones__lab_systems_analysts" {
  user   = aws_iam_user.dave_jones.name
  groups = [aws_iam_group.lab_systems_analysts.name]
}

resource "aws_iam_user" "erin_mehta" {
  name = "ariari-15ocx0-erin.mehta"
}

resource "aws_iam_user_login_profile" "erin_mehta" {
  user                    = aws_iam_user.erin_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_mehta__pharmacy_devs" {
  user   = aws_iam_user.erin_mehta.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user" "ext_bob_muller" {
  name = "ariari-15ocx0-ext-bob.muller"
}

resource "aws_iam_user_login_profile" "ext_bob_muller" {
  user                    = aws_iam_user.ext_bob_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bob_muller__contractors" {
  user   = aws_iam_user.ext_bob_muller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_bob_muller__analytics_analysts" {
  user   = aws_iam_user.ext_bob_muller.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "ext_dara_cohen" {
  name = "ariari-15ocx0-ext-dara.cohen"
}

resource "aws_iam_user_login_profile" "ext_dara_cohen" {
  user                    = aws_iam_user.ext_dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_cohen__contractors" {
  user   = aws_iam_user.ext_dara_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dara_silva" {
  name = "ariari-15ocx0-ext-dara.silva"
}

resource "aws_iam_user_login_profile" "ext_dara_silva" {
  user                    = aws_iam_user.ext_dara_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_silva__contractors" {
  user   = aws_iam_user.ext_dara_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dara_silva__claims_analysts" {
  user   = aws_iam_user.ext_dara_silva.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "ext_eli_chen" {
  name = "ariari-15ocx0-ext-eli.chen"
}

resource "aws_iam_user_login_profile" "ext_eli_chen" {
  user                    = aws_iam_user.ext_eli_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_chen__contractors" {
  user   = aws_iam_user.ext_eli_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_eli_chen__clinical_data_2_analysts" {
  user   = aws_iam_user.ext_eli_chen.name
  groups = [aws_iam_group.clinical_data_2_analysts.name]
}

resource "aws_iam_user" "ext_eli_tanaka" {
  name = "ariari-15ocx0-ext-eli.tanaka"
}

resource "aws_iam_user_login_profile" "ext_eli_tanaka" {
  user                    = aws_iam_user.ext_eli_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_tanaka__contractors" {
  user   = aws_iam_user.ext_eli_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_eli_tanaka__clinical_data_analysts" {
  user   = aws_iam_user.ext_eli_tanaka.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "ext_eli_tanaka__inj_grp_g5" {
  user   = aws_iam_user.ext_eli_tanaka.name
  groups = [aws_iam_group.inj_grp_g5.name]
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_pol_p1" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_pol_p1.arn
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_legacy_p2" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_legacy_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_pol_p3" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_pol_p3.arn
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_pol_p4" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_pol_p6" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_user_policy_attachment" "ext_eli_tanaka__inj_pol_p8" {
  user       = aws_iam_user.ext_eli_tanaka.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_user" "ext_hana_okafor" {
  name = "ariari-15ocx0-ext-hana.okafor"
}

resource "aws_iam_user_login_profile" "ext_hana_okafor" {
  user                    = aws_iam_user.ext_hana_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_okafor__contractors" {
  user   = aws_iam_user.ext_hana_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_jun_tanaka" {
  name = "ariari-15ocx0-ext-jun.tanaka"
}

resource "aws_iam_user_login_profile" "ext_jun_tanaka" {
  user                    = aws_iam_user.ext_jun_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_tanaka__contractors" {
  user   = aws_iam_user.ext_jun_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_tanaka__patient_portal_analysts" {
  user   = aws_iam_user.ext_jun_tanaka.name
  groups = [aws_iam_group.patient_portal_analysts.name]
}

resource "aws_iam_user" "ext_mei_reddy" {
  name = "ariari-15ocx0-ext-mei.reddy"
}

resource "aws_iam_user_login_profile" "ext_mei_reddy" {
  user                    = aws_iam_user.ext_mei_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_reddy__contractors" {
  user   = aws_iam_user.ext_mei_reddy.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mei_wong" {
  name = "ariari-15ocx0-ext-mei.wong"
}

resource "aws_iam_user_login_profile" "ext_mei_wong" {
  user                    = aws_iam_user.ext_mei_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_wong__contractors" {
  user   = aws_iam_user.ext_mei_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_yara_ali" {
  name = "ariari-15ocx0-ext-yara.ali"
}

resource "aws_iam_user_login_profile" "ext_yara_ali" {
  user                    = aws_iam_user.ext_yara_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_ali__contractors" {
  user   = aws_iam_user.ext_yara_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_cohen" {
  name = "ariari-15ocx0-fay.cohen"
}

resource "aws_iam_user_login_profile" "fay_cohen" {
  user                    = aws_iam_user.fay_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_cohen__imaging_devs" {
  user   = aws_iam_user.fay_cohen.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user_group_membership" "fay_cohen__telehealth_analysts" {
  user   = aws_iam_user.fay_cohen.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "fay_garcia" {
  name = "ariari-15ocx0-fay.garcia"
}

resource "aws_iam_user_login_profile" "fay_garcia" {
  user                    = aws_iam_user.fay_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_garcia__analytics_devs" {
  user   = aws_iam_user.fay_garcia.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "fay_muller" {
  name = "ariari-15ocx0-fay.muller"
}

resource "aws_iam_user_login_profile" "fay_muller" {
  user                    = aws_iam_user.fay_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_muller__patient_portal_2_devs" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user" "frank_sato" {
  name = "ariari-15ocx0-frank.sato"
}

resource "aws_iam_user_group_membership" "frank_sato__research_analysts" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user" "grace_davis" {
  name = "ariari-15ocx0-grace.davis"
}

resource "aws_iam_user_group_membership" "grace_davis__patient_portal_devs" {
  user   = aws_iam_user.grace_davis.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user_policy_attachment" "grace_davis__base_readonly" {
  user       = aws_iam_user.grace_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_brown" {
  name = "ariari-15ocx0-gus.brown"
}

resource "aws_iam_user_login_profile" "gus_brown" {
  user                    = aws_iam_user.gus_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_brown__pharmacy_devs" {
  user   = aws_iam_user.gus_brown.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user_group_membership" "gus_brown__clinical_data_2_analysts" {
  user   = aws_iam_user.gus_brown.name
  groups = [aws_iam_group.clinical_data_2_analysts.name]
}

resource "aws_iam_user" "hana_brown" {
  name = "ariari-15ocx0-hana.brown"
}

resource "aws_iam_user_login_profile" "hana_brown" {
  user                    = aws_iam_user.hana_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_brown__pharmacy_2_devs" {
  user   = aws_iam_user.hana_brown.name
  groups = [aws_iam_group.pharmacy_2_devs.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "ariari-15ocx0-hana.chen"
}

resource "aws_iam_user_group_membership" "hana_chen__research_devs" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.research_devs.name]
}

resource "aws_iam_user" "hana_dubois" {
  name = "ariari-15ocx0-hana.dubois"
}

resource "aws_iam_user_login_profile" "hana_dubois" {
  user                    = aws_iam_user.hana_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_dubois__analytics_devs" {
  user   = aws_iam_user.hana_dubois.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "hana_mehta" {
  name = "ariari-15ocx0-hana.mehta"
}

resource "aws_iam_user_login_profile" "hana_mehta" {
  user                    = aws_iam_user.hana_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_mehta__lab_systems_analysts" {
  user   = aws_iam_user.hana_mehta.name
  groups = [aws_iam_group.lab_systems_analysts.name]
}

resource "aws_iam_user" "hana_rossi" {
  name = "ariari-15ocx0-hana.rossi"
}

resource "aws_iam_user_login_profile" "hana_rossi" {
  user                    = aws_iam_user.hana_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_rossi__patient_portal_analysts" {
  user   = aws_iam_user.hana_rossi.name
  groups = [aws_iam_group.patient_portal_analysts.name]
}

resource "aws_iam_user" "hana_singh" {
  name = "ariari-15ocx0-hana.singh"
}

resource "aws_iam_user_login_profile" "hana_singh" {
  user                    = aws_iam_user.hana_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_singh__clinical_data_devs" {
  user   = aws_iam_user.hana_singh.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "heidi_larsen" {
  name = "ariari-15ocx0-heidi.larsen"
}

resource "aws_iam_user_login_profile" "heidi_larsen" {
  user                    = aws_iam_user.heidi_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_larsen__billing_2_analysts" {
  user   = aws_iam_user.heidi_larsen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "heidi_nguyen" {
  name = "ariari-15ocx0-heidi.nguyen"
}

resource "aws_iam_user_login_profile" "heidi_nguyen" {
  user                    = aws_iam_user.heidi_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_nguyen__billing_2_devs" {
  user   = aws_iam_user.heidi_nguyen.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "heidi_nguyen207" {
  name = "ariari-15ocx0-heidi.nguyen207"
}

resource "aws_iam_user_login_profile" "heidi_nguyen207" {
  user                    = aws_iam_user.heidi_nguyen207.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_nguyen207__imaging_analysts" {
  user   = aws_iam_user.heidi_nguyen207.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user_group_membership" "heidi_nguyen207__billing_analysts" {
  user   = aws_iam_user.heidi_nguyen207.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "ian_cohen" {
  name = "ariari-15ocx0-ian.cohen"
}

resource "aws_iam_user_login_profile" "ian_cohen" {
  user                    = aws_iam_user.ian_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_cohen__billing_devs" {
  user   = aws_iam_user.ian_cohen.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_group_membership" "ian_cohen__scheduling_analysts" {
  user   = aws_iam_user.ian_cohen.name
  groups = [aws_iam_group.scheduling_analysts.name]
}

resource "aws_iam_user" "ivan_brown" {
  name = "ariari-15ocx0-ivan.brown"
}

resource "aws_iam_user_login_profile" "ivan_brown" {
  user                    = aws_iam_user.ivan_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_brown__compliance_devs" {
  user   = aws_iam_user.ivan_brown.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user" "ivan_larsen" {
  name = "ariari-15ocx0-ivan.larsen"
}

resource "aws_iam_user_login_profile" "ivan_larsen" {
  user                    = aws_iam_user.ivan_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_larsen__lab_systems_devs" {
  user   = aws_iam_user.ivan_larsen.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "judy_brown" {
  name = "ariari-15ocx0-judy.brown"
}

resource "aws_iam_user_login_profile" "judy_brown" {
  user                    = aws_iam_user.judy_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_brown__claims_devs" {
  user   = aws_iam_user.judy_brown.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user" "judy_davis" {
  name = "ariari-15ocx0-judy.davis"
}

resource "aws_iam_user_group_membership" "judy_davis__clinical_data_analysts" {
  user   = aws_iam_user.judy_davis.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user" "judy_gupta" {
  name = "ariari-15ocx0-judy.gupta"
}

resource "aws_iam_user_login_profile" "judy_gupta" {
  user                    = aws_iam_user.judy_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_gupta__patient_portal_2_devs" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user_group_membership" "judy_gupta__billing_2_analysts" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "judy_sato" {
  name = "ariari-15ocx0-judy.sato"
}

resource "aws_iam_user_login_profile" "judy_sato" {
  user                    = aws_iam_user.judy_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_sato__billing_devs" {
  user   = aws_iam_user.judy_sato.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_group_membership" "judy_sato__telehealth_analysts" {
  user   = aws_iam_user.judy_sato.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "ariari-15ocx0-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__telehealth_analysts" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "jun_jones" {
  name = "ariari-15ocx0-jun.jones"
}

resource "aws_iam_user_login_profile" "jun_jones" {
  user                    = aws_iam_user.jun_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_jones__pharmacy_2_devs" {
  user   = aws_iam_user.jun_jones.name
  groups = [aws_iam_group.pharmacy_2_devs.name]
}

resource "aws_iam_user" "jun_lopez" {
  name = "ariari-15ocx0-jun.lopez"
}

resource "aws_iam_user_login_profile" "jun_lopez" {
  user                    = aws_iam_user.jun_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_lopez__billing_analysts" {
  user   = aws_iam_user.jun_lopez.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user_policy_attachment" "jun_lopez__inj_pol_p9" {
  user       = aws_iam_user.jun_lopez.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_user" "jun_tanaka" {
  name = "ariari-15ocx0-jun.tanaka"
}

resource "aws_iam_user_group_membership" "jun_tanaka__compliance_analysts" {
  user   = aws_iam_user.jun_tanaka.name
  groups = [aws_iam_group.compliance_analysts.name]
}

resource "aws_iam_user" "kia_ali" {
  name = "ariari-15ocx0-kia.ali"
}

resource "aws_iam_user_login_profile" "kia_ali" {
  user                    = aws_iam_user.kia_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_ali__billing_2_analysts" {
  user   = aws_iam_user.kia_ali.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "kia_muller" {
  name = "ariari-15ocx0-kia.muller"
}

resource "aws_iam_user_login_profile" "kia_muller" {
  user                    = aws_iam_user.kia_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_muller__telehealth_devs" {
  user   = aws_iam_user.kia_muller.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "kia_patel" {
  name = "ariari-15ocx0-kia.patel"
}

resource "aws_iam_user_login_profile" "kia_patel" {
  user                    = aws_iam_user.kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_patel__lab_systems_devs" {
  user   = aws_iam_user.kia_patel.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "lena_jones" {
  name = "ariari-15ocx0-lena.jones"
}

resource "aws_iam_user_login_profile" "lena_jones" {
  user                    = aws_iam_user.lena_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_jones__imaging_analysts" {
  user   = aws_iam_user.lena_jones.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "leo_garcia" {
  name = "ariari-15ocx0-leo.garcia"
}

resource "aws_iam_user_login_profile" "leo_garcia" {
  user                    = aws_iam_user.leo_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_garcia__research_analysts" {
  user   = aws_iam_user.leo_garcia.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user" "leo_haddad" {
  name = "ariari-15ocx0-leo.haddad"
}

resource "aws_iam_user_login_profile" "leo_haddad" {
  user                    = aws_iam_user.leo_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_haddad__patient_portal_2_devs" {
  user   = aws_iam_user.leo_haddad.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user" "leo_wong" {
  name = "ariari-15ocx0-leo.wong"
}

resource "aws_iam_user_login_profile" "leo_wong" {
  user                    = aws_iam_user.leo_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_wong__clinical_data_2_devs" {
  user   = aws_iam_user.leo_wong.name
  groups = [aws_iam_group.clinical_data_2_devs.name]
}

resource "aws_iam_user" "mei_kim" {
  name = "ariari-15ocx0-mei.kim"
}

resource "aws_iam_user_login_profile" "mei_kim" {
  user                    = aws_iam_user.mei_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_kim__pharmacy_analysts" {
  user   = aws_iam_user.mei_kim.name
  groups = [aws_iam_group.pharmacy_analysts.name]
}

resource "aws_iam_user" "mei_wong" {
  name = "ariari-15ocx0-mei.wong"
}

resource "aws_iam_user_login_profile" "mei_wong" {
  user                    = aws_iam_user.mei_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_wong__telehealth_devs" {
  user   = aws_iam_user.mei_wong.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user_policy_attachment" "mei_wong__base_readonly" {
  user       = aws_iam_user.mei_wong.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_cohen" {
  name = "ariari-15ocx0-mike.cohen"
}

resource "aws_iam_user_login_profile" "mike_cohen" {
  user                    = aws_iam_user.mike_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_cohen__patient_portal_devs" {
  user   = aws_iam_user.mike_cohen.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "mike_larsen" {
  name = "ariari-15ocx0-mike.larsen"
}

resource "aws_iam_user_login_profile" "mike_larsen" {
  user                    = aws_iam_user.mike_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_larsen__analytics_devs" {
  user   = aws_iam_user.mike_larsen.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user_group_membership" "mike_larsen__pharmacy_analysts" {
  user   = aws_iam_user.mike_larsen.name
  groups = [aws_iam_group.pharmacy_analysts.name]
}

resource "aws_iam_user" "mike_sato" {
  name = "ariari-15ocx0-mike.sato"
}

resource "aws_iam_user_login_profile" "mike_sato" {
  user                    = aws_iam_user.mike_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_sato__lab_systems_devs" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "nina_cohen" {
  name = "ariari-15ocx0-nina.cohen"
}

resource "aws_iam_user_login_profile" "nina_cohen" {
  user                    = aws_iam_user.nina_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_cohen__lab_systems_analysts" {
  user   = aws_iam_user.nina_cohen.name
  groups = [aws_iam_group.lab_systems_analysts.name]
}

resource "aws_iam_user" "nina_nguyen" {
  name = "ariari-15ocx0-nina.nguyen"
}

resource "aws_iam_user_login_profile" "nina_nguyen" {
  user                    = aws_iam_user.nina_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_nguyen__patient_portal_devs" {
  user   = aws_iam_user.nina_nguyen.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "nina_rossi" {
  name = "ariari-15ocx0-nina.rossi"
}

resource "aws_iam_user_login_profile" "nina_rossi" {
  user                    = aws_iam_user.nina_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_rossi__claims_analysts" {
  user   = aws_iam_user.nina_rossi.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "nina_smith" {
  name = "ariari-15ocx0-nina.smith"
}

resource "aws_iam_user_login_profile" "nina_smith" {
  user                    = aws_iam_user.nina_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_smith__pharmacy_devs" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user_policy_attachment" "nina_smith__base_readonly" {
  user       = aws_iam_user.nina_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "noor_ivanov" {
  name = "ariari-15ocx0-noor.ivanov"
}

resource "aws_iam_user_login_profile" "noor_ivanov" {
  user                    = aws_iam_user.noor_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_ivanov__scheduling_devs" {
  user   = aws_iam_user.noor_ivanov.name
  groups = [aws_iam_group.scheduling_devs.name]
}

resource "aws_iam_user_group_membership" "noor_ivanov__pharmacy_analysts" {
  user   = aws_iam_user.noor_ivanov.name
  groups = [aws_iam_group.pharmacy_analysts.name]
}

resource "aws_iam_user" "noor_jones" {
  name = "ariari-15ocx0-noor.jones"
}

resource "aws_iam_user_login_profile" "noor_jones" {
  user                    = aws_iam_user.noor_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_jones__pharmacy_2_devs" {
  user   = aws_iam_user.noor_jones.name
  groups = [aws_iam_group.pharmacy_2_devs.name]
}

resource "aws_iam_user" "noor_nguyen" {
  name = "ariari-15ocx0-noor.nguyen"
}

resource "aws_iam_user_group_membership" "noor_nguyen__analytics_analysts" {
  user   = aws_iam_user.noor_nguyen.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user_group_membership" "noor_nguyen__clinical_data_2_analysts" {
  user   = aws_iam_user.noor_nguyen.name
  groups = [aws_iam_group.clinical_data_2_analysts.name]
}

resource "aws_iam_user" "priya_dubois" {
  name = "ariari-15ocx0-priya.dubois"
}

resource "aws_iam_user_login_profile" "priya_dubois" {
  user                    = aws_iam_user.priya_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_dubois__patient_portal_devs" {
  user   = aws_iam_user.priya_dubois.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "priya_ivanov" {
  name = "ariari-15ocx0-priya.ivanov"
}

resource "aws_iam_user_login_profile" "priya_ivanov" {
  user                    = aws_iam_user.priya_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_ivanov__clinical_data_analysts" {
  user   = aws_iam_user.priya_ivanov.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user" "quinn_brown" {
  name = "ariari-15ocx0-quinn.brown"
}

resource "aws_iam_user_login_profile" "quinn_brown" {
  user                    = aws_iam_user.quinn_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_brown__claims_devs" {
  user   = aws_iam_user.quinn_brown.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_brown__base_readonly" {
  user       = aws_iam_user.quinn_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_muller" {
  name = "ariari-15ocx0-quinn.muller"
}

resource "aws_iam_user_login_profile" "quinn_muller" {
  user                    = aws_iam_user.quinn_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_muller__research_devs" {
  user   = aws_iam_user.quinn_muller.name
  groups = [aws_iam_group.research_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_muller__base_readonly" {
  user       = aws_iam_user.quinn_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "raj_ali" {
  name = "ariari-15ocx0-raj.ali"
}

resource "aws_iam_user_login_profile" "raj_ali" {
  user                    = aws_iam_user.raj_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_ali__imaging_devs" {
  user   = aws_iam_user.raj_ali.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user_group_membership" "raj_ali__telehealth_analysts" {
  user   = aws_iam_user.raj_ali.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "sara_lopez" {
  name = "ariari-15ocx0-sara.lopez"
}

resource "aws_iam_user_login_profile" "sara_lopez" {
  user                    = aws_iam_user.sara_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_lopez__billing_2_devs" {
  user   = aws_iam_user.sara_lopez.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "sara_patel" {
  name = "ariari-15ocx0-sara.patel"
}

resource "aws_iam_user_login_profile" "sara_patel" {
  user                    = aws_iam_user.sara_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_patel__claims_analysts" {
  user   = aws_iam_user.sara_patel.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "sara_silva" {
  name = "ariari-15ocx0-sara.silva"
}

resource "aws_iam_user_login_profile" "sara_silva" {
  user                    = aws_iam_user.sara_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_silva__patient_portal_2_devs" {
  user   = aws_iam_user.sara_silva.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user" "tom_davis" {
  name = "ariari-15ocx0-tom.davis"
}

resource "aws_iam_user_login_profile" "tom_davis" {
  user                    = aws_iam_user.tom_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_davis__clinical_data_devs" {
  user   = aws_iam_user.tom_davis.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user_policy_attachment" "tom_davis__base_readonly" {
  user       = aws_iam_user.tom_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "tom_khan" {
  name = "ariari-15ocx0-tom.khan"
}

resource "aws_iam_user_group_membership" "tom_khan__patient_portal_2_devs" {
  user   = aws_iam_user.tom_khan.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user" "tom_khan6390" {
  name = "ariari-15ocx0-tom.khan6390"
}

resource "aws_iam_user_login_profile" "tom_khan6390" {
  user                    = aws_iam_user.tom_khan6390.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_khan6390__clinical_data_devs" {
  user   = aws_iam_user.tom_khan6390.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "uma_muller" {
  name = "ariari-15ocx0-uma.muller"
}

resource "aws_iam_user_login_profile" "uma_muller" {
  user                    = aws_iam_user.uma_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_muller__billing_2_analysts" {
  user   = aws_iam_user.uma_muller.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "uma_nguyen" {
  name = "ariari-15ocx0-uma.nguyen"
}

resource "aws_iam_user_login_profile" "uma_nguyen" {
  user                    = aws_iam_user.uma_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_nguyen__imaging_devs" {
  user   = aws_iam_user.uma_nguyen.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "vik_gupta" {
  name = "ariari-15ocx0-vik.gupta"
}

resource "aws_iam_user_login_profile" "vik_gupta" {
  user                    = aws_iam_user.vik_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_gupta__lab_systems_devs" {
  user   = aws_iam_user.vik_gupta.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "vik_khan" {
  name = "ariari-15ocx0-vik.khan"
}

resource "aws_iam_user_login_profile" "vik_khan" {
  user                    = aws_iam_user.vik_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_khan__analytics_devs" {
  user   = aws_iam_user.vik_khan.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "vik_muller" {
  name = "ariari-15ocx0-vik.muller"
}

resource "aws_iam_user_login_profile" "vik_muller" {
  user                    = aws_iam_user.vik_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_muller__compliance_analysts" {
  user   = aws_iam_user.vik_muller.name
  groups = [aws_iam_group.compliance_analysts.name]
}

resource "aws_iam_user" "wen_ali" {
  name = "ariari-15ocx0-wen.ali"
}

resource "aws_iam_user_login_profile" "wen_ali" {
  user                    = aws_iam_user.wen_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali__analytics_devs" {
  user   = aws_iam_user.wen_ali.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user_group_membership" "wen_ali__analytics_analysts" {
  user   = aws_iam_user.wen_ali.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "wen_khan" {
  name = "ariari-15ocx0-wen.khan"
}

resource "aws_iam_user_login_profile" "wen_khan" {
  user                    = aws_iam_user.wen_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_khan__lab_systems_devs" {
  user   = aws_iam_user.wen_khan.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "xia_garcia" {
  name = "ariari-15ocx0-xia.garcia"
}

resource "aws_iam_user_login_profile" "xia_garcia" {
  user                    = aws_iam_user.xia_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia__clinical_data_devs" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "xia_tanaka" {
  name = "ariari-15ocx0-xia.tanaka"
}

resource "aws_iam_user_login_profile" "xia_tanaka" {
  user                    = aws_iam_user.xia_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_tanaka__analytics_devs" {
  user   = aws_iam_user.xia_tanaka.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "yara_kim" {
  name = "ariari-15ocx0-yara.kim"
}

resource "aws_iam_user_login_profile" "yara_kim" {
  user                    = aws_iam_user.yara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_kim__research_devs" {
  user   = aws_iam_user.yara_kim.name
  groups = [aws_iam_group.research_devs.name]
}

resource "aws_iam_user" "yara_wong" {
  name = "ariari-15ocx0-yara.wong"
}

resource "aws_iam_user_login_profile" "yara_wong" {
  user                    = aws_iam_user.yara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_wong__patient_portal_analysts" {
  user   = aws_iam_user.yara_wong.name
  groups = [aws_iam_group.patient_portal_analysts.name]
}

resource "aws_iam_user_policy_attachment" "yara_wong__base_readonly" {
  user       = aws_iam_user.yara_wong.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_cohen" {
  name = "ariari-15ocx0-zed.cohen"
}

resource "aws_iam_user_login_profile" "zed_cohen" {
  user                    = aws_iam_user.zed_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_cohen__scheduling_devs" {
  user   = aws_iam_user.zed_cohen.name
  groups = [aws_iam_group.scheduling_devs.name]
}

resource "aws_iam_user" "zed_ivanov" {
  name = "ariari-15ocx0-zed.ivanov"
}

resource "aws_iam_user_login_profile" "zed_ivanov" {
  user                    = aws_iam_user.zed_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_ivanov__patient_portal_2_devs" {
  user   = aws_iam_user.zed_ivanov.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_ivanov__base_readonly" {
  user       = aws_iam_user.zed_ivanov.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_patel" {
  name = "ariari-15ocx0-zed.patel"
}

resource "aws_iam_user_login_profile" "zed_patel" {
  user                    = aws_iam_user.zed_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel__claims_devs" {
  user   = aws_iam_user.zed_patel.name
  groups = [aws_iam_group.claims_devs.name]
}
