resource "aws_iam_user" "adm_ian_garcia" {
  name = "lumzen-15ocuk-adm-ian.garcia"
}

resource "aws_iam_user_login_profile" "adm_ian_garcia" {
  user                    = aws_iam_user.adm_ian_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_ian_garcia__platform_admins" {
  user   = aws_iam_user.adm_ian_garcia.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_yara_dubois" {
  name = "lumzen-15ocuk-adm-yara.dubois"
}

resource "aws_iam_user_login_profile" "adm_yara_dubois" {
  user                    = aws_iam_user.adm_yara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_yara_dubois__platform_admins" {
  user   = aws_iam_user.adm_yara_dubois.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_chen" {
  name = "lumzen-15ocuk-alice.chen"
}

resource "aws_iam_user_login_profile" "alice_chen" {
  user                    = aws_iam_user.alice_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_chen__data_2_devs" {
  user   = aws_iam_user.alice_chen.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "alice_sato" {
  name = "lumzen-15ocuk-alice.sato"
}

resource "aws_iam_user_login_profile" "alice_sato" {
  user                    = aws_iam_user.alice_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_sato__search_analysts" {
  user   = aws_iam_user.alice_sato.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "alice_singh" {
  name = "lumzen-15ocuk-alice.singh"
}

resource "aws_iam_user_login_profile" "alice_singh" {
  user                    = aws_iam_user.alice_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_singh__api_2_devs" {
  user   = aws_iam_user.alice_singh.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "amit_ali" {
  name = "lumzen-15ocuk-amit.ali"
}

resource "aws_iam_user_login_profile" "amit_ali" {
  user                    = aws_iam_user.amit_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_ali__billing_devs" {
  user   = aws_iam_user.amit_ali.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "amit_muller" {
  name = "lumzen-15ocuk-amit.muller"
}

resource "aws_iam_user_login_profile" "amit_muller" {
  user                    = aws_iam_user.amit_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_muller__billing_devs" {
  user   = aws_iam_user.amit_muller.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "amit_patel" {
  name = "lumzen-15ocuk-amit.patel"
}

resource "aws_iam_user_login_profile" "amit_patel" {
  user                    = aws_iam_user.amit_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_patel__infra_2_devs" {
  user   = aws_iam_user.amit_patel.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "amit_singh" {
  name = "lumzen-15ocuk-amit.singh"
}

resource "aws_iam_user_login_profile" "amit_singh" {
  user                    = aws_iam_user.amit_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_singh__support_2_devs" {
  user   = aws_iam_user.amit_singh.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "bela_davis" {
  name = "lumzen-15ocuk-bela.davis"
}

resource "aws_iam_user_group_membership" "bela_davis__growth_2_analysts" {
  user   = aws_iam_user.bela_davis.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "bela_gupta" {
  name = "lumzen-15ocuk-bela.gupta"
}

resource "aws_iam_user_login_profile" "bela_gupta" {
  user                    = aws_iam_user.bela_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_gupta__api_2_analysts" {
  user   = aws_iam_user.bela_gupta.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "bela_ivanov" {
  name = "lumzen-15ocuk-bela.ivanov"
}

resource "aws_iam_user_group_membership" "bela_ivanov__api_2_devs" {
  user   = aws_iam_user.bela_ivanov.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "bob_dubois" {
  name = "lumzen-15ocuk-bob.dubois"
}

resource "aws_iam_user_login_profile" "bob_dubois" {
  user                    = aws_iam_user.bob_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_dubois__ml_devs" {
  user   = aws_iam_user.bob_dubois.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "bob_jones" {
  name = "lumzen-15ocuk-bob.jones"
}

resource "aws_iam_user_group_membership" "bob_jones__support_2_devs" {
  user   = aws_iam_user.bob_jones.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "lumzen-15ocuk-bob.larsen"
}

resource "aws_iam_user_login_profile" "bob_larsen" {
  user                    = aws_iam_user.bob_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_larsen__growth_2_devs" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "bob_lopez" {
  name = "lumzen-15ocuk-bob.lopez"
}

resource "aws_iam_user_login_profile" "bob_lopez" {
  user                    = aws_iam_user.bob_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_lopez__api_devs" {
  user   = aws_iam_user.bob_lopez.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "carol_haddad" {
  name = "lumzen-15ocuk-carol.haddad"
}

resource "aws_iam_user_login_profile" "carol_haddad" {
  user                    = aws_iam_user.carol_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_haddad__data_2_devs" {
  user   = aws_iam_user.carol_haddad.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_group_membership" "carol_haddad__search_analysts" {
  user   = aws_iam_user.carol_haddad.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "carol_mehta" {
  name = "lumzen-15ocuk-carol.mehta"
}

resource "aws_iam_user_group_membership" "carol_mehta__auth_analysts" {
  user   = aws_iam_user.carol_mehta.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "chen_cohen" {
  name = "lumzen-15ocuk-chen.cohen"
}

resource "aws_iam_user_login_profile" "chen_cohen" {
  user                    = aws_iam_user.chen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_cohen__billing_2_devs" {
  user   = aws_iam_user.chen_cohen.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "dara_chen" {
  name = "lumzen-15ocuk-dara.chen"
}

resource "aws_iam_user_login_profile" "dara_chen" {
  user                    = aws_iam_user.dara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_chen__api_devs" {
  user   = aws_iam_user.dara_chen.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "dara_chen6149" {
  name = "lumzen-15ocuk-dara.chen6149"
}

resource "aws_iam_user_login_profile" "dara_chen6149" {
  user                    = aws_iam_user.dara_chen6149.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_chen6149__data_devs" {
  user   = aws_iam_user.dara_chen6149.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "dara_smith" {
  name = "lumzen-15ocuk-dara.smith"
}

resource "aws_iam_user_login_profile" "dara_smith" {
  user                    = aws_iam_user.dara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_smith__mobile_2_devs" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "dara_smith__data_analysts" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "dave_lopez" {
  name = "lumzen-15ocuk-dave.lopez"
}

resource "aws_iam_user_login_profile" "dave_lopez" {
  user                    = aws_iam_user.dave_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_lopez__mobile_devs" {
  user   = aws_iam_user.dave_lopez.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "eli_kim" {
  name = "lumzen-15ocuk-eli.kim"
}

resource "aws_iam_user_login_profile" "eli_kim" {
  user                    = aws_iam_user.eli_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_kim__ml_analysts" {
  user   = aws_iam_user.eli_kim.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "eli_novak" {
  name = "lumzen-15ocuk-eli.novak"
}

resource "aws_iam_user_login_profile" "eli_novak" {
  user                    = aws_iam_user.eli_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_novak__ml_devs" {
  user   = aws_iam_user.eli_novak.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "eli_smith" {
  name = "lumzen-15ocuk-eli.smith"
}

resource "aws_iam_user_login_profile" "eli_smith" {
  user                    = aws_iam_user.eli_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_smith__web_devs" {
  user   = aws_iam_user.eli_smith.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "erin_ivanov" {
  name = "lumzen-15ocuk-erin.ivanov"
}

resource "aws_iam_user_login_profile" "erin_ivanov" {
  user                    = aws_iam_user.erin_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_ivanov__data_devs" {
  user   = aws_iam_user.erin_ivanov.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "erin_singh" {
  name = "lumzen-15ocuk-erin.singh"
}

resource "aws_iam_user_login_profile" "erin_singh" {
  user                    = aws_iam_user.erin_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_singh__growth_devs" {
  user   = aws_iam_user.erin_singh.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "ext_dara_smith" {
  name = "lumzen-15ocuk-ext-dara.smith"
}

resource "aws_iam_user_login_profile" "ext_dara_smith" {
  user                    = aws_iam_user.ext_dara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_smith__contractors" {
  user   = aws_iam_user.ext_dara_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dara_smith__auth_2_analysts" {
  user   = aws_iam_user.ext_dara_smith.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user_group_membership" "ext_dara_smith__inj_grp_g1" {
  user   = aws_iam_user.ext_dara_smith.name
  groups = [aws_iam_group.inj_grp_g1.name]
}

resource "aws_iam_user_group_membership" "ext_dara_smith__inj_grp_g4" {
  user   = aws_iam_user.ext_dara_smith.name
  groups = [aws_iam_group.inj_grp_g4.name]
}

resource "aws_iam_user_policy_attachment" "ext_dara_smith__inj_pol_p2" {
  user       = aws_iam_user.ext_dara_smith.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_dara_smith__inj_pol_p5" {
  user       = aws_iam_user.ext_dara_smith.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_user_policy_attachment" "ext_dara_smith__inj_pol_p9" {
  user       = aws_iam_user.ext_dara_smith.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_user_policy_attachment" "ext_dara_smith__inj_pol_p12" {
  user       = aws_iam_user.ext_dara_smith.name
  policy_arn = aws_iam_policy.inj_pol_p12.arn
}

resource "aws_iam_user" "ext_dara_smith2626" {
  name = "lumzen-15ocuk-ext-dara.smith2626"
}

resource "aws_iam_user_login_profile" "ext_dara_smith2626" {
  user                    = aws_iam_user.ext_dara_smith2626.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_smith2626__contractors" {
  user   = aws_iam_user.ext_dara_smith2626.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_frank_dubois" {
  name = "lumzen-15ocuk-ext-frank.dubois"
}

resource "aws_iam_user_login_profile" "ext_frank_dubois" {
  user                    = aws_iam_user.ext_frank_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_dubois__contractors" {
  user   = aws_iam_user.ext_frank_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_dubois__ml_analysts" {
  user   = aws_iam_user.ext_frank_dubois.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "ext_grace_davis" {
  name = "lumzen-15ocuk-ext-grace.davis"
}

resource "aws_iam_user_login_profile" "ext_grace_davis" {
  user                    = aws_iam_user.ext_grace_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_davis__contractors" {
  user   = aws_iam_user.ext_grace_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_grace_tanaka" {
  name = "lumzen-15ocuk-ext-grace.tanaka"
}

resource "aws_iam_user_login_profile" "ext_grace_tanaka" {
  user                    = aws_iam_user.ext_grace_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_tanaka__contractors" {
  user   = aws_iam_user.ext_grace_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_karl_lopez" {
  name = "lumzen-15ocuk-ext-karl.lopez"
}

resource "aws_iam_user_login_profile" "ext_karl_lopez" {
  user                    = aws_iam_user.ext_karl_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_lopez__contractors" {
  user   = aws_iam_user.ext_karl_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_karl_lopez__support_2_analysts" {
  user   = aws_iam_user.ext_karl_lopez.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "ext_kia_patel" {
  name = "lumzen-15ocuk-ext-kia.patel"
}

resource "aws_iam_user_login_profile" "ext_kia_patel" {
  user                    = aws_iam_user.ext_kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_patel__contractors" {
  user   = aws_iam_user.ext_kia_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mei_silva" {
  name = "lumzen-15ocuk-ext-mei.silva"
}

resource "aws_iam_user_login_profile" "ext_mei_silva" {
  user                    = aws_iam_user.ext_mei_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_silva__contractors" {
  user   = aws_iam_user.ext_mei_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mei_silva__growth_2_analysts" {
  user   = aws_iam_user.ext_mei_silva.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "ext_noor_rossi" {
  name = "lumzen-15ocuk-ext-noor.rossi"
}

resource "aws_iam_user_login_profile" "ext_noor_rossi" {
  user                    = aws_iam_user.ext_noor_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_rossi__contractors" {
  user   = aws_iam_user.ext_noor_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_priya_silva" {
  name = "lumzen-15ocuk-ext-priya.silva"
}

resource "aws_iam_user_login_profile" "ext_priya_silva" {
  user                    = aws_iam_user.ext_priya_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_silva__contractors" {
  user   = aws_iam_user.ext_priya_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_raj_tanaka" {
  name = "lumzen-15ocuk-ext-raj.tanaka"
}

resource "aws_iam_user_login_profile" "ext_raj_tanaka" {
  user                    = aws_iam_user.ext_raj_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_tanaka__contractors" {
  user   = aws_iam_user.ext_raj_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_tanaka__web_2_analysts" {
  user   = aws_iam_user.ext_raj_tanaka.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "ext_uma_sato" {
  name = "lumzen-15ocuk-ext-uma.sato"
}

resource "aws_iam_user_login_profile" "ext_uma_sato" {
  user                    = aws_iam_user.ext_uma_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_uma_sato__contractors" {
  user   = aws_iam_user.ext_uma_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_uma_sato__auth_analysts" {
  user   = aws_iam_user.ext_uma_sato.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "ext_wen_sato" {
  name = "lumzen-15ocuk-ext-wen.sato"
}

resource "aws_iam_user_login_profile" "ext_wen_sato" {
  user                    = aws_iam_user.ext_wen_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_sato__contractors" {
  user   = aws_iam_user.ext_wen_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_wen_sato__api_2_analysts" {
  user   = aws_iam_user.ext_wen_sato.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "fay_ali" {
  name = "lumzen-15ocuk-fay.ali"
}

resource "aws_iam_user_group_membership" "fay_ali__api_devs" {
  user   = aws_iam_user.fay_ali.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "fay_ivanov" {
  name = "lumzen-15ocuk-fay.ivanov"
}

resource "aws_iam_user_login_profile" "fay_ivanov" {
  user                    = aws_iam_user.fay_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_ivanov__data_devs" {
  user   = aws_iam_user.fay_ivanov.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "fay_muller" {
  name = "lumzen-15ocuk-fay.muller"
}

resource "aws_iam_user_group_membership" "fay_muller__notifications_2_devs" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "frank_ali" {
  name = "lumzen-15ocuk-frank.ali"
}

resource "aws_iam_user_group_membership" "frank_ali__ml_devs" {
  user   = aws_iam_user.frank_ali.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "frank_cohen" {
  name = "lumzen-15ocuk-frank.cohen"
}

resource "aws_iam_user_login_profile" "frank_cohen" {
  user                    = aws_iam_user.frank_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_cohen__support_analysts" {
  user   = aws_iam_user.frank_cohen.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user_policy_attachment" "frank_cohen__base_readonly" {
  user       = aws_iam_user.frank_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_cohen3373" {
  name = "lumzen-15ocuk-frank.cohen3373"
}

resource "aws_iam_user_login_profile" "frank_cohen3373" {
  user                    = aws_iam_user.frank_cohen3373.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_cohen3373__growth_2_devs" {
  user   = aws_iam_user.frank_cohen3373.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "frank_haddad" {
  name = "lumzen-15ocuk-frank.haddad"
}

resource "aws_iam_user_login_profile" "frank_haddad" {
  user                    = aws_iam_user.frank_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_haddad__notifications_devs" {
  user   = aws_iam_user.frank_haddad.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "frank_ivanov" {
  name = "lumzen-15ocuk-frank.ivanov"
}

resource "aws_iam_user_login_profile" "frank_ivanov" {
  user                    = aws_iam_user.frank_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_ivanov__data_analysts" {
  user   = aws_iam_user.frank_ivanov.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "frank_kim" {
  name = "lumzen-15ocuk-frank.kim"
}

resource "aws_iam_user_login_profile" "frank_kim" {
  user                    = aws_iam_user.frank_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_kim__support_analysts" {
  user   = aws_iam_user.frank_kim.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user_group_membership" "frank_kim__notifications_2_analysts" {
  user   = aws_iam_user.frank_kim.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "frank_kim4680" {
  name = "lumzen-15ocuk-frank.kim4680"
}

resource "aws_iam_user_group_membership" "frank_kim4680__search_analysts" {
  user   = aws_iam_user.frank_kim4680.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "grace_ali" {
  name = "lumzen-15ocuk-grace.ali"
}

resource "aws_iam_user_login_profile" "grace_ali" {
  user                    = aws_iam_user.grace_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ali__search_devs" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "grace_haddad" {
  name = "lumzen-15ocuk-grace.haddad"
}

resource "aws_iam_user_login_profile" "grace_haddad" {
  user                    = aws_iam_user.grace_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_haddad__support_devs" {
  user   = aws_iam_user.grace_haddad.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "grace_singh" {
  name = "lumzen-15ocuk-grace.singh"
}

resource "aws_iam_user_login_profile" "grace_singh" {
  user                    = aws_iam_user.grace_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_singh__growth_2_devs" {
  user   = aws_iam_user.grace_singh.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "grace_smith" {
  name = "lumzen-15ocuk-grace.smith"
}

resource "aws_iam_user_login_profile" "grace_smith" {
  user                    = aws_iam_user.grace_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_smith__notifications_2_devs" {
  user   = aws_iam_user.grace_smith.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "grace_wong" {
  name = "lumzen-15ocuk-grace.wong"
}

resource "aws_iam_user_group_membership" "grace_wong__search_devs" {
  user   = aws_iam_user.grace_wong.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "gus_davis" {
  name = "lumzen-15ocuk-gus.davis"
}

resource "aws_iam_user_login_profile" "gus_davis" {
  user                    = aws_iam_user.gus_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_davis__billing_2_devs" {
  user   = aws_iam_user.gus_davis.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_group_membership" "gus_davis__search_2_analysts" {
  user   = aws_iam_user.gus_davis.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "gus_kim" {
  name = "lumzen-15ocuk-gus.kim"
}

resource "aws_iam_user_login_profile" "gus_kim" {
  user                    = aws_iam_user.gus_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_kim__notifications_analysts" {
  user   = aws_iam_user.gus_kim.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "gus_nguyen" {
  name = "lumzen-15ocuk-gus.nguyen"
}

resource "aws_iam_user_group_membership" "gus_nguyen__billing_2_analysts" {
  user   = aws_iam_user.gus_nguyen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user_group_membership" "gus_nguyen__infra_2_analysts" {
  user   = aws_iam_user.gus_nguyen.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "gus_reddy" {
  name = "lumzen-15ocuk-gus.reddy"
}

resource "aws_iam_user_login_profile" "gus_reddy" {
  user                    = aws_iam_user.gus_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_reddy__notifications_devs" {
  user   = aws_iam_user.gus_reddy.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user_group_membership" "gus_reddy__infra_analysts" {
  user   = aws_iam_user.gus_reddy.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "gus_tanaka" {
  name = "lumzen-15ocuk-gus.tanaka"
}

resource "aws_iam_user_login_profile" "gus_tanaka" {
  user                    = aws_iam_user.gus_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_tanaka__api_devs" {
  user   = aws_iam_user.gus_tanaka.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "hana_gupta" {
  name = "lumzen-15ocuk-hana.gupta"
}

resource "aws_iam_user_group_membership" "hana_gupta__infra_analysts" {
  user   = aws_iam_user.hana_gupta.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user_group_membership" "hana_gupta__support_analysts" {
  user   = aws_iam_user.hana_gupta.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "hana_nguyen" {
  name = "lumzen-15ocuk-hana.nguyen"
}

resource "aws_iam_user_login_profile" "hana_nguyen" {
  user                    = aws_iam_user.hana_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_nguyen__billing_2_analysts" {
  user   = aws_iam_user.hana_nguyen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "heidi_chen" {
  name = "lumzen-15ocuk-heidi.chen"
}

resource "aws_iam_user_login_profile" "heidi_chen" {
  user                    = aws_iam_user.heidi_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_chen__growth_devs" {
  user   = aws_iam_user.heidi_chen.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "heidi_garcia" {
  name = "lumzen-15ocuk-heidi.garcia"
}

resource "aws_iam_user_login_profile" "heidi_garcia" {
  user                    = aws_iam_user.heidi_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_garcia__ml_analysts" {
  user   = aws_iam_user.heidi_garcia.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "heidi_tanaka" {
  name = "lumzen-15ocuk-heidi.tanaka"
}

resource "aws_iam_user_login_profile" "heidi_tanaka" {
  user                    = aws_iam_user.heidi_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_tanaka__api_2_devs" {
  user   = aws_iam_user.heidi_tanaka.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "ian_ali" {
  name = "lumzen-15ocuk-ian.ali"
}

resource "aws_iam_user_login_profile" "ian_ali" {
  user                    = aws_iam_user.ian_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_ali__auth_2_analysts" {
  user   = aws_iam_user.ian_ali.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "ian_haddad" {
  name = "lumzen-15ocuk-ian.haddad"
}

resource "aws_iam_user_login_profile" "ian_haddad" {
  user                    = aws_iam_user.ian_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad__notifications_devs" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user_group_membership" "ian_haddad__growth_analysts" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "ian_khan" {
  name = "lumzen-15ocuk-ian.khan"
}

resource "aws_iam_user_login_profile" "ian_khan" {
  user                    = aws_iam_user.ian_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_khan__growth_devs" {
  user   = aws_iam_user.ian_khan.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "ian_miller" {
  name = "lumzen-15ocuk-ian.miller"
}

resource "aws_iam_user_login_profile" "ian_miller" {
  user                    = aws_iam_user.ian_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_miller__support_devs" {
  user   = aws_iam_user.ian_miller.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "ivan_gupta" {
  name = "lumzen-15ocuk-ivan.gupta"
}

resource "aws_iam_user_login_profile" "ivan_gupta" {
  user                    = aws_iam_user.ivan_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_gupta__web_2_devs" {
  user   = aws_iam_user.ivan_gupta.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "ivan_mehta" {
  name = "lumzen-15ocuk-ivan.mehta"
}

resource "aws_iam_user_login_profile" "ivan_mehta" {
  user                    = aws_iam_user.ivan_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta__billing_devs" {
  user   = aws_iam_user.ivan_mehta.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "ivan_okafor" {
  name = "lumzen-15ocuk-ivan.okafor"
}

resource "aws_iam_user_login_profile" "ivan_okafor" {
  user                    = aws_iam_user.ivan_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_okafor__notifications_2_devs" {
  user   = aws_iam_user.ivan_okafor.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_okafor__auth_2_analysts" {
  user   = aws_iam_user.ivan_okafor.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user" "judy_cohen" {
  name = "lumzen-15ocuk-judy.cohen"
}

resource "aws_iam_user_login_profile" "judy_cohen" {
  user                    = aws_iam_user.judy_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_cohen__api_devs" {
  user   = aws_iam_user.judy_cohen.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "judy_jones" {
  name = "lumzen-15ocuk-judy.jones"
}

resource "aws_iam_user_login_profile" "judy_jones" {
  user                    = aws_iam_user.judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_jones__growth_2_devs" {
  user   = aws_iam_user.judy_jones.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "judy_patel" {
  name = "lumzen-15ocuk-judy.patel"
}

resource "aws_iam_user_login_profile" "judy_patel" {
  user                    = aws_iam_user.judy_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_patel__mobile_2_devs" {
  user   = aws_iam_user.judy_patel.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "judy_reddy" {
  name = "lumzen-15ocuk-judy.reddy"
}

resource "aws_iam_user_login_profile" "judy_reddy" {
  user                    = aws_iam_user.judy_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_reddy__growth_2_analysts" {
  user   = aws_iam_user.judy_reddy.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "judy_rossi" {
  name = "lumzen-15ocuk-judy.rossi"
}

resource "aws_iam_user_login_profile" "judy_rossi" {
  user                    = aws_iam_user.judy_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_rossi__support_2_devs" {
  user   = aws_iam_user.judy_rossi.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "lumzen-15ocuk-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__notifications_2_analysts" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "jun_jones" {
  name = "lumzen-15ocuk-jun.jones"
}

resource "aws_iam_user_login_profile" "jun_jones" {
  user                    = aws_iam_user.jun_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_jones__web_devs" {
  user   = aws_iam_user.jun_jones.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "jun_muller" {
  name = "lumzen-15ocuk-jun.muller"
}

resource "aws_iam_user_login_profile" "jun_muller" {
  user                    = aws_iam_user.jun_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_muller__growth_devs" {
  user   = aws_iam_user.jun_muller.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "karl_cohen" {
  name = "lumzen-15ocuk-karl.cohen"
}

resource "aws_iam_user_login_profile" "karl_cohen" {
  user                    = aws_iam_user.karl_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen__mobile_2_devs" {
  user   = aws_iam_user.karl_cohen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_cohen__base_readonly" {
  user       = aws_iam_user.karl_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "karl_cohen7548" {
  name = "lumzen-15ocuk-karl.cohen7548"
}

resource "aws_iam_user_login_profile" "karl_cohen7548" {
  user                    = aws_iam_user.karl_cohen7548.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen7548__billing_analysts" {
  user   = aws_iam_user.karl_cohen7548.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "karl_lopez" {
  name = "lumzen-15ocuk-karl.lopez"
}

resource "aws_iam_user_login_profile" "karl_lopez" {
  user                    = aws_iam_user.karl_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_lopez__support_2_analysts" {
  user   = aws_iam_user.karl_lopez.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "kia_haddad" {
  name = "lumzen-15ocuk-kia.haddad"
}

resource "aws_iam_user_login_profile" "kia_haddad" {
  user                    = aws_iam_user.kia_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_haddad__api_analysts" {
  user   = aws_iam_user.kia_haddad.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "lena_jones" {
  name = "lumzen-15ocuk-lena.jones"
}

resource "aws_iam_user_login_profile" "lena_jones" {
  user                    = aws_iam_user.lena_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_jones__data_devs" {
  user   = aws_iam_user.lena_jones.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "lena_jones__billing_2_analysts" {
  user   = aws_iam_user.lena_jones.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "lena_kim" {
  name = "lumzen-15ocuk-lena.kim"
}

resource "aws_iam_user_login_profile" "lena_kim" {
  user                    = aws_iam_user.lena_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_kim__growth_2_devs" {
  user   = aws_iam_user.lena_kim.name
  groups = [aws_iam_group.growth_2_devs.name]
}

resource "aws_iam_user" "lena_reddy" {
  name = "lumzen-15ocuk-lena.reddy"
}

resource "aws_iam_user_login_profile" "lena_reddy" {
  user                    = aws_iam_user.lena_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_reddy__web_2_analysts" {
  user   = aws_iam_user.lena_reddy.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "mei_tanaka" {
  name = "lumzen-15ocuk-mei.tanaka"
}

resource "aws_iam_user_login_profile" "mei_tanaka" {
  user                    = aws_iam_user.mei_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_tanaka__growth_devs" {
  user   = aws_iam_user.mei_tanaka.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "mike_khan" {
  name = "lumzen-15ocuk-mike.khan"
}

resource "aws_iam_user_login_profile" "mike_khan" {
  user                    = aws_iam_user.mike_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_khan__data_2_devs" {
  user   = aws_iam_user.mike_khan.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "mike_reddy" {
  name = "lumzen-15ocuk-mike.reddy"
}

resource "aws_iam_user_login_profile" "mike_reddy" {
  user                    = aws_iam_user.mike_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_reddy__support_2_devs" {
  user   = aws_iam_user.mike_reddy.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "mike_singh" {
  name = "lumzen-15ocuk-mike.singh"
}

resource "aws_iam_user_login_profile" "mike_singh" {
  user                    = aws_iam_user.mike_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh__infra_devs" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "mike_singh__api_analysts" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "nina_haddad" {
  name = "lumzen-15ocuk-nina.haddad"
}

resource "aws_iam_user_login_profile" "nina_haddad" {
  user                    = aws_iam_user.nina_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_haddad__web_2_devs" {
  user   = aws_iam_user.nina_haddad.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "nina_patel" {
  name = "lumzen-15ocuk-nina.patel"
}

resource "aws_iam_user_login_profile" "nina_patel" {
  user                    = aws_iam_user.nina_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_patel__search_2_devs" {
  user   = aws_iam_user.nina_patel.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "nina_patel__base_readonly" {
  user       = aws_iam_user.nina_patel.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "nina_patel2934" {
  name = "lumzen-15ocuk-nina.patel2934"
}

resource "aws_iam_user_login_profile" "nina_patel2934" {
  user                    = aws_iam_user.nina_patel2934.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_patel2934__growth_devs" {
  user   = aws_iam_user.nina_patel2934.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "nina_tanaka" {
  name = "lumzen-15ocuk-nina.tanaka"
}

resource "aws_iam_user_login_profile" "nina_tanaka" {
  user                    = aws_iam_user.nina_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_tanaka__api_devs" {
  user   = aws_iam_user.nina_tanaka.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "noor_davis" {
  name = "lumzen-15ocuk-noor.davis"
}

resource "aws_iam_user_login_profile" "noor_davis" {
  user                    = aws_iam_user.noor_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_davis__search_2_devs" {
  user   = aws_iam_user.noor_davis.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "noor_kim" {
  name = "lumzen-15ocuk-noor.kim"
}

resource "aws_iam_user_login_profile" "noor_kim" {
  user                    = aws_iam_user.noor_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_kim__web_devs" {
  user   = aws_iam_user.noor_kim.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "noor_okafor" {
  name = "lumzen-15ocuk-noor.okafor"
}

resource "aws_iam_user_group_membership" "noor_okafor__billing_2_devs" {
  user   = aws_iam_user.noor_okafor.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "noor_okafor__base_readonly" {
  user       = aws_iam_user.noor_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "noor_smith" {
  name = "lumzen-15ocuk-noor.smith"
}

resource "aws_iam_user_login_profile" "noor_smith" {
  user                    = aws_iam_user.noor_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_smith__search_2_analysts" {
  user   = aws_iam_user.noor_smith.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user_group_membership" "noor_smith__api_analysts" {
  user   = aws_iam_user.noor_smith.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "omar_wong" {
  name = "lumzen-15ocuk-omar.wong"
}

resource "aws_iam_user_login_profile" "omar_wong" {
  user                    = aws_iam_user.omar_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_wong__auth_devs" {
  user   = aws_iam_user.omar_wong.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "priya_larsen" {
  name = "lumzen-15ocuk-priya.larsen"
}

resource "aws_iam_user_login_profile" "priya_larsen" {
  user                    = aws_iam_user.priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_larsen__support_analysts" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "priya_lopez" {
  name = "lumzen-15ocuk-priya.lopez"
}

resource "aws_iam_user_login_profile" "priya_lopez" {
  user                    = aws_iam_user.priya_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_lopez__search_2_devs" {
  user   = aws_iam_user.priya_lopez.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "priya_nguyen" {
  name = "lumzen-15ocuk-priya.nguyen"
}

resource "aws_iam_user_login_profile" "priya_nguyen" {
  user                    = aws_iam_user.priya_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_nguyen__support_2_devs" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_group_membership" "priya_nguyen__billing_2_analysts" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "priya_novak" {
  name = "lumzen-15ocuk-priya.novak"
}

resource "aws_iam_user_group_membership" "priya_novak__web_analysts" {
  user   = aws_iam_user.priya_novak.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user" "quinn_davis" {
  name = "lumzen-15ocuk-quinn.davis"
}

resource "aws_iam_user_login_profile" "quinn_davis" {
  user                    = aws_iam_user.quinn_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_davis__search_devs" {
  user   = aws_iam_user.quinn_davis.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_davis__base_readonly" {
  user       = aws_iam_user.quinn_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_larsen" {
  name = "lumzen-15ocuk-quinn.larsen"
}

resource "aws_iam_user_group_membership" "quinn_larsen__web_2_devs" {
  user   = aws_iam_user.quinn_larsen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "quinn_rossi" {
  name = "lumzen-15ocuk-quinn.rossi"
}

resource "aws_iam_user_login_profile" "quinn_rossi" {
  user                    = aws_iam_user.quinn_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_rossi__ml_devs" {
  user   = aws_iam_user.quinn_rossi.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "raj_chen" {
  name = "lumzen-15ocuk-raj.chen"
}

resource "aws_iam_user_login_profile" "raj_chen" {
  user                    = aws_iam_user.raj_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_chen__notifications_devs" {
  user   = aws_iam_user.raj_chen.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "raj_kim" {
  name = "lumzen-15ocuk-raj.kim"
}

resource "aws_iam_user_group_membership" "raj_kim__support_2_devs" {
  user   = aws_iam_user.raj_kim.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "raj_singh" {
  name = "lumzen-15ocuk-raj.singh"
}

resource "aws_iam_user_login_profile" "raj_singh" {
  user                    = aws_iam_user.raj_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_singh__growth_2_analysts" {
  user   = aws_iam_user.raj_singh.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "sara_brown" {
  name = "lumzen-15ocuk-sara.brown"
}

resource "aws_iam_user_login_profile" "sara_brown" {
  user                    = aws_iam_user.sara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_brown__billing_2_devs" {
  user   = aws_iam_user.sara_brown.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "sara_garcia" {
  name = "lumzen-15ocuk-sara.garcia"
}

resource "aws_iam_user_login_profile" "sara_garcia" {
  user                    = aws_iam_user.sara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_garcia__support_2_devs" {
  user   = aws_iam_user.sara_garcia.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_group_membership" "sara_garcia__support_2_analysts" {
  user   = aws_iam_user.sara_garcia.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "sara_reddy" {
  name = "lumzen-15ocuk-sara.reddy"
}

resource "aws_iam_user_login_profile" "sara_reddy" {
  user                    = aws_iam_user.sara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_reddy__notifications_2_devs" {
  user   = aws_iam_user.sara_reddy.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "sara_wong" {
  name = "lumzen-15ocuk-sara.wong"
}

resource "aws_iam_user_login_profile" "sara_wong" {
  user                    = aws_iam_user.sara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_wong__support_2_devs" {
  user   = aws_iam_user.sara_wong.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "tom_chen" {
  name = "lumzen-15ocuk-tom.chen"
}

resource "aws_iam_user_login_profile" "tom_chen" {
  user                    = aws_iam_user.tom_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_chen__notifications_devs" {
  user   = aws_iam_user.tom_chen.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "tom_cohen" {
  name = "lumzen-15ocuk-tom.cohen"
}

resource "aws_iam_user_login_profile" "tom_cohen" {
  user                    = aws_iam_user.tom_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_cohen__web_devs" {
  user   = aws_iam_user.tom_cohen.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "tom_dubois" {
  name = "lumzen-15ocuk-tom.dubois"
}

resource "aws_iam_user_group_membership" "tom_dubois__billing_devs" {
  user   = aws_iam_user.tom_dubois.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "tom_gupta" {
  name = "lumzen-15ocuk-tom.gupta"
}

resource "aws_iam_user_login_profile" "tom_gupta" {
  user                    = aws_iam_user.tom_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_gupta__search_2_devs" {
  user   = aws_iam_user.tom_gupta.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "tom_kim" {
  name = "lumzen-15ocuk-tom.kim"
}

resource "aws_iam_user_group_membership" "tom_kim__search_2_devs" {
  user   = aws_iam_user.tom_kim.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "tom_lopez" {
  name = "lumzen-15ocuk-tom.lopez"
}

resource "aws_iam_user_group_membership" "tom_lopez__auth_analysts" {
  user   = aws_iam_user.tom_lopez.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "uma_khan" {
  name = "lumzen-15ocuk-uma.khan"
}

resource "aws_iam_user_login_profile" "uma_khan" {
  user                    = aws_iam_user.uma_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_khan__mobile_devs" {
  user   = aws_iam_user.uma_khan.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "vik_rossi" {
  name = "lumzen-15ocuk-vik.rossi"
}

resource "aws_iam_user_login_profile" "vik_rossi" {
  user                    = aws_iam_user.vik_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_rossi__search_2_devs" {
  user   = aws_iam_user.vik_rossi.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user_group_membership" "vik_rossi__notifications_2_analysts" {
  user   = aws_iam_user.vik_rossi.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "wen_dubois" {
  name = "lumzen-15ocuk-wen.dubois"
}

resource "aws_iam_user_login_profile" "wen_dubois" {
  user                    = aws_iam_user.wen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_dubois__web_devs" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_group_membership" "wen_dubois__ml_analysts" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "wen_ivanov" {
  name = "lumzen-15ocuk-wen.ivanov"
}

resource "aws_iam_user_login_profile" "wen_ivanov" {
  user                    = aws_iam_user.wen_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ivanov__notifications_2_devs" {
  user   = aws_iam_user.wen_ivanov.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "wen_larsen" {
  name = "lumzen-15ocuk-wen.larsen"
}

resource "aws_iam_user_login_profile" "wen_larsen" {
  user                    = aws_iam_user.wen_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_larsen__web_devs" {
  user   = aws_iam_user.wen_larsen.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "wen_muller" {
  name = "lumzen-15ocuk-wen.muller"
}

resource "aws_iam_user_login_profile" "wen_muller" {
  user                    = aws_iam_user.wen_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_muller__web_2_devs" {
  user   = aws_iam_user.wen_muller.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "xia_ivanov" {
  name = "lumzen-15ocuk-xia.ivanov"
}

resource "aws_iam_user_login_profile" "xia_ivanov" {
  user                    = aws_iam_user.xia_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_ivanov__web_2_devs" {
  user   = aws_iam_user.xia_ivanov.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "xia_ivanov__api_2_analysts" {
  user   = aws_iam_user.xia_ivanov.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "xia_larsen" {
  name = "lumzen-15ocuk-xia.larsen"
}

resource "aws_iam_user_login_profile" "xia_larsen" {
  user                    = aws_iam_user.xia_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_larsen__search_2_analysts" {
  user   = aws_iam_user.xia_larsen.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "xia_patel" {
  name = "lumzen-15ocuk-xia.patel"
}

resource "aws_iam_user_login_profile" "xia_patel" {
  user                    = aws_iam_user.xia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_patel__api_2_analysts" {
  user   = aws_iam_user.xia_patel.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "yara_gupta" {
  name = "lumzen-15ocuk-yara.gupta"
}

resource "aws_iam_user_login_profile" "yara_gupta" {
  user                    = aws_iam_user.yara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_gupta__web_2_devs" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "yara_kim" {
  name = "lumzen-15ocuk-yara.kim"
}

resource "aws_iam_user_login_profile" "yara_kim" {
  user                    = aws_iam_user.yara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_kim__web_2_analysts" {
  user   = aws_iam_user.yara_kim.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "zed_silva" {
  name = "lumzen-15ocuk-zed.silva"
}

resource "aws_iam_user_login_profile" "zed_silva" {
  user                    = aws_iam_user.zed_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_silva__growth_devs" {
  user   = aws_iam_user.zed_silva.name
  groups = [aws_iam_group.growth_devs.name]
}
