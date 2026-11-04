resource "aws_iam_user" "adm_amit_sato" {
  name = "hextri-1bmol0-adm-amit.sato"
}

resource "aws_iam_user_login_profile" "adm_amit_sato" {
  user                    = aws_iam_user.adm_amit_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_amit_sato__platform_admins" {
  user   = aws_iam_user.adm_amit_sato.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_judy_sato" {
  name = "hextri-1bmol0-adm-judy.sato"
}

resource "aws_iam_user_login_profile" "adm_judy_sato" {
  user                    = aws_iam_user.adm_judy_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_judy_sato__platform_admins" {
  user   = aws_iam_user.adm_judy_sato.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_ali" {
  name = "hextri-1bmol0-alice.ali"
}

resource "aws_iam_user_login_profile" "alice_ali" {
  user                    = aws_iam_user.alice_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_ali__gis_4_devs" {
  user   = aws_iam_user.alice_ali.name
  groups = [aws_iam_group.gis_4_devs.name]
}

resource "aws_iam_user" "alice_jones" {
  name = "hextri-1bmol0-alice.jones"
}

resource "aws_iam_user_login_profile" "alice_jones" {
  user                    = aws_iam_user.alice_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_jones__tax_6_devs" {
  user   = aws_iam_user.alice_jones.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user" "alice_miller" {
  name = "hextri-1bmol0-alice.miller"
}

resource "aws_iam_user_login_profile" "alice_miller" {
  user                    = aws_iam_user.alice_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_miller__public_safety_7_analysts" {
  user   = aws_iam_user.alice_miller.name
  groups = [aws_iam_group.public_safety_7_analysts.name]
}

resource "aws_iam_user" "alice_novak" {
  name = "hextri-1bmol0-alice.novak"
}

resource "aws_iam_user_login_profile" "alice_novak" {
  user                    = aws_iam_user.alice_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_novak__public_safety_5_devs" {
  user   = aws_iam_user.alice_novak.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user_group_membership" "alice_novak__open_data_2_analysts" {
  user   = aws_iam_user.alice_novak.name
  groups = [aws_iam_group.open_data_2_analysts.name]
}

resource "aws_iam_user" "alice_reddy" {
  name = "hextri-1bmol0-alice.reddy"
}

