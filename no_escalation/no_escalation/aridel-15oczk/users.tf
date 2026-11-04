resource "aws_iam_user" "adm_grace_singh" {
  name = "aridel-15oczk-adm-grace.singh"
}

resource "aws_iam_user_login_profile" "adm_grace_singh" {
  user                    = aws_iam_user.adm_grace_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_grace_singh__platform_admins" {
  user   = aws_iam_user.adm_grace_singh.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_lena_mehta" {
  name = "aridel-15oczk-adm-lena.mehta"
}

resource "aws_iam_user_login_profile" "adm_lena_mehta" {
  user                    = aws_iam_user.adm_lena_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_lena_mehta__platform_admins" {
  user   = aws_iam_user.adm_lena_mehta.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_noor_wong" {
  name = "aridel-15oczk-adm-noor.wong"
}

resource "aws_iam_user_login_profile" "adm_noor_wong" {
  user                    = aws_iam_user.adm_noor_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_noor_wong__platform_admins" {
  user   = aws_iam_user.adm_noor_wong.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_mehta" {
  name = "aridel-15oczk-alice.mehta"
}

resource "aws_iam_user_login_profile" "alice_mehta" {
  user                    = aws_iam_user.alice_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_mehta__search_2_devs" {
  user   = aws_iam_user.alice_mehta.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user_group_membership" "alice_mehta__api_analysts" {
  user   = aws_iam_user.alice_mehta.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "alice_okafor" {
  name = "aridel-15oczk-alice.okafor"
}

resource "aws_iam_user_login_profile" "alice_okafor" {
  user                    = aws_iam_user.alice_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_okafor__growth_2_analysts" {
  user   = aws_iam_user.alice_okafor.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "amit_ali" {
  name = "aridel-15oczk-amit.ali"
}

resource "aws_iam_user_login_profile" "amit_ali" {
  user                    = aws_iam_user.amit_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_ali__mobile_2_devs" {
  user   = aws_iam_user.amit_ali.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "amit_jones" {
  name = "aridel-15oczk-amit.jones"
}

resource "aws_iam_user_login_profile" "amit_jones" {
  user                    = aws_iam_user.amit_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_jones__support_2_devs" {
  user   = aws_iam_user.amit_jones.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "amit_sato" {
  name = "aridel-15oczk-amit.sato"
}

resource "aws_iam_user_login_profile" "amit_sato" {
  user                    = aws_iam_user.amit_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_sato__data_2_analysts" {
  user   = aws_iam_user.amit_sato.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user" "bela_chen" {
  name = "aridel-15oczk-bela.chen"
}

resource "aws_iam_user_login_profile" "bela_chen" {
  user                    = aws_iam_user.bela_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_chen__billing_2_devs" {
  user   = aws_iam_user.bela_chen.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "bob_garcia" {
  name = "aridel-15oczk-bob.garcia"
}

resource "aws_iam_user_login_profile" "bob_garcia" {
  user                    = aws_iam_user.bob_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_garcia__infra_devs" {
  user   = aws_iam_user.bob_garcia.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "bob_garcia__billing_2_analysts" {
  user   = aws_iam_user.bob_garcia.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "aridel-15oczk-bob.larsen"
}

resource "aws_iam_user_login_profile" "bob_larsen" {
  user                    = aws_iam_user.bob_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_larsen__billing_2_devs" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "bob_mehta" {
  name = "aridel-15oczk-bob.mehta"
}

resource "aws_iam_user_login_profile" "bob_mehta" {
  user                    = aws_iam_user.bob_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_mehta__web_devs" {
  user   = aws_iam_user.bob_mehta.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_policy_attachment" "bob_mehta__base_readonly" {
  user       = aws_iam_user.bob_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_ali" {
  name = "aridel-15oczk-carol.ali"
}

resource "aws_iam_user_login_profile" "carol_ali" {
  user                    = aws_iam_user.carol_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_ali__web_devs" {
  user   = aws_iam_user.carol_ali.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "carol_brown" {
  name = "aridel-15oczk-carol.brown"
}

resource "aws_iam_user_login_profile" "carol_brown" {
  user                    = aws_iam_user.carol_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_brown__growth_devs" {
  user   = aws_iam_user.carol_brown.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "carol_brown3515" {
  name = "aridel-15oczk-carol.brown3515"
}

resource "aws_iam_user_login_profile" "carol_brown3515" {
  user                    = aws_iam_user.carol_brown3515.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_brown3515__data_analysts" {
  user   = aws_iam_user.carol_brown3515.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "carol_ivanov" {
  name = "aridel-15oczk-carol.ivanov"
}

resource "aws_iam_user_group_membership" "carol_ivanov__ml_analysts" {
  user   = aws_iam_user.carol_ivanov.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "carol_miller" {
  name = "aridel-15oczk-carol.miller"
}

resource "aws_iam_user_login_profile" "carol_miller" {
  user                    = aws_iam_user.carol_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_miller__search_2_devs" {
  user   = aws_iam_user.carol_miller.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_miller__base_readonly" {
  user       = aws_iam_user.carol_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_muller" {
  name = "aridel-15oczk-carol.muller"
}

resource "aws_iam_user_login_profile" "carol_muller" {
  user                    = aws_iam_user.carol_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_muller__auth_devs" {
  user   = aws_iam_user.carol_muller.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_muller__base_readonly" {
  user       = aws_iam_user.carol_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_wong" {
  name = "aridel-15oczk-carol.wong"
}

resource "aws_iam_user_login_profile" "carol_wong" {
  user                    = aws_iam_user.carol_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_wong__web_analysts" {
  user   = aws_iam_user.carol_wong.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "chen_cohen" {
  name = "aridel-15oczk-chen.cohen"
}

resource "aws_iam_user_login_profile" "chen_cohen" {
  user                    = aws_iam_user.chen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_cohen__auth_devs" {
  user   = aws_iam_user.chen_cohen.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "chen_davis" {
  name = "aridel-15oczk-chen.davis"
}

resource "aws_iam_user_login_profile" "chen_davis" {
  user                    = aws_iam_user.chen_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_davis__billing_devs" {
  user   = aws_iam_user.chen_davis.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "chen_davis5020" {
  name = "aridel-15oczk-chen.davis5020"
}

resource "aws_iam_user_login_profile" "chen_davis5020" {
  user                    = aws_iam_user.chen_davis5020.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_davis5020__api_analysts" {
  user   = aws_iam_user.chen_davis5020.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "chen_dubois" {
  name = "aridel-15oczk-chen.dubois"
}

resource "aws_iam_user_login_profile" "chen_dubois" {
  user                    = aws_iam_user.chen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_dubois__search_analysts" {
  user   = aws_iam_user.chen_dubois.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "chen_jones" {
  name = "aridel-15oczk-chen.jones"
}

resource "aws_iam_user_login_profile" "chen_jones" {
  user                    = aws_iam_user.chen_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_jones__mobile_devs" {
  user   = aws_iam_user.chen_jones.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "chen_patel" {
  name = "aridel-15oczk-chen.patel"
}

resource "aws_iam_user_login_profile" "chen_patel" {
  user                    = aws_iam_user.chen_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_patel__support_devs" {
  user   = aws_iam_user.chen_patel.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "chen_wong" {
  name = "aridel-15oczk-chen.wong"
}

resource "aws_iam_user_login_profile" "chen_wong" {
  user                    = aws_iam_user.chen_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_wong__ml_2_devs" {
  user   = aws_iam_user.chen_wong.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "chen_wong__base_readonly" {
  user       = aws_iam_user.chen_wong.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_smith" {
  name = "aridel-15oczk-dara.smith"
}

resource "aws_iam_user_login_profile" "dara_smith" {
  user                    = aws_iam_user.dara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_smith__web_devs" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "dave_patel" {
  name = "aridel-15oczk-dave.patel"
}

resource "aws_iam_user_login_profile" "dave_patel" {
  user                    = aws_iam_user.dave_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_patel__billing_devs" {
  user   = aws_iam_user.dave_patel.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "dave_rossi" {
  name = "aridel-15oczk-dave.rossi"
}

resource "aws_iam_user_login_profile" "dave_rossi" {
  user                    = aws_iam_user.dave_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_rossi__growth_2_devs" {
  user   = aws_iam_user.dave_rossi.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user_group_membership" "dave_rossi__web_2_analysts" {
  user   = aws_iam_user.dave_rossi.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "eli_reddy" {
  name = "aridel-15oczk-eli.reddy"
}

resource "aws_iam_user_group_membership" "eli_reddy__web_devs" {
  user   = aws_iam_user.eli_reddy.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "erin_novak" {
  name = "aridel-15oczk-erin.novak"
}

resource "aws_iam_user_login_profile" "erin_novak" {
  user                    = aws_iam_user.erin_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_novak__search_2_devs" {
  user   = aws_iam_user.erin_novak.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "erin_okafor" {
  name = "aridel-15oczk-erin.okafor"
}

resource "aws_iam_user_login_profile" "erin_okafor" {
  user                    = aws_iam_user.erin_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_okafor__billing_2_analysts" {
  user   = aws_iam_user.erin_okafor.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "ext_alice_nguyen" {
  name = "aridel-15oczk-ext-alice.nguyen"
}

resource "aws_iam_user_login_profile" "ext_alice_nguyen" {
  user                    = aws_iam_user.ext_alice_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_nguyen__contractors" {
  user   = aws_iam_user.ext_alice_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_carol_garcia" {
  name = "aridel-15oczk-ext-carol.garcia"
}

resource "aws_iam_user_login_profile" "ext_carol_garcia" {
  user                    = aws_iam_user.ext_carol_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_carol_garcia__contractors" {
  user   = aws_iam_user.ext_carol_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_chen_miller" {
  name = "aridel-15oczk-ext-chen.miller"
}

resource "aws_iam_user_login_profile" "ext_chen_miller" {
  user                    = aws_iam_user.ext_chen_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_miller__contractors" {
  user   = aws_iam_user.ext_chen_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_miller__search_analysts" {
  user   = aws_iam_user.ext_chen_miller.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "ext_dave_okafor" {
  name = "aridel-15oczk-ext-dave.okafor"
}

resource "aws_iam_user_login_profile" "ext_dave_okafor" {
  user                    = aws_iam_user.ext_dave_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_okafor__contractors" {
  user   = aws_iam_user.ext_dave_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_eli_okafor" {
  name = "aridel-15oczk-ext-eli.okafor"
}

resource "aws_iam_user_login_profile" "ext_eli_okafor" {
  user                    = aws_iam_user.ext_eli_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_okafor__contractors" {
  user   = aws_iam_user.ext_eli_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_eli_okafor__api_analysts" {
  user   = aws_iam_user.ext_eli_okafor.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "ext_grace_gupta" {
  name = "aridel-15oczk-ext-grace.gupta"
}

resource "aws_iam_user_login_profile" "ext_grace_gupta" {
  user                    = aws_iam_user.ext_grace_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_gupta__contractors" {
  user   = aws_iam_user.ext_grace_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_hana_reddy" {
  name = "aridel-15oczk-ext-hana.reddy"
}

resource "aws_iam_user_login_profile" "ext_hana_reddy" {
  user                    = aws_iam_user.ext_hana_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_reddy__contractors" {
  user   = aws_iam_user.ext_hana_reddy.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mike_muller" {
  name = "aridel-15oczk-ext-mike.muller"
}

resource "aws_iam_user_login_profile" "ext_mike_muller" {
  user                    = aws_iam_user.ext_mike_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mike_muller__contractors" {
  user   = aws_iam_user.ext_mike_muller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mike_muller__infra_analysts" {
  user   = aws_iam_user.ext_mike_muller.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "ext_quinn_cohen" {
  name = "aridel-15oczk-ext-quinn.cohen"
}

resource "aws_iam_user_login_profile" "ext_quinn_cohen" {
  user                    = aws_iam_user.ext_quinn_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_cohen__contractors" {
  user   = aws_iam_user.ext_quinn_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_tom_gupta" {
  name = "aridel-15oczk-ext-tom.gupta"
}

resource "aws_iam_user_login_profile" "ext_tom_gupta" {
  user                    = aws_iam_user.ext_tom_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_tom_gupta__contractors" {
  user   = aws_iam_user.ext_tom_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_tom_gupta__mobile_2_analysts" {
  user   = aws_iam_user.ext_tom_gupta.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "ext_vik_garcia" {
  name = "aridel-15oczk-ext-vik.garcia"
}

resource "aws_iam_user_login_profile" "ext_vik_garcia" {
  user                    = aws_iam_user.ext_vik_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_garcia__contractors" {
  user   = aws_iam_user.ext_vik_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_policy_attachment" "ext_vik_garcia__inj_pol_p2" {
  user       = aws_iam_user.ext_vik_garcia.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_garcia__inj_pol_p6" {
  user       = aws_iam_user.ext_vik_garcia.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_garcia__inj_pol_p7" {
  user       = aws_iam_user.ext_vik_garcia.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_garcia__inj_pol_p15" {
  user       = aws_iam_user.ext_vik_garcia.name
  policy_arn = aws_iam_policy.inj_pol_p15.arn
}

resource "aws_iam_user" "ext_wen_cohen" {
  name = "aridel-15oczk-ext-wen.cohen"
}

resource "aws_iam_user_login_profile" "ext_wen_cohen" {
  user                    = aws_iam_user.ext_wen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_cohen__contractors" {
  user   = aws_iam_user.ext_wen_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_wen_cohen__auth_analysts" {
  user   = aws_iam_user.ext_wen_cohen.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "ext_wen_gupta" {
  name = "aridel-15oczk-ext-wen.gupta"
}

resource "aws_iam_user_login_profile" "ext_wen_gupta" {
  user                    = aws_iam_user.ext_wen_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_gupta__contractors" {
  user   = aws_iam_user.ext_wen_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_miller" {
  name = "aridel-15oczk-fay.miller"
}

resource "aws_iam_user_login_profile" "fay_miller" {
  user                    = aws_iam_user.fay_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_miller__billing_2_devs" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "fay_smith" {
  name = "aridel-15oczk-fay.smith"
}

resource "aws_iam_user_login_profile" "fay_smith" {
  user                    = aws_iam_user.fay_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_smith__infra_devs" {
  user   = aws_iam_user.fay_smith.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "frank_gupta" {
  name = "aridel-15oczk-frank.gupta"
}

resource "aws_iam_user_group_membership" "frank_gupta__mobile_devs" {
  user   = aws_iam_user.frank_gupta.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_policy_attachment" "frank_gupta__base_readonly" {
  user       = aws_iam_user.frank_gupta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_sato" {
  name = "aridel-15oczk-frank.sato"
}

resource "aws_iam_user_group_membership" "frank_sato__mobile_devs" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "frank_tanaka" {
  name = "aridel-15oczk-frank.tanaka"
}

resource "aws_iam_user_login_profile" "frank_tanaka" {
  user                    = aws_iam_user.frank_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_tanaka__search_2_analysts" {
  user   = aws_iam_user.frank_tanaka.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user_group_membership" "frank_tanaka__search_analysts" {
  user   = aws_iam_user.frank_tanaka.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "grace_ali" {
  name = "aridel-15oczk-grace.ali"
}

resource "aws_iam_user_login_profile" "grace_ali" {
  user                    = aws_iam_user.grace_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ali__growth_devs" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "grace_chen" {
  name = "aridel-15oczk-grace.chen"
}

resource "aws_iam_user_login_profile" "grace_chen" {
  user                    = aws_iam_user.grace_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_chen__support_devs" {
  user   = aws_iam_user.grace_chen.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "grace_chen617" {
  name = "aridel-15oczk-grace.chen617"
}

resource "aws_iam_user_login_profile" "grace_chen617" {
  user                    = aws_iam_user.grace_chen617.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_chen617__mobile_devs" {
  user   = aws_iam_user.grace_chen617.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "grace_ivanov" {
  name = "aridel-15oczk-grace.ivanov"
}

resource "aws_iam_user_group_membership" "grace_ivanov__data_devs" {
  user   = aws_iam_user.grace_ivanov.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "grace_ivanov__mobile_2_analysts" {
  user   = aws_iam_user.grace_ivanov.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "grace_miller" {
  name = "aridel-15oczk-grace.miller"
}

resource "aws_iam_user_login_profile" "grace_miller" {
  user                    = aws_iam_user.grace_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_miller__mobile_devs" {
  user   = aws_iam_user.grace_miller.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "grace_tanaka" {
  name = "aridel-15oczk-grace.tanaka"
}

resource "aws_iam_user_login_profile" "grace_tanaka" {
  user                    = aws_iam_user.grace_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_tanaka__mobile_analysts" {
  user   = aws_iam_user.grace_tanaka.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "gus_haddad" {
  name = "aridel-15oczk-gus.haddad"
}

resource "aws_iam_user_group_membership" "gus_haddad__ml_analysts" {
  user   = aws_iam_user.gus_haddad.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "gus_kim" {
  name = "aridel-15oczk-gus.kim"
}

resource "aws_iam_user_login_profile" "gus_kim" {
  user                    = aws_iam_user.gus_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_kim__growth_2_devs" {
  user   = aws_iam_user.gus_kim.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "gus_lopez" {
  name = "aridel-15oczk-gus.lopez"
}

resource "aws_iam_user_group_membership" "gus_lopez__auth_2_analysts" {
  user   = aws_iam_user.gus_lopez.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "gus_lopez__base_readonly" {
  user       = aws_iam_user.gus_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_mehta" {
  name = "aridel-15oczk-gus.mehta"
}

resource "aws_iam_user_login_profile" "gus_mehta" {
  user                    = aws_iam_user.gus_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_mehta__ml_2_devs" {
  user   = aws_iam_user.gus_mehta.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "gus_silva" {
  name = "aridel-15oczk-gus.silva"
}

resource "aws_iam_user_login_profile" "gus_silva" {
  user                    = aws_iam_user.gus_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_silva__infra_analysts" {
  user   = aws_iam_user.gus_silva.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "hana_ali" {
  name = "aridel-15oczk-hana.ali"
}

resource "aws_iam_user_login_profile" "hana_ali" {
  user                    = aws_iam_user.hana_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_ali__billing_2_analysts" {
  user   = aws_iam_user.hana_ali.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "hana_ali58" {
  name = "aridel-15oczk-hana.ali58"
}

resource "aws_iam_user_login_profile" "hana_ali58" {
  user                    = aws_iam_user.hana_ali58.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_ali58__infra_devs" {
  user   = aws_iam_user.hana_ali58.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "hana_ali58__growth_analysts" {
  user   = aws_iam_user.hana_ali58.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "hana_cohen" {
  name = "aridel-15oczk-hana.cohen"
}

resource "aws_iam_user_login_profile" "hana_cohen" {
  user                    = aws_iam_user.hana_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_cohen__growth_devs" {
  user   = aws_iam_user.hana_cohen.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "hana_nguyen" {
  name = "aridel-15oczk-hana.nguyen"
}

resource "aws_iam_user_login_profile" "hana_nguyen" {
  user                    = aws_iam_user.hana_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_nguyen__data_2_devs" {
  user   = aws_iam_user.hana_nguyen.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_group_membership" "hana_nguyen__mobile_2_analysts" {
  user   = aws_iam_user.hana_nguyen.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "hana_silva" {
  name = "aridel-15oczk-hana.silva"
}

resource "aws_iam_user_login_profile" "hana_silva" {
  user                    = aws_iam_user.hana_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_silva__api_devs" {
  user   = aws_iam_user.hana_silva.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "heidi_cohen" {
  name = "aridel-15oczk-heidi.cohen"
}

resource "aws_iam_user_login_profile" "heidi_cohen" {
  user                    = aws_iam_user.heidi_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_cohen__api_2_analysts" {
  user   = aws_iam_user.heidi_cohen.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user_group_membership" "heidi_cohen__data_analysts" {
  user   = aws_iam_user.heidi_cohen.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "heidi_gupta" {
  name = "aridel-15oczk-heidi.gupta"
}

resource "aws_iam_user_login_profile" "heidi_gupta" {
  user                    = aws_iam_user.heidi_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_gupta__billing_devs" {
  user   = aws_iam_user.heidi_gupta.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "heidi_haddad" {
  name = "aridel-15oczk-heidi.haddad"
}

resource "aws_iam_user_login_profile" "heidi_haddad" {
  user                    = aws_iam_user.heidi_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_haddad__api_2_devs" {
  user   = aws_iam_user.heidi_haddad.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "heidi_kim" {
  name = "aridel-15oczk-heidi.kim"
}

resource "aws_iam_user_login_profile" "heidi_kim" {
  user                    = aws_iam_user.heidi_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_kim__notifications_analysts" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "heidi_mehta" {
  name = "aridel-15oczk-heidi.mehta"
}

resource "aws_iam_user_login_profile" "heidi_mehta" {
  user                    = aws_iam_user.heidi_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_mehta__web_2_devs" {
  user   = aws_iam_user.heidi_mehta.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_mehta__growth_analysts" {
  user   = aws_iam_user.heidi_mehta.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "ian_gupta" {
  name = "aridel-15oczk-ian.gupta"
}

resource "aws_iam_user_login_profile" "ian_gupta" {
  user                    = aws_iam_user.ian_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_gupta__data_devs" {
  user   = aws_iam_user.ian_gupta.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "ian_haddad" {
  name = "aridel-15oczk-ian.haddad"
}

resource "aws_iam_user_login_profile" "ian_haddad" {
  user                    = aws_iam_user.ian_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad__data_2_devs" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "ian_lopez" {
  name = "aridel-15oczk-ian.lopez"
}

resource "aws_iam_user_login_profile" "ian_lopez" {
  user                    = aws_iam_user.ian_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_lopez__growth_analysts" {
  user   = aws_iam_user.ian_lopez.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "ivan_kim" {
  name = "aridel-15oczk-ivan.kim"
}

resource "aws_iam_user_login_profile" "ivan_kim" {
  user                    = aws_iam_user.ivan_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_kim__billing_devs" {
  user   = aws_iam_user.ivan_kim.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "ivan_okafor" {
  name = "aridel-15oczk-ivan.okafor"
}

resource "aws_iam_user_login_profile" "ivan_okafor" {
  user                    = aws_iam_user.ivan_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_okafor__mobile_2_devs" {
  user   = aws_iam_user.ivan_okafor.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_okafor__support_analysts" {
  user   = aws_iam_user.ivan_okafor.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "ivan_sato" {
  name = "aridel-15oczk-ivan.sato"
}

resource "aws_iam_user_group_membership" "ivan_sato__api_2_devs" {
  user   = aws_iam_user.ivan_sato.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_sato__growth_2_analysts" {
  user   = aws_iam_user.ivan_sato.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "judy_gupta" {
  name = "aridel-15oczk-judy.gupta"
}

resource "aws_iam_user_login_profile" "judy_gupta" {
  user                    = aws_iam_user.judy_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_gupta__infra_devs" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "judy_ivanov" {
  name = "aridel-15oczk-judy.ivanov"
}

resource "aws_iam_user_login_profile" "judy_ivanov" {
  user                    = aws_iam_user.judy_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_ivanov__web_analysts" {
  user   = aws_iam_user.judy_ivanov.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "judy_okafor" {
  name = "aridel-15oczk-judy.okafor"
}

resource "aws_iam_user_login_profile" "judy_okafor" {
  user                    = aws_iam_user.judy_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_okafor__web_analysts" {
  user   = aws_iam_user.judy_okafor.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "karl_sato" {
  name = "aridel-15oczk-karl.sato"
}

resource "aws_iam_user_login_profile" "karl_sato" {
  user                    = aws_iam_user.karl_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_sato__growth_2_devs" {
  user   = aws_iam_user.karl_sato.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "kia_dubois" {
  name = "aridel-15oczk-kia.dubois"
}

resource "aws_iam_user_login_profile" "kia_dubois" {
  user                    = aws_iam_user.kia_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_dubois__ml_2_devs" {
  user   = aws_iam_user.kia_dubois.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user_group_membership" "kia_dubois__growth_analysts" {
  user   = aws_iam_user.kia_dubois.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "lena_ali" {
  name = "aridel-15oczk-lena.ali"
}

resource "aws_iam_user_login_profile" "lena_ali" {
  user                    = aws_iam_user.lena_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_ali__mobile_devs" {
  user   = aws_iam_user.lena_ali.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "lena_ali__search_analysts" {
  user   = aws_iam_user.lena_ali.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "lena_khan" {
  name = "aridel-15oczk-lena.khan"
}

resource "aws_iam_user_login_profile" "lena_khan" {
  user                    = aws_iam_user.lena_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_khan__infra_analysts" {
  user   = aws_iam_user.lena_khan.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "lena_lopez" {
  name = "aridel-15oczk-lena.lopez"
}

resource "aws_iam_user_login_profile" "lena_lopez" {
  user                    = aws_iam_user.lena_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_lopez__web_devs" {
  user   = aws_iam_user.lena_lopez.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "lena_smith" {
  name = "aridel-15oczk-lena.smith"
}

resource "aws_iam_user_login_profile" "lena_smith" {
  user                    = aws_iam_user.lena_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_smith__auth_2_devs" {
  user   = aws_iam_user.lena_smith.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "leo_garcia" {
  name = "aridel-15oczk-leo.garcia"
}

resource "aws_iam_user_login_profile" "leo_garcia" {
  user                    = aws_iam_user.leo_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_garcia__auth_2_devs" {
  user   = aws_iam_user.leo_garcia.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_group_membership" "leo_garcia__notifications_analysts" {
  user   = aws_iam_user.leo_garcia.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user_policy_attachment" "leo_garcia__base_readonly" {
  user       = aws_iam_user.leo_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_garcia977" {
  name = "aridel-15oczk-leo.garcia977"
}

resource "aws_iam_user_group_membership" "leo_garcia977__data_2_devs" {
  user   = aws_iam_user.leo_garcia977.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "mei_dubois" {
  name = "aridel-15oczk-mei.dubois"
}

resource "aws_iam_user_group_membership" "mei_dubois__notifications_devs" {
  user   = aws_iam_user.mei_dubois.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "mike_sato" {
  name = "aridel-15oczk-mike.sato"
}

resource "aws_iam_user_login_profile" "mike_sato" {
  user                    = aws_iam_user.mike_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_sato__growth_2_devs" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "nina_chen" {
  name = "aridel-15oczk-nina.chen"
}

resource "aws_iam_user_login_profile" "nina_chen" {
  user                    = aws_iam_user.nina_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_chen__api_devs" {
  user   = aws_iam_user.nina_chen.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "nina_lopez" {
  name = "aridel-15oczk-nina.lopez"
}

resource "aws_iam_user_login_profile" "nina_lopez" {
  user                    = aws_iam_user.nina_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_lopez__auth_2_devs" {
  user   = aws_iam_user.nina_lopez.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "noor_ali" {
  name = "aridel-15oczk-noor.ali"
}

resource "aws_iam_user_group_membership" "noor_ali__mobile_2_analysts" {
  user   = aws_iam_user.noor_ali.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "noor_jones" {
  name = "aridel-15oczk-noor.jones"
}

resource "aws_iam_user_login_profile" "noor_jones" {
  user                    = aws_iam_user.noor_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_jones__search_devs" {
  user   = aws_iam_user.noor_jones.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "noor_tanaka" {
  name = "aridel-15oczk-noor.tanaka"
}

resource "aws_iam_user_login_profile" "noor_tanaka" {
  user                    = aws_iam_user.noor_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_tanaka__data_analysts" {
  user   = aws_iam_user.noor_tanaka.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user_group_membership" "noor_tanaka__mobile_analysts" {
  user   = aws_iam_user.noor_tanaka.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "omar_ali" {
  name = "aridel-15oczk-omar.ali"
}

resource "aws_iam_user_login_profile" "omar_ali" {
  user                    = aws_iam_user.omar_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ali__infra_2_devs" {
  user   = aws_iam_user.omar_ali.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "omar_chen" {
  name = "aridel-15oczk-omar.chen"
}

resource "aws_iam_user_login_profile" "omar_chen" {
  user                    = aws_iam_user.omar_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_chen__notifications_2_analysts" {
  user   = aws_iam_user.omar_chen.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user_group_membership" "omar_chen__web_analysts" {
  user   = aws_iam_user.omar_chen.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "omar_gupta" {
  name = "aridel-15oczk-omar.gupta"
}

resource "aws_iam_user_login_profile" "omar_gupta" {
  user                    = aws_iam_user.omar_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_gupta__data_devs" {
  user   = aws_iam_user.omar_gupta.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "omar_lopez" {
  name = "aridel-15oczk-omar.lopez"
}

resource "aws_iam_user_login_profile" "omar_lopez" {
  user                    = aws_iam_user.omar_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_lopez__growth_2_analysts" {
  user   = aws_iam_user.omar_lopez.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "omar_mehta" {
  name = "aridel-15oczk-omar.mehta"
}

resource "aws_iam_user_login_profile" "omar_mehta" {
  user                    = aws_iam_user.omar_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_mehta__web_devs" {
  user   = aws_iam_user.omar_mehta.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "omar_reddy" {
  name = "aridel-15oczk-omar.reddy"
}

resource "aws_iam_user_group_membership" "omar_reddy__mobile_devs" {
  user   = aws_iam_user.omar_reddy.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "omar_silva" {
  name = "aridel-15oczk-omar.silva"
}

resource "aws_iam_user_group_membership" "omar_silva__web_2_analysts" {
  user   = aws_iam_user.omar_silva.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "priya_cohen" {
  name = "aridel-15oczk-priya.cohen"
}

resource "aws_iam_user_login_profile" "priya_cohen" {
  user                    = aws_iam_user.priya_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_cohen__mobile_devs" {
  user   = aws_iam_user.priya_cohen.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "priya_cohen__billing_analysts" {
  user   = aws_iam_user.priya_cohen.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "priya_novak" {
  name = "aridel-15oczk-priya.novak"
}

resource "aws_iam_user_login_profile" "priya_novak" {
  user                    = aws_iam_user.priya_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_novak__growth_devs" {
  user   = aws_iam_user.priya_novak.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "priya_okafor" {
  name = "aridel-15oczk-priya.okafor"
}

resource "aws_iam_user_login_profile" "priya_okafor" {
  user                    = aws_iam_user.priya_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_okafor__web_devs" {
  user   = aws_iam_user.priya_okafor.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "quinn_rossi" {
  name = "aridel-15oczk-quinn.rossi"
}

resource "aws_iam_user_login_profile" "quinn_rossi" {
  user                    = aws_iam_user.quinn_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_rossi__support_2_devs" {
  user   = aws_iam_user.quinn_rossi.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "raj_chen" {
  name = "aridel-15oczk-raj.chen"
}

resource "aws_iam_user_login_profile" "raj_chen" {
  user                    = aws_iam_user.raj_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_chen__infra_analysts" {
  user   = aws_iam_user.raj_chen.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "sara_haddad" {
  name = "aridel-15oczk-sara.haddad"
}

resource "aws_iam_user_login_profile" "sara_haddad" {
  user                    = aws_iam_user.sara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_haddad__billing_devs" {
  user   = aws_iam_user.sara_haddad.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "sara_novak" {
  name = "aridel-15oczk-sara.novak"
}

resource "aws_iam_user_login_profile" "sara_novak" {
  user                    = aws_iam_user.sara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_novak__growth_analysts" {
  user   = aws_iam_user.sara_novak.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_novak__growth_2_analysts" {
  user   = aws_iam_user.sara_novak.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "sara_okafor" {
  name = "aridel-15oczk-sara.okafor"
}

resource "aws_iam_user_login_profile" "sara_okafor" {
  user                    = aws_iam_user.sara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_okafor__billing_2_analysts" {
  user   = aws_iam_user.sara_okafor.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "tom_jones" {
  name = "aridel-15oczk-tom.jones"
}

resource "aws_iam_user_login_profile" "tom_jones" {
  user                    = aws_iam_user.tom_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones__api_2_devs" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user_group_membership" "tom_jones__search_analysts" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "tom_reddy" {
  name = "aridel-15oczk-tom.reddy"
}

resource "aws_iam_user_group_membership" "tom_reddy__auth_2_devs" {
  user   = aws_iam_user.tom_reddy.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "uma_jones" {
  name = "aridel-15oczk-uma.jones"
}

resource "aws_iam_user_login_profile" "uma_jones" {
  user                    = aws_iam_user.uma_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_jones__api_devs" {
  user   = aws_iam_user.uma_jones.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "uma_jones344" {
  name = "aridel-15oczk-uma.jones344"
}

resource "aws_iam_user_login_profile" "uma_jones344" {
  user                    = aws_iam_user.uma_jones344.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_jones344__ml_2_devs" {
  user   = aws_iam_user.uma_jones344.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "uma_kim" {
  name = "aridel-15oczk-uma.kim"
}

resource "aws_iam_user_login_profile" "uma_kim" {
  user                    = aws_iam_user.uma_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_kim__api_2_devs" {
  user   = aws_iam_user.uma_kim.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "uma_lopez" {
  name = "aridel-15oczk-uma.lopez"
}

resource "aws_iam_user_login_profile" "uma_lopez" {
  user                    = aws_iam_user.uma_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez__growth_2_devs" {
  user   = aws_iam_user.uma_lopez.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "uma_tanaka" {
  name = "aridel-15oczk-uma.tanaka"
}

resource "aws_iam_user_login_profile" "uma_tanaka" {
  user                    = aws_iam_user.uma_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_tanaka__web_2_devs" {
  user   = aws_iam_user.uma_tanaka.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_tanaka__base_readonly" {
  user       = aws_iam_user.uma_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_tanaka3102" {
  name = "aridel-15oczk-uma.tanaka3102"
}

resource "aws_iam_user_login_profile" "uma_tanaka3102" {
  user                    = aws_iam_user.uma_tanaka3102.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_tanaka3102__data_2_analysts" {
  user   = aws_iam_user.uma_tanaka3102.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user" "vik_miller" {
  name = "aridel-15oczk-vik.miller"
}

resource "aws_iam_user_login_profile" "vik_miller" {
  user                    = aws_iam_user.vik_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_miller__search_analysts" {
  user   = aws_iam_user.vik_miller.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "vik_okafor" {
  name = "aridel-15oczk-vik.okafor"
}

resource "aws_iam_user_login_profile" "vik_okafor" {
  user                    = aws_iam_user.vik_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_okafor__data_2_analysts" {
  user   = aws_iam_user.vik_okafor.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user_group_membership" "vik_okafor__ml_analysts" {
  user   = aws_iam_user.vik_okafor.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "wen_ali" {
  name = "aridel-15oczk-wen.ali"
}

resource "aws_iam_user_login_profile" "wen_ali" {
  user                    = aws_iam_user.wen_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali__web_2_devs" {
  user   = aws_iam_user.wen_ali.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "wen_ali__data_analysts" {
  user   = aws_iam_user.wen_ali.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "wen_ali591" {
  name = "aridel-15oczk-wen.ali591"
}

resource "aws_iam_user_login_profile" "wen_ali591" {
  user                    = aws_iam_user.wen_ali591.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali591__support_2_devs" {
  user   = aws_iam_user.wen_ali591.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "wen_ali901" {
  name = "aridel-15oczk-wen.ali901"
}

resource "aws_iam_user_login_profile" "wen_ali901" {
  user                    = aws_iam_user.wen_ali901.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali901__billing_2_analysts" {
  user   = aws_iam_user.wen_ali901.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user_group_membership" "wen_ali901__mobile_analysts" {
  user   = aws_iam_user.wen_ali901.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "wen_dubois" {
  name = "aridel-15oczk-wen.dubois"
}

resource "aws_iam_user_login_profile" "wen_dubois" {
  user                    = aws_iam_user.wen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_dubois__web_2_analysts" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "wen_haddad" {
  name = "aridel-15oczk-wen.haddad"
}

resource "aws_iam_user_login_profile" "wen_haddad" {
  user                    = aws_iam_user.wen_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_haddad__notifications_2_devs" {
  user   = aws_iam_user.wen_haddad.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "wen_mehta" {
  name = "aridel-15oczk-wen.mehta"
}

resource "aws_iam_user_login_profile" "wen_mehta" {
  user                    = aws_iam_user.wen_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_mehta__api_2_devs" {
  user   = aws_iam_user.wen_mehta.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "wen_wong" {
  name = "aridel-15oczk-wen.wong"
}

resource "aws_iam_user_login_profile" "wen_wong" {
  user                    = aws_iam_user.wen_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_wong__notifications_devs" {
  user   = aws_iam_user.wen_wong.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "xia_haddad" {
  name = "aridel-15oczk-xia.haddad"
}

resource "aws_iam_user_login_profile" "xia_haddad" {
  user                    = aws_iam_user.xia_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_haddad__growth_2_devs" {
  user   = aws_iam_user.xia_haddad.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "xia_nguyen" {
  name = "aridel-15oczk-xia.nguyen"
}

resource "aws_iam_user_login_profile" "xia_nguyen" {
  user                    = aws_iam_user.xia_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_nguyen__growth_2_devs" {
  user   = aws_iam_user.xia_nguyen.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "yara_brown" {
  name = "aridel-15oczk-yara.brown"
}

resource "aws_iam_user_login_profile" "yara_brown" {
  user                    = aws_iam_user.yara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_brown__support_analysts" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user_group_membership" "yara_brown__data_2_analysts" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user" "yara_gupta" {
  name = "aridel-15oczk-yara.gupta"
}

resource "aws_iam_user_login_profile" "yara_gupta" {
  user                    = aws_iam_user.yara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_gupta__support_devs" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user_policy_attachment" "yara_gupta__base_readonly" {
  user       = aws_iam_user.yara_gupta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "yara_lopez" {
  name = "aridel-15oczk-yara.lopez"
}

resource "aws_iam_user_login_profile" "yara_lopez" {
  user                    = aws_iam_user.yara_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_lopez__infra_2_devs" {
  user   = aws_iam_user.yara_lopez.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "yara_sato" {
  name = "aridel-15oczk-yara.sato"
}

resource "aws_iam_user_login_profile" "yara_sato" {
  user                    = aws_iam_user.yara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_sato__infra_2_devs" {
  user   = aws_iam_user.yara_sato.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user_group_membership" "yara_sato__billing_2_analysts" {
  user   = aws_iam_user.yara_sato.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "zed_garcia" {
  name = "aridel-15oczk-zed.garcia"
}

resource "aws_iam_user_group_membership" "zed_garcia__support_2_devs" {
  user   = aws_iam_user.zed_garcia.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_garcia__base_readonly" {
  user       = aws_iam_user.zed_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_smith" {
  name = "aridel-15oczk-zed.smith"
}

resource "aws_iam_user_group_membership" "zed_smith__mobile_devs" {
  user   = aws_iam_user.zed_smith.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_smith__base_readonly" {
  user       = aws_iam_user.zed_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}
