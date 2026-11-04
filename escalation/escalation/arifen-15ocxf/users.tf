resource "aws_iam_user" "adm_alice_novak" {
  name = "arifen-15ocxf-adm-alice.novak"
}

resource "aws_iam_user_login_profile" "adm_alice_novak" {
  user                    = aws_iam_user.adm_alice_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_alice_novak__platform_admins" {
  user   = aws_iam_user.adm_alice_novak.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_karl_smith" {
  name = "arifen-15ocxf-adm-karl.smith"
}

resource "aws_iam_user_login_profile" "adm_karl_smith" {
  user                    = aws_iam_user.adm_karl_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_karl_smith__platform_admins" {
  user   = aws_iam_user.adm_karl_smith.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_leo_chen" {
  name = "arifen-15ocxf-adm-leo.chen"
}

resource "aws_iam_user_login_profile" "adm_leo_chen" {
  user                    = aws_iam_user.adm_leo_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_leo_chen__platform_admins" {
  user   = aws_iam_user.adm_leo_chen.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_jones" {
  name = "arifen-15ocxf-alice.jones"
}

resource "aws_iam_user_login_profile" "alice_jones" {
  user                    = aws_iam_user.alice_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_jones__analytics_2_analysts" {
  user   = aws_iam_user.alice_jones.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "alice_reddy" {
  name = "arifen-15ocxf-alice.reddy"
}

resource "aws_iam_user_login_profile" "alice_reddy" {
  user                    = aws_iam_user.alice_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_reddy__patient_portal_2_devs" {
  user   = aws_iam_user.alice_reddy.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_reddy__inj_pol_p10" {
  user       = aws_iam_user.alice_reddy.name
  policy_arn = aws_iam_policy.inj_pol_p10.arn
}

resource "aws_iam_user" "alice_wong" {
  name = "arifen-15ocxf-alice.wong"
}

resource "aws_iam_user_group_membership" "alice_wong__analytics_2_analysts" {
  user   = aws_iam_user.alice_wong.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "amit_chen" {
  name = "arifen-15ocxf-amit.chen"
}

resource "aws_iam_user_login_profile" "amit_chen" {
  user                    = aws_iam_user.amit_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_chen__pharmacy_2_analysts" {
  user   = aws_iam_user.amit_chen.name
  groups = [aws_iam_group.pharmacy_2_analysts.name]
}

resource "aws_iam_user" "amit_davis" {
  name = "arifen-15ocxf-amit.davis"
}

resource "aws_iam_user_login_profile" "amit_davis" {
  user                    = aws_iam_user.amit_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_davis__claims_devs" {
  user   = aws_iam_user.amit_davis.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user" "amit_larsen" {
  name = "arifen-15ocxf-amit.larsen"
}

resource "aws_iam_user_group_membership" "amit_larsen__research_2_analysts" {
  user   = aws_iam_user.amit_larsen.name
  groups = [aws_iam_group.research_2_analysts.name]
}

resource "aws_iam_user" "amit_patel" {
  name = "arifen-15ocxf-amit.patel"
}

resource "aws_iam_user_login_profile" "amit_patel" {
  user                    = aws_iam_user.amit_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_patel__telehealth_devs" {
  user   = aws_iam_user.amit_patel.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "bela_mehta" {
  name = "arifen-15ocxf-bela.mehta"
}

resource "aws_iam_user_login_profile" "bela_mehta" {
  user                    = aws_iam_user.bela_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_mehta__research_analysts" {
  user   = aws_iam_user.bela_mehta.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user_group_membership" "bela_mehta__patient_portal_analysts" {
  user   = aws_iam_user.bela_mehta.name
  groups = [aws_iam_group.patient_portal_analysts.name]
}

resource "aws_iam_user" "bela_nguyen" {
  name = "arifen-15ocxf-bela.nguyen"
}

resource "aws_iam_user_login_profile" "bela_nguyen" {
  user                    = aws_iam_user.bela_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_nguyen__pharmacy_2_analysts" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.pharmacy_2_analysts.name]
}

resource "aws_iam_user_group_membership" "bela_nguyen__analytics_2_analysts" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "bela_nguyen__base_readonly" {
  user       = aws_iam_user.bela_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_cohen" {
  name = "arifen-15ocxf-carol.cohen"
}

resource "aws_iam_user_group_membership" "carol_cohen__analytics_2_devs" {
  user   = aws_iam_user.carol_cohen.name
  groups = [aws_iam_group.analytics_2_devs.name]
}

resource "aws_iam_user" "chen_haddad" {
  name = "arifen-15ocxf-chen.haddad"
}

resource "aws_iam_user_login_profile" "chen_haddad" {
  user                    = aws_iam_user.chen_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_haddad__compliance_2_devs" {
  user   = aws_iam_user.chen_haddad.name
  groups = [aws_iam_group.compliance_2_devs.name]
}

resource "aws_iam_user" "chen_novak" {
  name = "arifen-15ocxf-chen.novak"
}

resource "aws_iam_user_group_membership" "chen_novak__lab_systems_devs" {
  user   = aws_iam_user.chen_novak.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "chen_reddy" {
  name = "arifen-15ocxf-chen.reddy"
}

resource "aws_iam_user_login_profile" "chen_reddy" {
  user                    = aws_iam_user.chen_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_reddy__lab_systems_devs" {
  user   = aws_iam_user.chen_reddy.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "chen_reddy7712" {
  name = "arifen-15ocxf-chen.reddy7712"
}

resource "aws_iam_user_login_profile" "chen_reddy7712" {
  user                    = aws_iam_user.chen_reddy7712.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_reddy7712__imaging_2_devs" {
  user   = aws_iam_user.chen_reddy7712.name
  groups = [aws_iam_group.imaging_2_devs.name]
}

resource "aws_iam_user" "chen_tanaka" {
  name = "arifen-15ocxf-chen.tanaka"
}

resource "aws_iam_user_login_profile" "chen_tanaka" {
  user                    = aws_iam_user.chen_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_tanaka__compliance_2_analysts" {
  user   = aws_iam_user.chen_tanaka.name
  groups = [aws_iam_group.compliance_2_analysts.name]
}

resource "aws_iam_user_group_membership" "chen_tanaka__imaging_analysts" {
  user   = aws_iam_user.chen_tanaka.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "chen_wong" {
  name = "arifen-15ocxf-chen.wong"
}

resource "aws_iam_user_login_profile" "chen_wong" {
  user                    = aws_iam_user.chen_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_wong__billing_analysts" {
  user   = aws_iam_user.chen_wong.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "chen_wong7709" {
  name = "arifen-15ocxf-chen.wong7709"
}

resource "aws_iam_user_login_profile" "chen_wong7709" {
  user                    = aws_iam_user.chen_wong7709.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_wong7709__clinical_data_analysts" {
  user   = aws_iam_user.chen_wong7709.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "chen_wong7709__telehealth_2_analysts" {
  user   = aws_iam_user.chen_wong7709.name
  groups = [aws_iam_group.telehealth_2_analysts.name]
}

resource "aws_iam_user" "dara_dubois" {
  name = "arifen-15ocxf-dara.dubois"
}

resource "aws_iam_user_group_membership" "dara_dubois__compliance_analysts" {
  user   = aws_iam_user.dara_dubois.name
  groups = [aws_iam_group.compliance_analysts.name]
}

resource "aws_iam_user" "dara_muller" {
  name = "arifen-15ocxf-dara.muller"
}

resource "aws_iam_user_login_profile" "dara_muller" {
  user                    = aws_iam_user.dara_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_muller__patient_portal_devs" {
  user   = aws_iam_user.dara_muller.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "dave_khan" {
  name = "arifen-15ocxf-dave.khan"
}

resource "aws_iam_user_login_profile" "dave_khan" {
  user                    = aws_iam_user.dave_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_khan__billing_devs" {
  user   = aws_iam_user.dave_khan.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "dave_kim" {
  name = "arifen-15ocxf-dave.kim"
}

resource "aws_iam_user_login_profile" "dave_kim" {
  user                    = aws_iam_user.dave_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_kim__imaging_devs" {
  user   = aws_iam_user.dave_kim.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "dave_okafor" {
  name = "arifen-15ocxf-dave.okafor"
}

resource "aws_iam_user_group_membership" "dave_okafor__imaging_devs" {
  user   = aws_iam_user.dave_okafor.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "eli_ali" {
  name = "arifen-15ocxf-eli.ali"
}

resource "aws_iam_user_group_membership" "eli_ali__pharmacy_2_analysts" {
  user   = aws_iam_user.eli_ali.name
  groups = [aws_iam_group.pharmacy_2_analysts.name]
}

resource "aws_iam_user" "erin_cohen" {
  name = "arifen-15ocxf-erin.cohen"
}

resource "aws_iam_user_login_profile" "erin_cohen" {
  user                    = aws_iam_user.erin_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_cohen__billing_2_devs" {
  user   = aws_iam_user.erin_cohen.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_cohen__base_readonly" {
  user       = aws_iam_user.erin_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_miller" {
  name = "arifen-15ocxf-erin.miller"
}

resource "aws_iam_user_login_profile" "erin_miller" {
  user                    = aws_iam_user.erin_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_miller__scheduling_devs" {
  user   = aws_iam_user.erin_miller.name
  groups = [aws_iam_group.scheduling_devs.name]
}

resource "aws_iam_user_group_membership" "erin_miller__imaging_2_analysts" {
  user   = aws_iam_user.erin_miller.name
  groups = [aws_iam_group.imaging_2_analysts.name]
}

resource "aws_iam_user" "erin_silva" {
  name = "arifen-15ocxf-erin.silva"
}

resource "aws_iam_user_login_profile" "erin_silva" {
  user                    = aws_iam_user.erin_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_silva__research_devs" {
  user   = aws_iam_user.erin_silva.name
  groups = [aws_iam_group.research_devs.name]
}

resource "aws_iam_user" "ext_bela_sato" {
  name = "arifen-15ocxf-ext-bela.sato"
}

resource "aws_iam_user_login_profile" "ext_bela_sato" {
  user                    = aws_iam_user.ext_bela_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_sato__contractors" {
  user   = aws_iam_user.ext_bela_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_chen_muller" {
  name = "arifen-15ocxf-ext-chen.muller"
}

resource "aws_iam_user_login_profile" "ext_chen_muller" {
  user                    = aws_iam_user.ext_chen_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_muller__contractors" {
  user   = aws_iam_user.ext_chen_muller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_muller__patient_portal_analysts" {
  user   = aws_iam_user.ext_chen_muller.name
  groups = [aws_iam_group.patient_portal_analysts.name]
}

resource "aws_iam_user" "ext_chen_okafor" {
  name = "arifen-15ocxf-ext-chen.okafor"
}

resource "aws_iam_user_login_profile" "ext_chen_okafor" {
  user                    = aws_iam_user.ext_chen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_okafor__contractors" {
  user   = aws_iam_user.ext_chen_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_davis" {
  name = "arifen-15ocxf-ext-judy.davis"
}

resource "aws_iam_user_login_profile" "ext_judy_davis" {
  user                    = aws_iam_user.ext_judy_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_davis__contractors" {
  user   = aws_iam_user.ext_judy_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_jun_jones" {
  name = "arifen-15ocxf-ext-jun.jones"
}

resource "aws_iam_user_login_profile" "ext_jun_jones" {
  user                    = aws_iam_user.ext_jun_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_jones__contractors" {
  user   = aws_iam_user.ext_jun_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_karl_miller" {
  name = "arifen-15ocxf-ext-karl.miller"
}

resource "aws_iam_user_login_profile" "ext_karl_miller" {
  user                    = aws_iam_user.ext_karl_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_miller__contractors" {
  user   = aws_iam_user.ext_karl_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_leo_nguyen" {
  name = "arifen-15ocxf-ext-leo.nguyen"
}

resource "aws_iam_user_login_profile" "ext_leo_nguyen" {
  user                    = aws_iam_user.ext_leo_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_nguyen__contractors" {
  user   = aws_iam_user.ext_leo_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_leo_nguyen__billing_2_analysts" {
  user   = aws_iam_user.ext_leo_nguyen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "ext_raj_singh" {
  name = "arifen-15ocxf-ext-raj.singh"
}

resource "aws_iam_user_login_profile" "ext_raj_singh" {
  user                    = aws_iam_user.ext_raj_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_singh__contractors" {
  user   = aws_iam_user.ext_raj_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_singh__telehealth_2_analysts" {
  user   = aws_iam_user.ext_raj_singh.name
  groups = [aws_iam_group.telehealth_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p1" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p1.arn
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p2" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p4" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p5" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p7" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_user_policy_attachment" "ext_raj_singh__inj_pol_p8" {
  user       = aws_iam_user.ext_raj_singh.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_user" "ext_sara_wong" {
  name = "arifen-15ocxf-ext-sara.wong"
}

resource "aws_iam_user_login_profile" "ext_sara_wong" {
  user                    = aws_iam_user.ext_sara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_wong__contractors" {
  user   = aws_iam_user.ext_sara_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_xia_haddad" {
  name = "arifen-15ocxf-ext-xia.haddad"
}

resource "aws_iam_user_login_profile" "ext_xia_haddad" {
  user                    = aws_iam_user.ext_xia_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_haddad__contractors" {
  user   = aws_iam_user.ext_xia_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_xia_haddad__patient_portal_2_analysts" {
  user   = aws_iam_user.ext_xia_haddad.name
  groups = [aws_iam_group.patient_portal_2_analysts.name]
}

resource "aws_iam_user" "ext_yara_novak" {
  name = "arifen-15ocxf-ext-yara.novak"
}

resource "aws_iam_user_login_profile" "ext_yara_novak" {
  user                    = aws_iam_user.ext_yara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_novak__contractors" {
  user   = aws_iam_user.ext_yara_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_yara_novak__claims_analysts" {
  user   = aws_iam_user.ext_yara_novak.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "ext_yara_tanaka" {
  name = "arifen-15ocxf-ext-yara.tanaka"
}

resource "aws_iam_user_login_profile" "ext_yara_tanaka" {
  user                    = aws_iam_user.ext_yara_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_tanaka__contractors" {
  user   = aws_iam_user.ext_yara_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_miller" {
  name = "arifen-15ocxf-fay.miller"
}

resource "aws_iam_user_login_profile" "fay_miller" {
  user                    = aws_iam_user.fay_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_miller__imaging_2_analysts" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.imaging_2_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_miller__compliance_2_analysts" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.compliance_2_analysts.name]
}

resource "aws_iam_user" "fay_reddy" {
  name = "arifen-15ocxf-fay.reddy"
}

resource "aws_iam_user_login_profile" "fay_reddy" {
  user                    = aws_iam_user.fay_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy__billing_2_devs" {
  user   = aws_iam_user.fay_reddy.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "fay_sato" {
  name = "arifen-15ocxf-fay.sato"
}

resource "aws_iam_user_login_profile" "fay_sato" {
  user                    = aws_iam_user.fay_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_sato__claims_devs" {
  user   = aws_iam_user.fay_sato.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user_policy_attachment" "fay_sato__base_readonly" {
  user       = aws_iam_user.fay_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_chen" {
  name = "arifen-15ocxf-frank.chen"
}

resource "aws_iam_user_login_profile" "frank_chen" {
  user                    = aws_iam_user.frank_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_chen__clinical_data_2_devs" {
  user   = aws_iam_user.frank_chen.name
  groups = [aws_iam_group.clinical_data_2_devs.name]
}

resource "aws_iam_user" "frank_chen132" {
  name = "arifen-15ocxf-frank.chen132"
}

resource "aws_iam_user_login_profile" "frank_chen132" {
  user                    = aws_iam_user.frank_chen132.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_chen132__scheduling_2_analysts" {
  user   = aws_iam_user.frank_chen132.name
  groups = [aws_iam_group.scheduling_2_analysts.name]
}

resource "aws_iam_user" "frank_mehta" {
  name = "arifen-15ocxf-frank.mehta"
}

resource "aws_iam_user_login_profile" "frank_mehta" {
  user                    = aws_iam_user.frank_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_mehta__compliance_2_devs" {
  user   = aws_iam_user.frank_mehta.name
  groups = [aws_iam_group.compliance_2_devs.name]
}

resource "aws_iam_user_group_membership" "frank_mehta__imaging_analysts" {
  user   = aws_iam_user.frank_mehta.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "frank_reddy" {
  name = "arifen-15ocxf-frank.reddy"
}

resource "aws_iam_user_login_profile" "frank_reddy" {
  user                    = aws_iam_user.frank_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_reddy__analytics_2_analysts" {
  user   = aws_iam_user.frank_reddy.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "frank_sato" {
  name = "arifen-15ocxf-frank.sato"
}

resource "aws_iam_user_login_profile" "frank_sato" {
  user                    = aws_iam_user.frank_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_sato__pharmacy_2_analysts" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.pharmacy_2_analysts.name]
}

resource "aws_iam_user" "frank_singh" {
  name = "arifen-15ocxf-frank.singh"
}

resource "aws_iam_user_login_profile" "frank_singh" {
  user                    = aws_iam_user.frank_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_singh__research_analysts" {
  user   = aws_iam_user.frank_singh.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user" "grace_lopez" {
  name = "arifen-15ocxf-grace.lopez"
}

resource "aws_iam_user_login_profile" "grace_lopez" {
  user                    = aws_iam_user.grace_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_lopez__compliance_2_devs" {
  user   = aws_iam_user.grace_lopez.name
  groups = [aws_iam_group.compliance_2_devs.name]
}

resource "aws_iam_user" "grace_patel" {
  name = "arifen-15ocxf-grace.patel"
}

resource "aws_iam_user_login_profile" "grace_patel" {
  user                    = aws_iam_user.grace_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_patel__clinical_data_2_analysts" {
  user   = aws_iam_user.grace_patel.name
  groups = [aws_iam_group.clinical_data_2_analysts.name]
}

resource "aws_iam_user" "grace_smith" {
  name = "arifen-15ocxf-grace.smith"
}

resource "aws_iam_user_login_profile" "grace_smith" {
  user                    = aws_iam_user.grace_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_smith__claims_2_devs" {
  user   = aws_iam_user.grace_smith.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user_group_membership" "grace_smith__analytics_analysts" {
  user   = aws_iam_user.grace_smith.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user_policy_attachment" "grace_smith__inj_pol_p9" {
  user       = aws_iam_user.grace_smith.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_user" "grace_wong" {
  name = "arifen-15ocxf-grace.wong"
}

resource "aws_iam_user_login_profile" "grace_wong" {
  user                    = aws_iam_user.grace_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_wong__clinical_data_2_devs" {
  user   = aws_iam_user.grace_wong.name
  groups = [aws_iam_group.clinical_data_2_devs.name]
}

resource "aws_iam_user" "gus_garcia" {
  name = "arifen-15ocxf-gus.garcia"
}

resource "aws_iam_user_group_membership" "gus_garcia__analytics_devs" {
  user   = aws_iam_user.gus_garcia.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "gus_tanaka" {
  name = "arifen-15ocxf-gus.tanaka"
}

resource "aws_iam_user_login_profile" "gus_tanaka" {
  user                    = aws_iam_user.gus_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_tanaka__research_2_devs" {
  user   = aws_iam_user.gus_tanaka.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user_group_membership" "gus_tanaka__imaging_analysts" {
  user   = aws_iam_user.gus_tanaka.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "hana_larsen" {
  name = "arifen-15ocxf-hana.larsen"
}

resource "aws_iam_user_login_profile" "hana_larsen" {
  user                    = aws_iam_user.hana_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_larsen__telehealth_devs" {
  user   = aws_iam_user.hana_larsen.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "hana_lopez" {
  name = "arifen-15ocxf-hana.lopez"
}

resource "aws_iam_user_login_profile" "hana_lopez" {
  user                    = aws_iam_user.hana_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_lopez__pharmacy_devs" {
  user   = aws_iam_user.hana_lopez.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user" "hana_smith" {
  name = "arifen-15ocxf-hana.smith"
}

resource "aws_iam_user_login_profile" "hana_smith" {
  user                    = aws_iam_user.hana_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_smith__claims_analysts" {
  user   = aws_iam_user.hana_smith.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "heidi_wong" {
  name = "arifen-15ocxf-heidi.wong"
}

resource "aws_iam_user_login_profile" "heidi_wong" {
  user                    = aws_iam_user.heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_wong__claims_analysts" {
  user   = aws_iam_user.heidi_wong.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "ian_khan" {
  name = "arifen-15ocxf-ian.khan"
}

resource "aws_iam_user_login_profile" "ian_khan" {
  user                    = aws_iam_user.ian_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_khan__billing_2_devs" {
  user   = aws_iam_user.ian_khan.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "ian_rossi" {
  name = "arifen-15ocxf-ian.rossi"
}

resource "aws_iam_user_login_profile" "ian_rossi" {
  user                    = aws_iam_user.ian_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_rossi__billing_devs" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_group_membership" "ian_rossi__analytics_analysts" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "ivan_kim" {
  name = "arifen-15ocxf-ivan.kim"
}

resource "aws_iam_user_group_membership" "ivan_kim__analytics_devs" {
  user   = aws_iam_user.ivan_kim.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_kim__analytics_analysts" {
  user   = aws_iam_user.ivan_kim.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "ivan_smith" {
  name = "arifen-15ocxf-ivan.smith"
}

resource "aws_iam_user_login_profile" "ivan_smith" {
  user                    = aws_iam_user.ivan_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_smith__research_2_analysts" {
  user   = aws_iam_user.ivan_smith.name
  groups = [aws_iam_group.research_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ivan_smith__base_readonly" {
  user       = aws_iam_user.ivan_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "judy_brown" {
  name = "arifen-15ocxf-judy.brown"
}

resource "aws_iam_user_login_profile" "judy_brown" {
  user                    = aws_iam_user.judy_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_brown__pharmacy_2_devs" {
  user   = aws_iam_user.judy_brown.name
  groups = [aws_iam_group.pharmacy_2_devs.name]
}

resource "aws_iam_user" "judy_haddad" {
  name = "arifen-15ocxf-judy.haddad"
}

resource "aws_iam_user_login_profile" "judy_haddad" {
  user                    = aws_iam_user.judy_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_haddad__clinical_data_2_devs" {
  user   = aws_iam_user.judy_haddad.name
  groups = [aws_iam_group.clinical_data_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "judy_haddad__base_readonly" {
  user       = aws_iam_user.judy_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "judy_haddad6532" {
  name = "arifen-15ocxf-judy.haddad6532"
}

resource "aws_iam_user_login_profile" "judy_haddad6532" {
  user                    = aws_iam_user.judy_haddad6532.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_haddad6532__analytics_analysts" {
  user   = aws_iam_user.judy_haddad6532.name
  groups = [aws_iam_group.analytics_analysts.name]
}

resource "aws_iam_user" "judy_jones" {
  name = "arifen-15ocxf-judy.jones"
}

resource "aws_iam_user_login_profile" "judy_jones" {
  user                    = aws_iam_user.judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_jones__imaging_2_analysts" {
  user   = aws_iam_user.judy_jones.name
  groups = [aws_iam_group.imaging_2_analysts.name]
}

resource "aws_iam_user" "judy_novak" {
  name = "arifen-15ocxf-judy.novak"
}

resource "aws_iam_user_login_profile" "judy_novak" {
  user                    = aws_iam_user.judy_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_novak__pharmacy_devs" {
  user   = aws_iam_user.judy_novak.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user_group_membership" "judy_novak__analytics_2_analysts" {
  user   = aws_iam_user.judy_novak.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "judy_wong" {
  name = "arifen-15ocxf-judy.wong"
}

resource "aws_iam_user_login_profile" "judy_wong" {
  user                    = aws_iam_user.judy_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_wong__telehealth_analysts" {
  user   = aws_iam_user.judy_wong.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "jun_cohen" {
  name = "arifen-15ocxf-jun.cohen"
}

resource "aws_iam_user_login_profile" "jun_cohen" {
  user                    = aws_iam_user.jun_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_cohen__billing_devs" {
  user   = aws_iam_user.jun_cohen.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_group_membership" "jun_cohen__compliance_2_analysts" {
  user   = aws_iam_user.jun_cohen.name
  groups = [aws_iam_group.compliance_2_analysts.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "arifen-15ocxf-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__analytics_devs" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_dubois__base_readonly" {
  user       = aws_iam_user.jun_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_dubois243" {
  name = "arifen-15ocxf-jun.dubois243"
}

resource "aws_iam_user_login_profile" "jun_dubois243" {
  user                    = aws_iam_user.jun_dubois243.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois243__compliance_devs" {
  user   = aws_iam_user.jun_dubois243.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user" "jun_novak" {
  name = "arifen-15ocxf-jun.novak"
}

resource "aws_iam_user_login_profile" "jun_novak" {
  user                    = aws_iam_user.jun_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_novak__compliance_devs" {
  user   = aws_iam_user.jun_novak.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user" "jun_novak5250" {
  name = "arifen-15ocxf-jun.novak5250"
}

resource "aws_iam_user_login_profile" "jun_novak5250" {
  user                    = aws_iam_user.jun_novak5250.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_novak5250__claims_2_devs" {
  user   = aws_iam_user.jun_novak5250.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user" "jun_silva" {
  name = "arifen-15ocxf-jun.silva"
}

resource "aws_iam_user_login_profile" "jun_silva" {
  user                    = aws_iam_user.jun_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_silva__claims_2_devs" {
  user   = aws_iam_user.jun_silva.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user" "karl_davis" {
  name = "arifen-15ocxf-karl.davis"
}

resource "aws_iam_user_group_membership" "karl_davis__telehealth_devs" {
  user   = aws_iam_user.karl_davis.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "karl_silva" {
  name = "arifen-15ocxf-karl.silva"
}

resource "aws_iam_user_login_profile" "karl_silva" {
  user                    = aws_iam_user.karl_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_silva__clinical_data_devs" {
  user   = aws_iam_user.karl_silva.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "karl_tanaka" {
  name = "arifen-15ocxf-karl.tanaka"
}

resource "aws_iam_user_group_membership" "karl_tanaka__scheduling_devs" {
  user   = aws_iam_user.karl_tanaka.name
  groups = [aws_iam_group.scheduling_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_tanaka__base_readonly" {
  user       = aws_iam_user.karl_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_nguyen" {
  name = "arifen-15ocxf-kia.nguyen"
}

resource "aws_iam_user_group_membership" "kia_nguyen__telehealth_devs" {
  user   = aws_iam_user.kia_nguyen.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "lena_cohen" {
  name = "arifen-15ocxf-lena.cohen"
}

resource "aws_iam_user_login_profile" "lena_cohen" {
  user                    = aws_iam_user.lena_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_cohen__billing_2_analysts" {
  user   = aws_iam_user.lena_cohen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "lena_cohen__base_readonly" {
  user       = aws_iam_user.lena_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_khan" {
  name = "arifen-15ocxf-lena.khan"
}

resource "aws_iam_user_login_profile" "lena_khan" {
  user                    = aws_iam_user.lena_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_khan__telehealth_2_devs" {
  user   = aws_iam_user.lena_khan.name
  groups = [aws_iam_group.telehealth_2_devs.name]
}

resource "aws_iam_user" "lena_larsen" {
  name = "arifen-15ocxf-lena.larsen"
}

resource "aws_iam_user_login_profile" "lena_larsen" {
  user                    = aws_iam_user.lena_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen__clinical_data_analysts" {
  user   = aws_iam_user.lena_larsen.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "lena_larsen__compliance_analysts" {
  user   = aws_iam_user.lena_larsen.name
  groups = [aws_iam_group.compliance_analysts.name]
}

resource "aws_iam_user" "lena_miller" {
  name = "arifen-15ocxf-lena.miller"
}

resource "aws_iam_user_login_profile" "lena_miller" {
  user                    = aws_iam_user.lena_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_miller__research_2_devs" {
  user   = aws_iam_user.lena_miller.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user" "lena_okafor" {
  name = "arifen-15ocxf-lena.okafor"
}

resource "aws_iam_user_login_profile" "lena_okafor" {
  user                    = aws_iam_user.lena_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_okafor__clinical_data_2_devs" {
  user   = aws_iam_user.lena_okafor.name
  groups = [aws_iam_group.clinical_data_2_devs.name]
}

resource "aws_iam_user" "leo_brown" {
  name = "arifen-15ocxf-leo.brown"
}

resource "aws_iam_user_login_profile" "leo_brown" {
  user                    = aws_iam_user.leo_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_brown__claims_devs" {
  user   = aws_iam_user.leo_brown.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user_policy_attachment" "leo_brown__base_readonly" {
  user       = aws_iam_user.leo_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_cohen" {
  name = "arifen-15ocxf-leo.cohen"
}

resource "aws_iam_user_login_profile" "leo_cohen" {
  user                    = aws_iam_user.leo_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_cohen__claims_2_devs" {
  user   = aws_iam_user.leo_cohen.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user" "leo_dubois" {
  name = "arifen-15ocxf-leo.dubois"
}

resource "aws_iam_user_login_profile" "leo_dubois" {
  user                    = aws_iam_user.leo_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_dubois__research_2_devs" {
  user   = aws_iam_user.leo_dubois.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user" "mei_garcia" {
  name = "arifen-15ocxf-mei.garcia"
}

resource "aws_iam_user_login_profile" "mei_garcia" {
  user                    = aws_iam_user.mei_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_garcia__imaging_2_devs" {
  user   = aws_iam_user.mei_garcia.name
  groups = [aws_iam_group.imaging_2_devs.name]
}

resource "aws_iam_user_group_membership" "mei_garcia__pharmacy_analysts" {
  user   = aws_iam_user.mei_garcia.name
  groups = [aws_iam_group.pharmacy_analysts.name]
}

resource "aws_iam_user" "mei_smith" {
  name = "arifen-15ocxf-mei.smith"
}

resource "aws_iam_user_group_membership" "mei_smith__research_2_devs" {
  user   = aws_iam_user.mei_smith.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user" "mike_mehta" {
  name = "arifen-15ocxf-mike.mehta"
}

resource "aws_iam_user_login_profile" "mike_mehta" {
  user                    = aws_iam_user.mike_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_mehta__billing_devs" {
  user   = aws_iam_user.mike_mehta.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_policy_attachment" "mike_mehta__base_readonly" {
  user       = aws_iam_user.mike_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_silva" {
  name = "arifen-15ocxf-mike.silva"
}

resource "aws_iam_user_login_profile" "mike_silva" {
  user                    = aws_iam_user.mike_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_silva__telehealth_2_devs" {
  user   = aws_iam_user.mike_silva.name
  groups = [aws_iam_group.telehealth_2_devs.name]
}

resource "aws_iam_user" "nina_silva" {
  name = "arifen-15ocxf-nina.silva"
}

resource "aws_iam_user_login_profile" "nina_silva" {
  user                    = aws_iam_user.nina_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_silva__analytics_devs" {
  user   = aws_iam_user.nina_silva.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user_group_membership" "nina_silva__billing_analysts" {
  user   = aws_iam_user.nina_silva.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "omar_haddad" {
  name = "arifen-15ocxf-omar.haddad"
}

resource "aws_iam_user_login_profile" "omar_haddad" {
  user                    = aws_iam_user.omar_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_haddad__clinical_data_devs" {
  user   = aws_iam_user.omar_haddad.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "omar_kim" {
  name = "arifen-15ocxf-omar.kim"
}

resource "aws_iam_user_login_profile" "omar_kim" {
  user                    = aws_iam_user.omar_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_kim__imaging_2_devs" {
  user   = aws_iam_user.omar_kim.name
  groups = [aws_iam_group.imaging_2_devs.name]
}

resource "aws_iam_user" "omar_muller" {
  name = "arifen-15ocxf-omar.muller"
}

resource "aws_iam_user_login_profile" "omar_muller" {
  user                    = aws_iam_user.omar_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_muller__telehealth_2_analysts" {
  user   = aws_iam_user.omar_muller.name
  groups = [aws_iam_group.telehealth_2_analysts.name]
}

resource "aws_iam_user_group_membership" "omar_muller__scheduling_analysts" {
  user   = aws_iam_user.omar_muller.name
  groups = [aws_iam_group.scheduling_analysts.name]
}

resource "aws_iam_user" "omar_reddy" {
  name = "arifen-15ocxf-omar.reddy"
}

resource "aws_iam_user_group_membership" "omar_reddy__claims_2_devs" {
  user   = aws_iam_user.omar_reddy.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user" "priya_davis" {
  name = "arifen-15ocxf-priya.davis"
}

resource "aws_iam_user_login_profile" "priya_davis" {
  user                    = aws_iam_user.priya_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_davis__billing_devs" {
  user   = aws_iam_user.priya_davis.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "priya_dubois" {
  name = "arifen-15ocxf-priya.dubois"
}

resource "aws_iam_user_login_profile" "priya_dubois" {
  user                    = aws_iam_user.priya_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_dubois__analytics_devs" {
  user   = aws_iam_user.priya_dubois.name
  groups = [aws_iam_group.analytics_devs.name]
}

resource "aws_iam_user" "priya_gupta" {
  name = "arifen-15ocxf-priya.gupta"
}

resource "aws_iam_user_login_profile" "priya_gupta" {
  user                    = aws_iam_user.priya_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_gupta__imaging_devs" {
  user   = aws_iam_user.priya_gupta.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "priya_larsen" {
  name = "arifen-15ocxf-priya.larsen"
}

resource "aws_iam_user_login_profile" "priya_larsen" {
  user                    = aws_iam_user.priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_larsen__telehealth_devs" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.telehealth_devs.name]
}

resource "aws_iam_user" "priya_miller" {
  name = "arifen-15ocxf-priya.miller"
}

resource "aws_iam_user_login_profile" "priya_miller" {
  user                    = aws_iam_user.priya_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_miller__telehealth_analysts" {
  user   = aws_iam_user.priya_miller.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "priya_smith" {
  name = "arifen-15ocxf-priya.smith"
}

resource "aws_iam_user_login_profile" "priya_smith" {
  user                    = aws_iam_user.priya_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_smith__telehealth_analysts" {
  user   = aws_iam_user.priya_smith.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "quinn_kim" {
  name = "arifen-15ocxf-quinn.kim"
}

resource "aws_iam_user_login_profile" "quinn_kim" {
  user                    = aws_iam_user.quinn_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_kim__compliance_devs" {
  user   = aws_iam_user.quinn_kim.name
  groups = [aws_iam_group.compliance_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_kim__analytics_2_analysts" {
  user   = aws_iam_user.quinn_kim.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "quinn_patel" {
  name = "arifen-15ocxf-quinn.patel"
}

resource "aws_iam_user_login_profile" "quinn_patel" {
  user                    = aws_iam_user.quinn_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_patel__research_2_devs" {
  user   = aws_iam_user.quinn_patel.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user" "raj_khan" {
  name = "arifen-15ocxf-raj.khan"
}

resource "aws_iam_user_login_profile" "raj_khan" {
  user                    = aws_iam_user.raj_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_khan__claims_2_devs" {
  user   = aws_iam_user.raj_khan.name
  groups = [aws_iam_group.claims_2_devs.name]
}

resource "aws_iam_user_group_membership" "raj_khan__patient_portal_2_analysts" {
  user   = aws_iam_user.raj_khan.name
  groups = [aws_iam_group.patient_portal_2_analysts.name]
}

resource "aws_iam_user" "raj_miller" {
  name = "arifen-15ocxf-raj.miller"
}

resource "aws_iam_user_login_profile" "raj_miller" {
  user                    = aws_iam_user.raj_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_miller__telehealth_analysts" {
  user   = aws_iam_user.raj_miller.name
  groups = [aws_iam_group.telehealth_analysts.name]
}

resource "aws_iam_user" "raj_novak" {
  name = "arifen-15ocxf-raj.novak"
}

resource "aws_iam_user_login_profile" "raj_novak" {
  user                    = aws_iam_user.raj_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_novak__compliance_2_analysts" {
  user   = aws_iam_user.raj_novak.name
  groups = [aws_iam_group.compliance_2_analysts.name]
}

resource "aws_iam_user" "raj_novak6903" {
  name = "arifen-15ocxf-raj.novak6903"
}

resource "aws_iam_user_login_profile" "raj_novak6903" {
  user                    = aws_iam_user.raj_novak6903.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_novak6903__imaging_2_analysts" {
  user   = aws_iam_user.raj_novak6903.name
  groups = [aws_iam_group.imaging_2_analysts.name]
}

resource "aws_iam_user" "sara_brown" {
  name = "arifen-15ocxf-sara.brown"
}

resource "aws_iam_user_login_profile" "sara_brown" {
  user                    = aws_iam_user.sara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_brown__patient_portal_2_devs" {
  user   = aws_iam_user.sara_brown.name
  groups = [aws_iam_group.patient_portal_2_devs.name]
}

resource "aws_iam_user" "sara_muller" {
  name = "arifen-15ocxf-sara.muller"
}

resource "aws_iam_user_login_profile" "sara_muller" {
  user                    = aws_iam_user.sara_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_muller__research_analysts" {
  user   = aws_iam_user.sara_muller.name
  groups = [aws_iam_group.research_analysts.name]
}

resource "aws_iam_user" "sara_okafor" {
  name = "arifen-15ocxf-sara.okafor"
}

resource "aws_iam_user_login_profile" "sara_okafor" {
  user                    = aws_iam_user.sara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_okafor__scheduling_devs" {
  user   = aws_iam_user.sara_okafor.name
  groups = [aws_iam_group.scheduling_devs.name]
}

resource "aws_iam_user_group_membership" "sara_okafor__claims_analysts" {
  user   = aws_iam_user.sara_okafor.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "tom_ali" {
  name = "arifen-15ocxf-tom.ali"
}

resource "aws_iam_user_login_profile" "tom_ali" {
  user                    = aws_iam_user.tom_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ali__lab_systems_devs" {
  user   = aws_iam_user.tom_ali.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user" "tom_lopez" {
  name = "arifen-15ocxf-tom.lopez"
}

resource "aws_iam_user_login_profile" "tom_lopez" {
  user                    = aws_iam_user.tom_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_lopez__billing_analysts" {
  user   = aws_iam_user.tom_lopez.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "uma_khan" {
  name = "arifen-15ocxf-uma.khan"
}

resource "aws_iam_user_group_membership" "uma_khan__imaging_analysts" {
  user   = aws_iam_user.uma_khan.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user_group_membership" "uma_khan__claims_2_analysts" {
  user   = aws_iam_user.uma_khan.name
  groups = [aws_iam_group.claims_2_analysts.name]
}

resource "aws_iam_user" "uma_silva" {
  name = "arifen-15ocxf-uma.silva"
}

resource "aws_iam_user_login_profile" "uma_silva" {
  user                    = aws_iam_user.uma_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_silva__clinical_data_analysts" {
  user   = aws_iam_user.uma_silva.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user" "vik_patel" {
  name = "arifen-15ocxf-vik.patel"
}

resource "aws_iam_user_group_membership" "vik_patel__research_2_devs" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.research_2_devs.name]
}

resource "aws_iam_user_group_membership" "vik_patel__billing_analysts" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "wen_kim" {
  name = "arifen-15ocxf-wen.kim"
}

resource "aws_iam_user_login_profile" "wen_kim" {
  user                    = aws_iam_user.wen_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_kim__claims_devs" {
  user   = aws_iam_user.wen_kim.name
  groups = [aws_iam_group.claims_devs.name]
}

resource "aws_iam_user" "wen_okafor" {
  name = "arifen-15ocxf-wen.okafor"
}

resource "aws_iam_user_login_profile" "wen_okafor" {
  user                    = aws_iam_user.wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_okafor__patient_portal_devs" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "wen_silva" {
  name = "arifen-15ocxf-wen.silva"
}

resource "aws_iam_user_login_profile" "wen_silva" {
  user                    = aws_iam_user.wen_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_silva__claims_2_analysts" {
  user   = aws_iam_user.wen_silva.name
  groups = [aws_iam_group.claims_2_analysts.name]
}

resource "aws_iam_user" "xia_chen" {
  name = "arifen-15ocxf-xia.chen"
}

resource "aws_iam_user_login_profile" "xia_chen" {
  user                    = aws_iam_user.xia_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_chen__claims_analysts" {
  user   = aws_iam_user.xia_chen.name
  groups = [aws_iam_group.claims_analysts.name]
}

resource "aws_iam_user" "xia_davis" {
  name = "arifen-15ocxf-xia.davis"
}

resource "aws_iam_user_login_profile" "xia_davis" {
  user                    = aws_iam_user.xia_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_davis__research_2_analysts" {
  user   = aws_iam_user.xia_davis.name
  groups = [aws_iam_group.research_2_analysts.name]
}

resource "aws_iam_user" "xia_miller" {
  name = "arifen-15ocxf-xia.miller"
}

resource "aws_iam_user_login_profile" "xia_miller" {
  user                    = aws_iam_user.xia_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_miller__analytics_2_analysts" {
  user   = aws_iam_user.xia_miller.name
  groups = [aws_iam_group.analytics_2_analysts.name]
}

resource "aws_iam_user" "yara_brown" {
  name = "arifen-15ocxf-yara.brown"
}

resource "aws_iam_user_login_profile" "yara_brown" {
  user                    = aws_iam_user.yara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_brown__compliance_2_devs" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.compliance_2_devs.name]
}

resource "aws_iam_user" "yara_mehta" {
  name = "arifen-15ocxf-yara.mehta"
}

resource "aws_iam_user_login_profile" "yara_mehta" {
  user                    = aws_iam_user.yara_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_mehta__pharmacy_devs" {
  user   = aws_iam_user.yara_mehta.name
  groups = [aws_iam_group.pharmacy_devs.name]
}

resource "aws_iam_user" "zed_ivanov" {
  name = "arifen-15ocxf-zed.ivanov"
}

resource "aws_iam_user_login_profile" "zed_ivanov" {
  user                    = aws_iam_user.zed_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_ivanov__scheduling_2_devs" {
  user   = aws_iam_user.zed_ivanov.name
  groups = [aws_iam_group.scheduling_2_devs.name]
}

resource "aws_iam_user" "zed_ivanov731" {
  name = "arifen-15ocxf-zed.ivanov731"
}

resource "aws_iam_user_login_profile" "zed_ivanov731" {
  user                    = aws_iam_user.zed_ivanov731.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_ivanov731__billing_devs" {
  user   = aws_iam_user.zed_ivanov731.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "zed_larsen" {
  name = "arifen-15ocxf-zed.larsen"
}

resource "aws_iam_user_login_profile" "zed_larsen" {
  user                    = aws_iam_user.zed_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_larsen__clinical_data_devs" {
  user   = aws_iam_user.zed_larsen.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "zed_novak" {
  name = "arifen-15ocxf-zed.novak"
}

resource "aws_iam_user_login_profile" "zed_novak" {
  user                    = aws_iam_user.zed_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_novak__lab_systems_devs" {
  user   = aws_iam_user.zed_novak.name
  groups = [aws_iam_group.lab_systems_devs.name]
}

resource "aws_iam_user_group_membership" "zed_novak__scheduling_analysts" {
  user   = aws_iam_user.zed_novak.name
  groups = [aws_iam_group.scheduling_analysts.name]
}