resource "aws_iam_user_login_profile" "alice_reddy" {
  user                    = aws_iam_user.alice_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_reddy__open_data_4_devs" {
  user   = aws_iam_user.alice_reddy.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "alice_smith" {
  name = "hextri-1bmol0-alice.smith"
}

resource "aws_iam_user_group_membership" "alice_smith__tax_4_devs" {
  user   = aws_iam_user.alice_smith.name
  groups = [aws_iam_group.tax_4_devs.name]
}

resource "aws_iam_user_group_membership" "alice_smith__tax_4_analysts" {
  user   = aws_iam_user.alice_smith.name
  groups = [aws_iam_group.tax_4_analysts.name]
}

resource "aws_iam_user" "alice_tanaka" {
  name = "hextri-1bmol0-alice.tanaka"
}

resource "aws_iam_user_login_profile" "alice_tanaka" {
  user                    = aws_iam_user.alice_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_tanaka__audit_6_devs" {
  user   = aws_iam_user.alice_tanaka.name
  groups = [aws_iam_group.audit_6_devs.name]
}

resource "aws_iam_user_group_membership" "alice_tanaka__open_data_7_analysts" {
  user   = aws_iam_user.alice_tanaka.name
  groups = [aws_iam_group.open_data_7_analysts.name]
}

resource "aws_iam_user" "amit_ali" {
  name = "hextri-1bmol0-amit.ali"
}

resource "aws_iam_user_login_profile" "amit_ali" {
  user                    = aws_iam_user.amit_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_ali__licensing_6_analysts" {
  user   = aws_iam_user.amit_ali.name
  groups = [aws_iam_group.licensing_6_analysts.name]
}

resource "aws_iam_user" "amit_garcia" {
  name = "hextri-1bmol0-amit.garcia"
}

resource "aws_iam_user_login_profile" "amit_garcia" {
  user                    = aws_iam_user.amit_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_garcia__licensing_7_devs" {
  user   = aws_iam_user.amit_garcia.name
  groups = [aws_iam_group.licensing_7_devs.name]
}

resource "aws_iam_user" "amit_garcia7554" {
  name = "hextri-1bmol0-amit.garcia7554"
}

resource "aws_iam_user_group_membership" "amit_garcia7554__records_7_devs" {
  user   = aws_iam_user.amit_garcia7554.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "amit_ivanov" {
  name = "hextri-1bmol0-amit.ivanov"
}

resource "aws_iam_user_group_membership" "amit_ivanov__public_safety_4_devs" {
  user   = aws_iam_user.amit_ivanov.name
  groups = [aws_iam_group.public_safety_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "amit_ivanov__base_readonly" {
  user       = aws_iam_user.amit_ivanov.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_kim" {
  name = "hextri-1bmol0-amit.kim"
}

resource "aws_iam_user_login_profile" "amit_kim" {
  user                    = aws_iam_user.amit_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_kim__procurement_5_devs" {
  user   = aws_iam_user.amit_kim.name
  groups = [aws_iam_group.procurement_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "amit_kim__base_readonly" {
  user       = aws_iam_user.amit_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_larsen" {
  name = "hextri-1bmol0-amit.larsen"
}

resource "aws_iam_user_login_profile" "amit_larsen" {
  user                    = aws_iam_user.amit_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_larsen__public_safety_5_devs" {
  user   = aws_iam_user.amit_larsen.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "amit_lopez" {
  name = "hextri-1bmol0-amit.lopez"
}

resource "aws_iam_user_login_profile" "amit_lopez" {
  user                    = aws_iam_user.amit_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_lopez__public_safety_2_devs" {
  user   = aws_iam_user.amit_lopez.name
  groups = [aws_iam_group.public_safety_2_devs.name]
}

resource "aws_iam_user" "amit_muller" {
  name = "hextri-1bmol0-amit.muller"
}

resource "aws_iam_user_login_profile" "amit_muller" {
  user                    = aws_iam_user.amit_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_muller__gis_3_devs" {
  user   = aws_iam_user.amit_muller.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "amit_nguyen" {
  name = "hextri-1bmol0-amit.nguyen"
}

resource "aws_iam_user_login_profile" "amit_nguyen" {
  user                    = aws_iam_user.amit_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_nguyen__tax_devs" {
  user   = aws_iam_user.amit_nguyen.name
  groups = [aws_iam_group.tax_devs.name]
}

resource "aws_iam_user" "amit_okafor" {
  name = "hextri-1bmol0-amit.okafor"
}

resource "aws_iam_user_login_profile" "amit_okafor" {
  user                    = aws_iam_user.amit_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_okafor__records_6_devs" {
  user   = aws_iam_user.amit_okafor.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user_group_membership" "amit_okafor__hr_2_analysts" {
  user   = aws_iam_user.amit_okafor.name
  groups = [aws_iam_group.hr_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_okafor__base_readonly" {
  user       = aws_iam_user.amit_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_silva" {
  name = "hextri-1bmol0-amit.silva"
}

resource "aws_iam_user_login_profile" "amit_silva" {
  user                    = aws_iam_user.amit_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_silva__citizen_portal_3_devs" {
  user   = aws_iam_user.amit_silva.name
  groups = [aws_iam_group.citizen_portal_3_devs.name]
}

resource "aws_iam_user" "bela_cohen" {
  name = "hextri-1bmol0-bela.cohen"
}

resource "aws_iam_user_login_profile" "bela_cohen" {
  user                    = aws_iam_user.bela_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_cohen__records_7_devs" {
  user   = aws_iam_user.bela_cohen.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "bela_davis" {
  name = "hextri-1bmol0-bela.davis"
}

resource "aws_iam_user_login_profile" "bela_davis" {
  user                    = aws_iam_user.bela_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_davis__public_safety_7_devs" {
  user   = aws_iam_user.bela_davis.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user" "bela_garcia" {
  name = "hextri-1bmol0-bela.garcia"
}

resource "aws_iam_user_login_profile" "bela_garcia" {
  user                    = aws_iam_user.bela_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_garcia__hr_6_devs" {
  user   = aws_iam_user.bela_garcia.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user" "bela_haddad" {
  name = "hextri-1bmol0-bela.haddad"
}

resource "aws_iam_user_login_profile" "bela_haddad" {
  user                    = aws_iam_user.bela_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_haddad__hr_4_devs" {
  user   = aws_iam_user.bela_haddad.name
  groups = [aws_iam_group.hr_4_devs.name]
}

resource "aws_iam_user" "bela_ivanov" {
  name = "hextri-1bmol0-bela.ivanov"
}

resource "aws_iam_user_login_profile" "bela_ivanov" {
  user                    = aws_iam_user.bela_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_ivanov__benefits_5_devs" {
  user   = aws_iam_user.bela_ivanov.name
  groups = [aws_iam_group.benefits_5_devs.name]
}

resource "aws_iam_user" "bela_jones" {
  name = "hextri-1bmol0-bela.jones"
}

resource "aws_iam_user_login_profile" "bela_jones" {
  user                    = aws_iam_user.bela_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_jones__benefits_2_devs" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.benefits_2_devs.name]
}

resource "aws_iam_user_group_membership" "bela_jones__benefits_5_analysts" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.benefits_5_analysts.name]
}

resource "aws_iam_user" "bela_khan" {
  name = "hextri-1bmol0-bela.khan"
}

resource "aws_iam_user_login_profile" "bela_khan" {
  user                    = aws_iam_user.bela_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_khan__citizen_portal_2_devs" {
  user   = aws_iam_user.bela_khan.name
  groups = [aws_iam_group.citizen_portal_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "bela_khan__base_readonly" {
  user       = aws_iam_user.bela_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bela_okafor" {
  name = "hextri-1bmol0-bela.okafor"
}

resource "aws_iam_user_group_membership" "bela_okafor__audit_4_devs" {
  user   = aws_iam_user.bela_okafor.name
  groups = [aws_iam_group.audit_4_devs.name]
}

resource "aws_iam_user" "bela_okafor408" {
  name = "hextri-1bmol0-bela.okafor408"
}

resource "aws_iam_user_login_profile" "bela_okafor408" {
  user                    = aws_iam_user.bela_okafor408.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_okafor408__open_data_6_devs" {
  user   = aws_iam_user.bela_okafor408.name
  groups = [aws_iam_group.open_data_6_devs.name]
}

resource "aws_iam_user" "bela_okafor8141" {
  name = "hextri-1bmol0-bela.okafor8141"
}

resource "aws_iam_user_login_profile" "bela_okafor8141" {
  user                    = aws_iam_user.bela_okafor8141.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_okafor8141__public_safety_2_devs" {
  user   = aws_iam_user.bela_okafor8141.name
  groups = [aws_iam_group.public_safety_2_devs.name]
}

resource "aws_iam_user" "bela_patel" {
  name = "hextri-1bmol0-bela.patel"
}

resource "aws_iam_user_login_profile" "bela_patel" {
  user                    = aws_iam_user.bela_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_patel__it_ops_4_devs" {
  user   = aws_iam_user.bela_patel.name
  groups = [aws_iam_group.it_ops_4_devs.name]
}

resource "aws_iam_user" "bela_singh" {
  name = "hextri-1bmol0-bela.singh"
}

resource "aws_iam_user_login_profile" "bela_singh" {
  user                    = aws_iam_user.bela_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh__audit_3_devs" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.audit_3_devs.name]
}

resource "aws_iam_user" "bob_chen" {
  name = "hextri-1bmol0-bob.chen"
}

resource "aws_iam_user_login_profile" "bob_chen" {
  user                    = aws_iam_user.bob_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_chen__it_ops_2_devs" {
  user   = aws_iam_user.bob_chen.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "bob_cohen" {
  name = "hextri-1bmol0-bob.cohen"
}

resource "aws_iam_user_group_membership" "bob_cohen__citizen_portal_5_devs" {
  user   = aws_iam_user.bob_cohen.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user" "bob_cohen178" {
  name = "hextri-1bmol0-bob.cohen178"
}

resource "aws_iam_user_group_membership" "bob_cohen178__open_data_2_devs" {
  user   = aws_iam_user.bob_cohen178.name
  groups = [aws_iam_group.open_data_2_devs.name]
}

resource "aws_iam_user" "bob_gupta" {
  name = "hextri-1bmol0-bob.gupta"
}

resource "aws_iam_user_group_membership" "bob_gupta__gis_3_devs" {
  user   = aws_iam_user.bob_gupta.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "bob_muller" {
  name = "hextri-1bmol0-bob.muller"
}

resource "aws_iam_user_login_profile" "bob_muller" {
  user                    = aws_iam_user.bob_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_muller__it_ops_analysts" {
  user   = aws_iam_user.bob_muller.name
  groups = [aws_iam_group.it_ops_analysts.name]
}

resource "aws_iam_user_group_membership" "bob_muller__audit_3_analysts" {
  user   = aws_iam_user.bob_muller.name
  groups = [aws_iam_group.audit_3_analysts.name]
}

resource "aws_iam_user" "bob_muller8983" {
  name = "hextri-1bmol0-bob.muller8983"
}

resource "aws_iam_user_login_profile" "bob_muller8983" {
  user                    = aws_iam_user.bob_muller8983.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_muller8983__gis_3_devs" {
  user   = aws_iam_user.bob_muller8983.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "bob_novak" {
  name = "hextri-1bmol0-bob.novak"
}

resource "aws_iam_user_login_profile" "bob_novak" {
  user                    = aws_iam_user.bob_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_novak__audit_6_devs" {
  user   = aws_iam_user.bob_novak.name
  groups = [aws_iam_group.audit_6_devs.name]
}

resource "aws_iam_user" "bob_novak8597" {
  name = "hextri-1bmol0-bob.novak8597"
}

resource "aws_iam_user_group_membership" "bob_novak8597__tax_5_devs" {
  user   = aws_iam_user.bob_novak8597.name
  groups = [aws_iam_group.tax_5_devs.name]
}

resource "aws_iam_user_group_membership" "bob_novak8597__citizen_portal_analysts" {
  user   = aws_iam_user.bob_novak8597.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "bob_sato" {
  name = "hextri-1bmol0-bob.sato"
}

resource "aws_iam_user_login_profile" "bob_sato" {
  user                    = aws_iam_user.bob_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_sato__it_ops_5_analysts" {
  user   = aws_iam_user.bob_sato.name
  groups = [aws_iam_group.it_ops_5_analysts.name]
}

resource "aws_iam_user" "bob_sato6880" {
  name = "hextri-1bmol0-bob.sato6880"
}

resource "aws_iam_user_login_profile" "bob_sato6880" {
  user                    = aws_iam_user.bob_sato6880.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_sato6880__audit_analysts" {
  user   = aws_iam_user.bob_sato6880.name
  groups = [aws_iam_group.audit_analysts.name]
}

resource "aws_iam_user_group_membership" "bob_sato6880__benefits_6_analysts" {
  user   = aws_iam_user.bob_sato6880.name
  groups = [aws_iam_group.benefits_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "bob_sato6880__base_readonly" {
  user       = aws_iam_user.bob_sato6880.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bob_silva" {
  name = "hextri-1bmol0-bob.silva"
}

resource "aws_iam_user_login_profile" "bob_silva" {
  user                    = aws_iam_user.bob_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_silva__citizen_portal_6_devs" {
  user   = aws_iam_user.bob_silva.name
  groups = [aws_iam_group.citizen_portal_6_devs.name]
}

resource "aws_iam_user" "bob_wong" {
  name = "hextri-1bmol0-bob.wong"
}

resource "aws_iam_user_group_membership" "bob_wong__licensing_4_devs" {
  user   = aws_iam_user.bob_wong.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "bob_wong9841" {
  name = "hextri-1bmol0-bob.wong9841"
}

resource "aws_iam_user_group_membership" "bob_wong9841__benefits_6_devs" {
  user   = aws_iam_user.bob_wong9841.name
  groups = [aws_iam_group.benefits_6_devs.name]
}

resource "aws_iam_user_group_membership" "bob_wong9841__hr_6_analysts" {
  user   = aws_iam_user.bob_wong9841.name
  groups = [aws_iam_group.hr_6_analysts.name]
}

resource "aws_iam_user" "carol_ali" {
  name = "hextri-1bmol0-carol.ali"
}

resource "aws_iam_user_login_profile" "carol_ali" {
  user                    = aws_iam_user.carol_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_ali__records_6_devs" {
  user   = aws_iam_user.carol_ali.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user_group_membership" "carol_ali__tax_6_analysts" {
  user   = aws_iam_user.carol_ali.name
  groups = [aws_iam_group.tax_6_analysts.name]
}

resource "aws_iam_user" "carol_chen" {
  name = "hextri-1bmol0-carol.chen"
}

resource "aws_iam_user_login_profile" "carol_chen" {
  user                    = aws_iam_user.carol_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_chen__hr_3_devs" {
  user   = aws_iam_user.carol_chen.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user_group_membership" "carol_chen__public_safety_2_analysts" {
  user   = aws_iam_user.carol_chen.name
  groups = [aws_iam_group.public_safety_2_analysts.name]
}

resource "aws_iam_user" "carol_davis" {
  name = "hextri-1bmol0-carol.davis"
}

resource "aws_iam_user_login_profile" "carol_davis" {
  user                    = aws_iam_user.carol_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_davis__public_safety_devs" {
  user   = aws_iam_user.carol_davis.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user" "carol_dubois" {
  name = "hextri-1bmol0-carol.dubois"
}

resource "aws_iam_user_login_profile" "carol_dubois" {
  user                    = aws_iam_user.carol_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_dubois__audit_devs" {
  user   = aws_iam_user.carol_dubois.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user" "carol_dubois1248" {
  name = "hextri-1bmol0-carol.dubois1248"
}

resource "aws_iam_user_login_profile" "carol_dubois1248" {
  user                    = aws_iam_user.carol_dubois1248.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_dubois1248__gis_3_devs" {
  user   = aws_iam_user.carol_dubois1248.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "carol_garcia" {
  name = "hextri-1bmol0-carol.garcia"
}

resource "aws_iam_user_login_profile" "carol_garcia" {
  user                    = aws_iam_user.carol_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_garcia__citizen_portal_7_analysts" {
  user   = aws_iam_user.carol_garcia.name
  groups = [aws_iam_group.citizen_portal_7_analysts.name]
}

resource "aws_iam_user" "carol_gupta" {
  name = "hextri-1bmol0-carol.gupta"
}

resource "aws_iam_user_login_profile" "carol_gupta" {
  user                    = aws_iam_user.carol_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_gupta__public_safety_4_analysts" {
  user   = aws_iam_user.carol_gupta.name
  groups = [aws_iam_group.public_safety_4_analysts.name]
}

resource "aws_iam_user" "carol_gupta2206" {
  name = "hextri-1bmol0-carol.gupta2206"
}

resource "aws_iam_user_login_profile" "carol_gupta2206" {
  user                    = aws_iam_user.carol_gupta2206.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_gupta2206__records_2_analysts" {
  user   = aws_iam_user.carol_gupta2206.name
  groups = [aws_iam_group.records_2_analysts.name]
}

resource "aws_iam_user" "carol_kim" {
  name = "hextri-1bmol0-carol.kim"
}

resource "aws_iam_user_login_profile" "carol_kim" {
  user                    = aws_iam_user.carol_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_kim__records_3_devs" {
  user   = aws_iam_user.carol_kim.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user" "carol_larsen" {
  name = "hextri-1bmol0-carol.larsen"
}

resource "aws_iam_user_login_profile" "carol_larsen" {
  user                    = aws_iam_user.carol_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_larsen__open_data_7_devs" {
  user   = aws_iam_user.carol_larsen.name
  groups = [aws_iam_group.open_data_7_devs.name]
}

resource "aws_iam_user" "carol_larsen1928" {
  name = "hextri-1bmol0-carol.larsen1928"
}

resource "aws_iam_user_login_profile" "carol_larsen1928" {
  user                    = aws_iam_user.carol_larsen1928.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_larsen1928__licensing_devs" {
  user   = aws_iam_user.carol_larsen1928.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user_group_membership" "carol_larsen1928__hr_analysts" {
  user   = aws_iam_user.carol_larsen1928.name
  groups = [aws_iam_group.hr_analysts.name]
}

resource "aws_iam_user" "carol_smith" {
  name = "hextri-1bmol0-carol.smith"
}

resource "aws_iam_user_login_profile" "carol_smith" {
  user                    = aws_iam_user.carol_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_smith__hr_2_devs" {
  user   = aws_iam_user.carol_smith.name
  groups = [aws_iam_group.hr_2_devs.name]
}

resource "aws_iam_user" "chen_cohen" {
  name = "hextri-1bmol0-chen.cohen"
}

resource "aws_iam_user_login_profile" "chen_cohen" {
  user                    = aws_iam_user.chen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_cohen__public_safety_4_devs" {
  user   = aws_iam_user.chen_cohen.name
  groups = [aws_iam_group.public_safety_4_devs.name]
}

resource "aws_iam_user" "chen_dubois" {
  name = "hextri-1bmol0-chen.dubois"
}

resource "aws_iam_user_login_profile" "chen_dubois" {
  user                    = aws_iam_user.chen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_dubois__gis_4_devs" {
  user   = aws_iam_user.chen_dubois.name
  groups = [aws_iam_group.gis_4_devs.name]
}

resource "aws_iam_user" "chen_khan" {
  name = "hextri-1bmol0-chen.khan"
}

resource "aws_iam_user_login_profile" "chen_khan" {
  user                    = aws_iam_user.chen_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_khan__licensing_6_devs" {
  user   = aws_iam_user.chen_khan.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "chen_larsen" {
  name = "hextri-1bmol0-chen.larsen"
}

resource "aws_iam_user_login_profile" "chen_larsen" {
  user                    = aws_iam_user.chen_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_larsen__tax_6_devs" {
  user   = aws_iam_user.chen_larsen.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user_group_membership" "chen_larsen__records_4_analysts" {
  user   = aws_iam_user.chen_larsen.name
  groups = [aws_iam_group.records_4_analysts.name]
}

resource "aws_iam_user" "chen_muller" {
  name = "hextri-1bmol0-chen.muller"
}

resource "aws_iam_user_login_profile" "chen_muller" {
  user                    = aws_iam_user.chen_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_muller__audit_5_devs" {
  user   = aws_iam_user.chen_muller.name
  groups = [aws_iam_group.audit_5_devs.name]
}

resource "aws_iam_user" "chen_nguyen" {
  name = "hextri-1bmol0-chen.nguyen"
}

resource "aws_iam_user_group_membership" "chen_nguyen__benefits_2_devs" {
  user   = aws_iam_user.chen_nguyen.name
  groups = [aws_iam_group.benefits_2_devs.name]
}

resource "aws_iam_user" "chen_nguyen9898" {
  name = "hextri-1bmol0-chen.nguyen9898"
}

resource "aws_iam_user_login_profile" "chen_nguyen9898" {
  user                    = aws_iam_user.chen_nguyen9898.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_nguyen9898__licensing_4_devs" {
  user   = aws_iam_user.chen_nguyen9898.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "chen_sato" {
  name = "hextri-1bmol0-chen.sato"
}

resource "aws_iam_user_login_profile" "chen_sato" {
  user                    = aws_iam_user.chen_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_sato__records_5_devs" {
  user   = aws_iam_user.chen_sato.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "chen_sato__base_readonly" {
  user       = aws_iam_user.chen_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_sato1477" {
  name = "hextri-1bmol0-chen.sato1477"
}

resource "aws_iam_user_login_profile" "chen_sato1477" {
  user                    = aws_iam_user.chen_sato1477.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_sato1477__it_ops_2_devs" {
  user   = aws_iam_user.chen_sato1477.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "chen_silva" {
  name = "hextri-1bmol0-chen.silva"
}

resource "aws_iam_user_login_profile" "chen_silva" {
  user                    = aws_iam_user.chen_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_silva__procurement_2_devs" {
  user   = aws_iam_user.chen_silva.name
  groups = [aws_iam_group.procurement_2_devs.name]
}

resource "aws_iam_user_group_membership" "chen_silva__records_3_analysts" {
  user   = aws_iam_user.chen_silva.name
  groups = [aws_iam_group.records_3_analysts.name]
}

resource "aws_iam_user" "chen_tanaka" {
  name = "hextri-1bmol0-chen.tanaka"
}

resource "aws_iam_user_login_profile" "chen_tanaka" {
  user                    = aws_iam_user.chen_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_tanaka__licensing_3_devs" {
  user   = aws_iam_user.chen_tanaka.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "dara_cohen" {
  name = "hextri-1bmol0-dara.cohen"
}

resource "aws_iam_user_login_profile" "dara_cohen" {
  user                    = aws_iam_user.dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_cohen__tax_4_devs" {
  user   = aws_iam_user.dara_cohen.name
  groups = [aws_iam_group.tax_4_devs.name]
}

resource "aws_iam_user_group_membership" "dara_cohen__open_data_analysts" {
  user   = aws_iam_user.dara_cohen.name
  groups = [aws_iam_group.open_data_analysts.name]
}

resource "aws_iam_user" "dara_davis" {
  name = "hextri-1bmol0-dara.davis"
}

resource "aws_iam_user_login_profile" "dara_davis" {
  user                    = aws_iam_user.dara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_davis__records_3_devs" {
  user   = aws_iam_user.dara_davis.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user" "dara_dubois" {
  name = "hextri-1bmol0-dara.dubois"
}

resource "aws_iam_user_login_profile" "dara_dubois" {
  user                    = aws_iam_user.dara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_dubois__records_5_devs" {
  user   = aws_iam_user.dara_dubois.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user" "dara_dubois5712" {
  name = "hextri-1bmol0-dara.dubois5712"
}

resource "aws_iam_user_login_profile" "dara_dubois5712" {
  user                    = aws_iam_user.dara_dubois5712.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_dubois5712__it_ops_5_devs" {
  user   = aws_iam_user.dara_dubois5712.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user_group_membership" "dara_dubois5712__citizen_portal_3_analysts" {
  user   = aws_iam_user.dara_dubois5712.name
  groups = [aws_iam_group.citizen_portal_3_analysts.name]
}

resource "aws_iam_user" "dara_jones" {
  name = "hextri-1bmol0-dara.jones"
}

resource "aws_iam_user_login_profile" "dara_jones" {
  user                    = aws_iam_user.dara_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_jones__hr_6_analysts" {
  user   = aws_iam_user.dara_jones.name
  groups = [aws_iam_group.hr_6_analysts.name]
}

resource "aws_iam_user" "dara_kim" {
  name = "hextri-1bmol0-dara.kim"
}

resource "aws_iam_user_login_profile" "dara_kim" {
  user                    = aws_iam_user.dara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_kim__tax_3_devs" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.tax_3_devs.name]
}

resource "aws_iam_user_group_membership" "dara_kim__open_data_5_analysts" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.open_data_5_analysts.name]
}

resource "aws_iam_user" "dara_okafor" {
  name = "hextri-1bmol0-dara.okafor"
}

resource "aws_iam_user_login_profile" "dara_okafor" {
  user                    = aws_iam_user.dara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_okafor__records_devs" {
  user   = aws_iam_user.dara_okafor.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user_group_membership" "dara_okafor__tax_6_analysts" {
  user   = aws_iam_user.dara_okafor.name
  groups = [aws_iam_group.tax_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "dara_okafor__base_readonly" {
  user       = aws_iam_user.dara_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_patel" {
  name = "hextri-1bmol0-dara.patel"
}

resource "aws_iam_user_group_membership" "dara_patel__procurement_3_devs" {
  user   = aws_iam_user.dara_patel.name
  groups = [aws_iam_group.procurement_3_devs.name]
}

resource "aws_iam_user" "dara_patel2388" {
  name = "hextri-1bmol0-dara.patel2388"
}

resource "aws_iam_user_login_profile" "dara_patel2388" {
  user                    = aws_iam_user.dara_patel2388.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_patel2388__records_4_analysts" {
  user   = aws_iam_user.dara_patel2388.name
  groups = [aws_iam_group.records_4_analysts.name]
}

resource "aws_iam_user" "dara_patel6848" {
  name = "hextri-1bmol0-dara.patel6848"
}

resource "aws_iam_user_login_profile" "dara_patel6848" {
  user                    = aws_iam_user.dara_patel6848.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_patel6848__benefits_4_devs" {
  user   = aws_iam_user.dara_patel6848.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_patel6848__base_readonly" {
  user       = aws_iam_user.dara_patel6848.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_reddy" {
  name = "hextri-1bmol0-dara.reddy"
}

resource "aws_iam_user_login_profile" "dara_reddy" {
  user                    = aws_iam_user.dara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_reddy__records_5_devs" {
  user   = aws_iam_user.dara_reddy.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_reddy__base_readonly" {
  user       = aws_iam_user.dara_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_reddy8687" {
  name = "hextri-1bmol0-dara.reddy8687"
}

resource "aws_iam_user_group_membership" "dara_reddy8687__hr_3_devs" {
  user   = aws_iam_user.dara_reddy8687.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user" "dara_sato" {
  name = "hextri-1bmol0-dara.sato"
}

resource "aws_iam_user_login_profile" "dara_sato" {
  user                    = aws_iam_user.dara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_sato__records_6_devs" {
  user   = aws_iam_user.dara_sato.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user" "dara_smith" {
  name = "hextri-1bmol0-dara.smith"
}

resource "aws_iam_user_login_profile" "dara_smith" {
  user                    = aws_iam_user.dara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_smith__records_2_devs" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.records_2_devs.name]
}

resource "aws_iam_user" "dara_wong" {
  name = "hextri-1bmol0-dara.wong"
}

resource "aws_iam_user_login_profile" "dara_wong" {
  user                    = aws_iam_user.dara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_wong__records_3_analysts" {
  user   = aws_iam_user.dara_wong.name
  groups = [aws_iam_group.records_3_analysts.name]
}

resource "aws_iam_user" "dave_chen" {
  name = "hextri-1bmol0-dave.chen"
}

resource "aws_iam_user_login_profile" "dave_chen" {
  user                    = aws_iam_user.dave_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_chen__procurement_devs" {
  user   = aws_iam_user.dave_chen.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user_group_membership" "dave_chen__it_ops_6_analysts" {
  user   = aws_iam_user.dave_chen.name
  groups = [aws_iam_group.it_ops_6_analysts.name]
}

resource "aws_iam_user" "dave_cohen" {
  name = "hextri-1bmol0-dave.cohen"
}

resource "aws_iam_user_login_profile" "dave_cohen" {
  user                    = aws_iam_user.dave_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_cohen__it_ops_5_devs" {
  user   = aws_iam_user.dave_cohen.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "dave_cohen__base_readonly" {
  user       = aws_iam_user.dave_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dave_garcia" {
  name = "hextri-1bmol0-dave.garcia"
}

resource "aws_iam_user_login_profile" "dave_garcia" {
  user                    = aws_iam_user.dave_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_garcia__citizen_portal_5_devs" {
  user   = aws_iam_user.dave_garcia.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user" "dave_haddad" {
  name = "hextri-1bmol0-dave.haddad"
}

resource "aws_iam_user_group_membership" "dave_haddad__gis_5_devs" {
  user   = aws_iam_user.dave_haddad.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user_group_membership" "dave_haddad__tax_analysts" {
  user   = aws_iam_user.dave_haddad.name
  groups = [aws_iam_group.tax_analysts.name]
}

resource "aws_iam_user" "dave_khan" {
  name = "hextri-1bmol0-dave.khan"
}

resource "aws_iam_user_login_profile" "dave_khan" {
  user                    = aws_iam_user.dave_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_khan__benefits_4_devs" {
  user   = aws_iam_user.dave_khan.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user_group_membership" "dave_khan__gis_2_analysts" {
  user   = aws_iam_user.dave_khan.name
  groups = [aws_iam_group.gis_2_analysts.name]
}

resource "aws_iam_user" "dave_larsen" {
  name = "hextri-1bmol0-dave.larsen"
}

resource "aws_iam_user_login_profile" "dave_larsen" {
  user                    = aws_iam_user.dave_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen__licensing_4_devs" {
  user   = aws_iam_user.dave_larsen.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user_group_membership" "dave_larsen__benefits_6_analysts" {
  user   = aws_iam_user.dave_larsen.name
  groups = [aws_iam_group.benefits_6_analysts.name]
}

resource "aws_iam_user" "dave_larsen875" {
  name = "hextri-1bmol0-dave.larsen875"
}

resource "aws_iam_user_login_profile" "dave_larsen875" {
  user                    = aws_iam_user.dave_larsen875.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen875__licensing_5_devs" {
  user   = aws_iam_user.dave_larsen875.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user" "dave_miller" {
  name = "hextri-1bmol0-dave.miller"
}

resource "aws_iam_user_group_membership" "dave_miller__licensing_5_devs" {
  user   = aws_iam_user.dave_miller.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user_group_membership" "dave_miller__tax_4_analysts" {
  user   = aws_iam_user.dave_miller.name
  groups = [aws_iam_group.tax_4_analysts.name]
}

resource "aws_iam_user" "dave_muller" {
  name = "hextri-1bmol0-dave.muller"
}

resource "aws_iam_user_login_profile" "dave_muller" {
  user                    = aws_iam_user.dave_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_muller__open_data_2_analysts" {
  user   = aws_iam_user.dave_muller.name
  groups = [aws_iam_group.open_data_2_analysts.name]
}

resource "aws_iam_user" "dave_nguyen" {
  name = "hextri-1bmol0-dave.nguyen"
}

resource "aws_iam_user_login_profile" "dave_nguyen" {
  user                    = aws_iam_user.dave_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_nguyen__citizen_portal_6_devs" {
  user   = aws_iam_user.dave_nguyen.name
  groups = [aws_iam_group.citizen_portal_6_devs.name]
}

resource "aws_iam_user_group_membership" "dave_nguyen__public_safety_3_analysts" {
  user   = aws_iam_user.dave_nguyen.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "dave_okafor" {
  name = "hextri-1bmol0-dave.okafor"
}

resource "aws_iam_user_login_profile" "dave_okafor" {
  user                    = aws_iam_user.dave_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_okafor__tax_2_devs" {
  user   = aws_iam_user.dave_okafor.name
  groups = [aws_iam_group.tax_2_devs.name]
}

resource "aws_iam_user_group_membership" "dave_okafor__open_data_4_analysts" {
  user   = aws_iam_user.dave_okafor.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user" "dave_patel" {
  name = "hextri-1bmol0-dave.patel"
}

resource "aws_iam_user_login_profile" "dave_patel" {
  user                    = aws_iam_user.dave_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_patel__open_data_5_devs" {
  user   = aws_iam_user.dave_patel.name
  groups = [aws_iam_group.open_data_5_devs.name]
}

resource "aws_iam_user" "dave_patel3621" {
  name = "hextri-1bmol0-dave.patel3621"
}

resource "aws_iam_user_group_membership" "dave_patel3621__tax_3_devs" {
  user   = aws_iam_user.dave_patel3621.name
  groups = [aws_iam_group.tax_3_devs.name]
}

resource "aws_iam_user" "eli_brown" {
  name = "hextri-1bmol0-eli.brown"
}

resource "aws_iam_user_login_profile" "eli_brown" {
  user                    = aws_iam_user.eli_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_brown__public_safety_6_devs" {
  user   = aws_iam_user.eli_brown.name
  groups = [aws_iam_group.public_safety_6_devs.name]
}

resource "aws_iam_user" "eli_brown5111" {
  name = "hextri-1bmol0-eli.brown5111"
}

resource "aws_iam_user_login_profile" "eli_brown5111" {
  user                    = aws_iam_user.eli_brown5111.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_brown5111__public_safety_5_devs" {
  user   = aws_iam_user.eli_brown5111.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "eli_brown8445" {
  name = "hextri-1bmol0-eli.brown8445"
}

resource "aws_iam_user_group_membership" "eli_brown8445__records_6_devs" {
  user   = aws_iam_user.eli_brown8445.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user" "eli_dubois" {
  name = "hextri-1bmol0-eli.dubois"
}

resource "aws_iam_user_login_profile" "eli_dubois" {
  user                    = aws_iam_user.eli_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_dubois__hr_6_devs" {
  user   = aws_iam_user.eli_dubois.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user" "eli_garcia" {
  name = "hextri-1bmol0-eli.garcia"
}

resource "aws_iam_user_login_profile" "eli_garcia" {
  user                    = aws_iam_user.eli_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_garcia__it_ops_4_devs" {
  user   = aws_iam_user.eli_garcia.name
  groups = [aws_iam_group.it_ops_4_devs.name]
}

resource "aws_iam_user" "eli_gupta" {
  name = "hextri-1bmol0-eli.gupta"
}

resource "aws_iam_user_login_profile" "eli_gupta" {
  user                    = aws_iam_user.eli_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_gupta__it_ops_2_devs" {
  user   = aws_iam_user.eli_gupta.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "eli_miller" {
  name = "hextri-1bmol0-eli.miller"
}

resource "aws_iam_user_login_profile" "eli_miller" {
  user                    = aws_iam_user.eli_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_miller__procurement_2_devs" {
  user   = aws_iam_user.eli_miller.name
  groups = [aws_iam_group.procurement_2_devs.name]
}

resource "aws_iam_user_group_membership" "eli_miller__licensing_5_analysts" {
  user   = aws_iam_user.eli_miller.name
  groups = [aws_iam_group.licensing_5_analysts.name]
}

resource "aws_iam_user" "eli_miller5725" {
  name = "hextri-1bmol0-eli.miller5725"
}

resource "aws_iam_user_login_profile" "eli_miller5725" {
  user                    = aws_iam_user.eli_miller5725.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_miller5725__records_analysts" {
  user   = aws_iam_user.eli_miller5725.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "eli_okafor" {
  name = "hextri-1bmol0-eli.okafor"
}

resource "aws_iam_user_login_profile" "eli_okafor" {
  user                    = aws_iam_user.eli_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_okafor__citizen_portal_2_devs" {
  user   = aws_iam_user.eli_okafor.name
  groups = [aws_iam_group.citizen_portal_2_devs.name]
}

resource "aws_iam_user" "eli_silva" {
  name = "hextri-1bmol0-eli.silva"
}

resource "aws_iam_user_login_profile" "eli_silva" {
  user                    = aws_iam_user.eli_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_silva__open_data_2_devs" {
  user   = aws_iam_user.eli_silva.name
  groups = [aws_iam_group.open_data_2_devs.name]
}

resource "aws_iam_user" "eli_silva2079" {
  name = "hextri-1bmol0-eli.silva2079"
}

resource "aws_iam_user_login_profile" "eli_silva2079" {
  user                    = aws_iam_user.eli_silva2079.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_silva2079__gis_analysts" {
  user   = aws_iam_user.eli_silva2079.name
  groups = [aws_iam_group.gis_analysts.name]
}

resource "aws_iam_user" "eli_smith" {
  name = "hextri-1bmol0-eli.smith"
}

resource "aws_iam_user_login_profile" "eli_smith" {
  user                    = aws_iam_user.eli_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_smith__licensing_2_devs" {
  user   = aws_iam_user.eli_smith.name
  groups = [aws_iam_group.licensing_2_devs.name]
}

resource "aws_iam_user_group_membership" "eli_smith__it_ops_2_analysts" {
  user   = aws_iam_user.eli_smith.name
  groups = [aws_iam_group.it_ops_2_analysts.name]
}

resource "aws_iam_user" "erin_chen" {
  name = "hextri-1bmol0-erin.chen"
}

resource "aws_iam_user_group_membership" "erin_chen__records_4_devs" {
  user   = aws_iam_user.erin_chen.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "erin_davis" {
  name = "hextri-1bmol0-erin.davis"
}

resource "aws_iam_user_login_profile" "erin_davis" {
  user                    = aws_iam_user.erin_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_davis__benefits_analysts" {
  user   = aws_iam_user.erin_davis.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "erin_lopez" {
  name = "hextri-1bmol0-erin.lopez"
}

resource "aws_iam_user_group_membership" "erin_lopez__records_6_analysts" {
  user   = aws_iam_user.erin_lopez.name
  groups = [aws_iam_group.records_6_analysts.name]
}

resource "aws_iam_user" "erin_mehta" {
  name = "hextri-1bmol0-erin.mehta"
}

resource "aws_iam_user_login_profile" "erin_mehta" {
  user                    = aws_iam_user.erin_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_mehta__it_ops_devs" {
  user   = aws_iam_user.erin_mehta.name
  groups = [aws_iam_group.it_ops_devs.name]
}

resource "aws_iam_user_group_membership" "erin_mehta__benefits_analysts" {
  user   = aws_iam_user.erin_mehta.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "erin_miller" {
  name = "hextri-1bmol0-erin.miller"
}

resource "aws_iam_user_login_profile" "erin_miller" {
  user                    = aws_iam_user.erin_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_miller__audit_3_devs" {
  user   = aws_iam_user.erin_miller.name
  groups = [aws_iam_group.audit_3_devs.name]
}

resource "aws_iam_user" "erin_miller2796" {
  name = "hextri-1bmol0-erin.miller2796"
}

resource "aws_iam_user_login_profile" "erin_miller2796" {
  user                    = aws_iam_user.erin_miller2796.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_miller2796__benefits_devs" {
  user   = aws_iam_user.erin_miller2796.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user" "erin_novak" {
  name = "hextri-1bmol0-erin.novak"
}

resource "aws_iam_user_login_profile" "erin_novak" {
  user                    = aws_iam_user.erin_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_novak__gis_3_devs" {
  user   = aws_iam_user.erin_novak.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user_group_membership" "erin_novak__public_safety_2_analysts" {
  user   = aws_iam_user.erin_novak.name
  groups = [aws_iam_group.public_safety_2_analysts.name]
}

resource "aws_iam_user" "erin_rossi" {
  name = "hextri-1bmol0-erin.rossi"
}

resource "aws_iam_user_login_profile" "erin_rossi" {
  user                    = aws_iam_user.erin_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_rossi__audit_devs" {
  user   = aws_iam_user.erin_rossi.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user" "erin_smith" {
  name = "hextri-1bmol0-erin.smith"
}

resource "aws_iam_user_login_profile" "erin_smith" {
  user                    = aws_iam_user.erin_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_smith__it_ops_devs" {
  user   = aws_iam_user.erin_smith.name
  groups = [aws_iam_group.it_ops_devs.name]
}

resource "aws_iam_user" "erin_tanaka" {
  name = "hextri-1bmol0-erin.tanaka"
}

resource "aws_iam_user_login_profile" "erin_tanaka" {
  user                    = aws_iam_user.erin_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_tanaka__citizen_portal_3_devs" {
  user   = aws_iam_user.erin_tanaka.name
  groups = [aws_iam_group.citizen_portal_3_devs.name]
}

resource "aws_iam_user" "erin_tanaka3772" {
  name = "hextri-1bmol0-erin.tanaka3772"
}

resource "aws_iam_user_login_profile" "erin_tanaka3772" {
  user                    = aws_iam_user.erin_tanaka3772.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_tanaka3772__benefits_4_devs" {
  user   = aws_iam_user.erin_tanaka3772.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user" "ext_alice_brown" {
  name = "hextri-1bmol0-ext-alice.brown"
}

resource "aws_iam_user_login_profile" "ext_alice_brown" {
  user                    = aws_iam_user.ext_alice_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_brown__contractors" {
  user   = aws_iam_user.ext_alice_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_alice_mehta" {
  name = "hextri-1bmol0-ext-alice.mehta"
}

resource "aws_iam_user_login_profile" "ext_alice_mehta" {
  user                    = aws_iam_user.ext_alice_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_mehta__contractors" {
  user   = aws_iam_user.ext_alice_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_alice_silva" {
  name = "hextri-1bmol0-ext-alice.silva"
}

resource "aws_iam_user_login_profile" "ext_alice_silva" {
  user                    = aws_iam_user.ext_alice_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_silva__contractors" {
  user   = aws_iam_user.ext_alice_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_bob_nguyen" {
  name = "hextri-1bmol0-ext-bob.nguyen"
}

resource "aws_iam_user_login_profile" "ext_bob_nguyen" {
  user                    = aws_iam_user.ext_bob_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bob_nguyen__contractors" {
  user   = aws_iam_user.ext_bob_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_carol_silva" {
  name = "hextri-1bmol0-ext-carol.silva"
}

resource "aws_iam_user_login_profile" "ext_carol_silva" {
  user                    = aws_iam_user.ext_carol_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_carol_silva__contractors" {
  user   = aws_iam_user.ext_carol_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_carol_silva__it_ops_3_analysts" {
  user   = aws_iam_user.ext_carol_silva.name
  groups = [aws_iam_group.it_ops_3_analysts.name]
}

resource "aws_iam_user" "ext_chen_dubois" {
  name = "hextri-1bmol0-ext-chen.dubois"
}

resource "aws_iam_user_login_profile" "ext_chen_dubois" {
  user                    = aws_iam_user.ext_chen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_dubois__contractors" {
  user   = aws_iam_user.ext_chen_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_dubois__public_safety_analysts" {
  user   = aws_iam_user.ext_chen_dubois.name
  groups = [aws_iam_group.public_safety_analysts.name]
}

resource "aws_iam_user" "ext_chen_khan" {
  name = "hextri-1bmol0-ext-chen.khan"
}

resource "aws_iam_user_login_profile" "ext_chen_khan" {
  user                    = aws_iam_user.ext_chen_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_khan__contractors" {
  user   = aws_iam_user.ext_chen_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_khan__public_safety_3_analysts" {
  user   = aws_iam_user.ext_chen_khan.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "ext_chen_lopez" {
  name = "hextri-1bmol0-ext-chen.lopez"
}

resource "aws_iam_user_login_profile" "ext_chen_lopez" {
  user                    = aws_iam_user.ext_chen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_lopez__contractors" {
  user   = aws_iam_user.ext_chen_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_lopez__gis_2_analysts" {
  user   = aws_iam_user.ext_chen_lopez.name
  groups = [aws_iam_group.gis_2_analysts.name]
}

resource "aws_iam_user" "ext_dara_cohen" {
  name = "hextri-1bmol0-ext-dara.cohen"
}

resource "aws_iam_user_login_profile" "ext_dara_cohen" {
  user                    = aws_iam_user.ext_dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_cohen__contractors" {
  user   = aws_iam_user.ext_dara_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dave_mehta" {
  name = "hextri-1bmol0-ext-dave.mehta"
}

resource "aws_iam_user_login_profile" "ext_dave_mehta" {
  user                    = aws_iam_user.ext_dave_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_mehta__contractors" {
  user   = aws_iam_user.ext_dave_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_mehta__benefits_analysts" {
  user   = aws_iam_user.ext_dave_mehta.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "ext_eli_nguyen" {
  name = "hextri-1bmol0-ext-eli.nguyen"
}

resource "aws_iam_user_login_profile" "ext_eli_nguyen" {
  user                    = aws_iam_user.ext_eli_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_nguyen__contractors" {
  user   = aws_iam_user.ext_eli_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_eli_sato" {
  name = "hextri-1bmol0-ext-eli.sato"
}

resource "aws_iam_user_login_profile" "ext_eli_sato" {
  user                    = aws_iam_user.ext_eli_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_sato__contractors" {
  user   = aws_iam_user.ext_eli_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_eli_sato__gis_3_analysts" {
  user   = aws_iam_user.ext_eli_sato.name
  groups = [aws_iam_group.gis_3_analysts.name]
}

resource "aws_iam_user" "ext_erin_khan" {
  name = "hextri-1bmol0-ext-erin.khan"
}

resource "aws_iam_user_login_profile" "ext_erin_khan" {
  user                    = aws_iam_user.ext_erin_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_khan__contractors" {
  user   = aws_iam_user.ext_erin_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_erin_khan__open_data_2_analysts" {
  user   = aws_iam_user.ext_erin_khan.name
  groups = [aws_iam_group.open_data_2_analysts.name]
}

resource "aws_iam_user" "ext_frank_brown" {
  name = "hextri-1bmol0-ext-frank.brown"
}

resource "aws_iam_user_login_profile" "ext_frank_brown" {
  user                    = aws_iam_user.ext_frank_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_brown__contractors" {
  user   = aws_iam_user.ext_frank_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_frank_okafor" {
  name = "hextri-1bmol0-ext-frank.okafor"
}

resource "aws_iam_user_login_profile" "ext_frank_okafor" {
  user                    = aws_iam_user.ext_frank_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_okafor__contractors" {
  user   = aws_iam_user.ext_frank_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_okafor__licensing_6_analysts" {
  user   = aws_iam_user.ext_frank_okafor.name
  groups = [aws_iam_group.licensing_6_analysts.name]
}

resource "aws_iam_user" "ext_frank_rossi" {
  name = "hextri-1bmol0-ext-frank.rossi"
}

resource "aws_iam_user_login_profile" "ext_frank_rossi" {
  user                    = aws_iam_user.ext_frank_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_rossi__contractors" {
  user   = aws_iam_user.ext_frank_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_rossi__hr_4_analysts" {
  user   = aws_iam_user.ext_frank_rossi.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "ext_grace_gupta" {
  name = "hextri-1bmol0-ext-grace.gupta"
}

resource "aws_iam_user_login_profile" "ext_grace_gupta" {
  user                    = aws_iam_user.ext_grace_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_gupta__contractors" {
  user   = aws_iam_user.ext_grace_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_grace_gupta__gis_3_analysts" {
  user   = aws_iam_user.ext_grace_gupta.name
  groups = [aws_iam_group.gis_3_analysts.name]
}

resource "aws_iam_user" "ext_grace_khan" {
  name = "hextri-1bmol0-ext-grace.khan"
}

resource "aws_iam_user_login_profile" "ext_grace_khan" {
  user                    = aws_iam_user.ext_grace_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_khan__contractors" {
  user   = aws_iam_user.ext_grace_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_grace_patel" {
  name = "hextri-1bmol0-ext-grace.patel"
}

resource "aws_iam_user_login_profile" "ext_grace_patel" {
  user                    = aws_iam_user.ext_grace_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_patel__contractors" {
  user   = aws_iam_user.ext_grace_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_grace_patel__benefits_analysts" {
  user   = aws_iam_user.ext_grace_patel.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "ext_gus_dubois" {
  name = "hextri-1bmol0-ext-gus.dubois"
}

resource "aws_iam_user_login_profile" "ext_gus_dubois" {
  user                    = aws_iam_user.ext_gus_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_dubois__contractors" {
  user   = aws_iam_user.ext_gus_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_gus_lopez" {
  name = "hextri-1bmol0-ext-gus.lopez"
}

resource "aws_iam_user_login_profile" "ext_gus_lopez" {
  user                    = aws_iam_user.ext_gus_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_lopez__contractors" {
  user   = aws_iam_user.ext_gus_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_gus_lopez__tax_2_analysts" {
  user   = aws_iam_user.ext_gus_lopez.name
  groups = [aws_iam_group.tax_2_analysts.name]
}

resource "aws_iam_user" "ext_hana_silva" {
  name = "hextri-1bmol0-ext-hana.silva"
}

resource "aws_iam_user_login_profile" "ext_hana_silva" {
  user                    = aws_iam_user.ext_hana_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_silva__contractors" {
  user   = aws_iam_user.ext_hana_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_hana_wong" {
  name = "hextri-1bmol0-ext-hana.wong"
}

resource "aws_iam_user_login_profile" "ext_hana_wong" {
  user                    = aws_iam_user.ext_hana_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_wong__contractors" {
  user   = aws_iam_user.ext_hana_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_heidi_khan" {
  name = "hextri-1bmol0-ext-heidi.khan"
}

resource "aws_iam_user_login_profile" "ext_heidi_khan" {
  user                    = aws_iam_user.ext_heidi_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_khan__contractors" {
  user   = aws_iam_user.ext_heidi_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_heidi_larsen" {
  name = "hextri-1bmol0-ext-heidi.larsen"
}

resource "aws_iam_user_login_profile" "ext_heidi_larsen" {
  user                    = aws_iam_user.ext_heidi_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_larsen__contractors" {
  user   = aws_iam_user.ext_heidi_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_heidi_larsen__public_safety_4_analysts" {
  user   = aws_iam_user.ext_heidi_larsen.name
  groups = [aws_iam_group.public_safety_4_analysts.name]
}

resource "aws_iam_user" "ext_ian_kim" {
  name = "hextri-1bmol0-ext-ian.kim"
}

resource "aws_iam_user_login_profile" "ext_ian_kim" {
  user                    = aws_iam_user.ext_ian_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_kim__contractors" {
  user   = aws_iam_user.ext_ian_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ian_kim__licensing_6_analysts" {
  user   = aws_iam_user.ext_ian_kim.name
  groups = [aws_iam_group.licensing_6_analysts.name]
}

resource "aws_iam_user" "ext_ivan_gupta" {
  name = "hextri-1bmol0-ext-ivan.gupta"
}

resource "aws_iam_user_login_profile" "ext_ivan_gupta" {
  user                    = aws_iam_user.ext_ivan_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_gupta__contractors" {
  user   = aws_iam_user.ext_ivan_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ivan_gupta__audit_analysts" {
  user   = aws_iam_user.ext_ivan_gupta.name
  groups = [aws_iam_group.audit_analysts.name]
}

resource "aws_iam_user" "ext_judy_chen" {
  name = "hextri-1bmol0-ext-judy.chen"
}

resource "aws_iam_user_login_profile" "ext_judy_chen" {
  user                    = aws_iam_user.ext_judy_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_chen__contractors" {
  user   = aws_iam_user.ext_judy_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_dubois" {
  name = "hextri-1bmol0-ext-judy.dubois"
}

resource "aws_iam_user_login_profile" "ext_judy_dubois" {
  user                    = aws_iam_user.ext_judy_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_dubois__contractors" {
  user   = aws_iam_user.ext_judy_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_judy_dubois__gis_5_analysts" {
  user   = aws_iam_user.ext_judy_dubois.name
  groups = [aws_iam_group.gis_5_analysts.name]
}

resource "aws_iam_user" "ext_judy_jones" {
  name = "hextri-1bmol0-ext-judy.jones"
}

resource "aws_iam_user_login_profile" "ext_judy_jones" {
  user                    = aws_iam_user.ext_judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_jones__contractors" {
  user   = aws_iam_user.ext_judy_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_larsen" {
  name = "hextri-1bmol0-ext-judy.larsen"
}

resource "aws_iam_user_login_profile" "ext_judy_larsen" {
  user                    = aws_iam_user.ext_judy_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_larsen__contractors" {
  user   = aws_iam_user.ext_judy_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_mehta" {
  name = "hextri-1bmol0-ext-judy.mehta"
}

resource "aws_iam_user_login_profile" "ext_judy_mehta" {
  user                    = aws_iam_user.ext_judy_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_mehta__contractors" {
  user   = aws_iam_user.ext_judy_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_judy_mehta__records_7_analysts" {
  user   = aws_iam_user.ext_judy_mehta.name
  groups = [aws_iam_group.records_7_analysts.name]
}

resource "aws_iam_user" "ext_karl_garcia" {
  name = "hextri-1bmol0-ext-karl.garcia"
}

resource "aws_iam_user_login_profile" "ext_karl_garcia" {
  user                    = aws_iam_user.ext_karl_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_garcia__contractors" {
  user   = aws_iam_user.ext_karl_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_karl_garcia__gis_7_analysts" {
  user   = aws_iam_user.ext_karl_garcia.name
  groups = [aws_iam_group.gis_7_analysts.name]
}

resource "aws_iam_user" "ext_kia_kim" {
  name = "hextri-1bmol0-ext-kia.kim"
}

resource "aws_iam_user_login_profile" "ext_kia_kim" {
  user                    = aws_iam_user.ext_kia_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_kim__contractors" {
  user   = aws_iam_user.ext_kia_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_kim__gis_analysts" {
  user   = aws_iam_user.ext_kia_kim.name
  groups = [aws_iam_group.gis_analysts.name]
}

resource "aws_iam_user" "ext_lena_reddy" {
  name = "hextri-1bmol0-ext-lena.reddy"
}

resource "aws_iam_user_login_profile" "ext_lena_reddy" {
  user                    = aws_iam_user.ext_lena_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_lena_reddy__contractors" {
  user   = aws_iam_user.ext_lena_reddy.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_lena_reddy__audit_analysts" {
  user   = aws_iam_user.ext_lena_reddy.name
  groups = [aws_iam_group.audit_analysts.name]
}

resource "aws_iam_user" "ext_lena_silva" {
  name = "hextri-1bmol0-ext-lena.silva"
}

resource "aws_iam_user_login_profile" "ext_lena_silva" {
  user                    = aws_iam_user.ext_lena_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_lena_silva__contractors" {
  user   = aws_iam_user.ext_lena_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_lena_silva__procurement_5_analysts" {
  user   = aws_iam_user.ext_lena_silva.name
  groups = [aws_iam_group.procurement_5_analysts.name]
}

resource "aws_iam_user" "ext_leo_kim" {
  name = "hextri-1bmol0-ext-leo.kim"
}

resource "aws_iam_user_login_profile" "ext_leo_kim" {
  user                    = aws_iam_user.ext_leo_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_kim__contractors" {
  user   = aws_iam_user.ext_leo_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mei_garcia" {
  name = "hextri-1bmol0-ext-mei.garcia"
}

resource "aws_iam_user_login_profile" "ext_mei_garcia" {
  user                    = aws_iam_user.ext_mei_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_garcia__contractors" {
  user   = aws_iam_user.ext_mei_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mei_kim" {
  name = "hextri-1bmol0-ext-mei.kim"
}

resource "aws_iam_user_login_profile" "ext_mei_kim" {
  user                    = aws_iam_user.ext_mei_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_kim__contractors" {
  user   = aws_iam_user.ext_mei_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_policy_attachment" "ext_mei_kim__inj_pol_p2" {
  user       = aws_iam_user.ext_mei_kim.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_mei_kim__inj_pol_p5" {
  user       = aws_iam_user.ext_mei_kim.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_user_policy_attachment" "ext_mei_kim__inj_pol_p6" {
  user       = aws_iam_user.ext_mei_kim.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_user" "ext_nina_lopez" {
  name = "hextri-1bmol0-ext-nina.lopez"
}

resource "aws_iam_user_login_profile" "ext_nina_lopez" {
  user                    = aws_iam_user.ext_nina_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_nina_lopez__contractors" {
  user   = aws_iam_user.ext_nina_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_noor_lopez" {
  name = "hextri-1bmol0-ext-noor.lopez"
}

resource "aws_iam_user_login_profile" "ext_noor_lopez" {
  user                    = aws_iam_user.ext_noor_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_lopez__contractors" {
  user   = aws_iam_user.ext_noor_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_omar_reddy" {
  name = "hextri-1bmol0-ext-omar.reddy"
}

resource "aws_iam_user_login_profile" "ext_omar_reddy" {
  user                    = aws_iam_user.ext_omar_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_omar_reddy__contractors" {
  user   = aws_iam_user.ext_omar_reddy.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_priya_jones" {
  name = "hextri-1bmol0-ext-priya.jones"
}

resource "aws_iam_user_login_profile" "ext_priya_jones" {
  user                    = aws_iam_user.ext_priya_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_jones__contractors" {
  user   = aws_iam_user.ext_priya_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_priya_jones__open_data_3_analysts" {
  user   = aws_iam_user.ext_priya_jones.name
  groups = [aws_iam_group.open_data_3_analysts.name]
}

resource "aws_iam_user" "ext_priya_larsen" {
  name = "hextri-1bmol0-ext-priya.larsen"
}

resource "aws_iam_user_login_profile" "ext_priya_larsen" {
  user                    = aws_iam_user.ext_priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_larsen__contractors" {
  user   = aws_iam_user.ext_priya_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_raj_dubois" {
  name = "hextri-1bmol0-ext-raj.dubois"
}

resource "aws_iam_user_login_profile" "ext_raj_dubois" {
  user                    = aws_iam_user.ext_raj_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_dubois__contractors" {
  user   = aws_iam_user.ext_raj_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_dubois__benefits_analysts" {
  user   = aws_iam_user.ext_raj_dubois.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "ext_raj_larsen" {
  name = "hextri-1bmol0-ext-raj.larsen"
}

resource "aws_iam_user_login_profile" "ext_raj_larsen" {
  user                    = aws_iam_user.ext_raj_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_larsen__contractors" {
  user   = aws_iam_user.ext_raj_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_sara_wong" {
  name = "hextri-1bmol0-ext-sara.wong"
}

resource "aws_iam_user_login_profile" "ext_sara_wong" {
  user                    = aws_iam_user.ext_sara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_wong__contractors" {
  user   = aws_iam_user.ext_sara_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_tom_singh" {
  name = "hextri-1bmol0-ext-tom.singh"
}

resource "aws_iam_user_login_profile" "ext_tom_singh" {
  user                    = aws_iam_user.ext_tom_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_tom_singh__contractors" {
  user   = aws_iam_user.ext_tom_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_tom_singh__procurement_5_analysts" {
  user   = aws_iam_user.ext_tom_singh.name
  groups = [aws_iam_group.procurement_5_analysts.name]
}

resource "aws_iam_user" "ext_vik_sato" {
  name = "hextri-1bmol0-ext-vik.sato"
}

resource "aws_iam_user_login_profile" "ext_vik_sato" {
  user                    = aws_iam_user.ext_vik_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_sato__contractors" {
  user   = aws_iam_user.ext_vik_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_wen_okafor" {
  name = "hextri-1bmol0-ext-wen.okafor"
}

resource "aws_iam_user_login_profile" "ext_wen_okafor" {
  user                    = aws_iam_user.ext_wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_okafor__contractors" {
  user   = aws_iam_user.ext_wen_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_xia_dubois" {
  name = "hextri-1bmol0-ext-xia.dubois"
}

resource "aws_iam_user_login_profile" "ext_xia_dubois" {
  user                    = aws_iam_user.ext_xia_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_dubois__contractors" {
  user   = aws_iam_user.ext_xia_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_yara_ali" {
  name = "hextri-1bmol0-ext-yara.ali"
}

resource "aws_iam_user_login_profile" "ext_yara_ali" {
  user                    = aws_iam_user.ext_yara_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_ali__contractors" {
  user   = aws_iam_user.ext_yara_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_yara_ali__benefits_5_analysts" {
  user   = aws_iam_user.ext_yara_ali.name
  groups = [aws_iam_group.benefits_5_analysts.name]
}

resource "aws_iam_user" "ext_yara_khan" {
  name = "hextri-1bmol0-ext-yara.khan"
}

resource "aws_iam_user_login_profile" "ext_yara_khan" {
  user                    = aws_iam_user.ext_yara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_khan__contractors" {
  user   = aws_iam_user.ext_yara_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_yara_khan__licensing_analysts" {
  user   = aws_iam_user.ext_yara_khan.name
  groups = [aws_iam_group.licensing_analysts.name]
}

resource "aws_iam_user" "ext_yara_smith" {
  name = "hextri-1bmol0-ext-yara.smith"
}

resource "aws_iam_user_login_profile" "ext_yara_smith" {
  user                    = aws_iam_user.ext_yara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_smith__contractors" {
  user   = aws_iam_user.ext_yara_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_yara_smith__audit_2_analysts" {
  user   = aws_iam_user.ext_yara_smith.name
  groups = [aws_iam_group.audit_2_analysts.name]
}

resource "aws_iam_user" "ext_zed_miller" {
  name = "hextri-1bmol0-ext-zed.miller"
}

resource "aws_iam_user_login_profile" "ext_zed_miller" {
  user                    = aws_iam_user.ext_zed_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_miller__contractors" {
  user   = aws_iam_user.ext_zed_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_zed_miller__it_ops_3_analysts" {
  user   = aws_iam_user.ext_zed_miller.name
  groups = [aws_iam_group.it_ops_3_analysts.name]
}

resource "aws_iam_user" "fay_cohen" {
  name = "hextri-1bmol0-fay.cohen"
}

resource "aws_iam_user_login_profile" "fay_cohen" {
  user                    = aws_iam_user.fay_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_cohen__licensing_3_devs" {
  user   = aws_iam_user.fay_cohen.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "fay_haddad" {
  name = "hextri-1bmol0-fay.haddad"
}

resource "aws_iam_user_login_profile" "fay_haddad" {
  user                    = aws_iam_user.fay_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_haddad__hr_6_devs" {
  user   = aws_iam_user.fay_haddad.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user_group_membership" "fay_haddad__records_7_analysts" {
  user   = aws_iam_user.fay_haddad.name
  groups = [aws_iam_group.records_7_analysts.name]
}

resource "aws_iam_user" "fay_jones" {
  name = "hextri-1bmol0-fay.jones"
}

resource "aws_iam_user_group_membership" "fay_jones__gis_devs" {
  user   = aws_iam_user.fay_jones.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user_policy_attachment" "fay_jones__base_readonly" {
  user       = aws_iam_user.fay_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "fay_larsen" {
  name = "hextri-1bmol0-fay.larsen"
}

resource "aws_iam_user_login_profile" "fay_larsen" {
  user                    = aws_iam_user.fay_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_larsen__procurement_devs" {
  user   = aws_iam_user.fay_larsen.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user" "fay_larsen554" {
  name = "hextri-1bmol0-fay.larsen554"
}

resource "aws_iam_user_login_profile" "fay_larsen554" {
  user                    = aws_iam_user.fay_larsen554.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_larsen554__it_ops_3_devs" {
  user   = aws_iam_user.fay_larsen554.name
  groups = [aws_iam_group.it_ops_3_devs.name]
}

resource "aws_iam_user" "fay_larsen975" {
  name = "hextri-1bmol0-fay.larsen975"
}

resource "aws_iam_user_login_profile" "fay_larsen975" {
  user                    = aws_iam_user.fay_larsen975.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_larsen975__citizen_portal_6_analysts" {
  user   = aws_iam_user.fay_larsen975.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "fay_lopez" {
  name = "hextri-1bmol0-fay.lopez"
}

resource "aws_iam_user_login_profile" "fay_lopez" {
  user                    = aws_iam_user.fay_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_lopez__public_safety_3_devs" {
  user   = aws_iam_user.fay_lopez.name
  groups = [aws_iam_group.public_safety_3_devs.name]
}

resource "aws_iam_user" "fay_miller" {
  name = "hextri-1bmol0-fay.miller"
}

resource "aws_iam_user_login_profile" "fay_miller" {
  user                    = aws_iam_user.fay_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_miller__licensing_3_analysts" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.licensing_3_analysts.name]
}

resource "aws_iam_user" "fay_miller6536" {
  name = "hextri-1bmol0-fay.miller6536"
}

resource "aws_iam_user_login_profile" "fay_miller6536" {
  user                    = aws_iam_user.fay_miller6536.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_miller6536__citizen_portal_4_analysts" {
  user   = aws_iam_user.fay_miller6536.name
  groups = [aws_iam_group.citizen_portal_4_analysts.name]
}

resource "aws_iam_user" "fay_muller" {
  name = "hextri-1bmol0-fay.muller"
}

resource "aws_iam_user_login_profile" "fay_muller" {
  user                    = aws_iam_user.fay_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_muller__open_data_7_analysts" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.open_data_7_analysts.name]
}

resource "aws_iam_user" "fay_muller6" {
  name = "hextri-1bmol0-fay.muller6"
}

resource "aws_iam_user_login_profile" "fay_muller6" {
  user                    = aws_iam_user.fay_muller6.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_muller6__licensing_3_devs" {
  user   = aws_iam_user.fay_muller6.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "fay_okafor" {
  name = "hextri-1bmol0-fay.okafor"
}

resource "aws_iam_user_login_profile" "fay_okafor" {
  user                    = aws_iam_user.fay_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_okafor__gis_3_devs" {
  user   = aws_iam_user.fay_okafor.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "fay_reddy" {
  name = "hextri-1bmol0-fay.reddy"
}

resource "aws_iam_user_login_profile" "fay_reddy" {
  user                    = aws_iam_user.fay_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy__hr_4_devs" {
  user   = aws_iam_user.fay_reddy.name
  groups = [aws_iam_group.hr_4_devs.name]
}

resource "aws_iam_user" "fay_reddy7220" {
  name = "hextri-1bmol0-fay.reddy7220"
}

resource "aws_iam_user_login_profile" "fay_reddy7220" {
  user                    = aws_iam_user.fay_reddy7220.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy7220__licensing_4_devs" {
  user   = aws_iam_user.fay_reddy7220.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "fay_reddy9967" {
  name = "hextri-1bmol0-fay.reddy9967"
}

resource "aws_iam_user_login_profile" "fay_reddy9967" {
  user                    = aws_iam_user.fay_reddy9967.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy9967__records_4_devs" {
  user   = aws_iam_user.fay_reddy9967.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "fay_sato" {
  name = "hextri-1bmol0-fay.sato"
}

resource "aws_iam_user_login_profile" "fay_sato" {
  user                    = aws_iam_user.fay_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_sato__benefits_6_devs" {
  user   = aws_iam_user.fay_sato.name
  groups = [aws_iam_group.benefits_6_devs.name]
}

resource "aws_iam_user_group_membership" "fay_sato__it_ops_analysts" {
  user   = aws_iam_user.fay_sato.name
  groups = [aws_iam_group.it_ops_analysts.name]
}

resource "aws_iam_user" "fay_sato1968" {
  name = "hextri-1bmol0-fay.sato1968"
}

resource "aws_iam_user_login_profile" "fay_sato1968" {
  user                    = aws_iam_user.fay_sato1968.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_sato1968__gis_6_devs" {
  user   = aws_iam_user.fay_sato1968.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "fay_sato1968__base_readonly" {
  user       = aws_iam_user.fay_sato1968.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "fay_smith" {
  name = "hextri-1bmol0-fay.smith"
}

resource "aws_iam_user_login_profile" "fay_smith" {
  user                    = aws_iam_user.fay_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_smith__citizen_portal_5_devs" {
  user   = aws_iam_user.fay_smith.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user" "frank_haddad" {
  name = "hextri-1bmol0-frank.haddad"
}

resource "aws_iam_user_login_profile" "frank_haddad" {
  user                    = aws_iam_user.frank_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_haddad__it_ops_2_devs" {
  user   = aws_iam_user.frank_haddad.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "frank_haddad8962" {
  name = "hextri-1bmol0-frank.haddad8962"
}

resource "aws_iam_user_login_profile" "frank_haddad8962" {
  user                    = aws_iam_user.frank_haddad8962.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_haddad8962__procurement_7_devs" {
  user   = aws_iam_user.frank_haddad8962.name
  groups = [aws_iam_group.procurement_7_devs.name]
}

resource "aws_iam_user" "frank_mehta" {
  name = "hextri-1bmol0-frank.mehta"
}

resource "aws_iam_user_login_profile" "frank_mehta" {
  user                    = aws_iam_user.frank_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_mehta__public_safety_6_devs" {
  user   = aws_iam_user.frank_mehta.name
  groups = [aws_iam_group.public_safety_6_devs.name]
}

resource "aws_iam_user" "frank_mehta5457" {
  name = "hextri-1bmol0-frank.mehta5457"
}

resource "aws_iam_user_login_profile" "frank_mehta5457" {
  user                    = aws_iam_user.frank_mehta5457.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_mehta5457__open_data_3_devs" {
  user   = aws_iam_user.frank_mehta5457.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user" "frank_mehta9475" {
  name = "hextri-1bmol0-frank.mehta9475"
}

resource "aws_iam_user_login_profile" "frank_mehta9475" {
  user                    = aws_iam_user.frank_mehta9475.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_mehta9475__gis_5_devs" {
  user   = aws_iam_user.frank_mehta9475.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user" "frank_patel" {
  name = "hextri-1bmol0-frank.patel"
}

resource "aws_iam_user_login_profile" "frank_patel" {
  user                    = aws_iam_user.frank_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_patel__open_data_devs" {
  user   = aws_iam_user.frank_patel.name
  groups = [aws_iam_group.open_data_devs.name]
}

resource "aws_iam_user" "frank_patel9626" {
  name = "hextri-1bmol0-frank.patel9626"
}

resource "aws_iam_user_login_profile" "frank_patel9626" {
  user                    = aws_iam_user.frank_patel9626.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_patel9626__gis_4_devs" {
  user   = aws_iam_user.frank_patel9626.name
  groups = [aws_iam_group.gis_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "frank_patel9626__base_readonly" {
  user       = aws_iam_user.frank_patel9626.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_patel972" {
  name = "hextri-1bmol0-frank.patel972"
}

resource "aws_iam_user_login_profile" "frank_patel972" {
  user                    = aws_iam_user.frank_patel972.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_patel972__licensing_6_devs" {
  user   = aws_iam_user.frank_patel972.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "frank_rossi" {
  name = "hextri-1bmol0-frank.rossi"
}

resource "aws_iam_user_login_profile" "frank_rossi" {
  user                    = aws_iam_user.frank_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_rossi__public_safety_5_devs" {
  user   = aws_iam_user.frank_rossi.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "frank_sato" {
  name = "hextri-1bmol0-frank.sato"
}

resource "aws_iam_user_login_profile" "frank_sato" {
  user                    = aws_iam_user.frank_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_sato__hr_2_analysts" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.hr_2_analysts.name]
}

resource "aws_iam_user" "frank_tanaka" {
  name = "hextri-1bmol0-frank.tanaka"
}

resource "aws_iam_user_login_profile" "frank_tanaka" {
  user                    = aws_iam_user.frank_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_tanaka__licensing_6_devs" {
  user   = aws_iam_user.frank_tanaka.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "frank_tanaka__base_readonly" {
  user       = aws_iam_user.frank_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_chen" {
  name = "hextri-1bmol0-grace.chen"
}

resource "aws_iam_user_login_profile" "grace_chen" {
  user                    = aws_iam_user.grace_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_chen__benefits_devs" {
  user   = aws_iam_user.grace_chen.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user_group_membership" "grace_chen__hr_analysts" {
  user   = aws_iam_user.grace_chen.name
  groups = [aws_iam_group.hr_analysts.name]
}

resource "aws_iam_user" "grace_davis" {
  name = "hextri-1bmol0-grace.davis"
}

resource "aws_iam_user_login_profile" "grace_davis" {
  user                    = aws_iam_user.grace_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_davis__citizen_portal_3_analysts" {
  user   = aws_iam_user.grace_davis.name
  groups = [aws_iam_group.citizen_portal_3_analysts.name]
}

resource "aws_iam_user" "grace_haddad" {
  name = "hextri-1bmol0-grace.haddad"
}

resource "aws_iam_user_login_profile" "grace_haddad" {
  user                    = aws_iam_user.grace_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_haddad__hr_5_devs" {
  user   = aws_iam_user.grace_haddad.name
  groups = [aws_iam_group.hr_5_devs.name]
}

resource "aws_iam_user" "grace_ivanov" {
  name = "hextri-1bmol0-grace.ivanov"
}

resource "aws_iam_user_login_profile" "grace_ivanov" {
  user                    = aws_iam_user.grace_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ivanov__tax_2_devs" {
  user   = aws_iam_user.grace_ivanov.name
  groups = [aws_iam_group.tax_2_devs.name]
}

resource "aws_iam_user" "grace_ivanov8880" {
  name = "hextri-1bmol0-grace.ivanov8880"
}

resource "aws_iam_user_group_membership" "grace_ivanov8880__audit_analysts" {
  user   = aws_iam_user.grace_ivanov8880.name
  groups = [aws_iam_group.audit_analysts.name]
}

resource "aws_iam_user" "grace_kim" {
  name = "hextri-1bmol0-grace.kim"
}

resource "aws_iam_user_login_profile" "grace_kim" {
  user                    = aws_iam_user.grace_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_kim__it_ops_6_devs" {
  user   = aws_iam_user.grace_kim.name
  groups = [aws_iam_group.it_ops_6_devs.name]
}

resource "aws_iam_user" "grace_larsen" {
  name = "hextri-1bmol0-grace.larsen"
}

resource "aws_iam_user_login_profile" "grace_larsen" {
  user                    = aws_iam_user.grace_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_larsen__gis_5_devs" {
  user   = aws_iam_user.grace_larsen.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user" "grace_lopez" {
  name = "hextri-1bmol0-grace.lopez"
}

resource "aws_iam_user_login_profile" "grace_lopez" {
  user                    = aws_iam_user.grace_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_lopez__hr_5_devs" {
  user   = aws_iam_user.grace_lopez.name
  groups = [aws_iam_group.hr_5_devs.name]
}

resource "aws_iam_user" "grace_miller" {
  name = "hextri-1bmol0-grace.miller"
}

resource "aws_iam_user_login_profile" "grace_miller" {
  user                    = aws_iam_user.grace_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_miller__procurement_3_devs" {
  user   = aws_iam_user.grace_miller.name
  groups = [aws_iam_group.procurement_3_devs.name]
}

resource "aws_iam_user" "grace_miller3620" {
  name = "hextri-1bmol0-grace.miller3620"
}

resource "aws_iam_user_login_profile" "grace_miller3620" {
  user                    = aws_iam_user.grace_miller3620.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_miller3620__records_4_devs" {
  user   = aws_iam_user.grace_miller3620.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "grace_rossi" {
  name = "hextri-1bmol0-grace.rossi"
}

resource "aws_iam_user_group_membership" "grace_rossi__licensing_4_analysts" {
  user   = aws_iam_user.grace_rossi.name
  groups = [aws_iam_group.licensing_4_analysts.name]
}

resource "aws_iam_user" "grace_sato" {
  name = "hextri-1bmol0-grace.sato"
}

resource "aws_iam_user_login_profile" "grace_sato" {
  user                    = aws_iam_user.grace_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_sato__procurement_7_devs" {
  user   = aws_iam_user.grace_sato.name
  groups = [aws_iam_group.procurement_7_devs.name]
}

resource "aws_iam_user" "grace_sato68" {
  name = "hextri-1bmol0-grace.sato68"
}

resource "aws_iam_user_login_profile" "grace_sato68" {
  user                    = aws_iam_user.grace_sato68.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_sato68__open_data_5_devs" {
  user   = aws_iam_user.grace_sato68.name
  groups = [aws_iam_group.open_data_5_devs.name]
}

resource "aws_iam_user" "grace_smith" {
  name = "hextri-1bmol0-grace.smith"
}

resource "aws_iam_user_login_profile" "grace_smith" {
  user                    = aws_iam_user.grace_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_smith__hr_3_analysts" {
  user   = aws_iam_user.grace_smith.name
  groups = [aws_iam_group.hr_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "grace_smith__base_readonly" {
  user       = aws_iam_user.grace_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_smith5969" {
  name = "hextri-1bmol0-grace.smith5969"
}

resource "aws_iam_user_login_profile" "grace_smith5969" {
  user                    = aws_iam_user.grace_smith5969.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_smith5969__licensing_6_devs" {
  user   = aws_iam_user.grace_smith5969.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user_group_membership" "grace_smith5969__records_5_analysts" {
  user   = aws_iam_user.grace_smith5969.name
  groups = [aws_iam_group.records_5_analysts.name]
}

resource "aws_iam_user" "gus_ali" {
  name = "hextri-1bmol0-gus.ali"
}

resource "aws_iam_user_login_profile" "gus_ali" {
  user                    = aws_iam_user.gus_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_ali__citizen_portal_analysts" {
  user   = aws_iam_user.gus_ali.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user_group_membership" "gus_ali__benefits_analysts" {
  user   = aws_iam_user.gus_ali.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "gus_brown" {
  name = "hextri-1bmol0-gus.brown"
}

resource "aws_iam_user_login_profile" "gus_brown" {
  user                    = aws_iam_user.gus_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_brown__audit_6_devs" {
  user   = aws_iam_user.gus_brown.name
  groups = [aws_iam_group.audit_6_devs.name]
}

resource "aws_iam_user_group_membership" "gus_brown__open_data_analysts" {
  user   = aws_iam_user.gus_brown.name
  groups = [aws_iam_group.open_data_analysts.name]
}

resource "aws_iam_user" "gus_dubois" {
  name = "hextri-1bmol0-gus.dubois"
}

resource "aws_iam_user_login_profile" "gus_dubois" {
  user                    = aws_iam_user.gus_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_dubois__licensing_2_devs" {
  user   = aws_iam_user.gus_dubois.name
  groups = [aws_iam_group.licensing_2_devs.name]
}

resource "aws_iam_user_group_membership" "gus_dubois__gis_5_analysts" {
  user   = aws_iam_user.gus_dubois.name
  groups = [aws_iam_group.gis_5_analysts.name]
}

resource "aws_iam_user" "gus_jones" {
  name = "hextri-1bmol0-gus.jones"
}

resource "aws_iam_user_login_profile" "gus_jones" {
  user                    = aws_iam_user.gus_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_jones__open_data_4_devs" {
  user   = aws_iam_user.gus_jones.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "gus_mehta" {
  name = "hextri-1bmol0-gus.mehta"
}

resource "aws_iam_user_login_profile" "gus_mehta" {
  user                    = aws_iam_user.gus_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_mehta__tax_6_devs" {
  user   = aws_iam_user.gus_mehta.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user" "gus_muller" {
  name = "hextri-1bmol0-gus.muller"
}

resource "aws_iam_user_login_profile" "gus_muller" {
  user                    = aws_iam_user.gus_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_muller__public_safety_3_analysts" {
  user   = aws_iam_user.gus_muller.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "gus_muller488" {
  name = "hextri-1bmol0-gus.muller488"
}

resource "aws_iam_user_login_profile" "gus_muller488" {
  user                    = aws_iam_user.gus_muller488.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_muller488__gis_5_devs" {
  user   = aws_iam_user.gus_muller488.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user_group_membership" "gus_muller488__procurement_analysts" {
  user   = aws_iam_user.gus_muller488.name
  groups = [aws_iam_group.procurement_analysts.name]
}

resource "aws_iam_user" "gus_nguyen" {
  name = "hextri-1bmol0-gus.nguyen"
}

resource "aws_iam_user_login_profile" "gus_nguyen" {
  user                    = aws_iam_user.gus_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_nguyen__tax_devs" {
  user   = aws_iam_user.gus_nguyen.name
  groups = [aws_iam_group.tax_devs.name]
}

resource "aws_iam_user" "gus_reddy" {
  name = "hextri-1bmol0-gus.reddy"
}

resource "aws_iam_user_login_profile" "gus_reddy" {
  user                    = aws_iam_user.gus_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_reddy__records_6_analysts" {
  user   = aws_iam_user.gus_reddy.name
  groups = [aws_iam_group.records_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "gus_reddy__base_readonly" {
  user       = aws_iam_user.gus_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_smith" {
  name = "hextri-1bmol0-gus.smith"
}

resource "aws_iam_user_login_profile" "gus_smith" {
  user                    = aws_iam_user.gus_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_smith__procurement_7_devs" {
  user   = aws_iam_user.gus_smith.name
  groups = [aws_iam_group.procurement_7_devs.name]
}

resource "aws_iam_user" "gus_tanaka" {
  name = "hextri-1bmol0-gus.tanaka"
}

resource "aws_iam_user_login_profile" "gus_tanaka" {
  user                    = aws_iam_user.gus_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_tanaka__records_6_analysts" {
  user   = aws_iam_user.gus_tanaka.name
  groups = [aws_iam_group.records_6_analysts.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "hextri-1bmol0-hana.chen"
}

resource "aws_iam_user_login_profile" "hana_chen" {
  user                    = aws_iam_user.hana_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen__procurement_devs" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user_group_membership" "hana_chen__open_data_5_analysts" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.open_data_5_analysts.name]
}

resource "aws_iam_user" "hana_davis" {
  name = "hextri-1bmol0-hana.davis"
}

resource "aws_iam_user_login_profile" "hana_davis" {
  user                    = aws_iam_user.hana_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_davis__open_data_7_analysts" {
  user   = aws_iam_user.hana_davis.name
  groups = [aws_iam_group.open_data_7_analysts.name]
}

resource "aws_iam_user" "hana_dubois" {
  name = "hextri-1bmol0-hana.dubois"
}

resource "aws_iam_user_login_profile" "hana_dubois" {
  user                    = aws_iam_user.hana_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_dubois__it_ops_2_devs" {
  user   = aws_iam_user.hana_dubois.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "hana_dubois__base_readonly" {
  user       = aws_iam_user.hana_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "hana_garcia" {
  name = "hextri-1bmol0-hana.garcia"
}

resource "aws_iam_user_login_profile" "hana_garcia" {
  user                    = aws_iam_user.hana_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_garcia__audit_devs" {
  user   = aws_iam_user.hana_garcia.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user_group_membership" "hana_garcia__licensing_7_analysts" {
  user   = aws_iam_user.hana_garcia.name
  groups = [aws_iam_group.licensing_7_analysts.name]
}

resource "aws_iam_user" "hana_haddad" {
  name = "hextri-1bmol0-hana.haddad"
}

resource "aws_iam_user_login_profile" "hana_haddad" {
  user                    = aws_iam_user.hana_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_haddad__gis_7_devs" {
  user   = aws_iam_user.hana_haddad.name
  groups = [aws_iam_group.gis_7_devs.name]
}

resource "aws_iam_user_group_membership" "hana_haddad__procurement_4_analysts" {
  user   = aws_iam_user.hana_haddad.name
  groups = [aws_iam_group.procurement_4_analysts.name]
}

resource "aws_iam_user" "hana_jones" {
  name = "hextri-1bmol0-hana.jones"
}

resource "aws_iam_user_group_membership" "hana_jones__records_2_analysts" {
  user   = aws_iam_user.hana_jones.name
  groups = [aws_iam_group.records_2_analysts.name]
}

resource "aws_iam_user" "hana_kim" {
  name = "hextri-1bmol0-hana.kim"
}

resource "aws_iam_user_login_profile" "hana_kim" {
  user                    = aws_iam_user.hana_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_kim__public_safety_5_devs" {
  user   = aws_iam_user.hana_kim.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "hana_kim1962" {
  name = "hextri-1bmol0-hana.kim1962"
}

resource "aws_iam_user_login_profile" "hana_kim1962" {
  user                    = aws_iam_user.hana_kim1962.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_kim1962__citizen_portal_6_analysts" {
  user   = aws_iam_user.hana_kim1962.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user_group_membership" "hana_kim1962__benefits_analysts" {
  user   = aws_iam_user.hana_kim1962.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "hana_muller" {
  name = "hextri-1bmol0-hana.muller"
}

resource "aws_iam_user_login_profile" "hana_muller" {
  user                    = aws_iam_user.hana_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_muller__public_safety_6_analysts" {
  user   = aws_iam_user.hana_muller.name
  groups = [aws_iam_group.public_safety_6_analysts.name]
}

resource "aws_iam_user" "hana_novak" {
  name = "hextri-1bmol0-hana.novak"
}

resource "aws_iam_user_login_profile" "hana_novak" {
  user                    = aws_iam_user.hana_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_novak__audit_6_analysts" {
  user   = aws_iam_user.hana_novak.name
  groups = [aws_iam_group.audit_6_analysts.name]
}

resource "aws_iam_user" "hana_patel" {
  name = "hextri-1bmol0-hana.patel"
}

resource "aws_iam_user_login_profile" "hana_patel" {
  user                    = aws_iam_user.hana_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_patel__citizen_portal_3_devs" {
  user   = aws_iam_user.hana_patel.name
  groups = [aws_iam_group.citizen_portal_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "hana_patel__base_readonly" {
  user       = aws_iam_user.hana_patel.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "hana_rossi" {
  name = "hextri-1bmol0-hana.rossi"
}

resource "aws_iam_user_login_profile" "hana_rossi" {
  user                    = aws_iam_user.hana_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_rossi__it_ops_4_devs" {
  user   = aws_iam_user.hana_rossi.name
  groups = [aws_iam_group.it_ops_4_devs.name]
}

resource "aws_iam_user" "hana_singh" {
  name = "hextri-1bmol0-hana.singh"
}

resource "aws_iam_user_login_profile" "hana_singh" {
  user                    = aws_iam_user.hana_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_singh__benefits_2_analysts" {
  user   = aws_iam_user.hana_singh.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "hana_singh8167" {
  name = "hextri-1bmol0-hana.singh8167"
}

resource "aws_iam_user_login_profile" "hana_singh8167" {
  user                    = aws_iam_user.hana_singh8167.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_singh8167__tax_6_devs" {
  user   = aws_iam_user.hana_singh8167.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user" "hana_smith" {
  name = "hextri-1bmol0-hana.smith"
}

resource "aws_iam_user_login_profile" "hana_smith" {
  user                    = aws_iam_user.hana_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_smith__audit_6_devs" {
  user   = aws_iam_user.hana_smith.name
  groups = [aws_iam_group.audit_6_devs.name]
}

resource "aws_iam_user" "heidi_ali" {
  name = "hextri-1bmol0-heidi.ali"
}

resource "aws_iam_user_group_membership" "heidi_ali__hr_6_devs" {
  user   = aws_iam_user.heidi_ali.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user" "heidi_brown" {
  name = "hextri-1bmol0-heidi.brown"
}

resource "aws_iam_user_login_profile" "heidi_brown" {
  user                    = aws_iam_user.heidi_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_brown__licensing_2_devs" {
  user   = aws_iam_user.heidi_brown.name
  groups = [aws_iam_group.licensing_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_brown__base_readonly" {
  user       = aws_iam_user.heidi_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_brown1419" {
  name = "hextri-1bmol0-heidi.brown1419"
}

resource "aws_iam_user_login_profile" "heidi_brown1419" {
  user                    = aws_iam_user.heidi_brown1419.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_brown1419__licensing_2_devs" {
  user   = aws_iam_user.heidi_brown1419.name
  groups = [aws_iam_group.licensing_2_devs.name]
}

resource "aws_iam_user" "heidi_chen" {
  name = "hextri-1bmol0-heidi.chen"
}

resource "aws_iam_user_login_profile" "heidi_chen" {
  user                    = aws_iam_user.heidi_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_chen__hr_devs" {
  user   = aws_iam_user.heidi_chen.name
  groups = [aws_iam_group.hr_devs.name]
}

resource "aws_iam_user" "heidi_davis" {
  name = "hextri-1bmol0-heidi.davis"
}

resource "aws_iam_user_login_profile" "heidi_davis" {
  user                    = aws_iam_user.heidi_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_davis__tax_2_devs" {
  user   = aws_iam_user.heidi_davis.name
  groups = [aws_iam_group.tax_2_devs.name]
}

resource "aws_iam_user" "heidi_dubois" {
  name = "hextri-1bmol0-heidi.dubois"
}

resource "aws_iam_user_group_membership" "heidi_dubois__audit_4_devs" {
  user   = aws_iam_user.heidi_dubois.name
  groups = [aws_iam_group.audit_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_dubois__base_readonly" {
  user       = aws_iam_user.heidi_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_ivanov" {
  name = "hextri-1bmol0-heidi.ivanov"
}

resource "aws_iam_user_login_profile" "heidi_ivanov" {
  user                    = aws_iam_user.heidi_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_ivanov__open_data_5_devs" {
  user   = aws_iam_user.heidi_ivanov.name
  groups = [aws_iam_group.open_data_5_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_ivanov__open_data_4_analysts" {
  user   = aws_iam_user.heidi_ivanov.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user" "heidi_jones" {
  name = "hextri-1bmol0-heidi.jones"
}

resource "aws_iam_user_group_membership" "heidi_jones__citizen_portal_6_devs" {
  user   = aws_iam_user.heidi_jones.name
  groups = [aws_iam_group.citizen_portal_6_devs.name]
}

resource "aws_iam_user" "heidi_jones2825" {
  name = "hextri-1bmol0-heidi.jones2825"
}

resource "aws_iam_user_login_profile" "heidi_jones2825" {
  user                    = aws_iam_user.heidi_jones2825.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_jones2825__procurement_7_analysts" {
  user   = aws_iam_user.heidi_jones2825.name
  groups = [aws_iam_group.procurement_7_analysts.name]
}

resource "aws_iam_user" "heidi_kim" {
  name = "hextri-1bmol0-heidi.kim"
}

resource "aws_iam_user_group_membership" "heidi_kim__gis_devs" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_kim__gis_6_analysts" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.gis_6_analysts.name]
}

resource "aws_iam_user" "heidi_kim4569" {
  name = "hextri-1bmol0-heidi.kim4569"
}

resource "aws_iam_user_login_profile" "heidi_kim4569" {
  user                    = aws_iam_user.heidi_kim4569.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_kim4569__licensing_4_devs" {
  user   = aws_iam_user.heidi_kim4569.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_kim4569__base_readonly" {
  user       = aws_iam_user.heidi_kim4569.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_larsen" {
  name = "hextri-1bmol0-heidi.larsen"
}

resource "aws_iam_user_login_profile" "heidi_larsen" {
  user                    = aws_iam_user.heidi_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_larsen__licensing_2_devs" {
  user   = aws_iam_user.heidi_larsen.name
  groups = [aws_iam_group.licensing_2_devs.name]
}

resource "aws_iam_user" "heidi_mehta" {
  name = "hextri-1bmol0-heidi.mehta"
}

resource "aws_iam_user_login_profile" "heidi_mehta" {
  user                    = aws_iam_user.heidi_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_mehta__records_6_devs" {
  user   = aws_iam_user.heidi_mehta.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user" "heidi_miller" {
  name = "hextri-1bmol0-heidi.miller"
}

resource "aws_iam_user_login_profile" "heidi_miller" {
  user                    = aws_iam_user.heidi_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_miller__gis_3_devs" {
  user   = aws_iam_user.heidi_miller.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user" "heidi_muller" {
  name = "hextri-1bmol0-heidi.muller"
}

resource "aws_iam_user_login_profile" "heidi_muller" {
  user                    = aws_iam_user.heidi_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_muller__records_7_devs" {
  user   = aws_iam_user.heidi_muller.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "heidi_novak" {
  name = "hextri-1bmol0-heidi.novak"
}

resource "aws_iam_user_login_profile" "heidi_novak" {
  user                    = aws_iam_user.heidi_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_novak__hr_3_analysts" {
  user   = aws_iam_user.heidi_novak.name
  groups = [aws_iam_group.hr_3_analysts.name]
}

resource "aws_iam_user" "heidi_okafor" {
  name = "hextri-1bmol0-heidi.okafor"
}

resource "aws_iam_user_login_profile" "heidi_okafor" {
  user                    = aws_iam_user.heidi_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_okafor__licensing_3_devs" {
  user   = aws_iam_user.heidi_okafor.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_okafor__base_readonly" {
  user       = aws_iam_user.heidi_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_reddy" {
  name = "hextri-1bmol0-heidi.reddy"
}

resource "aws_iam_user_login_profile" "heidi_reddy" {
  user                    = aws_iam_user.heidi_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_reddy__audit_devs" {
  user   = aws_iam_user.heidi_reddy.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user" "heidi_reddy2331" {
  name = "hextri-1bmol0-heidi.reddy2331"
}

resource "aws_iam_user_login_profile" "heidi_reddy2331" {
  user                    = aws_iam_user.heidi_reddy2331.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_reddy2331__citizen_portal_7_devs" {
  user   = aws_iam_user.heidi_reddy2331.name
  groups = [aws_iam_group.citizen_portal_7_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_reddy2331__records_2_analysts" {
  user   = aws_iam_user.heidi_reddy2331.name
  groups = [aws_iam_group.records_2_analysts.name]
}

resource "aws_iam_user" "heidi_sato" {
  name = "hextri-1bmol0-heidi.sato"
}

resource "aws_iam_user_login_profile" "heidi_sato" {
  user                    = aws_iam_user.heidi_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_sato__hr_3_devs" {
  user   = aws_iam_user.heidi_sato.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_sato__base_readonly" {
  user       = aws_iam_user.heidi_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_smith" {
  name = "hextri-1bmol0-heidi.smith"
}

resource "aws_iam_user_group_membership" "heidi_smith__citizen_portal_4_devs" {
  user   = aws_iam_user.heidi_smith.name
  groups = [aws_iam_group.citizen_portal_4_devs.name]
}

resource "aws_iam_user" "heidi_smith1545" {
  name = "hextri-1bmol0-heidi.smith1545"
}

resource "aws_iam_user_login_profile" "heidi_smith1545" {
  user                    = aws_iam_user.heidi_smith1545.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_smith1545__benefits_analysts" {
  user   = aws_iam_user.heidi_smith1545.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user_policy_attachment" "heidi_smith1545__base_readonly" {
  user       = aws_iam_user.heidi_smith1545.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_tanaka" {
  name = "hextri-1bmol0-heidi.tanaka"
}

resource "aws_iam_user_login_profile" "heidi_tanaka" {
  user                    = aws_iam_user.heidi_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_tanaka__citizen_portal_devs" {
  user   = aws_iam_user.heidi_tanaka.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_tanaka__audit_5_analysts" {
  user   = aws_iam_user.heidi_tanaka.name
  groups = [aws_iam_group.audit_5_analysts.name]
}

resource "aws_iam_user" "ian_ali" {
  name = "hextri-1bmol0-ian.ali"
}

resource "aws_iam_user_group_membership" "ian_ali__tax_3_devs" {
  user   = aws_iam_user.ian_ali.name
  groups = [aws_iam_group.tax_3_devs.name]
}

resource "aws_iam_user" "ian_ali6286" {
  name = "hextri-1bmol0-ian.ali6286"
}

resource "aws_iam_user_login_profile" "ian_ali6286" {
  user                    = aws_iam_user.ian_ali6286.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_ali6286__procurement_5_analysts" {
  user   = aws_iam_user.ian_ali6286.name
  groups = [aws_iam_group.procurement_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ian_ali6286__base_readonly" {
  user       = aws_iam_user.ian_ali6286.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_brown" {
  name = "hextri-1bmol0-ian.brown"
}

resource "aws_iam_user_login_profile" "ian_brown" {
  user                    = aws_iam_user.ian_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_brown__hr_3_devs" {
  user   = aws_iam_user.ian_brown.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user" "ian_haddad" {
  name = "hextri-1bmol0-ian.haddad"
}

resource "aws_iam_user_login_profile" "ian_haddad" {
  user                    = aws_iam_user.ian_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad__open_data_3_devs" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user" "ian_ivanov" {
  name = "hextri-1bmol0-ian.ivanov"
}

resource "aws_iam_user_login_profile" "ian_ivanov" {
  user                    = aws_iam_user.ian_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_ivanov__audit_analysts" {
  user   = aws_iam_user.ian_ivanov.name
  groups = [aws_iam_group.audit_analysts.name]
}

resource "aws_iam_user" "ian_jones" {
  name = "hextri-1bmol0-ian.jones"
}

resource "aws_iam_user_login_profile" "ian_jones" {
  user                    = aws_iam_user.ian_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_jones__public_safety_5_devs" {
  user   = aws_iam_user.ian_jones.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "ian_khan" {
  name = "hextri-1bmol0-ian.khan"
}

resource "aws_iam_user_login_profile" "ian_khan" {
  user                    = aws_iam_user.ian_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_khan__procurement_2_analysts" {
  user   = aws_iam_user.ian_khan.name
  groups = [aws_iam_group.procurement_2_analysts.name]
}

resource "aws_iam_user" "ian_miller" {
  name = "hextri-1bmol0-ian.miller"
}

resource "aws_iam_user_login_profile" "ian_miller" {
  user                    = aws_iam_user.ian_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_miller__benefits_devs" {
  user   = aws_iam_user.ian_miller.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user" "ian_muller" {
  name = "hextri-1bmol0-ian.muller"
}

resource "aws_iam_user_login_profile" "ian_muller" {
  user                    = aws_iam_user.ian_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_muller__tax_6_devs" {
  user   = aws_iam_user.ian_muller.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user" "ian_nguyen" {
  name = "hextri-1bmol0-ian.nguyen"
}

resource "aws_iam_user_login_profile" "ian_nguyen" {
  user                    = aws_iam_user.ian_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_nguyen__tax_devs" {
  user   = aws_iam_user.ian_nguyen.name
  groups = [aws_iam_group.tax_devs.name]
}

resource "aws_iam_user" "ian_nguyen5783" {
  name = "hextri-1bmol0-ian.nguyen5783"
}

resource "aws_iam_user_login_profile" "ian_nguyen5783" {
  user                    = aws_iam_user.ian_nguyen5783.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_nguyen5783__citizen_portal_4_analysts" {
  user   = aws_iam_user.ian_nguyen5783.name
  groups = [aws_iam_group.citizen_portal_4_analysts.name]
}

resource "aws_iam_user_group_membership" "ian_nguyen5783__licensing_4_analysts" {
  user   = aws_iam_user.ian_nguyen5783.name
  groups = [aws_iam_group.licensing_4_analysts.name]
}

resource "aws_iam_user" "ian_novak" {
  name = "hextri-1bmol0-ian.novak"
}

resource "aws_iam_user_group_membership" "ian_novak__gis_6_devs" {
  user   = aws_iam_user.ian_novak.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user" "ian_novak5358" {
  name = "hextri-1bmol0-ian.novak5358"
}

resource "aws_iam_user_login_profile" "ian_novak5358" {
  user                    = aws_iam_user.ian_novak5358.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_novak5358__tax_3_devs" {
  user   = aws_iam_user.ian_novak5358.name
  groups = [aws_iam_group.tax_3_devs.name]
}

resource "aws_iam_user" "ian_novak7472" {
  name = "hextri-1bmol0-ian.novak7472"
}

resource "aws_iam_user_login_profile" "ian_novak7472" {
  user                    = aws_iam_user.ian_novak7472.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_novak7472__benefits_5_devs" {
  user   = aws_iam_user.ian_novak7472.name
  groups = [aws_iam_group.benefits_5_devs.name]
}

resource "aws_iam_user" "ian_novak8067" {
  name = "hextri-1bmol0-ian.novak8067"
}

resource "aws_iam_user_login_profile" "ian_novak8067" {
  user                    = aws_iam_user.ian_novak8067.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_novak8067__citizen_portal_2_devs" {
  user   = aws_iam_user.ian_novak8067.name
  groups = [aws_iam_group.citizen_portal_2_devs.name]
}

resource "aws_iam_user" "ian_patel" {
  name = "hextri-1bmol0-ian.patel"
}

resource "aws_iam_user_login_profile" "ian_patel" {
  user                    = aws_iam_user.ian_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_patel__public_safety_2_devs" {
  user   = aws_iam_user.ian_patel.name
  groups = [aws_iam_group.public_safety_2_devs.name]
}

resource "aws_iam_user" "ian_reddy" {
  name = "hextri-1bmol0-ian.reddy"
}

resource "aws_iam_user_login_profile" "ian_reddy" {
  user                    = aws_iam_user.ian_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_reddy__records_5_devs" {
  user   = aws_iam_user.ian_reddy.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user" "ian_rossi" {
  name = "hextri-1bmol0-ian.rossi"
}

resource "aws_iam_user_login_profile" "ian_rossi" {
  user                    = aws_iam_user.ian_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_rossi__licensing_6_devs" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "ian_sato" {
  name = "hextri-1bmol0-ian.sato"
}

resource "aws_iam_user_login_profile" "ian_sato" {
  user                    = aws_iam_user.ian_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_sato__public_safety_7_devs" {
  user   = aws_iam_user.ian_sato.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user" "ian_sato11" {
  name = "hextri-1bmol0-ian.sato11"
}

resource "aws_iam_user_login_profile" "ian_sato11" {
  user                    = aws_iam_user.ian_sato11.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_sato11__open_data_4_devs" {
  user   = aws_iam_user.ian_sato11.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "ian_silva" {
  name = "hextri-1bmol0-ian.silva"
}

resource "aws_iam_user_login_profile" "ian_silva" {
  user                    = aws_iam_user.ian_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_silva__gis_2_devs" {
  user   = aws_iam_user.ian_silva.name
  groups = [aws_iam_group.gis_2_devs.name]
}

resource "aws_iam_user" "inj_svc_u1" {
  name = "hextri-1bmol0-inj-svc-u1"
}

resource "aws_iam_user_policy_attachment" "inj_svc_u1__inj_pol_p3" {
  user       = aws_iam_user.inj_svc_u1.name
  policy_arn = aws_iam_policy.inj_pol_p3.arn
}

resource "aws_iam_user" "ivan_chen" {
  name = "hextri-1bmol0-ivan.chen"
}

resource "aws_iam_user_login_profile" "ivan_chen" {
  user                    = aws_iam_user.ivan_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_chen__licensing_6_devs" {
  user   = aws_iam_user.ivan_chen.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_chen__public_safety_6_analysts" {
  user   = aws_iam_user.ivan_chen.name
  groups = [aws_iam_group.public_safety_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ivan_chen__base_readonly" {
  user       = aws_iam_user.ivan_chen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_garcia" {
  name = "hextri-1bmol0-ivan.garcia"
}

resource "aws_iam_user_login_profile" "ivan_garcia" {
  user                    = aws_iam_user.ivan_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_garcia__audit_6_devs" {
  user   = aws_iam_user.ivan_garcia.name
  groups = [aws_iam_group.audit_6_devs.name]
}

resource "aws_iam_user" "ivan_ivanov" {
  name = "hextri-1bmol0-ivan.ivanov"
}

resource "aws_iam_user_group_membership" "ivan_ivanov__public_safety_devs" {
  user   = aws_iam_user.ivan_ivanov.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user" "ivan_jones" {
  name = "hextri-1bmol0-ivan.jones"
}

resource "aws_iam_user_login_profile" "ivan_jones" {
  user                    = aws_iam_user.ivan_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_jones__tax_2_analysts" {
  user   = aws_iam_user.ivan_jones.name
  groups = [aws_iam_group.tax_2_analysts.name]
}

resource "aws_iam_user_group_membership" "ivan_jones__citizen_portal_6_analysts" {
  user   = aws_iam_user.ivan_jones.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "ivan_khan" {
  name = "hextri-1bmol0-ivan.khan"
}

resource "aws_iam_user_login_profile" "ivan_khan" {
  user                    = aws_iam_user.ivan_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_khan__open_data_3_devs" {
  user   = aws_iam_user.ivan_khan.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_khan__citizen_portal_analysts" {
  user   = aws_iam_user.ivan_khan.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "ivan_larsen" {
  name = "hextri-1bmol0-ivan.larsen"
}

resource "aws_iam_user_login_profile" "ivan_larsen" {
  user                    = aws_iam_user.ivan_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_larsen__records_5_analysts" {
  user   = aws_iam_user.ivan_larsen.name
  groups = [aws_iam_group.records_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ivan_larsen__base_readonly" {
  user       = aws_iam_user.ivan_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_lopez" {
  name = "hextri-1bmol0-ivan.lopez"
}

resource "aws_iam_user_login_profile" "ivan_lopez" {
  user                    = aws_iam_user.ivan_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_lopez__benefits_2_analysts" {
  user   = aws_iam_user.ivan_lopez.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "ivan_mehta" {
  name = "hextri-1bmol0-ivan.mehta"
}

resource "aws_iam_user_login_profile" "ivan_mehta" {
  user                    = aws_iam_user.ivan_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta__tax_7_devs" {
  user   = aws_iam_user.ivan_mehta.name
  groups = [aws_iam_group.tax_7_devs.name]
}

resource "aws_iam_user" "ivan_okafor" {
  name = "hextri-1bmol0-ivan.okafor"
}

resource "aws_iam_user_login_profile" "ivan_okafor" {
  user                    = aws_iam_user.ivan_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_okafor__benefits_6_devs" {
  user   = aws_iam_user.ivan_okafor.name
  groups = [aws_iam_group.benefits_6_devs.name]
}

resource "aws_iam_user" "ivan_patel" {
  name = "hextri-1bmol0-ivan.patel"
}

resource "aws_iam_user_login_profile" "ivan_patel" {
  user                    = aws_iam_user.ivan_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_patel__licensing_6_devs" {
  user   = aws_iam_user.ivan_patel.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "ivan_reddy" {
  name = "hextri-1bmol0-ivan.reddy"
}

resource "aws_iam_user_group_membership" "ivan_reddy__citizen_portal_5_devs" {
  user   = aws_iam_user.ivan_reddy.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_reddy__open_data_6_analysts" {
  user   = aws_iam_user.ivan_reddy.name
  groups = [aws_iam_group.open_data_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ivan_reddy__base_readonly" {
  user       = aws_iam_user.ivan_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_rossi" {
  name = "hextri-1bmol0-ivan.rossi"
}

resource "aws_iam_user_login_profile" "ivan_rossi" {
  user                    = aws_iam_user.ivan_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_rossi__audit_5_devs" {
  user   = aws_iam_user.ivan_rossi.name
  groups = [aws_iam_group.audit_5_devs.name]
}

resource "aws_iam_user" "ivan_rossi2328" {
  name = "hextri-1bmol0-ivan.rossi2328"
}

resource "aws_iam_user_login_profile" "ivan_rossi2328" {
  user                    = aws_iam_user.ivan_rossi2328.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_rossi2328__hr_devs" {
  user   = aws_iam_user.ivan_rossi2328.name
  groups = [aws_iam_group.hr_devs.name]
}

resource "aws_iam_user" "ivan_silva" {
  name = "hextri-1bmol0-ivan.silva"
}

resource "aws_iam_user_login_profile" "ivan_silva" {
  user                    = aws_iam_user.ivan_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_silva__open_data_6_devs" {
  user   = aws_iam_user.ivan_silva.name
  groups = [aws_iam_group.open_data_6_devs.name]
}

resource "aws_iam_user" "ivan_smith" {
  name = "hextri-1bmol0-ivan.smith"
}

resource "aws_iam_user_login_profile" "ivan_smith" {
  user                    = aws_iam_user.ivan_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_smith__hr_3_devs" {
  user   = aws_iam_user.ivan_smith.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "ivan_smith__base_readonly" {
  user       = aws_iam_user.ivan_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_smith9431" {
  name = "hextri-1bmol0-ivan.smith9431"
}

resource "aws_iam_user_group_membership" "ivan_smith9431__benefits_5_devs" {
  user   = aws_iam_user.ivan_smith9431.name
  groups = [aws_iam_group.benefits_5_devs.name]
}

resource "aws_iam_user" "ivan_wong" {
  name = "hextri-1bmol0-ivan.wong"
}

resource "aws_iam_user_login_profile" "ivan_wong" {
  user                    = aws_iam_user.ivan_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_wong__benefits_devs" {
  user   = aws_iam_user.ivan_wong.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user" "judy_chen" {
  name = "hextri-1bmol0-judy.chen"
}

resource "aws_iam_user_login_profile" "judy_chen" {
  user                    = aws_iam_user.judy_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_chen__hr_3_devs" {
  user   = aws_iam_user.judy_chen.name
  groups = [aws_iam_group.hr_3_devs.name]
}

resource "aws_iam_user" "judy_gupta" {
  name = "hextri-1bmol0-judy.gupta"
}

resource "aws_iam_user_login_profile" "judy_gupta" {
  user                    = aws_iam_user.judy_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_gupta__gis_6_devs" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user" "judy_ivanov" {
  name = "hextri-1bmol0-judy.ivanov"
}

resource "aws_iam_user_login_profile" "judy_ivanov" {
  user                    = aws_iam_user.judy_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_ivanov__records_4_devs" {
  user   = aws_iam_user.judy_ivanov.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "judy_mehta" {
  name = "hextri-1bmol0-judy.mehta"
}

resource "aws_iam_user_login_profile" "judy_mehta" {
  user                    = aws_iam_user.judy_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_mehta__it_ops_analysts" {
  user   = aws_iam_user.judy_mehta.name
  groups = [aws_iam_group.it_ops_analysts.name]
}

resource "aws_iam_user_group_membership" "judy_mehta__gis_analysts" {
  user   = aws_iam_user.judy_mehta.name
  groups = [aws_iam_group.gis_analysts.name]
}

resource "aws_iam_user" "judy_nguyen" {
  name = "hextri-1bmol0-judy.nguyen"
}

resource "aws_iam_user_login_profile" "judy_nguyen" {
  user                    = aws_iam_user.judy_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_nguyen__records_analysts" {
  user   = aws_iam_user.judy_nguyen.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user_group_membership" "judy_nguyen__records_2_analysts" {
  user   = aws_iam_user.judy_nguyen.name
  groups = [aws_iam_group.records_2_analysts.name]
}

resource "aws_iam_user" "judy_patel" {
  name = "hextri-1bmol0-judy.patel"
}

resource "aws_iam_user_login_profile" "judy_patel" {
  user                    = aws_iam_user.judy_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_patel__citizen_portal_7_devs" {
  user   = aws_iam_user.judy_patel.name
  groups = [aws_iam_group.citizen_portal_7_devs.name]
}

resource "aws_iam_user" "judy_reddy" {
  name = "hextri-1bmol0-judy.reddy"
}

resource "aws_iam_user_group_membership" "judy_reddy__hr_2_devs" {
  user   = aws_iam_user.judy_reddy.name
  groups = [aws_iam_group.hr_2_devs.name]
}

resource "aws_iam_user" "judy_rossi" {
  name = "hextri-1bmol0-judy.rossi"
}

resource "aws_iam_user_login_profile" "judy_rossi" {
  user                    = aws_iam_user.judy_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_rossi__benefits_5_devs" {
  user   = aws_iam_user.judy_rossi.name
  groups = [aws_iam_group.benefits_5_devs.name]
}

resource "aws_iam_user" "judy_singh" {
  name = "hextri-1bmol0-judy.singh"
}

resource "aws_iam_user_login_profile" "judy_singh" {
  user                    = aws_iam_user.judy_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_singh__open_data_4_devs" {
  user   = aws_iam_user.judy_singh.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "judy_wong" {
  name = "hextri-1bmol0-judy.wong"
}

resource "aws_iam_user_login_profile" "judy_wong" {
  user                    = aws_iam_user.judy_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_wong__procurement_devs" {
  user   = aws_iam_user.judy_wong.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user_group_membership" "judy_wong__records_analysts" {
  user   = aws_iam_user.judy_wong.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "jun_ali" {
  name = "hextri-1bmol0-jun.ali"
}

resource "aws_iam_user_group_membership" "jun_ali__licensing_4_devs" {
  user   = aws_iam_user.jun_ali.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "jun_brown" {
  name = "hextri-1bmol0-jun.brown"
}

resource "aws_iam_user_login_profile" "jun_brown" {
  user                    = aws_iam_user.jun_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_brown__it_ops_5_devs" {
  user   = aws_iam_user.jun_brown.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user" "jun_cohen" {
  name = "hextri-1bmol0-jun.cohen"
}

resource "aws_iam_user_login_profile" "jun_cohen" {
  user                    = aws_iam_user.jun_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_cohen__public_safety_7_devs" {
  user   = aws_iam_user.jun_cohen.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user_group_membership" "jun_cohen__citizen_portal_3_analysts" {
  user   = aws_iam_user.jun_cohen.name
  groups = [aws_iam_group.citizen_portal_3_analysts.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "hextri-1bmol0-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__benefits_6_devs" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.benefits_6_devs.name]
}

resource "aws_iam_user" "jun_gupta" {
  name = "hextri-1bmol0-jun.gupta"
}

resource "aws_iam_user_login_profile" "jun_gupta" {
  user                    = aws_iam_user.jun_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_gupta__hr_3_analysts" {
  user   = aws_iam_user.jun_gupta.name
  groups = [aws_iam_group.hr_3_analysts.name]
}

resource "aws_iam_user" "jun_ivanov" {
  name = "hextri-1bmol0-jun.ivanov"
}

resource "aws_iam_user_login_profile" "jun_ivanov" {
  user                    = aws_iam_user.jun_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ivanov__it_ops_5_devs" {
  user   = aws_iam_user.jun_ivanov.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user" "jun_jones" {
  name = "hextri-1bmol0-jun.jones"
}

resource "aws_iam_user_login_profile" "jun_jones" {
  user                    = aws_iam_user.jun_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_jones__citizen_portal_3_devs" {
  user   = aws_iam_user.jun_jones.name
  groups = [aws_iam_group.citizen_portal_3_devs.name]
}

resource "aws_iam_user" "jun_mehta" {
  name = "hextri-1bmol0-jun.mehta"
}

resource "aws_iam_user_login_profile" "jun_mehta" {
  user                    = aws_iam_user.jun_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_mehta__licensing_6_devs" {
  user   = aws_iam_user.jun_mehta.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "jun_okafor" {
  name = "hextri-1bmol0-jun.okafor"
}

resource "aws_iam_user_login_profile" "jun_okafor" {
  user                    = aws_iam_user.jun_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_okafor__gis_5_analysts" {
  user   = aws_iam_user.jun_okafor.name
  groups = [aws_iam_group.gis_5_analysts.name]
}

resource "aws_iam_user" "jun_rossi" {
  name = "hextri-1bmol0-jun.rossi"
}

resource "aws_iam_user_group_membership" "jun_rossi__licensing_4_devs" {
  user   = aws_iam_user.jun_rossi.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "jun_rossi9971" {
  name = "hextri-1bmol0-jun.rossi9971"
}

resource "aws_iam_user_login_profile" "jun_rossi9971" {
  user                    = aws_iam_user.jun_rossi9971.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_rossi9971__licensing_3_devs" {
  user   = aws_iam_user.jun_rossi9971.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "karl_brown" {
  name = "hextri-1bmol0-karl.brown"
}

resource "aws_iam_user_group_membership" "karl_brown__hr_6_devs" {
  user   = aws_iam_user.karl_brown.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user" "karl_brown1903" {
  name = "hextri-1bmol0-karl.brown1903"
}

resource "aws_iam_user_login_profile" "karl_brown1903" {
  user                    = aws_iam_user.karl_brown1903.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_brown1903__open_data_7_devs" {
  user   = aws_iam_user.karl_brown1903.name
  groups = [aws_iam_group.open_data_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_brown1903__base_readonly" {
  user       = aws_iam_user.karl_brown1903.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "karl_davis" {
  name = "hextri-1bmol0-karl.davis"
}

resource "aws_iam_user_login_profile" "karl_davis" {
  user                    = aws_iam_user.karl_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_davis__procurement_3_analysts" {
  user   = aws_iam_user.karl_davis.name
  groups = [aws_iam_group.procurement_3_analysts.name]
}

resource "aws_iam_user" "karl_gupta" {
  name = "hextri-1bmol0-karl.gupta"
}

resource "aws_iam_user_login_profile" "karl_gupta" {
  user                    = aws_iam_user.karl_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_gupta__benefits_2_analysts" {
  user   = aws_iam_user.karl_gupta.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "karl_gupta1045" {
  name = "hextri-1bmol0-karl.gupta1045"
}

resource "aws_iam_user_login_profile" "karl_gupta1045" {
  user                    = aws_iam_user.karl_gupta1045.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_gupta1045__it_ops_2_devs" {
  user   = aws_iam_user.karl_gupta1045.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "karl_ivanov" {
  name = "hextri-1bmol0-karl.ivanov"
}

resource "aws_iam_user_login_profile" "karl_ivanov" {
  user                    = aws_iam_user.karl_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_ivanov__hr_6_devs" {
  user   = aws_iam_user.karl_ivanov.name
  groups = [aws_iam_group.hr_6_devs.name]
}

resource "aws_iam_user" "karl_kim" {
  name = "hextri-1bmol0-karl.kim"
}

resource "aws_iam_user_login_profile" "karl_kim" {
  user                    = aws_iam_user.karl_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_kim__public_safety_devs" {
  user   = aws_iam_user.karl_kim.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user_group_membership" "karl_kim__audit_3_analysts" {
  user   = aws_iam_user.karl_kim.name
  groups = [aws_iam_group.audit_3_analysts.name]
}

resource "aws_iam_user" "karl_miller" {
  name = "hextri-1bmol0-karl.miller"
}

resource "aws_iam_user_login_profile" "karl_miller" {
  user                    = aws_iam_user.karl_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_miller__audit_5_devs" {
  user   = aws_iam_user.karl_miller.name
  groups = [aws_iam_group.audit_5_devs.name]
}

resource "aws_iam_user" "karl_muller" {
  name = "hextri-1bmol0-karl.muller"
}

resource "aws_iam_user_login_profile" "karl_muller" {
  user                    = aws_iam_user.karl_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_muller__audit_4_devs" {
  user   = aws_iam_user.karl_muller.name
  groups = [aws_iam_group.audit_4_devs.name]
}

resource "aws_iam_user" "karl_novak" {
  name = "hextri-1bmol0-karl.novak"
}

resource "aws_iam_user_login_profile" "karl_novak" {
  user                    = aws_iam_user.karl_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_novak__benefits_2_analysts" {
  user   = aws_iam_user.karl_novak.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "karl_reddy" {
  name = "hextri-1bmol0-karl.reddy"
}

resource "aws_iam_user_login_profile" "karl_reddy" {
  user                    = aws_iam_user.karl_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_reddy__it_ops_3_devs" {
  user   = aws_iam_user.karl_reddy.name
  groups = [aws_iam_group.it_ops_3_devs.name]
}

resource "aws_iam_user_group_membership" "karl_reddy__open_data_7_analysts" {
  user   = aws_iam_user.karl_reddy.name
  groups = [aws_iam_group.open_data_7_analysts.name]
}

resource "aws_iam_user" "kia_ali" {
  name = "hextri-1bmol0-kia.ali"
}

resource "aws_iam_user_login_profile" "kia_ali" {
  user                    = aws_iam_user.kia_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_ali__tax_6_analysts" {
  user   = aws_iam_user.kia_ali.name
  groups = [aws_iam_group.tax_6_analysts.name]
}

resource "aws_iam_user" "kia_brown" {
  name = "hextri-1bmol0-kia.brown"
}

resource "aws_iam_user_login_profile" "kia_brown" {
  user                    = aws_iam_user.kia_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_brown__hr_5_devs" {
  user   = aws_iam_user.kia_brown.name
  groups = [aws_iam_group.hr_5_devs.name]
}

resource "aws_iam_user" "kia_dubois" {
  name = "hextri-1bmol0-kia.dubois"
}

resource "aws_iam_user_login_profile" "kia_dubois" {
  user                    = aws_iam_user.kia_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_dubois__open_data_6_devs" {
  user   = aws_iam_user.kia_dubois.name
  groups = [aws_iam_group.open_data_6_devs.name]
}

resource "aws_iam_user" "kia_haddad" {
  name = "hextri-1bmol0-kia.haddad"
}

resource "aws_iam_user_login_profile" "kia_haddad" {
  user                    = aws_iam_user.kia_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_haddad__records_6_devs" {
  user   = aws_iam_user.kia_haddad.name
  groups = [aws_iam_group.records_6_devs.name]
}

resource "aws_iam_user_group_membership" "kia_haddad__it_ops_6_analysts" {
  user   = aws_iam_user.kia_haddad.name
  groups = [aws_iam_group.it_ops_6_analysts.name]
}

resource "aws_iam_user" "kia_khan" {
  name = "hextri-1bmol0-kia.khan"
}

resource "aws_iam_user_login_profile" "kia_khan" {
  user                    = aws_iam_user.kia_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_khan__open_data_4_devs" {
  user   = aws_iam_user.kia_khan.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "kia_muller" {
  name = "hextri-1bmol0-kia.muller"
}

resource "aws_iam_user_login_profile" "kia_muller" {
  user                    = aws_iam_user.kia_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_muller__records_3_devs" {
  user   = aws_iam_user.kia_muller.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user" "kia_nguyen" {
  name = "hextri-1bmol0-kia.nguyen"
}

resource "aws_iam_user_login_profile" "kia_nguyen" {
  user                    = aws_iam_user.kia_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_nguyen__tax_5_analysts" {
  user   = aws_iam_user.kia_nguyen.name
  groups = [aws_iam_group.tax_5_analysts.name]
}

resource "aws_iam_user" "kia_sato" {
  name = "hextri-1bmol0-kia.sato"
}

resource "aws_iam_user_login_profile" "kia_sato" {
  user                    = aws_iam_user.kia_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_sato__procurement_5_devs" {
  user   = aws_iam_user.kia_sato.name
  groups = [aws_iam_group.procurement_5_devs.name]
}

resource "aws_iam_user" "kia_wong" {
  name = "hextri-1bmol0-kia.wong"
}

resource "aws_iam_user_login_profile" "kia_wong" {
  user                    = aws_iam_user.kia_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_wong__open_data_7_devs" {
  user   = aws_iam_user.kia_wong.name
  groups = [aws_iam_group.open_data_7_devs.name]
}

resource "aws_iam_user_group_membership" "kia_wong__gis_6_analysts" {
  user   = aws_iam_user.kia_wong.name
  groups = [aws_iam_group.gis_6_analysts.name]
}

resource "aws_iam_user" "lena_chen" {
  name = "hextri-1bmol0-lena.chen"
}

resource "aws_iam_user_login_profile" "lena_chen" {
  user                    = aws_iam_user.lena_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_chen__procurement_5_analysts" {
  user   = aws_iam_user.lena_chen.name
  groups = [aws_iam_group.procurement_5_analysts.name]
}

resource "aws_iam_user" "lena_haddad" {
  name = "hextri-1bmol0-lena.haddad"
}

resource "aws_iam_user_group_membership" "lena_haddad__gis_4_analysts" {
  user   = aws_iam_user.lena_haddad.name
  groups = [aws_iam_group.gis_4_analysts.name]
}

resource "aws_iam_user" "lena_ivanov" {
  name = "hextri-1bmol0-lena.ivanov"
}

resource "aws_iam_user_login_profile" "lena_ivanov" {
  user                    = aws_iam_user.lena_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_ivanov__tax_7_devs" {
  user   = aws_iam_user.lena_ivanov.name
  groups = [aws_iam_group.tax_7_devs.name]
}

resource "aws_iam_user_group_membership" "lena_ivanov__citizen_portal_analysts" {
  user   = aws_iam_user.lena_ivanov.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "lena_khan" {
  name = "hextri-1bmol0-lena.khan"
}

resource "aws_iam_user_login_profile" "lena_khan" {
  user                    = aws_iam_user.lena_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_khan__gis_5_analysts" {
  user   = aws_iam_user.lena_khan.name
  groups = [aws_iam_group.gis_5_analysts.name]
}

resource "aws_iam_user" "lena_larsen" {
  name = "hextri-1bmol0-lena.larsen"
}

resource "aws_iam_user_login_profile" "lena_larsen" {
  user                    = aws_iam_user.lena_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen__benefits_6_devs" {
  user   = aws_iam_user.lena_larsen.name
  groups = [aws_iam_group.benefits_6_devs.name]
}

resource "aws_iam_user" "lena_lopez" {
  name = "hextri-1bmol0-lena.lopez"
}

resource "aws_iam_user_login_profile" "lena_lopez" {
  user                    = aws_iam_user.lena_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_lopez__records_2_devs" {
  user   = aws_iam_user.lena_lopez.name
  groups = [aws_iam_group.records_2_devs.name]
}

resource "aws_iam_user" "lena_mehta" {
  name = "hextri-1bmol0-lena.mehta"
}

resource "aws_iam_user_login_profile" "lena_mehta" {
  user                    = aws_iam_user.lena_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_mehta__licensing_4_devs" {
  user   = aws_iam_user.lena_mehta.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "lena_nguyen" {
  name = "hextri-1bmol0-lena.nguyen"
}

resource "aws_iam_user_login_profile" "lena_nguyen" {
  user                    = aws_iam_user.lena_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_nguyen__licensing_5_devs" {
  user   = aws_iam_user.lena_nguyen.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user" "lena_novak" {
  name = "hextri-1bmol0-lena.novak"
}

resource "aws_iam_user_login_profile" "lena_novak" {
  user                    = aws_iam_user.lena_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_novak__licensing_4_devs" {
  user   = aws_iam_user.lena_novak.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "lena_sato" {
  name = "hextri-1bmol0-lena.sato"
}

resource "aws_iam_user_login_profile" "lena_sato" {
  user                    = aws_iam_user.lena_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_sato__public_safety_3_devs" {
  user   = aws_iam_user.lena_sato.name
  groups = [aws_iam_group.public_safety_3_devs.name]
}

resource "aws_iam_user" "lena_singh" {
  name = "hextri-1bmol0-lena.singh"
}

resource "aws_iam_user_login_profile" "lena_singh" {
  user                    = aws_iam_user.lena_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_singh__open_data_7_devs" {
  user   = aws_iam_user.lena_singh.name
  groups = [aws_iam_group.open_data_7_devs.name]
}

resource "aws_iam_user" "lena_wong" {
  name = "hextri-1bmol0-lena.wong"
}

resource "aws_iam_user_login_profile" "lena_wong" {
  user                    = aws_iam_user.lena_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_wong__benefits_5_analysts" {
  user   = aws_iam_user.lena_wong.name
  groups = [aws_iam_group.benefits_5_analysts.name]
}

resource "aws_iam_user" "lena_wong5359" {
  name = "hextri-1bmol0-lena.wong5359"
}

resource "aws_iam_user_login_profile" "lena_wong5359" {
  user                    = aws_iam_user.lena_wong5359.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_wong5359__records_7_devs" {
  user   = aws_iam_user.lena_wong5359.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "leo_ali" {
  name = "hextri-1bmol0-leo.ali"
}

resource "aws_iam_user_group_membership" "leo_ali__procurement_3_analysts" {
  user   = aws_iam_user.leo_ali.name
  groups = [aws_iam_group.procurement_3_analysts.name]
}

resource "aws_iam_user_group_membership" "leo_ali__public_safety_3_analysts" {
  user   = aws_iam_user.leo_ali.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "leo_cohen" {
  name = "hextri-1bmol0-leo.cohen"
}

resource "aws_iam_user_group_membership" "leo_cohen__licensing_5_devs" {
  user   = aws_iam_user.leo_cohen.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user_group_membership" "leo_cohen__licensing_6_analysts" {
  user   = aws_iam_user.leo_cohen.name
  groups = [aws_iam_group.licensing_6_analysts.name]
}

resource "aws_iam_user" "leo_gupta" {
  name = "hextri-1bmol0-leo.gupta"
}

resource "aws_iam_user_group_membership" "leo_gupta__licensing_5_devs" {
  user   = aws_iam_user.leo_gupta.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user" "leo_larsen" {
  name = "hextri-1bmol0-leo.larsen"
}

resource "aws_iam_user_login_profile" "leo_larsen" {
  user                    = aws_iam_user.leo_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_larsen__open_data_4_devs" {
  user   = aws_iam_user.leo_larsen.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "leo_lopez" {
  name = "hextri-1bmol0-leo.lopez"
}

resource "aws_iam_user_group_membership" "leo_lopez__citizen_portal_4_analysts" {
  user   = aws_iam_user.leo_lopez.name
  groups = [aws_iam_group.citizen_portal_4_analysts.name]
}

resource "aws_iam_user" "leo_miller" {
  name = "hextri-1bmol0-leo.miller"
}

resource "aws_iam_user_login_profile" "leo_miller" {
  user                    = aws_iam_user.leo_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_miller__records_analysts" {
  user   = aws_iam_user.leo_miller.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "leo_muller" {
  name = "hextri-1bmol0-leo.muller"
}

resource "aws_iam_user_login_profile" "leo_muller" {
  user                    = aws_iam_user.leo_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_muller__benefits_devs" {
  user   = aws_iam_user.leo_muller.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user" "leo_novak" {
  name = "hextri-1bmol0-leo.novak"
}

resource "aws_iam_user_login_profile" "leo_novak" {
  user                    = aws_iam_user.leo_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_novak__public_safety_analysts" {
  user   = aws_iam_user.leo_novak.name
  groups = [aws_iam_group.public_safety_analysts.name]
}

resource "aws_iam_user_group_membership" "leo_novak__benefits_2_analysts" {
  user   = aws_iam_user.leo_novak.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "leo_novak6631" {
  name = "hextri-1bmol0-leo.novak6631"
}

resource "aws_iam_user_login_profile" "leo_novak6631" {
  user                    = aws_iam_user.leo_novak6631.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_novak6631__gis_7_devs" {
  user   = aws_iam_user.leo_novak6631.name
  groups = [aws_iam_group.gis_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "leo_novak6631__base_readonly" {
  user       = aws_iam_user.leo_novak6631.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_patel" {
  name = "hextri-1bmol0-leo.patel"
}

resource "aws_iam_user_login_profile" "leo_patel" {
  user                    = aws_iam_user.leo_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_patel__gis_2_devs" {
  user   = aws_iam_user.leo_patel.name
  groups = [aws_iam_group.gis_2_devs.name]
}

resource "aws_iam_user_group_membership" "leo_patel__open_data_4_analysts" {
  user   = aws_iam_user.leo_patel.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user" "leo_patel2463" {
  name = "hextri-1bmol0-leo.patel2463"
}

resource "aws_iam_user_group_membership" "leo_patel2463__open_data_6_devs" {
  user   = aws_iam_user.leo_patel2463.name
  groups = [aws_iam_group.open_data_6_devs.name]
}

resource "aws_iam_user" "leo_sato" {
  name = "hextri-1bmol0-leo.sato"
}

resource "aws_iam_user_login_profile" "leo_sato" {
  user                    = aws_iam_user.leo_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_sato__benefits_analysts" {
  user   = aws_iam_user.leo_sato.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user_group_membership" "leo_sato__citizen_portal_7_analysts" {
  user   = aws_iam_user.leo_sato.name
  groups = [aws_iam_group.citizen_portal_7_analysts.name]
}

resource "aws_iam_user" "leo_silva" {
  name = "hextri-1bmol0-leo.silva"
}

resource "aws_iam_user_login_profile" "leo_silva" {
  user                    = aws_iam_user.leo_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_silva__hr_4_analysts" {
  user   = aws_iam_user.leo_silva.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "leo_singh" {
  name = "hextri-1bmol0-leo.singh"
}

resource "aws_iam_user_login_profile" "leo_singh" {
  user                    = aws_iam_user.leo_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_singh__citizen_portal_6_analysts" {
  user   = aws_iam_user.leo_singh.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "leo_singh3294" {
  name = "hextri-1bmol0-leo.singh3294"
}

resource "aws_iam_user_login_profile" "leo_singh3294" {
  user                    = aws_iam_user.leo_singh3294.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_singh3294__citizen_portal_6_devs" {
  user   = aws_iam_user.leo_singh3294.name
  groups = [aws_iam_group.citizen_portal_6_devs.name]
}

resource "aws_iam_user" "leo_singh8660" {
  name = "hextri-1bmol0-leo.singh8660"
}

resource "aws_iam_user_login_profile" "leo_singh8660" {
  user                    = aws_iam_user.leo_singh8660.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_singh8660__public_safety_5_devs" {
  user   = aws_iam_user.leo_singh8660.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "mei_chen" {
  name = "hextri-1bmol0-mei.chen"
}

resource "aws_iam_user_login_profile" "mei_chen" {
  user                    = aws_iam_user.mei_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_chen__audit_devs" {
  user   = aws_iam_user.mei_chen.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user" "mei_chen5511" {
  name = "hextri-1bmol0-mei.chen5511"
}

resource "aws_iam_user_group_membership" "mei_chen5511__gis_7_devs" {
  user   = aws_iam_user.mei_chen5511.name
  groups = [aws_iam_group.gis_7_devs.name]
}

resource "aws_iam_user" "mei_cohen" {
  name = "hextri-1bmol0-mei.cohen"
}

resource "aws_iam_user_login_profile" "mei_cohen" {
  user                    = aws_iam_user.mei_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_cohen__open_data_4_devs" {
  user   = aws_iam_user.mei_cohen.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "mei_davis" {
  name = "hextri-1bmol0-mei.davis"
}

resource "aws_iam_user_login_profile" "mei_davis" {
  user                    = aws_iam_user.mei_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_davis__it_ops_5_devs" {
  user   = aws_iam_user.mei_davis.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user" "mei_dubois" {
  name = "hextri-1bmol0-mei.dubois"
}

resource "aws_iam_user_login_profile" "mei_dubois" {
  user                    = aws_iam_user.mei_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_dubois__licensing_devs" {
  user   = aws_iam_user.mei_dubois.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "mei_ivanov" {
  name = "hextri-1bmol0-mei.ivanov"
}

resource "aws_iam_user_login_profile" "mei_ivanov" {
  user                    = aws_iam_user.mei_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ivanov__public_safety_3_devs" {
  user   = aws_iam_user.mei_ivanov.name
  groups = [aws_iam_group.public_safety_3_devs.name]
}

resource "aws_iam_user" "mei_kim" {
  name = "hextri-1bmol0-mei.kim"
}

resource "aws_iam_user_login_profile" "mei_kim" {
  user                    = aws_iam_user.mei_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_kim__licensing_3_devs" {
  user   = aws_iam_user.mei_kim.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "mei_muller" {
  name = "hextri-1bmol0-mei.muller"
}

resource "aws_iam_user_login_profile" "mei_muller" {
  user                    = aws_iam_user.mei_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_muller__audit_3_devs" {
  user   = aws_iam_user.mei_muller.name
  groups = [aws_iam_group.audit_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "mei_muller__base_readonly" {
  user       = aws_iam_user.mei_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_novak" {
  name = "hextri-1bmol0-mei.novak"
}

resource "aws_iam_user_login_profile" "mei_novak" {
  user                    = aws_iam_user.mei_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_novak__gis_devs" {
  user   = aws_iam_user.mei_novak.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user_group_membership" "mei_novak__public_safety_4_analysts" {
  user   = aws_iam_user.mei_novak.name
  groups = [aws_iam_group.public_safety_4_analysts.name]
}

resource "aws_iam_user" "mei_okafor" {
  name = "hextri-1bmol0-mei.okafor"
}

resource "aws_iam_user_login_profile" "mei_okafor" {
  user                    = aws_iam_user.mei_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_okafor__open_data_4_analysts" {
  user   = aws_iam_user.mei_okafor.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user" "mei_sato" {
  name = "hextri-1bmol0-mei.sato"
}

resource "aws_iam_user_group_membership" "mei_sato__open_data_6_analysts" {
  user   = aws_iam_user.mei_sato.name
  groups = [aws_iam_group.open_data_6_analysts.name]
}

resource "aws_iam_user" "mei_silva" {
  name = "hextri-1bmol0-mei.silva"
}

resource "aws_iam_user_login_profile" "mei_silva" {
  user                    = aws_iam_user.mei_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_silva__open_data_4_analysts" {
  user   = aws_iam_user.mei_silva.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user_group_membership" "mei_silva__public_safety_4_analysts" {
  user   = aws_iam_user.mei_silva.name
  groups = [aws_iam_group.public_safety_4_analysts.name]
}

resource "aws_iam_user" "mei_singh" {
  name = "hextri-1bmol0-mei.singh"
}

resource "aws_iam_user_login_profile" "mei_singh" {
  user                    = aws_iam_user.mei_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_singh__hr_devs" {
  user   = aws_iam_user.mei_singh.name
  groups = [aws_iam_group.hr_devs.name]
}

resource "aws_iam_user" "mike_cohen" {
  name = "hextri-1bmol0-mike.cohen"
}

resource "aws_iam_user_login_profile" "mike_cohen" {
  user                    = aws_iam_user.mike_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_cohen__records_3_analysts" {
  user   = aws_iam_user.mike_cohen.name
  groups = [aws_iam_group.records_3_analysts.name]
}

resource "aws_iam_user" "mike_dubois" {
  name = "hextri-1bmol0-mike.dubois"
}

resource "aws_iam_user_login_profile" "mike_dubois" {
  user                    = aws_iam_user.mike_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_dubois__audit_2_devs" {
  user   = aws_iam_user.mike_dubois.name
  groups = [aws_iam_group.audit_2_devs.name]
}

resource "aws_iam_user" "mike_gupta" {
  name = "hextri-1bmol0-mike.gupta"
}

resource "aws_iam_user_login_profile" "mike_gupta" {
  user                    = aws_iam_user.mike_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_gupta__it_ops_5_devs" {
  user   = aws_iam_user.mike_gupta.name
  groups = [aws_iam_group.it_ops_5_devs.name]
}

resource "aws_iam_user" "mike_haddad" {
  name = "hextri-1bmol0-mike.haddad"
}

resource "aws_iam_user_login_profile" "mike_haddad" {
  user                    = aws_iam_user.mike_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_haddad__benefits_devs" {
  user   = aws_iam_user.mike_haddad.name
  groups = [aws_iam_group.benefits_devs.name]
}

resource "aws_iam_user" "mike_mehta" {
  name = "hextri-1bmol0-mike.mehta"
}

resource "aws_iam_user_login_profile" "mike_mehta" {
  user                    = aws_iam_user.mike_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_mehta__benefits_2_analysts" {
  user   = aws_iam_user.mike_mehta.name
  groups = [aws_iam_group.benefits_2_analysts.name]
}

resource "aws_iam_user" "mike_singh" {
  name = "hextri-1bmol0-mike.singh"
}

resource "aws_iam_user_login_profile" "mike_singh" {
  user                    = aws_iam_user.mike_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh__benefits_2_devs" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.benefits_2_devs.name]
}

resource "aws_iam_user" "nina_chen" {
  name = "hextri-1bmol0-nina.chen"
}

resource "aws_iam_user_login_profile" "nina_chen" {
  user                    = aws_iam_user.nina_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_chen__audit_2_analysts" {
  user   = aws_iam_user.nina_chen.name
  groups = [aws_iam_group.audit_2_analysts.name]
}

resource "aws_iam_user" "nina_cohen" {
  name = "hextri-1bmol0-nina.cohen"
}

resource "aws_iam_user_login_profile" "nina_cohen" {
  user                    = aws_iam_user.nina_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_cohen__public_safety_7_devs" {
  user   = aws_iam_user.nina_cohen.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user" "nina_kim" {
  name = "hextri-1bmol0-nina.kim"
}

resource "aws_iam_user_login_profile" "nina_kim" {
  user                    = aws_iam_user.nina_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_kim__tax_6_devs" {
  user   = aws_iam_user.nina_kim.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user" "nina_larsen" {
  name = "hextri-1bmol0-nina.larsen"
}

resource "aws_iam_user_login_profile" "nina_larsen" {
  user                    = aws_iam_user.nina_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_larsen__public_safety_devs" {
  user   = aws_iam_user.nina_larsen.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user" "nina_miller" {
  name = "hextri-1bmol0-nina.miller"
}

resource "aws_iam_user_login_profile" "nina_miller" {
  user                    = aws_iam_user.nina_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_miller__it_ops_3_devs" {
  user   = aws_iam_user.nina_miller.name
  groups = [aws_iam_group.it_ops_3_devs.name]
}

resource "aws_iam_user" "nina_muller" {
  name = "hextri-1bmol0-nina.muller"
}

resource "aws_iam_user_login_profile" "nina_muller" {
  user                    = aws_iam_user.nina_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_muller__procurement_4_analysts" {
  user   = aws_iam_user.nina_muller.name
  groups = [aws_iam_group.procurement_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "nina_muller__base_readonly" {
  user       = aws_iam_user.nina_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "nina_okafor" {
  name = "hextri-1bmol0-nina.okafor"
}

resource "aws_iam_user_group_membership" "nina_okafor__hr_4_devs" {
  user   = aws_iam_user.nina_okafor.name
  groups = [aws_iam_group.hr_4_devs.name]
}

resource "aws_iam_user" "nina_okafor6438" {
  name = "hextri-1bmol0-nina.okafor6438"
}

resource "aws_iam_user_login_profile" "nina_okafor6438" {
  user                    = aws_iam_user.nina_okafor6438.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_okafor6438__gis_5_devs" {
  user   = aws_iam_user.nina_okafor6438.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user" "nina_patel" {
  name = "hextri-1bmol0-nina.patel"
}

resource "aws_iam_user_login_profile" "nina_patel" {
  user                    = aws_iam_user.nina_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_patel__records_7_devs" {
  user   = aws_iam_user.nina_patel.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user_group_membership" "nina_patel__procurement_7_analysts" {
  user   = aws_iam_user.nina_patel.name
  groups = [aws_iam_group.procurement_7_analysts.name]
}

resource "aws_iam_user" "nina_rossi" {
  name = "hextri-1bmol0-nina.rossi"
}

resource "aws_iam_user_login_profile" "nina_rossi" {
  user                    = aws_iam_user.nina_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_rossi__licensing_5_devs" {
  user   = aws_iam_user.nina_rossi.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user_group_membership" "nina_rossi__tax_6_analysts" {
  user   = aws_iam_user.nina_rossi.name
  groups = [aws_iam_group.tax_6_analysts.name]
}

resource "aws_iam_user" "nina_sato" {
  name = "hextri-1bmol0-nina.sato"
}

resource "aws_iam_user_login_profile" "nina_sato" {
  user                    = aws_iam_user.nina_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_sato__licensing_7_devs" {
  user   = aws_iam_user.nina_sato.name
  groups = [aws_iam_group.licensing_7_devs.name]
}

resource "aws_iam_user" "nina_tanaka" {
  name = "hextri-1bmol0-nina.tanaka"
}

resource "aws_iam_user_login_profile" "nina_tanaka" {
  user                    = aws_iam_user.nina_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_tanaka__records_7_devs" {
  user   = aws_iam_user.nina_tanaka.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "noor_cohen" {
  name = "hextri-1bmol0-noor.cohen"
}

resource "aws_iam_user_group_membership" "noor_cohen__licensing_4_devs" {
  user   = aws_iam_user.noor_cohen.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user" "noor_davis" {
  name = "hextri-1bmol0-noor.davis"
}

resource "aws_iam_user_login_profile" "noor_davis" {
  user                    = aws_iam_user.noor_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_davis__benefits_4_devs" {
  user   = aws_iam_user.noor_davis.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user" "noor_gupta" {
  name = "hextri-1bmol0-noor.gupta"
}

resource "aws_iam_user_login_profile" "noor_gupta" {
  user                    = aws_iam_user.noor_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_gupta__it_ops_6_analysts" {
  user   = aws_iam_user.noor_gupta.name
  groups = [aws_iam_group.it_ops_6_analysts.name]
}

resource "aws_iam_user" "noor_haddad" {
  name = "hextri-1bmol0-noor.haddad"
}

resource "aws_iam_user_login_profile" "noor_haddad" {
  user                    = aws_iam_user.noor_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_haddad__tax_7_devs" {
  user   = aws_iam_user.noor_haddad.name
  groups = [aws_iam_group.tax_7_devs.name]
}

resource "aws_iam_user" "noor_ivanov" {
  name = "hextri-1bmol0-noor.ivanov"
}

resource "aws_iam_user_login_profile" "noor_ivanov" {
  user                    = aws_iam_user.noor_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_ivanov__it_ops_5_analysts" {
  user   = aws_iam_user.noor_ivanov.name
  groups = [aws_iam_group.it_ops_5_analysts.name]
}

resource "aws_iam_user" "noor_kim" {
  name = "hextri-1bmol0-noor.kim"
}

resource "aws_iam_user_login_profile" "noor_kim" {
  user                    = aws_iam_user.noor_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_kim__tax_4_analysts" {
  user   = aws_iam_user.noor_kim.name
  groups = [aws_iam_group.tax_4_analysts.name]
}

resource "aws_iam_user" "noor_larsen" {
  name = "hextri-1bmol0-noor.larsen"
}

resource "aws_iam_user_login_profile" "noor_larsen" {
  user                    = aws_iam_user.noor_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_larsen__records_3_devs" {
  user   = aws_iam_user.noor_larsen.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "noor_larsen__base_readonly" {
  user       = aws_iam_user.noor_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "noor_novak" {
  name = "hextri-1bmol0-noor.novak"
}

resource "aws_iam_user_group_membership" "noor_novak__citizen_portal_6_analysts" {
  user   = aws_iam_user.noor_novak.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "noor_tanaka" {
  name = "hextri-1bmol0-noor.tanaka"
}

resource "aws_iam_user_login_profile" "noor_tanaka" {
  user                    = aws_iam_user.noor_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_tanaka__licensing_6_devs" {
  user   = aws_iam_user.noor_tanaka.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "omar_davis" {
  name = "hextri-1bmol0-omar.davis"
}

resource "aws_iam_user_login_profile" "omar_davis" {
  user                    = aws_iam_user.omar_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_davis__citizen_portal_2_analysts" {
  user   = aws_iam_user.omar_davis.name
  groups = [aws_iam_group.citizen_portal_2_analysts.name]
}

resource "aws_iam_user_group_membership" "omar_davis__citizen_portal_analysts" {
  user   = aws_iam_user.omar_davis.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "omar_garcia" {
  name = "hextri-1bmol0-omar.garcia"
}

resource "aws_iam_user_login_profile" "omar_garcia" {
  user                    = aws_iam_user.omar_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_garcia__licensing_7_devs" {
  user   = aws_iam_user.omar_garcia.name
  groups = [aws_iam_group.licensing_7_devs.name]
}

resource "aws_iam_user" "omar_khan" {
  name = "hextri-1bmol0-omar.khan"
}

resource "aws_iam_user_group_membership" "omar_khan__audit_2_devs" {
  user   = aws_iam_user.omar_khan.name
  groups = [aws_iam_group.audit_2_devs.name]
}

resource "aws_iam_user_group_membership" "omar_khan__procurement_7_analysts" {
  user   = aws_iam_user.omar_khan.name
  groups = [aws_iam_group.procurement_7_analysts.name]
}

resource "aws_iam_user" "omar_kim" {
  name = "hextri-1bmol0-omar.kim"
}

resource "aws_iam_user_login_profile" "omar_kim" {
  user                    = aws_iam_user.omar_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_kim__records_2_devs" {
  user   = aws_iam_user.omar_kim.name
  groups = [aws_iam_group.records_2_devs.name]
}

resource "aws_iam_user" "omar_larsen" {
  name = "hextri-1bmol0-omar.larsen"
}

resource "aws_iam_user_login_profile" "omar_larsen" {
  user                    = aws_iam_user.omar_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_larsen__public_safety_6_devs" {
  user   = aws_iam_user.omar_larsen.name
  groups = [aws_iam_group.public_safety_6_devs.name]
}

resource "aws_iam_user" "omar_novak" {
  name = "hextri-1bmol0-omar.novak"
}

resource "aws_iam_user_login_profile" "omar_novak" {
  user                    = aws_iam_user.omar_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_novak__citizen_portal_4_devs" {
  user   = aws_iam_user.omar_novak.name
  groups = [aws_iam_group.citizen_portal_4_devs.name]
}

resource "aws_iam_user" "omar_sato" {
  name = "hextri-1bmol0-omar.sato"
}

resource "aws_iam_user_group_membership" "omar_sato__tax_7_devs" {
  user   = aws_iam_user.omar_sato.name
  groups = [aws_iam_group.tax_7_devs.name]
}

resource "aws_iam_user" "omar_silva" {
  name = "hextri-1bmol0-omar.silva"
}

resource "aws_iam_user_login_profile" "omar_silva" {
  user                    = aws_iam_user.omar_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_silva__hr_4_analysts" {
  user   = aws_iam_user.omar_silva.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "priya_brown" {
  name = "hextri-1bmol0-priya.brown"
}

resource "aws_iam_user_login_profile" "priya_brown" {
  user                    = aws_iam_user.priya_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_brown__benefits_3_devs" {
  user   = aws_iam_user.priya_brown.name
  groups = [aws_iam_group.benefits_3_devs.name]
}

resource "aws_iam_user" "priya_davis" {
  name = "hextri-1bmol0-priya.davis"
}

resource "aws_iam_user_login_profile" "priya_davis" {
  user                    = aws_iam_user.priya_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_davis__public_safety_7_devs" {
  user   = aws_iam_user.priya_davis.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user_group_membership" "priya_davis__it_ops_2_analysts" {
  user   = aws_iam_user.priya_davis.name
  groups = [aws_iam_group.it_ops_2_analysts.name]
}

resource "aws_iam_user" "priya_larsen" {
  name = "hextri-1bmol0-priya.larsen"
}

resource "aws_iam_user_login_profile" "priya_larsen" {
  user                    = aws_iam_user.priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_larsen__tax_devs" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.tax_devs.name]
}

resource "aws_iam_user" "priya_lopez" {
  name = "hextri-1bmol0-priya.lopez"
}

resource "aws_iam_user_login_profile" "priya_lopez" {
  user                    = aws_iam_user.priya_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_lopez__citizen_portal_5_devs" {
  user   = aws_iam_user.priya_lopez.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "priya_lopez__base_readonly" {
  user       = aws_iam_user.priya_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_mehta" {
  name = "hextri-1bmol0-priya.mehta"
}

resource "aws_iam_user_login_profile" "priya_mehta" {
  user                    = aws_iam_user.priya_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_mehta__citizen_portal_5_devs" {
  user   = aws_iam_user.priya_mehta.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user" "priya_muller" {
  name = "hextri-1bmol0-priya.muller"
}

resource "aws_iam_user_login_profile" "priya_muller" {
  user                    = aws_iam_user.priya_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_muller__audit_5_analysts" {
  user   = aws_iam_user.priya_muller.name
  groups = [aws_iam_group.audit_5_analysts.name]
}

resource "aws_iam_user" "priya_nguyen" {
  name = "hextri-1bmol0-priya.nguyen"
}

resource "aws_iam_user_login_profile" "priya_nguyen" {
  user                    = aws_iam_user.priya_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_nguyen__procurement_4_analysts" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.procurement_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "priya_nguyen__base_readonly" {
  user       = aws_iam_user.priya_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_okafor" {
  name = "hextri-1bmol0-priya.okafor"
}

resource "aws_iam_user_login_profile" "priya_okafor" {
  user                    = aws_iam_user.priya_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_okafor__citizen_portal_devs" {
  user   = aws_iam_user.priya_okafor.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user" "quinn_ali" {
  name = "hextri-1bmol0-quinn.ali"
}

resource "aws_iam_user_login_profile" "quinn_ali" {
  user                    = aws_iam_user.quinn_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_ali__licensing_4_devs" {
  user   = aws_iam_user.quinn_ali.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_ali__public_safety_5_analysts" {
  user   = aws_iam_user.quinn_ali.name
  groups = [aws_iam_group.public_safety_5_analysts.name]
}

resource "aws_iam_user" "quinn_dubois" {
  name = "hextri-1bmol0-quinn.dubois"
}

resource "aws_iam_user_login_profile" "quinn_dubois" {
  user                    = aws_iam_user.quinn_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_dubois__audit_3_devs" {
  user   = aws_iam_user.quinn_dubois.name
  groups = [aws_iam_group.audit_3_devs.name]
}

resource "aws_iam_user" "quinn_dubois687" {
  name = "hextri-1bmol0-quinn.dubois687"
}

resource "aws_iam_user_login_profile" "quinn_dubois687" {
  user                    = aws_iam_user.quinn_dubois687.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_dubois687__procurement_2_analysts" {
  user   = aws_iam_user.quinn_dubois687.name
  groups = [aws_iam_group.procurement_2_analysts.name]
}

resource "aws_iam_user" "quinn_dubois9026" {
  name = "hextri-1bmol0-quinn.dubois9026"
}

resource "aws_iam_user_login_profile" "quinn_dubois9026" {
  user                    = aws_iam_user.quinn_dubois9026.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_dubois9026__open_data_5_devs" {
  user   = aws_iam_user.quinn_dubois9026.name
  groups = [aws_iam_group.open_data_5_devs.name]
}

resource "aws_iam_user" "quinn_garcia" {
  name = "hextri-1bmol0-quinn.garcia"
}

resource "aws_iam_user_login_profile" "quinn_garcia" {
  user                    = aws_iam_user.quinn_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_garcia__citizen_portal_5_analysts" {
  user   = aws_iam_user.quinn_garcia.name
  groups = [aws_iam_group.citizen_portal_5_analysts.name]
}

resource "aws_iam_user" "quinn_garcia1956" {
  name = "hextri-1bmol0-quinn.garcia1956"
}

resource "aws_iam_user_login_profile" "quinn_garcia1956" {
  user                    = aws_iam_user.quinn_garcia1956.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_garcia1956__records_5_devs" {
  user   = aws_iam_user.quinn_garcia1956.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user" "quinn_kim" {
  name = "hextri-1bmol0-quinn.kim"
}

resource "aws_iam_user_login_profile" "quinn_kim" {
  user                    = aws_iam_user.quinn_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_kim__tax_2_devs" {
  user   = aws_iam_user.quinn_kim.name
  groups = [aws_iam_group.tax_2_devs.name]
}

resource "aws_iam_user" "quinn_lopez" {
  name = "hextri-1bmol0-quinn.lopez"
}

resource "aws_iam_user_group_membership" "quinn_lopez__procurement_4_devs" {
  user   = aws_iam_user.quinn_lopez.name
  groups = [aws_iam_group.procurement_4_devs.name]
}

resource "aws_iam_user" "quinn_mehta" {
  name = "hextri-1bmol0-quinn.mehta"
}

resource "aws_iam_user_group_membership" "quinn_mehta__it_ops_6_devs" {
  user   = aws_iam_user.quinn_mehta.name
  groups = [aws_iam_group.it_ops_6_devs.name]
}

resource "aws_iam_user" "quinn_muller" {
  name = "hextri-1bmol0-quinn.muller"
}

resource "aws_iam_user_login_profile" "quinn_muller" {
  user                    = aws_iam_user.quinn_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_muller__records_3_devs" {
  user   = aws_iam_user.quinn_muller.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user" "quinn_nguyen" {
  name = "hextri-1bmol0-quinn.nguyen"
}

resource "aws_iam_user_login_profile" "quinn_nguyen" {
  user                    = aws_iam_user.quinn_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_nguyen__open_data_3_devs" {
  user   = aws_iam_user.quinn_nguyen.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_nguyen__base_readonly" {
  user       = aws_iam_user.quinn_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_okafor" {
  name = "hextri-1bmol0-quinn.okafor"
}

resource "aws_iam_user_login_profile" "quinn_okafor" {
  user                    = aws_iam_user.quinn_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_okafor__procurement_6_analysts" {
  user   = aws_iam_user.quinn_okafor.name
  groups = [aws_iam_group.procurement_6_analysts.name]
}

resource "aws_iam_user" "quinn_okafor7999" {
  name = "hextri-1bmol0-quinn.okafor7999"
}

resource "aws_iam_user_login_profile" "quinn_okafor7999" {
  user                    = aws_iam_user.quinn_okafor7999.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_okafor7999__open_data_2_devs" {
  user   = aws_iam_user.quinn_okafor7999.name
  groups = [aws_iam_group.open_data_2_devs.name]
}

resource "aws_iam_user" "quinn_wong" {
  name = "hextri-1bmol0-quinn.wong"
}

resource "aws_iam_user_login_profile" "quinn_wong" {
  user                    = aws_iam_user.quinn_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_wong__hr_5_devs" {
  user   = aws_iam_user.quinn_wong.name
  groups = [aws_iam_group.hr_5_devs.name]
}

resource "aws_iam_user" "quinn_wong8014" {
  name = "hextri-1bmol0-quinn.wong8014"
}

resource "aws_iam_user_login_profile" "quinn_wong8014" {
  user                    = aws_iam_user.quinn_wong8014.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_wong8014__open_data_3_devs" {
  user   = aws_iam_user.quinn_wong8014.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user" "raj_brown" {
  name = "hextri-1bmol0-raj.brown"
}

resource "aws_iam_user_group_membership" "raj_brown__records_5_analysts" {
  user   = aws_iam_user.raj_brown.name
  groups = [aws_iam_group.records_5_analysts.name]
}

resource "aws_iam_user" "raj_chen" {
  name = "hextri-1bmol0-raj.chen"
}

resource "aws_iam_user_login_profile" "raj_chen" {
  user                    = aws_iam_user.raj_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_chen__hr_4_analysts" {
  user   = aws_iam_user.raj_chen.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "raj_haddad" {
  name = "hextri-1bmol0-raj.haddad"
}

resource "aws_iam_user_login_profile" "raj_haddad" {
  user                    = aws_iam_user.raj_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_haddad__procurement_3_devs" {
  user   = aws_iam_user.raj_haddad.name
  groups = [aws_iam_group.procurement_3_devs.name]
}

resource "aws_iam_user_group_membership" "raj_haddad__citizen_portal_6_analysts" {
  user   = aws_iam_user.raj_haddad.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "raj_haddad366" {
  name = "hextri-1bmol0-raj.haddad366"
}

resource "aws_iam_user_login_profile" "raj_haddad366" {
  user                    = aws_iam_user.raj_haddad366.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_haddad366__citizen_portal_2_devs" {
  user   = aws_iam_user.raj_haddad366.name
  groups = [aws_iam_group.citizen_portal_2_devs.name]
}

resource "aws_iam_user" "raj_sato" {
  name = "hextri-1bmol0-raj.sato"
}

resource "aws_iam_user_group_membership" "raj_sato__hr_4_devs" {
  user   = aws_iam_user.raj_sato.name
  groups = [aws_iam_group.hr_4_devs.name]
}

resource "aws_iam_user_group_membership" "raj_sato__citizen_portal_2_analysts" {
  user   = aws_iam_user.raj_sato.name
  groups = [aws_iam_group.citizen_portal_2_analysts.name]
}

resource "aws_iam_user" "raj_singh" {
  name = "hextri-1bmol0-raj.singh"
}

resource "aws_iam_user_group_membership" "raj_singh__gis_7_devs" {
  user   = aws_iam_user.raj_singh.name
  groups = [aws_iam_group.gis_7_devs.name]
}

resource "aws_iam_user" "sara_ali" {
  name = "hextri-1bmol0-sara.ali"
}

resource "aws_iam_user_login_profile" "sara_ali" {
  user                    = aws_iam_user.sara_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_ali__records_7_devs" {
  user   = aws_iam_user.sara_ali.name
  groups = [aws_iam_group.records_7_devs.name]
}

resource "aws_iam_user" "sara_brown" {
  name = "hextri-1bmol0-sara.brown"
}

resource "aws_iam_user_login_profile" "sara_brown" {
  user                    = aws_iam_user.sara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_brown__records_devs" {
  user   = aws_iam_user.sara_brown.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user" "sara_davis" {
  name = "hextri-1bmol0-sara.davis"
}

resource "aws_iam_user_login_profile" "sara_davis" {
  user                    = aws_iam_user.sara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_davis__benefits_4_devs" {
  user   = aws_iam_user.sara_davis.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user_group_membership" "sara_davis__it_ops_4_analysts" {
  user   = aws_iam_user.sara_davis.name
  groups = [aws_iam_group.it_ops_4_analysts.name]
}

resource "aws_iam_user" "sara_dubois" {
  name = "hextri-1bmol0-sara.dubois"
}

resource "aws_iam_user_login_profile" "sara_dubois" {
  user                    = aws_iam_user.sara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_dubois__citizen_portal_5_devs" {
  user   = aws_iam_user.sara_dubois.name
  groups = [aws_iam_group.citizen_portal_5_devs.name]
}

resource "aws_iam_user" "sara_garcia" {
  name = "hextri-1bmol0-sara.garcia"
}

resource "aws_iam_user_group_membership" "sara_garcia__it_ops_3_analysts" {
  user   = aws_iam_user.sara_garcia.name
  groups = [aws_iam_group.it_ops_3_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_garcia__public_safety_3_analysts" {
  user   = aws_iam_user.sara_garcia.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "sara_haddad" {
  name = "hextri-1bmol0-sara.haddad"
}

resource "aws_iam_user_login_profile" "sara_haddad" {
  user                    = aws_iam_user.sara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_haddad__procurement_6_devs" {
  user   = aws_iam_user.sara_haddad.name
  groups = [aws_iam_group.procurement_6_devs.name]
}

resource "aws_iam_user_group_membership" "sara_haddad__open_data_3_analysts" {
  user   = aws_iam_user.sara_haddad.name
  groups = [aws_iam_group.open_data_3_analysts.name]
}

resource "aws_iam_user" "sara_jones" {
  name = "hextri-1bmol0-sara.jones"
}

resource "aws_iam_user_login_profile" "sara_jones" {
  user                    = aws_iam_user.sara_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_jones__tax_6_devs" {
  user   = aws_iam_user.sara_jones.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user_group_membership" "sara_jones__public_safety_3_analysts" {
  user   = aws_iam_user.sara_jones.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "sara_khan" {
  name = "hextri-1bmol0-sara.khan"
}

resource "aws_iam_user_login_profile" "sara_khan" {
  user                    = aws_iam_user.sara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_khan__gis_5_devs" {
  user   = aws_iam_user.sara_khan.name
  groups = [aws_iam_group.gis_5_devs.name]
}

resource "aws_iam_user" "sara_nguyen" {
  name = "hextri-1bmol0-sara.nguyen"
}

resource "aws_iam_user_login_profile" "sara_nguyen" {
  user                    = aws_iam_user.sara_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_nguyen__public_safety_2_analysts" {
  user   = aws_iam_user.sara_nguyen.name
  groups = [aws_iam_group.public_safety_2_analysts.name]
}

resource "aws_iam_user" "sara_novak" {
  name = "hextri-1bmol0-sara.novak"
}

resource "aws_iam_user_login_profile" "sara_novak" {
  user                    = aws_iam_user.sara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_novak__benefits_4_analysts" {
  user   = aws_iam_user.sara_novak.name
  groups = [aws_iam_group.benefits_4_analysts.name]
}

resource "aws_iam_user" "tom_ali" {
  name = "hextri-1bmol0-tom.ali"
}

resource "aws_iam_user_login_profile" "tom_ali" {
  user                    = aws_iam_user.tom_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ali__benefits_analysts" {
  user   = aws_iam_user.tom_ali.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_ali__procurement_4_analysts" {
  user   = aws_iam_user.tom_ali.name
  groups = [aws_iam_group.procurement_4_analysts.name]
}

resource "aws_iam_user" "tom_chen" {
  name = "hextri-1bmol0-tom.chen"
}

resource "aws_iam_user_login_profile" "tom_chen" {
  user                    = aws_iam_user.tom_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_chen__audit_5_analysts" {
  user   = aws_iam_user.tom_chen.name
  groups = [aws_iam_group.audit_5_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_chen__records_analysts" {
  user   = aws_iam_user.tom_chen.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "tom_dubois" {
  name = "hextri-1bmol0-tom.dubois"
}

resource "aws_iam_user_group_membership" "tom_dubois__procurement_devs" {
  user   = aws_iam_user.tom_dubois.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user" "tom_gupta" {
  name = "hextri-1bmol0-tom.gupta"
}

resource "aws_iam_user_login_profile" "tom_gupta" {
  user                    = aws_iam_user.tom_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_gupta__audit_5_devs" {
  user   = aws_iam_user.tom_gupta.name
  groups = [aws_iam_group.audit_5_devs.name]
}

resource "aws_iam_user_group_membership" "tom_gupta__benefits_analysts" {
  user   = aws_iam_user.tom_gupta.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "tom_haddad" {
  name = "hextri-1bmol0-tom.haddad"
}

resource "aws_iam_user_login_profile" "tom_haddad" {
  user                    = aws_iam_user.tom_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_haddad__records_2_devs" {
  user   = aws_iam_user.tom_haddad.name
  groups = [aws_iam_group.records_2_devs.name]
}

resource "aws_iam_user" "tom_ivanov" {
  name = "hextri-1bmol0-tom.ivanov"
}

resource "aws_iam_user_login_profile" "tom_ivanov" {
  user                    = aws_iam_user.tom_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ivanov__public_safety_4_analysts" {
  user   = aws_iam_user.tom_ivanov.name
  groups = [aws_iam_group.public_safety_4_analysts.name]
}

resource "aws_iam_user" "tom_ivanov3571" {
  name = "hextri-1bmol0-tom.ivanov3571"
}

resource "aws_iam_user_login_profile" "tom_ivanov3571" {
  user                    = aws_iam_user.tom_ivanov3571.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ivanov3571__records_4_analysts" {
  user   = aws_iam_user.tom_ivanov3571.name
  groups = [aws_iam_group.records_4_analysts.name]
}

resource "aws_iam_user" "tom_ivanov5905" {
  name = "hextri-1bmol0-tom.ivanov5905"
}

resource "aws_iam_user_login_profile" "tom_ivanov5905" {
  user                    = aws_iam_user.tom_ivanov5905.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ivanov5905__benefits_4_analysts" {
  user   = aws_iam_user.tom_ivanov5905.name
  groups = [aws_iam_group.benefits_4_analysts.name]
}

resource "aws_iam_user" "tom_jones" {
  name = "hextri-1bmol0-tom.jones"
}

resource "aws_iam_user_login_profile" "tom_jones" {
  user                    = aws_iam_user.tom_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones__it_ops_4_devs" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.it_ops_4_devs.name]
}

resource "aws_iam_user_group_membership" "tom_jones__gis_6_analysts" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.gis_6_analysts.name]
}

resource "aws_iam_user" "tom_jones570" {
  name = "hextri-1bmol0-tom.jones570"
}

resource "aws_iam_user_login_profile" "tom_jones570" {
  user                    = aws_iam_user.tom_jones570.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones570__open_data_devs" {
  user   = aws_iam_user.tom_jones570.name
  groups = [aws_iam_group.open_data_devs.name]
}

resource "aws_iam_user" "tom_khan" {
  name = "hextri-1bmol0-tom.khan"
}

resource "aws_iam_user_login_profile" "tom_khan" {
  user                    = aws_iam_user.tom_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_khan__public_safety_3_devs" {
  user   = aws_iam_user.tom_khan.name
  groups = [aws_iam_group.public_safety_3_devs.name]
}

resource "aws_iam_user_group_membership" "tom_khan__tax_3_analysts" {
  user   = aws_iam_user.tom_khan.name
  groups = [aws_iam_group.tax_3_analysts.name]
}

resource "aws_iam_user" "tom_khan3284" {
  name = "hextri-1bmol0-tom.khan3284"
}

resource "aws_iam_user_login_profile" "tom_khan3284" {
  user                    = aws_iam_user.tom_khan3284.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_khan3284__public_safety_5_devs" {
  user   = aws_iam_user.tom_khan3284.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "tom_kim" {
  name = "hextri-1bmol0-tom.kim"
}

resource "aws_iam_user_login_profile" "tom_kim" {
  user                    = aws_iam_user.tom_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_kim__benefits_6_analysts" {
  user   = aws_iam_user.tom_kim.name
  groups = [aws_iam_group.benefits_6_analysts.name]
}

resource "aws_iam_user" "tom_larsen" {
  name = "hextri-1bmol0-tom.larsen"
}

resource "aws_iam_user_login_profile" "tom_larsen" {
  user                    = aws_iam_user.tom_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_larsen__licensing_6_analysts" {
  user   = aws_iam_user.tom_larsen.name
  groups = [aws_iam_group.licensing_6_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_larsen__audit_6_analysts" {
  user   = aws_iam_user.tom_larsen.name
  groups = [aws_iam_group.audit_6_analysts.name]
}

resource "aws_iam_user" "tom_mehta" {
  name = "hextri-1bmol0-tom.mehta"
}

resource "aws_iam_user_login_profile" "tom_mehta" {
  user                    = aws_iam_user.tom_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_mehta__records_6_analysts" {
  user   = aws_iam_user.tom_mehta.name
  groups = [aws_iam_group.records_6_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_mehta__records_analysts" {
  user   = aws_iam_user.tom_mehta.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "tom_miller" {
  name = "hextri-1bmol0-tom.miller"
}

resource "aws_iam_user_login_profile" "tom_miller" {
  user                    = aws_iam_user.tom_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_miller__open_data_5_devs" {
  user   = aws_iam_user.tom_miller.name
  groups = [aws_iam_group.open_data_5_devs.name]
}

resource "aws_iam_user" "tom_nguyen" {
  name = "hextri-1bmol0-tom.nguyen"
}

resource "aws_iam_user_login_profile" "tom_nguyen" {
  user                    = aws_iam_user.tom_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_nguyen__licensing_3_devs" {
  user   = aws_iam_user.tom_nguyen.name
  groups = [aws_iam_group.licensing_3_devs.name]
}

resource "aws_iam_user" "tom_nguyen6513" {
  name = "hextri-1bmol0-tom.nguyen6513"
}

resource "aws_iam_user_login_profile" "tom_nguyen6513" {
  user                    = aws_iam_user.tom_nguyen6513.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_nguyen6513__records_5_devs" {
  user   = aws_iam_user.tom_nguyen6513.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user" "tom_okafor" {
  name = "hextri-1bmol0-tom.okafor"
}

resource "aws_iam_user_login_profile" "tom_okafor" {
  user                    = aws_iam_user.tom_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_okafor__hr_5_analysts" {
  user   = aws_iam_user.tom_okafor.name
  groups = [aws_iam_group.hr_5_analysts.name]
}

resource "aws_iam_user" "tom_patel" {
  name = "hextri-1bmol0-tom.patel"
}

resource "aws_iam_user_login_profile" "tom_patel" {
  user                    = aws_iam_user.tom_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_patel__audit_5_devs" {
  user   = aws_iam_user.tom_patel.name
  groups = [aws_iam_group.audit_5_devs.name]
}

resource "aws_iam_user_group_membership" "tom_patel__tax_analysts" {
  user   = aws_iam_user.tom_patel.name
  groups = [aws_iam_group.tax_analysts.name]
}

resource "aws_iam_user" "tom_patel1247" {
  name = "hextri-1bmol0-tom.patel1247"
}

resource "aws_iam_user_login_profile" "tom_patel1247" {
  user                    = aws_iam_user.tom_patel1247.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_patel1247__public_safety_devs" {
  user   = aws_iam_user.tom_patel1247.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user" "tom_patel2809" {
  name = "hextri-1bmol0-tom.patel2809"
}

resource "aws_iam_user_login_profile" "tom_patel2809" {
  user                    = aws_iam_user.tom_patel2809.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_patel2809__gis_6_devs" {
  user   = aws_iam_user.tom_patel2809.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user_group_membership" "tom_patel2809__hr_4_analysts" {
  user   = aws_iam_user.tom_patel2809.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "tom_sato" {
  name = "hextri-1bmol0-tom.sato"
}

resource "aws_iam_user_login_profile" "tom_sato" {
  user                    = aws_iam_user.tom_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_sato__it_ops_devs" {
  user   = aws_iam_user.tom_sato.name
  groups = [aws_iam_group.it_ops_devs.name]
}

resource "aws_iam_user" "tom_smith" {
  name = "hextri-1bmol0-tom.smith"
}

resource "aws_iam_user_login_profile" "tom_smith" {
  user                    = aws_iam_user.tom_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_smith__benefits_5_devs" {
  user   = aws_iam_user.tom_smith.name
  groups = [aws_iam_group.benefits_5_devs.name]
}

resource "aws_iam_user" "uma_brown" {
  name = "hextri-1bmol0-uma.brown"
}

resource "aws_iam_user_login_profile" "uma_brown" {
  user                    = aws_iam_user.uma_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_brown__procurement_4_devs" {
  user   = aws_iam_user.uma_brown.name
  groups = [aws_iam_group.procurement_4_devs.name]
}

resource "aws_iam_user" "uma_davis" {
  name = "hextri-1bmol0-uma.davis"
}

resource "aws_iam_user_login_profile" "uma_davis" {
  user                    = aws_iam_user.uma_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_davis__tax_analysts" {
  user   = aws_iam_user.uma_davis.name
  groups = [aws_iam_group.tax_analysts.name]
}

resource "aws_iam_user" "uma_dubois" {
  name = "hextri-1bmol0-uma.dubois"
}

resource "aws_iam_user_login_profile" "uma_dubois" {
  user                    = aws_iam_user.uma_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_dubois__records_devs" {
  user   = aws_iam_user.uma_dubois.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user" "uma_haddad" {
  name = "hextri-1bmol0-uma.haddad"
}

resource "aws_iam_user_login_profile" "uma_haddad" {
  user                    = aws_iam_user.uma_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_haddad__public_safety_5_devs" {
  user   = aws_iam_user.uma_haddad.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "uma_lopez" {
  name = "hextri-1bmol0-uma.lopez"
}

resource "aws_iam_user_login_profile" "uma_lopez" {
  user                    = aws_iam_user.uma_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez__licensing_5_devs" {
  user   = aws_iam_user.uma_lopez.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user_group_membership" "uma_lopez__licensing_2_analysts" {
  user   = aws_iam_user.uma_lopez.name
  groups = [aws_iam_group.licensing_2_analysts.name]
}

resource "aws_iam_user" "uma_lopez2145" {
  name = "hextri-1bmol0-uma.lopez2145"
}

resource "aws_iam_user_login_profile" "uma_lopez2145" {
  user                    = aws_iam_user.uma_lopez2145.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez2145__it_ops_3_devs" {
  user   = aws_iam_user.uma_lopez2145.name
  groups = [aws_iam_group.it_ops_3_devs.name]
}

resource "aws_iam_user" "uma_lopez8443" {
  name = "hextri-1bmol0-uma.lopez8443"
}

resource "aws_iam_user_login_profile" "uma_lopez8443" {
  user                    = aws_iam_user.uma_lopez8443.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez8443__hr_analysts" {
  user   = aws_iam_user.uma_lopez8443.name
  groups = [aws_iam_group.hr_analysts.name]
}

resource "aws_iam_user" "uma_mehta" {
  name = "hextri-1bmol0-uma.mehta"
}

resource "aws_iam_user_login_profile" "uma_mehta" {
  user                    = aws_iam_user.uma_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_mehta__benefits_analysts" {
  user   = aws_iam_user.uma_mehta.name
  groups = [aws_iam_group.benefits_analysts.name]
}

resource "aws_iam_user" "uma_miller" {
  name = "hextri-1bmol0-uma.miller"
}

resource "aws_iam_user_group_membership" "uma_miller__procurement_4_devs" {
  user   = aws_iam_user.uma_miller.name
  groups = [aws_iam_group.procurement_4_devs.name]
}

resource "aws_iam_user" "uma_miller9475" {
  name = "hextri-1bmol0-uma.miller9475"
}

resource "aws_iam_user_login_profile" "uma_miller9475" {
  user                    = aws_iam_user.uma_miller9475.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_miller9475__licensing_analysts" {
  user   = aws_iam_user.uma_miller9475.name
  groups = [aws_iam_group.licensing_analysts.name]
}

resource "aws_iam_user_group_membership" "uma_miller9475__hr_analysts" {
  user   = aws_iam_user.uma_miller9475.name
  groups = [aws_iam_group.hr_analysts.name]
}

resource "aws_iam_user" "uma_novak" {
  name = "hextri-1bmol0-uma.novak"
}

resource "aws_iam_user_login_profile" "uma_novak" {
  user                    = aws_iam_user.uma_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_novak__gis_6_devs" {
  user   = aws_iam_user.uma_novak.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user" "uma_novak5387" {
  name = "hextri-1bmol0-uma.novak5387"
}

resource "aws_iam_user_login_profile" "uma_novak5387" {
  user                    = aws_iam_user.uma_novak5387.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_novak5387__tax_2_devs" {
  user   = aws_iam_user.uma_novak5387.name
  groups = [aws_iam_group.tax_2_devs.name]
}

resource "aws_iam_user_group_membership" "uma_novak5387__audit_5_analysts" {
  user   = aws_iam_user.uma_novak5387.name
  groups = [aws_iam_group.audit_5_analysts.name]
}

resource "aws_iam_user" "uma_okafor" {
  name = "hextri-1bmol0-uma.okafor"
}

resource "aws_iam_user_group_membership" "uma_okafor__tax_3_devs" {
  user   = aws_iam_user.uma_okafor.name
  groups = [aws_iam_group.tax_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_okafor__base_readonly" {
  user       = aws_iam_user.uma_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_reddy" {
  name = "hextri-1bmol0-uma.reddy"
}

resource "aws_iam_user_login_profile" "uma_reddy" {
  user                    = aws_iam_user.uma_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_reddy__tax_6_devs" {
  user   = aws_iam_user.uma_reddy.name
  groups = [aws_iam_group.tax_6_devs.name]
}

resource "aws_iam_user_group_membership" "uma_reddy__audit_2_analysts" {
  user   = aws_iam_user.uma_reddy.name
  groups = [aws_iam_group.audit_2_analysts.name]
}

resource "aws_iam_user" "uma_singh" {
  name = "hextri-1bmol0-uma.singh"
}

resource "aws_iam_user_login_profile" "uma_singh" {
  user                    = aws_iam_user.uma_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_singh__licensing_2_analysts" {
  user   = aws_iam_user.uma_singh.name
  groups = [aws_iam_group.licensing_2_analysts.name]
}

resource "aws_iam_user_group_membership" "uma_singh__gis_6_analysts" {
  user   = aws_iam_user.uma_singh.name
  groups = [aws_iam_group.gis_6_analysts.name]
}

resource "aws_iam_user" "uma_smith" {
  name = "hextri-1bmol0-uma.smith"
}

resource "aws_iam_user_login_profile" "uma_smith" {
  user                    = aws_iam_user.uma_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_smith__hr_6_analysts" {
  user   = aws_iam_user.uma_smith.name
  groups = [aws_iam_group.hr_6_analysts.name]
}

resource "aws_iam_user_group_membership" "uma_smith__benefits_3_analysts" {
  user   = aws_iam_user.uma_smith.name
  groups = [aws_iam_group.benefits_3_analysts.name]
}

resource "aws_iam_user" "uma_smith6864" {
  name = "hextri-1bmol0-uma.smith6864"
}

resource "aws_iam_user_login_profile" "uma_smith6864" {
  user                    = aws_iam_user.uma_smith6864.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_smith6864__tax_5_devs" {
  user   = aws_iam_user.uma_smith6864.name
  groups = [aws_iam_group.tax_5_devs.name]
}

resource "aws_iam_user" "vik_chen" {
  name = "hextri-1bmol0-vik.chen"
}

resource "aws_iam_user_login_profile" "vik_chen" {
  user                    = aws_iam_user.vik_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_chen__it_ops_6_devs" {
  user   = aws_iam_user.vik_chen.name
  groups = [aws_iam_group.it_ops_6_devs.name]
}

resource "aws_iam_user" "vik_cohen" {
  name = "hextri-1bmol0-vik.cohen"
}

resource "aws_iam_user_group_membership" "vik_cohen__citizen_portal_7_analysts" {
  user   = aws_iam_user.vik_cohen.name
  groups = [aws_iam_group.citizen_portal_7_analysts.name]
}

resource "aws_iam_user_policy_attachment" "vik_cohen__base_readonly" {
  user       = aws_iam_user.vik_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "vik_larsen" {
  name = "hextri-1bmol0-vik.larsen"
}

resource "aws_iam_user_login_profile" "vik_larsen" {
  user                    = aws_iam_user.vik_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_larsen__gis_7_analysts" {
  user   = aws_iam_user.vik_larsen.name
  groups = [aws_iam_group.gis_7_analysts.name]
}

resource "aws_iam_user" "vik_muller" {
  name = "hextri-1bmol0-vik.muller"
}

resource "aws_iam_user_login_profile" "vik_muller" {
  user                    = aws_iam_user.vik_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_muller__tax_2_analysts" {
  user   = aws_iam_user.vik_muller.name
  groups = [aws_iam_group.tax_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "vik_muller__base_readonly" {
  user       = aws_iam_user.vik_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "vik_reddy" {
  name = "hextri-1bmol0-vik.reddy"
}

resource "aws_iam_user_group_membership" "vik_reddy__licensing_5_devs" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.licensing_5_devs.name]
}

resource "aws_iam_user" "vik_silva" {
  name = "hextri-1bmol0-vik.silva"
}

resource "aws_iam_user_login_profile" "vik_silva" {
  user                    = aws_iam_user.vik_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_silva__hr_4_analysts" {
  user   = aws_iam_user.vik_silva.name
  groups = [aws_iam_group.hr_4_analysts.name]
}

resource "aws_iam_user" "vik_silva9681" {
  name = "hextri-1bmol0-vik.silva9681"
}

resource "aws_iam_user_login_profile" "vik_silva9681" {
  user                    = aws_iam_user.vik_silva9681.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_silva9681__procurement_6_devs" {
  user   = aws_iam_user.vik_silva9681.name
  groups = [aws_iam_group.procurement_6_devs.name]
}

resource "aws_iam_user" "vik_smith" {
  name = "hextri-1bmol0-vik.smith"
}

resource "aws_iam_user_login_profile" "vik_smith" {
  user                    = aws_iam_user.vik_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_smith__gis_3_devs" {
  user   = aws_iam_user.vik_smith.name
  groups = [aws_iam_group.gis_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "vik_smith__base_readonly" {
  user       = aws_iam_user.vik_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "vik_tanaka" {
  name = "hextri-1bmol0-vik.tanaka"
}

resource "aws_iam_user_login_profile" "vik_tanaka" {
  user                    = aws_iam_user.vik_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_tanaka__records_3_devs" {
  user   = aws_iam_user.vik_tanaka.name
  groups = [aws_iam_group.records_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "vik_tanaka__base_readonly" {
  user       = aws_iam_user.vik_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_brown" {
  name = "hextri-1bmol0-wen.brown"
}

resource "aws_iam_user_group_membership" "wen_brown__citizen_portal_6_analysts" {
  user   = aws_iam_user.wen_brown.name
  groups = [aws_iam_group.citizen_portal_6_analysts.name]
}

resource "aws_iam_user" "wen_cohen" {
  name = "hextri-1bmol0-wen.cohen"
}

resource "aws_iam_user_login_profile" "wen_cohen" {
  user                    = aws_iam_user.wen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_cohen__procurement_5_devs" {
  user   = aws_iam_user.wen_cohen.name
  groups = [aws_iam_group.procurement_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "wen_cohen__base_readonly" {
  user       = aws_iam_user.wen_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_garcia" {
  name = "hextri-1bmol0-wen.garcia"
}

resource "aws_iam_user_group_membership" "wen_garcia__public_safety_2_devs" {
  user   = aws_iam_user.wen_garcia.name
  groups = [aws_iam_group.public_safety_2_devs.name]
}

resource "aws_iam_user_group_membership" "wen_garcia__it_ops_6_analysts" {
  user   = aws_iam_user.wen_garcia.name
  groups = [aws_iam_group.it_ops_6_analysts.name]
}

resource "aws_iam_user" "wen_gupta" {
  name = "hextri-1bmol0-wen.gupta"
}

resource "aws_iam_user_login_profile" "wen_gupta" {
  user                    = aws_iam_user.wen_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_gupta__it_ops_3_analysts" {
  user   = aws_iam_user.wen_gupta.name
  groups = [aws_iam_group.it_ops_3_analysts.name]
}

resource "aws_iam_user" "wen_haddad" {
  name = "hextri-1bmol0-wen.haddad"
}

resource "aws_iam_user_login_profile" "wen_haddad" {
  user                    = aws_iam_user.wen_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_haddad__hr_2_devs" {
  user   = aws_iam_user.wen_haddad.name
  groups = [aws_iam_group.hr_2_devs.name]
}

resource "aws_iam_user" "wen_larsen" {
  name = "hextri-1bmol0-wen.larsen"
}

resource "aws_iam_user_login_profile" "wen_larsen" {
  user                    = aws_iam_user.wen_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_larsen__records_5_devs" {
  user   = aws_iam_user.wen_larsen.name
  groups = [aws_iam_group.records_5_devs.name]
}

resource "aws_iam_user" "wen_lopez" {
  name = "hextri-1bmol0-wen.lopez"
}

resource "aws_iam_user_login_profile" "wen_lopez" {
  user                    = aws_iam_user.wen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_lopez__citizen_portal_2_devs" {
  user   = aws_iam_user.wen_lopez.name
  groups = [aws_iam_group.citizen_portal_2_devs.name]
}

resource "aws_iam_user" "wen_miller" {
  name = "hextri-1bmol0-wen.miller"
}

resource "aws_iam_user_group_membership" "wen_miller__public_safety_6_devs" {
  user   = aws_iam_user.wen_miller.name
  groups = [aws_iam_group.public_safety_6_devs.name]
}

resource "aws_iam_user" "wen_nguyen" {
  name = "hextri-1bmol0-wen.nguyen"
}

resource "aws_iam_user_group_membership" "wen_nguyen__procurement_2_devs" {
  user   = aws_iam_user.wen_nguyen.name
  groups = [aws_iam_group.procurement_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "wen_nguyen__base_readonly" {
  user       = aws_iam_user.wen_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_novak" {
  name = "hextri-1bmol0-wen.novak"
}

resource "aws_iam_user_group_membership" "wen_novak__tax_7_analysts" {
  user   = aws_iam_user.wen_novak.name
  groups = [aws_iam_group.tax_7_analysts.name]
}

resource "aws_iam_user_policy_attachment" "wen_novak__base_readonly" {
  user       = aws_iam_user.wen_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_okafor" {
  name = "hextri-1bmol0-wen.okafor"
}

resource "aws_iam_user_login_profile" "wen_okafor" {
  user                    = aws_iam_user.wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_okafor__procurement_devs" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.procurement_devs.name]
}

resource "aws_iam_user" "wen_silva" {
  name = "hextri-1bmol0-wen.silva"
}

resource "aws_iam_user_login_profile" "wen_silva" {
  user                    = aws_iam_user.wen_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_silva__benefits_4_devs" {
  user   = aws_iam_user.wen_silva.name
  groups = [aws_iam_group.benefits_4_devs.name]
}

resource "aws_iam_user" "wen_singh" {
  name = "hextri-1bmol0-wen.singh"
}

resource "aws_iam_user_group_membership" "wen_singh__public_safety_7_devs" {
  user   = aws_iam_user.wen_singh.name
  groups = [aws_iam_group.public_safety_7_devs.name]
}

resource "aws_iam_user" "wen_smith" {
  name = "hextri-1bmol0-wen.smith"
}

resource "aws_iam_user_login_profile" "wen_smith" {
  user                    = aws_iam_user.wen_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_smith__gis_6_devs" {
  user   = aws_iam_user.wen_smith.name
  groups = [aws_iam_group.gis_6_devs.name]
}

resource "aws_iam_user" "xia_chen" {
  name = "hextri-1bmol0-xia.chen"
}

resource "aws_iam_user_login_profile" "xia_chen" {
  user                    = aws_iam_user.xia_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_chen__records_4_devs" {
  user   = aws_iam_user.xia_chen.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "xia_cohen" {
  name = "hextri-1bmol0-xia.cohen"
}

resource "aws_iam_user_login_profile" "xia_cohen" {
  user                    = aws_iam_user.xia_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_cohen__gis_7_devs" {
  user   = aws_iam_user.xia_cohen.name
  groups = [aws_iam_group.gis_7_devs.name]
}

resource "aws_iam_user" "xia_cohen5123" {
  name = "hextri-1bmol0-xia.cohen5123"
}

resource "aws_iam_user_login_profile" "xia_cohen5123" {
  user                    = aws_iam_user.xia_cohen5123.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_cohen5123__licensing_analysts" {
  user   = aws_iam_user.xia_cohen5123.name
  groups = [aws_iam_group.licensing_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_cohen5123__procurement_analysts" {
  user   = aws_iam_user.xia_cohen5123.name
  groups = [aws_iam_group.procurement_analysts.name]
}

resource "aws_iam_user" "xia_garcia" {
  name = "hextri-1bmol0-xia.garcia"
}

resource "aws_iam_user_login_profile" "xia_garcia" {
  user                    = aws_iam_user.xia_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia__tax_4_devs" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.tax_4_devs.name]
}

resource "aws_iam_user" "xia_khan" {
  name = "hextri-1bmol0-xia.khan"
}

resource "aws_iam_user_group_membership" "xia_khan__records_4_devs" {
  user   = aws_iam_user.xia_khan.name
  groups = [aws_iam_group.records_4_devs.name]
}

resource "aws_iam_user" "xia_khan2896" {
  name = "hextri-1bmol0-xia.khan2896"
}

resource "aws_iam_user_login_profile" "xia_khan2896" {
  user                    = aws_iam_user.xia_khan2896.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_khan2896__open_data_4_analysts" {
  user   = aws_iam_user.xia_khan2896.name
  groups = [aws_iam_group.open_data_4_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_khan2896__it_ops_3_analysts" {
  user   = aws_iam_user.xia_khan2896.name
  groups = [aws_iam_group.it_ops_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "xia_khan2896__base_readonly" {
  user       = aws_iam_user.xia_khan2896.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "xia_kim" {
  name = "hextri-1bmol0-xia.kim"
}

resource "aws_iam_user_group_membership" "xia_kim__open_data_2_analysts" {
  user   = aws_iam_user.xia_kim.name
  groups = [aws_iam_group.open_data_2_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_kim__licensing_4_analysts" {
  user   = aws_iam_user.xia_kim.name
  groups = [aws_iam_group.licensing_4_analysts.name]
}

resource "aws_iam_user" "xia_nguyen" {
  name = "hextri-1bmol0-xia.nguyen"
}

resource "aws_iam_user_login_profile" "xia_nguyen" {
  user                    = aws_iam_user.xia_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_nguyen__public_safety_3_analysts" {
  user   = aws_iam_user.xia_nguyen.name
  groups = [aws_iam_group.public_safety_3_analysts.name]
}

resource "aws_iam_user" "xia_novak" {
  name = "hextri-1bmol0-xia.novak"
}

resource "aws_iam_user_login_profile" "xia_novak" {
  user                    = aws_iam_user.xia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_novak__open_data_3_devs" {
  user   = aws_iam_user.xia_novak.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user_group_membership" "xia_novak__tax_4_analysts" {
  user   = aws_iam_user.xia_novak.name
  groups = [aws_iam_group.tax_4_analysts.name]
}

resource "aws_iam_user" "xia_patel" {
  name = "hextri-1bmol0-xia.patel"
}

resource "aws_iam_user_login_profile" "xia_patel" {
  user                    = aws_iam_user.xia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_patel__benefits_3_devs" {
  user   = aws_iam_user.xia_patel.name
  groups = [aws_iam_group.benefits_3_devs.name]
}

resource "aws_iam_user_group_membership" "xia_patel__it_ops_4_analysts" {
  user   = aws_iam_user.xia_patel.name
  groups = [aws_iam_group.it_ops_4_analysts.name]
}

resource "aws_iam_user" "xia_tanaka" {
  name = "hextri-1bmol0-xia.tanaka"
}

resource "aws_iam_user_login_profile" "xia_tanaka" {
  user                    = aws_iam_user.xia_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_tanaka__open_data_3_devs" {
  user   = aws_iam_user.xia_tanaka.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user" "yara_brown" {
  name = "hextri-1bmol0-yara.brown"
}

resource "aws_iam_user_login_profile" "yara_brown" {
  user                    = aws_iam_user.yara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_brown__citizen_portal_devs" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user" "yara_davis" {
  name = "hextri-1bmol0-yara.davis"
}

resource "aws_iam_user_login_profile" "yara_davis" {
  user                    = aws_iam_user.yara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_davis__licensing_6_devs" {
  user   = aws_iam_user.yara_davis.name
  groups = [aws_iam_group.licensing_6_devs.name]
}

resource "aws_iam_user" "yara_jones" {
  name = "hextri-1bmol0-yara.jones"
}

resource "aws_iam_user_group_membership" "yara_jones__benefits_3_analysts" {
  user   = aws_iam_user.yara_jones.name
  groups = [aws_iam_group.benefits_3_analysts.name]
}

resource "aws_iam_user" "yara_khan" {
  name = "hextri-1bmol0-yara.khan"
}

resource "aws_iam_user_login_profile" "yara_khan" {
  user                    = aws_iam_user.yara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_khan__procurement_7_devs" {
  user   = aws_iam_user.yara_khan.name
  groups = [aws_iam_group.procurement_7_devs.name]
}

resource "aws_iam_user" "yara_larsen" {
  name = "hextri-1bmol0-yara.larsen"
}

resource "aws_iam_user_login_profile" "yara_larsen" {
  user                    = aws_iam_user.yara_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_larsen__open_data_2_devs" {
  user   = aws_iam_user.yara_larsen.name
  groups = [aws_iam_group.open_data_2_devs.name]
}

resource "aws_iam_user" "yara_rossi" {
  name = "hextri-1bmol0-yara.rossi"
}

resource "aws_iam_user_login_profile" "yara_rossi" {
  user                    = aws_iam_user.yara_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_rossi__audit_3_devs" {
  user   = aws_iam_user.yara_rossi.name
  groups = [aws_iam_group.audit_3_devs.name]
}

resource "aws_iam_user_group_membership" "yara_rossi__audit_5_analysts" {
  user   = aws_iam_user.yara_rossi.name
  groups = [aws_iam_group.audit_5_analysts.name]
}

resource "aws_iam_user" "yara_rossi5371" {
  name = "hextri-1bmol0-yara.rossi5371"
}

resource "aws_iam_user_login_profile" "yara_rossi5371" {
  user                    = aws_iam_user.yara_rossi5371.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_rossi5371__public_safety_5_devs" {
  user   = aws_iam_user.yara_rossi5371.name
  groups = [aws_iam_group.public_safety_5_devs.name]
}

resource "aws_iam_user" "yara_rossi8681" {
  name = "hextri-1bmol0-yara.rossi8681"
}

resource "aws_iam_user_login_profile" "yara_rossi8681" {
  user                    = aws_iam_user.yara_rossi8681.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_rossi8681__hr_4_devs" {
  user   = aws_iam_user.yara_rossi8681.name
  groups = [aws_iam_group.hr_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "yara_rossi8681__base_readonly" {
  user       = aws_iam_user.yara_rossi8681.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_khan" {
  name = "hextri-1bmol0-zed.khan"
}

resource "aws_iam_user_login_profile" "zed_khan" {
  user                    = aws_iam_user.zed_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_khan__open_data_3_devs" {
  user   = aws_iam_user.zed_khan.name
  groups = [aws_iam_group.open_data_3_devs.name]
}

resource "aws_iam_user_group_membership" "zed_khan__tax_4_analysts" {
  user   = aws_iam_user.zed_khan.name
  groups = [aws_iam_group.tax_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "zed_khan__base_readonly" {
  user       = aws_iam_user.zed_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_khan3295" {
  name = "hextri-1bmol0-zed.khan3295"
}

resource "aws_iam_user_login_profile" "zed_khan3295" {
  user                    = aws_iam_user.zed_khan3295.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_khan3295__audit_devs" {
  user   = aws_iam_user.zed_khan3295.name
  groups = [aws_iam_group.audit_devs.name]
}

resource "aws_iam_user" "zed_patel" {
  name = "hextri-1bmol0-zed.patel"
}

resource "aws_iam_user_login_profile" "zed_patel" {
  user                    = aws_iam_user.zed_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel__licensing_devs" {
  user   = aws_iam_user.zed_patel.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "zed_reddy" {
  name = "hextri-1bmol0-zed.reddy"
}

resource "aws_iam_user_group_membership" "zed_reddy__it_ops_2_devs" {
  user   = aws_iam_user.zed_reddy.name
  groups = [aws_iam_group.it_ops_2_devs.name]
}

resource "aws_iam_user" "zed_reddy6869" {
  name = "hextri-1bmol0-zed.reddy6869"
}

resource "aws_iam_user_group_membership" "zed_reddy6869__hr_5_analysts" {
  user   = aws_iam_user.zed_reddy6869.name
  groups = [aws_iam_group.hr_5_analysts.name]
}

resource "aws_iam_user_group_membership" "zed_reddy6869__audit_2_analysts" {
  user   = aws_iam_user.zed_reddy6869.name
  groups = [aws_iam_group.audit_2_analysts.name]
}

resource "aws_iam_user" "zed_singh" {
  name = "hextri-1bmol0-zed.singh"
}

resource "aws_iam_user_login_profile" "zed_singh" {
  user                    = aws_iam_user.zed_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_singh__licensing_4_devs" {
  user   = aws_iam_user.zed_singh.name
  groups = [aws_iam_group.licensing_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_singh__base_readonly" {
  user       = aws_iam_user.zed_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_smith" {
  name = "hextri-1bmol0-zed.smith"
}

resource "aws_iam_user_login_profile" "zed_smith" {
  user                    = aws_iam_user.zed_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_smith__open_data_4_devs" {
  user   = aws_iam_user.zed_smith.name
  groups = [aws_iam_group.open_data_4_devs.name]
}

resource "aws_iam_user" "zed_smith3547" {
  name = "hextri-1bmol0-zed.smith3547"
}

resource "aws_iam_user_login_profile" "zed_smith3547" {
  user                    = aws_iam_user.zed_smith3547.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_smith3547__public_safety_devs" {
  user   = aws_iam_user.zed_smith3547.name
  groups = [aws_iam_group.public_safety_devs.name]
}

resource "aws_iam_user" "zed_smith8577" {
  name = "hextri-1bmol0-zed.smith8577"
}

resource "aws_iam_user_login_profile" "zed_smith8577" {
  user                    = aws_iam_user.zed_smith8577.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_smith8577__gis_2_analysts" {
  user   = aws_iam_user.zed_smith8577.name
  groups = [aws_iam_group.gis_2_analysts.name]
}

resource "aws_iam_user" "zed_wong" {
  name = "hextri-1bmol0-zed.wong"
}

resource "aws_iam_user_login_profile" "zed_wong" {
  user                    = aws_iam_user.zed_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_wong__hr_6_devs" {
  user   = aws_iam_user.zed_wong.name
  groups = [aws_iam_group.hr_6_devs.name]
}
