resource "aws_iam_user" "adm_wen_haddad" {
  name = "axtri-1bmokt-adm-wen.haddad"
}

resource "aws_iam_user_login_profile" "adm_wen_haddad" {
  user                    = aws_iam_user.adm_wen_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_wen_haddad__platform_admins" {
  user   = aws_iam_user.adm_wen_haddad.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_wen_jones" {
  name = "axtri-1bmokt-adm-wen.jones"
}

resource "aws_iam_user_login_profile" "adm_wen_jones" {
  user                    = aws_iam_user.adm_wen_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_wen_jones__platform_admins" {
  user   = aws_iam_user.adm_wen_jones.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_zed_khan" {
  name = "axtri-1bmokt-adm-zed.khan"
}

resource "aws_iam_user_login_profile" "adm_zed_khan" {
  user                    = aws_iam_user.adm_zed_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_zed_khan__platform_admins" {
  user   = aws_iam_user.adm_zed_khan.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_jones" {
  name = "axtri-1bmokt-alice.jones"
}

resource "aws_iam_user_login_profile" "alice_jones" {
  user                    = aws_iam_user.alice_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_jones__web_3_devs" {
  user   = aws_iam_user.alice_jones.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "alice_kim" {
  name = "axtri-1bmokt-alice.kim"
}

resource "aws_iam_user_login_profile" "alice_kim" {
  user                    = aws_iam_user.alice_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_kim__web_2_devs" {
  user   = aws_iam_user.alice_kim.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "alice_kim__auth_3_analysts" {
  user   = aws_iam_user.alice_kim.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "alice_lopez" {
  name = "axtri-1bmokt-alice.lopez"
}

resource "aws_iam_user_group_membership" "alice_lopez__infra_2_analysts" {
  user   = aws_iam_user.alice_lopez.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "alice_nguyen" {
  name = "axtri-1bmokt-alice.nguyen"
}

resource "aws_iam_user_login_profile" "alice_nguyen" {
  user                    = aws_iam_user.alice_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_nguyen__support_3_analysts" {
  user   = aws_iam_user.alice_nguyen.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user" "alice_silva" {
  name = "axtri-1bmokt-alice.silva"
}

resource "aws_iam_user_login_profile" "alice_silva" {
  user                    = aws_iam_user.alice_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_silva__data_devs" {
  user   = aws_iam_user.alice_silva.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "alice_silva__api_analysts" {
  user   = aws_iam_user.alice_silva.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "amit_brown" {
  name = "axtri-1bmokt-amit.brown"
}

resource "aws_iam_user_login_profile" "amit_brown" {
  user                    = aws_iam_user.amit_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_brown__auth_devs" {
  user   = aws_iam_user.amit_brown.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "amit_haddad" {
  name = "axtri-1bmokt-amit.haddad"
}

resource "aws_iam_user_login_profile" "amit_haddad" {
  user                    = aws_iam_user.amit_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_haddad__auth_2_devs" {
  user   = aws_iam_user.amit_haddad.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "bela_chen" {
  name = "axtri-1bmokt-bela.chen"
}

resource "aws_iam_user_login_profile" "bela_chen" {
  user                    = aws_iam_user.bela_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_chen__web_2_devs" {
  user   = aws_iam_user.bela_chen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "bela_chen__infra_analysts" {
  user   = aws_iam_user.bela_chen.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "bela_chen2524" {
  name = "axtri-1bmokt-bela.chen2524"
}

resource "aws_iam_user_login_profile" "bela_chen2524" {
  user                    = aws_iam_user.bela_chen2524.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_chen2524__data_3_devs" {
  user   = aws_iam_user.bela_chen2524.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "bela_muller" {
  name = "axtri-1bmokt-bela.muller"
}

resource "aws_iam_user_login_profile" "bela_muller" {
  user                    = aws_iam_user.bela_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_muller__growth_2_devs" {
  user   = aws_iam_user.bela_muller.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "bela_singh" {
  name = "axtri-1bmokt-bela.singh"
}

resource "aws_iam_user_login_profile" "bela_singh" {
  user                    = aws_iam_user.bela_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh__support_3_devs" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user_group_membership" "bela_singh__support_2_analysts" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "axtri-1bmokt-bob.larsen"
}

resource "aws_iam_user_group_membership" "bob_larsen__mobile_analysts" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "bob_muller" {
  name = "axtri-1bmokt-bob.muller"
}

resource "aws_iam_user_login_profile" "bob_muller" {
  user                    = aws_iam_user.bob_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_muller__search_3_devs" {
  user   = aws_iam_user.bob_muller.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "carol_haddad" {
  name = "axtri-1bmokt-carol.haddad"
}

resource "aws_iam_user_login_profile" "carol_haddad" {
  user                    = aws_iam_user.carol_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_haddad__support_2_devs" {
  user   = aws_iam_user.carol_haddad.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_haddad__base_readonly" {
  user       = aws_iam_user.carol_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_kim" {
  name = "axtri-1bmokt-carol.kim"
}

resource "aws_iam_user_login_profile" "carol_kim" {
  user                    = aws_iam_user.carol_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_kim__mobile_devs" {
  user   = aws_iam_user.carol_kim.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "carol_sato" {
  name = "axtri-1bmokt-carol.sato"
}

resource "aws_iam_user_login_profile" "carol_sato" {
  user                    = aws_iam_user.carol_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_sato__api_2_devs" {
  user   = aws_iam_user.carol_sato.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "chen_ali" {
  name = "axtri-1bmokt-chen.ali"
}

resource "aws_iam_user_login_profile" "chen_ali" {
  user                    = aws_iam_user.chen_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_ali__ml_2_devs" {
  user   = aws_iam_user.chen_ali.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "chen_lopez" {
  name = "axtri-1bmokt-chen.lopez"
}

resource "aws_iam_user_login_profile" "chen_lopez" {
  user                    = aws_iam_user.chen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_lopez__search_3_devs" {
  user   = aws_iam_user.chen_lopez.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user_group_membership" "chen_lopez__search_analysts" {
  user   = aws_iam_user.chen_lopez.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "chen_muller" {
  name = "axtri-1bmokt-chen.muller"
}

resource "aws_iam_user_login_profile" "chen_muller" {
  user                    = aws_iam_user.chen_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_muller__api_devs" {
  user   = aws_iam_user.chen_muller.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user_policy_attachment" "chen_muller__base_readonly" {
  user       = aws_iam_user.chen_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_singh" {
  name = "axtri-1bmokt-chen.singh"
}

resource "aws_iam_user_login_profile" "chen_singh" {
  user                    = aws_iam_user.chen_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_singh__api_2_analysts" {
  user   = aws_iam_user.chen_singh.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "chen_singh__base_readonly" {
  user       = aws_iam_user.chen_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_haddad" {
  name = "axtri-1bmokt-dara.haddad"
}

resource "aws_iam_user_login_profile" "dara_haddad" {
  user                    = aws_iam_user.dara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_haddad__api_3_devs" {
  user   = aws_iam_user.dara_haddad.name
  groups = [aws_iam_group.api_3_devs.name]
}

resource "aws_iam_user" "dara_sato" {
  name = "axtri-1bmokt-dara.sato"
}

resource "aws_iam_user_login_profile" "dara_sato" {
  user                    = aws_iam_user.dara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_sato__infra_2_devs" {
  user   = aws_iam_user.dara_sato.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "dave_jones" {
  name = "axtri-1bmokt-dave.jones"
}

resource "aws_iam_user_login_profile" "dave_jones" {
  user                    = aws_iam_user.dave_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_jones__data_3_devs" {
  user   = aws_iam_user.dave_jones.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "dave_jones2592" {
  name = "axtri-1bmokt-dave.jones2592"
}

resource "aws_iam_user_login_profile" "dave_jones2592" {
  user                    = aws_iam_user.dave_jones2592.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_jones2592__infra_2_devs" {
  user   = aws_iam_user.dave_jones2592.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "dave_larsen" {
  name = "axtri-1bmokt-dave.larsen"
}

resource "aws_iam_user_login_profile" "dave_larsen" {
  user                    = aws_iam_user.dave_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen__ml_2_analysts" {
  user   = aws_iam_user.dave_larsen.name
  groups = [aws_iam_group.ml_2_analysts.name]
}

resource "aws_iam_user" "dave_silva" {
  name = "axtri-1bmokt-dave.silva"
}

resource "aws_iam_user_login_profile" "dave_silva" {
  user                    = aws_iam_user.dave_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_silva__web_analysts" {
  user   = aws_iam_user.dave_silva.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "dave_singh" {
  name = "axtri-1bmokt-dave.singh"
}

resource "aws_iam_user_login_profile" "dave_singh" {
  user                    = aws_iam_user.dave_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_singh__notifications_devs" {
  user   = aws_iam_user.dave_singh.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "eli_chen" {
  name = "axtri-1bmokt-eli.chen"
}

resource "aws_iam_user_login_profile" "eli_chen" {
  user                    = aws_iam_user.eli_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_chen__data_3_devs" {
  user   = aws_iam_user.eli_chen.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "eli_nguyen" {
  name = "axtri-1bmokt-eli.nguyen"
}

resource "aws_iam_user_login_profile" "eli_nguyen" {
  user                    = aws_iam_user.eli_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_nguyen__notifications_2_devs" {
  user   = aws_iam_user.eli_nguyen.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "erin_davis" {
  name = "axtri-1bmokt-erin.davis"
}

resource "aws_iam_user_login_profile" "erin_davis" {
  user                    = aws_iam_user.erin_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_davis__infra_devs" {
  user   = aws_iam_user.erin_davis.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "erin_davis__infra_analysts" {
  user   = aws_iam_user.erin_davis.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "erin_lopez" {
  name = "axtri-1bmokt-erin.lopez"
}

resource "aws_iam_user_login_profile" "erin_lopez" {
  user                    = aws_iam_user.erin_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_lopez__web_3_devs" {
  user   = aws_iam_user.erin_lopez.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "erin_novak" {
  name = "axtri-1bmokt-erin.novak"
}

resource "aws_iam_user_group_membership" "erin_novak__data_2_devs" {
  user   = aws_iam_user.erin_novak.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_group_membership" "erin_novak__billing_3_analysts" {
  user   = aws_iam_user.erin_novak.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "erin_singh" {
  name = "axtri-1bmokt-erin.singh"
}

resource "aws_iam_user_login_profile" "erin_singh" {
  user                    = aws_iam_user.erin_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_singh__auth_2_devs" {
  user   = aws_iam_user.erin_singh.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_group_membership" "erin_singh__search_2_analysts" {
  user   = aws_iam_user.erin_singh.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "ext_bela_novak" {
  name = "axtri-1bmokt-ext-bela.novak"
}

resource "aws_iam_user_login_profile" "ext_bela_novak" {
  user                    = aws_iam_user.ext_bela_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_novak__contractors" {
  user   = aws_iam_user.ext_bela_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_bela_novak__search_2_analysts" {
  user   = aws_iam_user.ext_bela_novak.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "ext_bela_patel" {
  name = "axtri-1bmokt-ext-bela.patel"
}

resource "aws_iam_user_login_profile" "ext_bela_patel" {
  user                    = aws_iam_user.ext_bela_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_patel__contractors" {
  user   = aws_iam_user.ext_bela_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_chen_smith" {
  name = "axtri-1bmokt-ext-chen.smith"
}

resource "aws_iam_user_login_profile" "ext_chen_smith" {
  user                    = aws_iam_user.ext_chen_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_smith__contractors" {
  user   = aws_iam_user.ext_chen_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dave_cohen" {
  name = "axtri-1bmokt-ext-dave.cohen"
}

resource "aws_iam_user_login_profile" "ext_dave_cohen" {
  user                    = aws_iam_user.ext_dave_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_cohen__contractors" {
  user   = aws_iam_user.ext_dave_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_cohen__billing_analysts" {
  user   = aws_iam_user.ext_dave_cohen.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "ext_erin_garcia" {
  name = "axtri-1bmokt-ext-erin.garcia"
}

resource "aws_iam_user_login_profile" "ext_erin_garcia" {
  user                    = aws_iam_user.ext_erin_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_garcia__contractors" {
  user   = aws_iam_user.ext_erin_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_erin_garcia__data_3_analysts" {
  user   = aws_iam_user.ext_erin_garcia.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "ext_fay_dubois" {
  name = "axtri-1bmokt-ext-fay.dubois"
}

resource "aws_iam_user_login_profile" "ext_fay_dubois" {
  user                    = aws_iam_user.ext_fay_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_dubois__contractors" {
  user   = aws_iam_user.ext_fay_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_fay_dubois__auth_2_analysts" {
  user   = aws_iam_user.ext_fay_dubois.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "ext_frank_okafor" {
  name = "axtri-1bmokt-ext-frank.okafor"
}

resource "aws_iam_user_login_profile" "ext_frank_okafor" {
  user                    = aws_iam_user.ext_frank_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_okafor__contractors" {
  user   = aws_iam_user.ext_frank_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_okafor__search_analysts" {
  user   = aws_iam_user.ext_frank_okafor.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "ext_grace_davis" {
  name = "axtri-1bmokt-ext-grace.davis"
}

resource "aws_iam_user_login_profile" "ext_grace_davis" {
  user                    = aws_iam_user.ext_grace_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_davis__contractors" {
  user   = aws_iam_user.ext_grace_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_grace_davis__auth_3_analysts" {
  user   = aws_iam_user.ext_grace_davis.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ext_grace_davis__inj_pol_p2" {
  user       = aws_iam_user.ext_grace_davis.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_grace_davis__inj_legacy_p6" {
  user       = aws_iam_user.ext_grace_davis.name
  policy_arn = aws_iam_policy.inj_legacy_p6.arn
}

resource "aws_iam_user_policy_attachment" "ext_grace_davis__inj_pol_p7" {
  user       = aws_iam_user.ext_grace_davis.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_user_policy_attachment" "ext_grace_davis__inj_pol_p8" {
  user       = aws_iam_user.ext_grace_davis.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_user_policy_attachment" "ext_grace_davis__inj_pol_p9" {
  user       = aws_iam_user.ext_grace_davis.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_user" "ext_heidi_ivanov" {
  name = "axtri-1bmokt-ext-heidi.ivanov"
}

resource "aws_iam_user_login_profile" "ext_heidi_ivanov" {
  user                    = aws_iam_user.ext_heidi_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_ivanov__contractors" {
  user   = aws_iam_user.ext_heidi_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_heidi_okafor" {
  name = "axtri-1bmokt-ext-heidi.okafor"
}

resource "aws_iam_user_login_profile" "ext_heidi_okafor" {
  user                    = aws_iam_user.ext_heidi_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_okafor__contractors" {
  user   = aws_iam_user.ext_heidi_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_heidi_okafor__infra_3_analysts" {
  user   = aws_iam_user.ext_heidi_okafor.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "ext_ivan_muller" {
  name = "axtri-1bmokt-ext-ivan.muller"
}

resource "aws_iam_user_login_profile" "ext_ivan_muller" {
  user                    = aws_iam_user.ext_ivan_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_muller__contractors" {
  user   = aws_iam_user.ext_ivan_muller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_kia_chen" {
  name = "axtri-1bmokt-ext-kia.chen"
}

resource "aws_iam_user_login_profile" "ext_kia_chen" {
  user                    = aws_iam_user.ext_kia_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_chen__contractors" {
  user   = aws_iam_user.ext_kia_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_kia_ivanov" {
  name = "axtri-1bmokt-ext-kia.ivanov"
}

resource "aws_iam_user_login_profile" "ext_kia_ivanov" {
  user                    = aws_iam_user.ext_kia_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_ivanov__contractors" {
  user   = aws_iam_user.ext_kia_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_ivanov__infra_2_analysts" {
  user   = aws_iam_user.ext_kia_ivanov.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "ext_kia_larsen" {
  name = "axtri-1bmokt-ext-kia.larsen"
}

resource "aws_iam_user_login_profile" "ext_kia_larsen" {
  user                    = aws_iam_user.ext_kia_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_larsen__contractors" {
  user   = aws_iam_user.ext_kia_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_leo_singh" {
  name = "axtri-1bmokt-ext-leo.singh"
}

resource "aws_iam_user_login_profile" "ext_leo_singh" {
  user                    = aws_iam_user.ext_leo_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_singh__contractors" {
  user   = aws_iam_user.ext_leo_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_leo_singh__web_analysts" {
  user   = aws_iam_user.ext_leo_singh.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "ext_omar_davis" {
  name = "axtri-1bmokt-ext-omar.davis"
}

resource "aws_iam_user_login_profile" "ext_omar_davis" {
  user                    = aws_iam_user.ext_omar_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_omar_davis__contractors" {
  user   = aws_iam_user.ext_omar_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_omar_davis__auth_2_analysts" {
  user   = aws_iam_user.ext_omar_davis.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "ext_priya_nguyen" {
  name = "axtri-1bmokt-ext-priya.nguyen"
}

resource "aws_iam_user_login_profile" "ext_priya_nguyen" {
  user                    = aws_iam_user.ext_priya_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_nguyen__contractors" {
  user   = aws_iam_user.ext_priya_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_priya_nguyen__data_3_analysts" {
  user   = aws_iam_user.ext_priya_nguyen.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "ext_uma_nguyen" {
  name = "axtri-1bmokt-ext-uma.nguyen"
}

resource "aws_iam_user_login_profile" "ext_uma_nguyen" {
  user                    = aws_iam_user.ext_uma_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_uma_nguyen__contractors" {
  user   = aws_iam_user.ext_uma_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_xia_okafor" {
  name = "axtri-1bmokt-ext-xia.okafor"
}

resource "aws_iam_user_login_profile" "ext_xia_okafor" {
  user                    = aws_iam_user.ext_xia_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_okafor__contractors" {
  user   = aws_iam_user.ext_xia_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_patel" {
  name = "axtri-1bmokt-fay.patel"
}

resource "aws_iam_user_login_profile" "fay_patel" {
  user                    = aws_iam_user.fay_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_patel__api_2_devs" {
  user   = aws_iam_user.fay_patel.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user_group_membership" "fay_patel__data_3_analysts" {
  user   = aws_iam_user.fay_patel.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "fay_reddy" {
  name = "axtri-1bmokt-fay.reddy"
}

resource "aws_iam_user_group_membership" "fay_reddy__api_2_devs" {
  user   = aws_iam_user.fay_reddy.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "fay_silva" {
  name = "axtri-1bmokt-fay.silva"
}

resource "aws_iam_user_login_profile" "fay_silva" {
  user                    = aws_iam_user.fay_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_silva__api_2_devs" {
  user   = aws_iam_user.fay_silva.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "fay_smith" {
  name = "axtri-1bmokt-fay.smith"
}

resource "aws_iam_user_login_profile" "fay_smith" {
  user                    = aws_iam_user.fay_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_smith__infra_2_devs" {
  user   = aws_iam_user.fay_smith.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user_group_membership" "fay_smith__auth_analysts" {
  user   = aws_iam_user.fay_smith.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "frank_nguyen" {
  name = "axtri-1bmokt-frank.nguyen"
}

resource "aws_iam_user_group_membership" "frank_nguyen__growth_devs" {
  user   = aws_iam_user.frank_nguyen.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "frank_sato" {
  name = "axtri-1bmokt-frank.sato"
}

resource "aws_iam_user_login_profile" "frank_sato" {
  user                    = aws_iam_user.frank_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_sato__auth_3_devs" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "frank_wong" {
  name = "axtri-1bmokt-frank.wong"
}

resource "aws_iam_user_login_profile" "frank_wong" {
  user                    = aws_iam_user.frank_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_wong__support_analysts" {
  user   = aws_iam_user.frank_wong.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "grace_ali" {
  name = "axtri-1bmokt-grace.ali"
}

resource "aws_iam_user_login_profile" "grace_ali" {
  user                    = aws_iam_user.grace_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ali__growth_devs" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user_group_membership" "grace_ali__search_2_analysts" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "grace_chen" {
  name = "axtri-1bmokt-grace.chen"
}

resource "aws_iam_user_login_profile" "grace_chen" {
  user                    = aws_iam_user.grace_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_chen__mobile_2_devs" {
  user   = aws_iam_user.grace_chen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "grace_garcia" {
  name = "axtri-1bmokt-grace.garcia"
}

resource "aws_iam_user_login_profile" "grace_garcia" {
  user                    = aws_iam_user.grace_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_garcia__api_2_analysts" {
  user   = aws_iam_user.grace_garcia.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "grace_larsen" {
  name = "axtri-1bmokt-grace.larsen"
}

resource "aws_iam_user_login_profile" "grace_larsen" {
  user                    = aws_iam_user.grace_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_larsen__api_3_devs" {
  user   = aws_iam_user.grace_larsen.name
  groups = [aws_iam_group.api_3_devs.name]
}

resource "aws_iam_user" "grace_novak" {
  name = "axtri-1bmokt-grace.novak"
}

resource "aws_iam_user_login_profile" "grace_novak" {
  user                    = aws_iam_user.grace_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_novak__web_devs" {
  user   = aws_iam_user.grace_novak.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "grace_silva" {
  name = "axtri-1bmokt-grace.silva"
}

resource "aws_iam_user_login_profile" "grace_silva" {
  user                    = aws_iam_user.grace_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_silva__web_devs" {
  user   = aws_iam_user.grace_silva.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "grace_singh" {
  name = "axtri-1bmokt-grace.singh"
}

resource "aws_iam_user_login_profile" "grace_singh" {
  user                    = aws_iam_user.grace_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_singh__support_devs" {
  user   = aws_iam_user.grace_singh.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "grace_smith" {
  name = "axtri-1bmokt-grace.smith"
}

resource "aws_iam_user_login_profile" "grace_smith" {
  user                    = aws_iam_user.grace_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_smith__growth_devs" {
  user   = aws_iam_user.grace_smith.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "gus_mehta" {
  name = "axtri-1bmokt-gus.mehta"
}

resource "aws_iam_user_login_profile" "gus_mehta" {
  user                    = aws_iam_user.gus_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_mehta__support_2_devs" {
  user   = aws_iam_user.gus_mehta.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "gus_novak" {
  name = "axtri-1bmokt-gus.novak"
}

resource "aws_iam_user_login_profile" "gus_novak" {
  user                    = aws_iam_user.gus_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_novak__growth_2_devs" {
  user   = aws_iam_user.gus_novak.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "gus_patel" {
  name = "axtri-1bmokt-gus.patel"
}

resource "aws_iam_user_login_profile" "gus_patel" {
  user                    = aws_iam_user.gus_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_patel__infra_devs" {
  user   = aws_iam_user.gus_patel.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "gus_patel__billing_2_analysts" {
  user   = aws_iam_user.gus_patel.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "axtri-1bmokt-hana.chen"
}

resource "aws_iam_user_login_profile" "hana_chen" {
  user                    = aws_iam_user.hana_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen__data_devs" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "hana_garcia" {
  name = "axtri-1bmokt-hana.garcia"
}

resource "aws_iam_user_login_profile" "hana_garcia" {
  user                    = aws_iam_user.hana_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_garcia__web_devs" {
  user   = aws_iam_user.hana_garcia.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_policy_attachment" "hana_garcia__base_readonly" {
  user       = aws_iam_user.hana_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "hana_garcia4074" {
  name = "axtri-1bmokt-hana.garcia4074"
}

resource "aws_iam_user_login_profile" "hana_garcia4074" {
  user                    = aws_iam_user.hana_garcia4074.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_garcia4074__web_devs" {
  user   = aws_iam_user.hana_garcia4074.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "hana_reddy" {
  name = "axtri-1bmokt-hana.reddy"
}

resource "aws_iam_user_login_profile" "hana_reddy" {
  user                    = aws_iam_user.hana_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_reddy__mobile_3_devs" {
  user   = aws_iam_user.hana_reddy.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user_group_membership" "hana_reddy__auth_analysts" {
  user   = aws_iam_user.hana_reddy.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "hana_reddy1353" {
  name = "axtri-1bmokt-hana.reddy1353"
}

resource "aws_iam_user_group_membership" "hana_reddy1353__growth_3_devs" {
  user   = aws_iam_user.hana_reddy1353.name
  groups = [aws_iam_group.growth_3_devs.name]
}

resource "aws_iam_user_group_membership" "hana_reddy1353__auth_2_analysts" {
  user   = aws_iam_user.hana_reddy1353.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "hana_reddy1353__base_readonly" {
  user       = aws_iam_user.hana_reddy1353.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "hana_sato" {
  name = "axtri-1bmokt-hana.sato"
}

resource "aws_iam_user_login_profile" "hana_sato" {
  user                    = aws_iam_user.hana_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_sato__billing_3_devs" {
  user   = aws_iam_user.hana_sato.name
  groups = [aws_iam_group.billing_3_devs.name]
}

resource "aws_iam_user" "heidi_wong" {
  name = "axtri-1bmokt-heidi.wong"
}

resource "aws_iam_user_login_profile" "heidi_wong" {
  user                    = aws_iam_user.heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_wong__support_analysts" {
  user   = aws_iam_user.heidi_wong.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user_group_membership" "heidi_wong__notifications_2_analysts" {
  user   = aws_iam_user.heidi_wong.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "ian_gupta" {
  name = "axtri-1bmokt-ian.gupta"
}

resource "aws_iam_user_group_membership" "ian_gupta__web_devs" {
  user   = aws_iam_user.ian_gupta.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_group_membership" "ian_gupta__growth_2_analysts" {
  user   = aws_iam_user.ian_gupta.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "ian_gupta7671" {
  name = "axtri-1bmokt-ian.gupta7671"
}

resource "aws_iam_user_login_profile" "ian_gupta7671" {
  user                    = aws_iam_user.ian_gupta7671.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_gupta7671__support_3_devs" {
  user   = aws_iam_user.ian_gupta7671.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "ian_khan" {
  name = "axtri-1bmokt-ian.khan"
}

resource "aws_iam_user_group_membership" "ian_khan__infra_3_devs" {
  user   = aws_iam_user.ian_khan.name
  groups = [aws_iam_group.infra_3_devs.name]
}

resource "aws_iam_user" "ian_okafor" {
  name = "axtri-1bmokt-ian.okafor"
}

resource "aws_iam_user_login_profile" "ian_okafor" {
  user                    = aws_iam_user.ian_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_okafor__notifications_devs" {
  user   = aws_iam_user.ian_okafor.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "ian_rossi" {
  name = "axtri-1bmokt-ian.rossi"
}

resource "aws_iam_user_login_profile" "ian_rossi" {
  user                    = aws_iam_user.ian_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_rossi__notifications_2_devs" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user_group_membership" "ian_rossi__support_3_analysts" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user" "ian_tanaka" {
  name = "axtri-1bmokt-ian.tanaka"
}

resource "aws_iam_user_login_profile" "ian_tanaka" {
  user                    = aws_iam_user.ian_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_tanaka__web_2_devs" {
  user   = aws_iam_user.ian_tanaka.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "ivan_khan" {
  name = "axtri-1bmokt-ivan.khan"
}

resource "aws_iam_user_login_profile" "ivan_khan" {
  user                    = aws_iam_user.ivan_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_khan__search_3_devs" {
  user   = aws_iam_user.ivan_khan.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "ivan_mehta" {
  name = "axtri-1bmokt-ivan.mehta"
}

resource "aws_iam_user_login_profile" "ivan_mehta" {
  user                    = aws_iam_user.ivan_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta__web_2_devs" {
  user   = aws_iam_user.ivan_mehta.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "judy_ali" {
  name = "axtri-1bmokt-judy.ali"
}

resource "aws_iam_user_group_membership" "judy_ali__web_2_devs" {
  user   = aws_iam_user.judy_ali.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "judy_garcia" {
  name = "axtri-1bmokt-judy.garcia"
}

resource "aws_iam_user_login_profile" "judy_garcia" {
  user                    = aws_iam_user.judy_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_garcia__billing_devs" {
  user   = aws_iam_user.judy_garcia.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "judy_garcia9967" {
  name = "axtri-1bmokt-judy.garcia9967"
}

resource "aws_iam_user_group_membership" "judy_garcia9967__auth_3_devs" {
  user   = aws_iam_user.judy_garcia9967.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "judy_miller" {
  name = "axtri-1bmokt-judy.miller"
}

resource "aws_iam_user_group_membership" "judy_miller__auth_devs" {
  user   = aws_iam_user.judy_miller.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "judy_novak" {
  name = "axtri-1bmokt-judy.novak"
}

resource "aws_iam_user_login_profile" "judy_novak" {
  user                    = aws_iam_user.judy_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_novak__infra_2_analysts" {
  user   = aws_iam_user.judy_novak.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "judy_novak__base_readonly" {
  user       = aws_iam_user.judy_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "judy_smith" {
  name = "axtri-1bmokt-judy.smith"
}

resource "aws_iam_user_group_membership" "judy_smith__support_analysts" {
  user   = aws_iam_user.judy_smith.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "judy_tanaka" {
  name = "axtri-1bmokt-judy.tanaka"
}

resource "aws_iam_user_login_profile" "judy_tanaka" {
  user                    = aws_iam_user.judy_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_tanaka__mobile_2_devs" {
  user   = aws_iam_user.judy_tanaka.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "jun_haddad" {
  name = "axtri-1bmokt-jun.haddad"
}

resource "aws_iam_user_login_profile" "jun_haddad" {
  user                    = aws_iam_user.jun_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_haddad__mobile_2_devs" {
  user   = aws_iam_user.jun_haddad.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "karl_ali" {
  name = "axtri-1bmokt-karl.ali"
}

resource "aws_iam_user_login_profile" "karl_ali" {
  user                    = aws_iam_user.karl_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_ali__data_devs" {
  user   = aws_iam_user.karl_ali.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "karl_lopez" {
  name = "axtri-1bmokt-karl.lopez"
}

resource "aws_iam_user_login_profile" "karl_lopez" {
  user                    = aws_iam_user.karl_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_lopez__ml_devs" {
  user   = aws_iam_user.karl_lopez.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user_group_membership" "karl_lopez__search_3_analysts" {
  user   = aws_iam_user.karl_lopez.name
  groups = [aws_iam_group.search_3_analysts.name]
}

resource "aws_iam_user" "karl_lopez3345" {
  name = "axtri-1bmokt-karl.lopez3345"
}

resource "aws_iam_user_group_membership" "karl_lopez3345__mobile_devs" {
  user   = aws_iam_user.karl_lopez3345.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "karl_singh" {
  name = "axtri-1bmokt-karl.singh"
}

resource "aws_iam_user_login_profile" "karl_singh" {
  user                    = aws_iam_user.karl_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_singh__billing_3_devs" {
  user   = aws_iam_user.karl_singh.name
  groups = [aws_iam_group.billing_3_devs.name]
}

resource "aws_iam_user_group_membership" "karl_singh__notifications_analysts" {
  user   = aws_iam_user.karl_singh.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "kia_gupta" {
  name = "axtri-1bmokt-kia.gupta"
}

resource "aws_iam_user_group_membership" "kia_gupta__mobile_devs" {
  user   = aws_iam_user.kia_gupta.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "kia_larsen" {
  name = "axtri-1bmokt-kia.larsen"
}

resource "aws_iam_user_login_profile" "kia_larsen" {
  user                    = aws_iam_user.kia_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_larsen__web_3_analysts" {
  user   = aws_iam_user.kia_larsen.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_larsen__infra_3_analysts" {
  user   = aws_iam_user.kia_larsen.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "kia_patel" {
  name = "axtri-1bmokt-kia.patel"
}

resource "aws_iam_user_login_profile" "kia_patel" {
  user                    = aws_iam_user.kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_patel__auth_devs" {
  user   = aws_iam_user.kia_patel.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user_group_membership" "kia_patel__auth_3_analysts" {
  user   = aws_iam_user.kia_patel.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "kia_patel__base_readonly" {
  user       = aws_iam_user.kia_patel.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_singh" {
  name = "axtri-1bmokt-kia.singh"
}

resource "aws_iam_user_login_profile" "kia_singh" {
  user                    = aws_iam_user.kia_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_singh__web_2_analysts" {
  user   = aws_iam_user.kia_singh.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "lena_cohen" {
  name = "axtri-1bmokt-lena.cohen"
}

resource "aws_iam_user_login_profile" "lena_cohen" {
  user                    = aws_iam_user.lena_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_cohen__web_3_devs" {
  user   = aws_iam_user.lena_cohen.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "lena_davis" {
  name = "axtri-1bmokt-lena.davis"
}

resource "aws_iam_user_login_profile" "lena_davis" {
  user                    = aws_iam_user.lena_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_davis__notifications_2_devs" {
  user   = aws_iam_user.lena_davis.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "lena_garcia" {
  name = "axtri-1bmokt-lena.garcia"
}

resource "aws_iam_user_login_profile" "lena_garcia" {
  user                    = aws_iam_user.lena_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_garcia__ml_devs" {
  user   = aws_iam_user.lena_garcia.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user_group_membership" "lena_garcia__billing_3_analysts" {
  user   = aws_iam_user.lena_garcia.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "lena_larsen" {
  name = "axtri-1bmokt-lena.larsen"
}

resource "aws_iam_user_login_profile" "lena_larsen" {
  user                    = aws_iam_user.lena_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen__growth_devs" {
  user   = aws_iam_user.lena_larsen.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "lena_larsen3038" {
  name = "axtri-1bmokt-lena.larsen3038"
}

resource "aws_iam_user_login_profile" "lena_larsen3038" {
  user                    = aws_iam_user.lena_larsen3038.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen3038__support_devs" {
  user   = aws_iam_user.lena_larsen3038.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "lena_larsen7321" {
  name = "axtri-1bmokt-lena.larsen7321"
}

resource "aws_iam_user_login_profile" "lena_larsen7321" {
  user                    = aws_iam_user.lena_larsen7321.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen7321__infra_2_analysts" {
  user   = aws_iam_user.lena_larsen7321.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "lena_muller" {
  name = "axtri-1bmokt-lena.muller"
}

resource "aws_iam_user_login_profile" "lena_muller" {
  user                    = aws_iam_user.lena_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_muller__auth_2_devs" {
  user   = aws_iam_user.lena_muller.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "lena_reddy" {
  name = "axtri-1bmokt-lena.reddy"
}

resource "aws_iam_user_login_profile" "lena_reddy" {
  user                    = aws_iam_user.lena_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_reddy__mobile_2_analysts" {
  user   = aws_iam_user.lena_reddy.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user_group_membership" "lena_reddy__mobile_analysts" {
  user   = aws_iam_user.lena_reddy.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "lena_tanaka" {
  name = "axtri-1bmokt-lena.tanaka"
}

resource "aws_iam_user_login_profile" "lena_tanaka" {
  user                    = aws_iam_user.lena_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_tanaka__mobile_devs" {
  user   = aws_iam_user.lena_tanaka.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "lena_tanaka__billing_analysts" {
  user   = aws_iam_user.lena_tanaka.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "leo_brown" {
  name = "axtri-1bmokt-leo.brown"
}

resource "aws_iam_user_login_profile" "leo_brown" {
  user                    = aws_iam_user.leo_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_brown__growth_2_analysts" {
  user   = aws_iam_user.leo_brown.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "leo_jones" {
  name = "axtri-1bmokt-leo.jones"
}

resource "aws_iam_user_login_profile" "leo_jones" {
  user                    = aws_iam_user.leo_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_jones__notifications_devs" {
  user   = aws_iam_user.leo_jones.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user_group_membership" "leo_jones__auth_2_analysts" {
  user   = aws_iam_user.leo_jones.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "leo_nguyen" {
  name = "axtri-1bmokt-leo.nguyen"
}

resource "aws_iam_user_login_profile" "leo_nguyen" {
  user                    = aws_iam_user.leo_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_nguyen__web_3_devs" {
  user   = aws_iam_user.leo_nguyen.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "leo_nguyen__base_readonly" {
  user       = aws_iam_user.leo_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_silva" {
  name = "axtri-1bmokt-leo.silva"
}

resource "aws_iam_user_login_profile" "leo_silva" {
  user                    = aws_iam_user.leo_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_silva__auth_analysts" {
  user   = aws_iam_user.leo_silva.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user_group_membership" "leo_silva__auth_3_analysts" {
  user   = aws_iam_user.leo_silva.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "leo_wong" {
  name = "axtri-1bmokt-leo.wong"
}

resource "aws_iam_user_login_profile" "leo_wong" {
  user                    = aws_iam_user.leo_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_wong__support_3_analysts" {
  user   = aws_iam_user.leo_wong.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "leo_wong__base_readonly" {
  user       = aws_iam_user.leo_wong.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_gupta" {
  name = "axtri-1bmokt-mei.gupta"
}

resource "aws_iam_user_login_profile" "mei_gupta" {
  user                    = aws_iam_user.mei_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_gupta__web_2_devs" {
  user   = aws_iam_user.mei_gupta.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "mike_garcia" {
  name = "axtri-1bmokt-mike.garcia"
}

resource "aws_iam_user_login_profile" "mike_garcia" {
  user                    = aws_iam_user.mike_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_garcia__web_analysts" {
  user   = aws_iam_user.mike_garcia.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user_group_membership" "mike_garcia__notifications_analysts" {
  user   = aws_iam_user.mike_garcia.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "mike_miller" {
  name = "axtri-1bmokt-mike.miller"
}

resource "aws_iam_user_login_profile" "mike_miller" {
  user                    = aws_iam_user.mike_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_miller__api_3_analysts" {
  user   = aws_iam_user.mike_miller.name
  groups = [aws_iam_group.api_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mike_miller__base_readonly" {
  user       = aws_iam_user.mike_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_muller" {
  name = "axtri-1bmokt-mike.muller"
}

resource "aws_iam_user_login_profile" "mike_muller" {
  user                    = aws_iam_user.mike_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_muller__auth_2_devs" {
  user   = aws_iam_user.mike_muller.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "mike_muller__base_readonly" {
  user       = aws_iam_user.mike_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_sato" {
  name = "axtri-1bmokt-mike.sato"
}

resource "aws_iam_user_group_membership" "mike_sato__infra_analysts" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "nina_ali" {
  name = "axtri-1bmokt-nina.ali"
}

resource "aws_iam_user_login_profile" "nina_ali" {
  user                    = aws_iam_user.nina_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_ali__mobile_2_analysts" {
  user   = aws_iam_user.nina_ali.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "nina_brown" {
  name = "axtri-1bmokt-nina.brown"
}

resource "aws_iam_user_group_membership" "nina_brown__infra_2_devs" {
  user   = aws_iam_user.nina_brown.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user_group_membership" "nina_brown__infra_2_analysts" {
  user   = aws_iam_user.nina_brown.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "nina_jones" {
  name = "axtri-1bmokt-nina.jones"
}

resource "aws_iam_user_group_membership" "nina_jones__web_2_devs" {
  user   = aws_iam_user.nina_jones.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "nina_smith" {
  name = "axtri-1bmokt-nina.smith"
}

resource "aws_iam_user_login_profile" "nina_smith" {
  user                    = aws_iam_user.nina_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_smith__api_2_devs" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "nina_tanaka" {
  name = "axtri-1bmokt-nina.tanaka"
}

resource "aws_iam_user_login_profile" "nina_tanaka" {
  user                    = aws_iam_user.nina_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_tanaka__notifications_2_devs" {
  user   = aws_iam_user.nina_tanaka.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user_group_membership" "nina_tanaka__mobile_3_analysts" {
  user   = aws_iam_user.nina_tanaka.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "noor_chen" {
  name = "axtri-1bmokt-noor.chen"
}

resource "aws_iam_user_login_profile" "noor_chen" {
  user                    = aws_iam_user.noor_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_chen__ml_devs" {
  user   = aws_iam_user.noor_chen.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "noor_gupta" {
  name = "axtri-1bmokt-noor.gupta"
}

resource "aws_iam_user_login_profile" "noor_gupta" {
  user                    = aws_iam_user.noor_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_gupta__billing_2_devs" {
  user   = aws_iam_user.noor_gupta.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_group_membership" "noor_gupta__data_3_analysts" {
  user   = aws_iam_user.noor_gupta.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "noor_lopez" {
  name = "axtri-1bmokt-noor.lopez"
}

resource "aws_iam_user_login_profile" "noor_lopez" {
  user                    = aws_iam_user.noor_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_lopez__growth_2_devs" {
  user   = aws_iam_user.noor_lopez.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "noor_muller" {
  name = "axtri-1bmokt-noor.muller"
}

resource "aws_iam_user_login_profile" "noor_muller" {
  user                    = aws_iam_user.noor_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_muller__api_3_devs" {
  user   = aws_iam_user.noor_muller.name
  groups = [aws_iam_group.api_3_devs.name]
}

resource "aws_iam_user" "noor_singh" {
  name = "axtri-1bmokt-noor.singh"
}

resource "aws_iam_user_login_profile" "noor_singh" {
  user                    = aws_iam_user.noor_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_singh__support_2_analysts" {
  user   = aws_iam_user.noor_singh.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user_group_membership" "noor_singh__api_analysts" {
  user   = aws_iam_user.noor_singh.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "omar_gupta" {
  name = "axtri-1bmokt-omar.gupta"
}

resource "aws_iam_user_group_membership" "omar_gupta__mobile_3_devs" {
  user   = aws_iam_user.omar_gupta.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "omar_mehta" {
  name = "axtri-1bmokt-omar.mehta"
}

resource "aws_iam_user_login_profile" "omar_mehta" {
  user                    = aws_iam_user.omar_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_mehta__support_2_devs" {
  user   = aws_iam_user.omar_mehta.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "omar_miller" {
  name = "axtri-1bmokt-omar.miller"
}

resource "aws_iam_user_login_profile" "omar_miller" {
  user                    = aws_iam_user.omar_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_miller__search_3_devs" {
  user   = aws_iam_user.omar_miller.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user_group_membership" "omar_miller__infra_2_analysts" {
  user   = aws_iam_user.omar_miller.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "omar_okafor" {
  name = "axtri-1bmokt-omar.okafor"
}

resource "aws_iam_user_login_profile" "omar_okafor" {
  user                    = aws_iam_user.omar_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_okafor__support_3_devs" {
  user   = aws_iam_user.omar_okafor.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "omar_silva" {
  name = "axtri-1bmokt-omar.silva"
}

resource "aws_iam_user_login_profile" "omar_silva" {
  user                    = aws_iam_user.omar_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_silva__billing_devs" {
  user   = aws_iam_user.omar_silva.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "priya_dubois" {
  name = "axtri-1bmokt-priya.dubois"
}

resource "aws_iam_user_login_profile" "priya_dubois" {
  user                    = aws_iam_user.priya_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_dubois__auth_2_devs" {
  user   = aws_iam_user.priya_dubois.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "priya_kim" {
  name = "axtri-1bmokt-priya.kim"
}

resource "aws_iam_user_login_profile" "priya_kim" {
  user                    = aws_iam_user.priya_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_kim__infra_devs" {
  user   = aws_iam_user.priya_kim.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "priya_larsen" {
  name = "axtri-1bmokt-priya.larsen"
}

resource "aws_iam_user_login_profile" "priya_larsen" {
  user                    = aws_iam_user.priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_larsen__mobile_2_devs" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "priya_larsen__search_analysts" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "priya_nguyen" {
  name = "axtri-1bmokt-priya.nguyen"
}

resource "aws_iam_user_login_profile" "priya_nguyen" {
  user                    = aws_iam_user.priya_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_nguyen__ml_2_devs" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user_group_membership" "priya_nguyen__api_2_analysts" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "quinn_jones" {
  name = "axtri-1bmokt-quinn.jones"
}

resource "aws_iam_user_login_profile" "quinn_jones" {
  user                    = aws_iam_user.quinn_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_jones__search_3_devs" {
  user   = aws_iam_user.quinn_jones.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "quinn_larsen" {
  name = "axtri-1bmokt-quinn.larsen"
}

resource "aws_iam_user_login_profile" "quinn_larsen" {
  user                    = aws_iam_user.quinn_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_larsen__web_2_analysts" {
  user   = aws_iam_user.quinn_larsen.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "quinn_larsen__base_readonly" {
  user       = aws_iam_user.quinn_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_muller" {
  name = "axtri-1bmokt-quinn.muller"
}

resource "aws_iam_user_login_profile" "quinn_muller" {
  user                    = aws_iam_user.quinn_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_muller__billing_devs" {
  user   = aws_iam_user.quinn_muller.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "quinn_nguyen" {
  name = "axtri-1bmokt-quinn.nguyen"
}

resource "aws_iam_user_login_profile" "quinn_nguyen" {
  user                    = aws_iam_user.quinn_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_nguyen__auth_3_devs" {
  user   = aws_iam_user.quinn_nguyen.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "raj_ali" {
  name = "axtri-1bmokt-raj.ali"
}

resource "aws_iam_user_login_profile" "raj_ali" {
  user                    = aws_iam_user.raj_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_ali__billing_devs" {
  user   = aws_iam_user.raj_ali.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "raj_haddad" {
  name = "axtri-1bmokt-raj.haddad"
}

resource "aws_iam_user_login_profile" "raj_haddad" {
  user                    = aws_iam_user.raj_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_haddad__api_devs" {
  user   = aws_iam_user.raj_haddad.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user_group_membership" "raj_haddad__data_3_analysts" {
  user   = aws_iam_user.raj_haddad.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "raj_ivanov" {
  name = "axtri-1bmokt-raj.ivanov"
}

resource "aws_iam_user_group_membership" "raj_ivanov__data_devs" {
  user   = aws_iam_user.raj_ivanov.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "raj_jones" {
  name = "axtri-1bmokt-raj.jones"
}

resource "aws_iam_user_login_profile" "raj_jones" {
  user                    = aws_iam_user.raj_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_jones__infra_analysts" {
  user   = aws_iam_user.raj_jones.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "raj_sato" {
  name = "axtri-1bmokt-raj.sato"
}

resource "aws_iam_user_login_profile" "raj_sato" {
  user                    = aws_iam_user.raj_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_sato__ml_analysts" {
  user   = aws_iam_user.raj_sato.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "sara_chen" {
  name = "axtri-1bmokt-sara.chen"
}

resource "aws_iam_user_login_profile" "sara_chen" {
  user                    = aws_iam_user.sara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_chen__growth_2_devs" {
  user   = aws_iam_user.sara_chen.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "sara_ivanov" {
  name = "axtri-1bmokt-sara.ivanov"
}

resource "aws_iam_user_login_profile" "sara_ivanov" {
  user                    = aws_iam_user.sara_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_ivanov__support_3_devs" {
  user   = aws_iam_user.sara_ivanov.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "sara_khan" {
  name = "axtri-1bmokt-sara.khan"
}

resource "aws_iam_user_login_profile" "sara_khan" {
  user                    = aws_iam_user.sara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_khan__api_2_devs" {
  user   = aws_iam_user.sara_khan.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "sara_sato" {
  name = "axtri-1bmokt-sara.sato"
}

resource "aws_iam_user_login_profile" "sara_sato" {
  user                    = aws_iam_user.sara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_sato__web_3_analysts" {
  user   = aws_iam_user.sara_sato.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_sato__search_analysts" {
  user   = aws_iam_user.sara_sato.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user_policy_attachment" "sara_sato__base_readonly" {
  user       = aws_iam_user.sara_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_singh" {
  name = "axtri-1bmokt-sara.singh"
}

resource "aws_iam_user_login_profile" "sara_singh" {
  user                    = aws_iam_user.sara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_singh__api_2_devs" {
  user   = aws_iam_user.sara_singh.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user_group_membership" "sara_singh__web_3_analysts" {
  user   = aws_iam_user.sara_singh.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user" "sara_smith" {
  name = "axtri-1bmokt-sara.smith"
}

resource "aws_iam_user_login_profile" "sara_smith" {
  user                    = aws_iam_user.sara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_smith__infra_2_devs" {
  user   = aws_iam_user.sara_smith.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "sara_smith__base_readonly" {
  user       = aws_iam_user.sara_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_tanaka" {
  name = "axtri-1bmokt-sara.tanaka"
}

resource "aws_iam_user_login_profile" "sara_tanaka" {
  user                    = aws_iam_user.sara_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_tanaka__search_2_devs" {
  user   = aws_iam_user.sara_tanaka.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "sara_wong" {
  name = "axtri-1bmokt-sara.wong"
}

resource "aws_iam_user_group_membership" "sara_wong__web_devs" {
  user   = aws_iam_user.sara_wong.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "sara_wong3258" {
  name = "axtri-1bmokt-sara.wong3258"
}

resource "aws_iam_user_login_profile" "sara_wong3258" {
  user                    = aws_iam_user.sara_wong3258.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_wong3258__mobile_3_devs" {
  user   = aws_iam_user.sara_wong3258.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user_group_membership" "sara_wong3258__auth_2_analysts" {
  user   = aws_iam_user.sara_wong3258.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "tom_ali" {
  name = "axtri-1bmokt-tom.ali"
}

resource "aws_iam_user_login_profile" "tom_ali" {
  user                    = aws_iam_user.tom_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ali__data_devs" {
  user   = aws_iam_user.tom_ali.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "tom_ali__infra_3_analysts" {
  user   = aws_iam_user.tom_ali.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "tom_dubois" {
  name = "axtri-1bmokt-tom.dubois"
}

resource "aws_iam_user_login_profile" "tom_dubois" {
  user                    = aws_iam_user.tom_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_dubois__search_analysts" {
  user   = aws_iam_user.tom_dubois.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "tom_haddad" {
  name = "axtri-1bmokt-tom.haddad"
}

resource "aws_iam_user_login_profile" "tom_haddad" {
  user                    = aws_iam_user.tom_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_haddad__ml_devs" {
  user   = aws_iam_user.tom_haddad.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "uma_ali" {
  name = "axtri-1bmokt-uma.ali"
}

resource "aws_iam_user_login_profile" "uma_ali" {
  user                    = aws_iam_user.uma_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_ali__mobile_devs" {
  user   = aws_iam_user.uma_ali.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "uma_ali__auth_3_analysts" {
  user   = aws_iam_user.uma_ali.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "uma_davis" {
  name = "axtri-1bmokt-uma.davis"
}

resource "aws_iam_user_login_profile" "uma_davis" {
  user                    = aws_iam_user.uma_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_davis__infra_analysts" {
  user   = aws_iam_user.uma_davis.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "uma_muller" {
  name = "axtri-1bmokt-uma.muller"
}

resource "aws_iam_user_login_profile" "uma_muller" {
  user                    = aws_iam_user.uma_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_muller__billing_devs" {
  user   = aws_iam_user.uma_muller.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "vik_brown" {
  name = "axtri-1bmokt-vik.brown"
}

resource "aws_iam_user_login_profile" "vik_brown" {
  user                    = aws_iam_user.vik_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_brown__support_analysts" {
  user   = aws_iam_user.vik_brown.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user_group_membership" "vik_brown__api_analysts" {
  user   = aws_iam_user.vik_brown.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "vik_okafor" {
  name = "axtri-1bmokt-vik.okafor"
}

resource "aws_iam_user_login_profile" "vik_okafor" {
  user                    = aws_iam_user.vik_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_okafor__mobile_devs" {
  user   = aws_iam_user.vik_okafor.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "vik_reddy" {
  name = "axtri-1bmokt-vik.reddy"
}

resource "aws_iam_user_login_profile" "vik_reddy" {
  user                    = aws_iam_user.vik_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_reddy__data_3_analysts" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user_group_membership" "vik_reddy__data_analysts" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "vik_reddy9187" {
  name = "axtri-1bmokt-vik.reddy9187"
}

resource "aws_iam_user_login_profile" "vik_reddy9187" {
  user                    = aws_iam_user.vik_reddy9187.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_reddy9187__mobile_devs" {
  user   = aws_iam_user.vik_reddy9187.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "vik_wong" {
  name = "axtri-1bmokt-vik.wong"
}

resource "aws_iam_user_login_profile" "vik_wong" {
  user                    = aws_iam_user.vik_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_wong__infra_3_devs" {
  user   = aws_iam_user.vik_wong.name
  groups = [aws_iam_group.infra_3_devs.name]
}

resource "aws_iam_user" "wen_nguyen" {
  name = "axtri-1bmokt-wen.nguyen"
}

resource "aws_iam_user_login_profile" "wen_nguyen" {
  user                    = aws_iam_user.wen_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_nguyen__web_2_analysts" {
  user   = aws_iam_user.wen_nguyen.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "wen_rossi" {
  name = "axtri-1bmokt-wen.rossi"
}

resource "aws_iam_user_group_membership" "wen_rossi__api_3_devs" {
  user   = aws_iam_user.wen_rossi.name
  groups = [aws_iam_group.api_3_devs.name]
}

resource "aws_iam_user" "xia_cohen" {
  name = "axtri-1bmokt-xia.cohen"
}

resource "aws_iam_user_login_profile" "xia_cohen" {
  user                    = aws_iam_user.xia_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_cohen__infra_2_devs" {
  user   = aws_iam_user.xia_cohen.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "xia_garcia" {
  name = "axtri-1bmokt-xia.garcia"
}

resource "aws_iam_user_login_profile" "xia_garcia" {
  user                    = aws_iam_user.xia_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia__notifications_devs" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user_group_membership" "xia_garcia__web_analysts" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user_policy_attachment" "xia_garcia__base_readonly" {
  user       = aws_iam_user.xia_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "xia_lopez" {
  name = "axtri-1bmokt-xia.lopez"
}

resource "aws_iam_user_group_membership" "xia_lopez__auth_3_devs" {
  user   = aws_iam_user.xia_lopez.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user_group_membership" "xia_lopez__notifications_analysts" {
  user   = aws_iam_user.xia_lopez.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user_policy_attachment" "xia_lopez__base_readonly" {
  user       = aws_iam_user.xia_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "xia_mehta" {
  name = "axtri-1bmokt-xia.mehta"
}

resource "aws_iam_user_login_profile" "xia_mehta" {
  user                    = aws_iam_user.xia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_mehta__growth_2_devs" {
  user   = aws_iam_user.xia_mehta.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user_group_membership" "xia_mehta__search_3_analysts" {
  user   = aws_iam_user.xia_mehta.name
  groups = [aws_iam_group.search_3_analysts.name]
}

resource "aws_iam_user" "xia_miller" {
  name = "axtri-1bmokt-xia.miller"
}

resource "aws_iam_user_group_membership" "xia_miller__api_devs" {
  user   = aws_iam_user.xia_miller.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "xia_wong" {
  name = "axtri-1bmokt-xia.wong"
}

resource "aws_iam_user_login_profile" "xia_wong" {
  user                    = aws_iam_user.xia_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_wong__search_3_devs" {
  user   = aws_iam_user.xia_wong.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "yara_dubois" {
  name = "axtri-1bmokt-yara.dubois"
}

resource "aws_iam_user_login_profile" "yara_dubois" {
  user                    = aws_iam_user.yara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_dubois__infra_devs" {
  user   = aws_iam_user.yara_dubois.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "yara_ivanov" {
  name = "axtri-1bmokt-yara.ivanov"
}

resource "aws_iam_user_login_profile" "yara_ivanov" {
  user                    = aws_iam_user.yara_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_ivanov__search_devs" {
  user   = aws_iam_user.yara_ivanov.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "yara_khan" {
  name = "axtri-1bmokt-yara.khan"
}

resource "aws_iam_user_login_profile" "yara_khan" {
  user                    = aws_iam_user.yara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_khan__mobile_2_devs" {
  user   = aws_iam_user.yara_khan.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "yara_muller" {
  name = "axtri-1bmokt-yara.muller"
}

resource "aws_iam_user_login_profile" "yara_muller" {
  user                    = aws_iam_user.yara_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_muller__infra_3_devs" {
  user   = aws_iam_user.yara_muller.name
  groups = [aws_iam_group.infra_3_devs.name]
}

resource "aws_iam_user" "yara_okafor" {
  name = "axtri-1bmokt-yara.okafor"
}

resource "aws_iam_user_login_profile" "yara_okafor" {
  user                    = aws_iam_user.yara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_okafor__support_3_devs" {
  user   = aws_iam_user.yara_okafor.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "yara_reddy" {
  name = "axtri-1bmokt-yara.reddy"
}

resource "aws_iam_user_login_profile" "yara_reddy" {
  user                    = aws_iam_user.yara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_reddy__support_2_devs" {
  user   = aws_iam_user.yara_reddy.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "yara_smith" {
  name = "axtri-1bmokt-yara.smith"
}

resource "aws_iam_user_login_profile" "yara_smith" {
  user                    = aws_iam_user.yara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_smith__data_devs" {
  user   = aws_iam_user.yara_smith.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "yara_smith__data_analysts" {
  user   = aws_iam_user.yara_smith.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "zed_lopez" {
  name = "axtri-1bmokt-zed.lopez"
}

resource "aws_iam_user_login_profile" "zed_lopez" {
  user                    = aws_iam_user.zed_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_lopez__support_devs" {
  user   = aws_iam_user.zed_lopez.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "zed_patel" {
  name = "axtri-1bmokt-zed.patel"
}

resource "aws_iam_user_login_profile" "zed_patel" {
  user                    = aws_iam_user.zed_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel__mobile_3_analysts" {
  user   = aws_iam_user.zed_patel.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "zed_silva" {
  name = "axtri-1bmokt-zed.silva"
}

resource "aws_iam_user_login_profile" "zed_silva" {
  user                    = aws_iam_user.zed_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_silva__billing_devs" {
  user   = aws_iam_user.zed_silva.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "zed_tanaka" {
  name = "axtri-1bmokt-zed.tanaka"
}

resource "aws_iam_user_login_profile" "zed_tanaka" {
  user                    = aws_iam_user.zed_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_tanaka__mobile_2_devs" {
  user   = aws_iam_user.zed_tanaka.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "zed_tanaka__data_3_analysts" {
  user   = aws_iam_user.zed_tanaka.name
  groups = [aws_iam_group.data_3_analysts.name]
}
